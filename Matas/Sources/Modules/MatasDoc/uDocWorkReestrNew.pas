unit uDocWorkReestrNew;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxCheckBox, cxButtonEdit, cxControls, cxContainer, cxEdit,
  cxTextEdit, cxMaskEdit, cxDropDownEdit, cxCalendar, StdCtrls, ibase,
  uSpTipDocMulti, uResources, cxLookAndFeelPainters, cxButtons,
  frxExportPDF, frxExportRTF, frxExportXML, frxClass, frxExportHTML,
  cxSpinEdit, ActnList, frxDesgn, DB, FIBDataSet, pFIBDataSet, frxDBSet,
  FIBDatabase, pFIBDatabase, uMatasVars, uMatasUtils;

type
  TDocWorkReestrNew = class(TForm)
    cxDateReestrBeg: TcxDateEdit;
    Label1: TLabel;
    cxTipDoc: TcxButtonEdit;
    CancelButton: TcxButton;
    Label3: TLabel;
    Label4: TLabel;
    cxCheckOnPrinter: TcxCheckBox;
    cxSelectPrinter: TcxCheckBox;
    Label5: TLabel;
    cxCopies: TcxSpinEdit;
    OkButton: TcxButton;
    frxHTMLExport1: TfrxHTMLExport;
    frxXMLExport1: TfrxXMLExport;
    frxRTFExport1: TfrxRTFExport;
    frxPDFExport1: TfrxPDFExport;
    cxDateReestrEnd: TcxDateEdit;
    pFIBDatabase1: TpFIBDatabase;
    pFIBTransaction1: TpFIBTransaction;
    frxDBDataset1: TfrxDBDataset;
    frxReport: TfrxReport;
    ReportDataset: TpFIBDataSet;
    frxDesigner1: TfrxDesigner;
    KeyActionList: TActionList;
    ActionCancel: TAction;
    ActionOk: TAction;
    cxCheckEdit: TcxCheckBox;
    procedure cxTipDocPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure FormCreate(Sender: TObject);
    procedure OkButtonClick(Sender: TObject);
    procedure ActionCancelExecute(Sender: TObject);
    procedure ActionOkExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    DBHANDLE: TISC_DB_HANDLE;
    FILTER_ID_SESSION: Integer;
    F_TIPD: boolean;
  end;

var
  DocWorkReestrNew: TDocWorkReestrNew;

implementation

uses DateUtils;

{$R *.dfm}

procedure TDocWorkReestrNew.cxTipDocPropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
var
  Res : Variant;
  FormResult: Boolean;
  VarDimCnt: integer;
  i: integer;
  s: string;
begin
  F_TIPD:=false;
  Res:=uSpTipDocMulti.GetTipDocMulti(self, self.DBHANDLE, 0, FILTER_ID_SESSION, FormResult);
  if FormResult then
  begin
    if  VarType(Res) <> varEmpty then
    begin
      VarDimCnt:=VarArrayHighBound(Res,  1);
      s:='';
      for i:=0 to VarDimCnt do
      begin
        s:=s+VarToStr(Res[i][1])+';';
      end;
      cxTipDoc.Text := s;
      F_TIPD:=true;
    end
    else
    begin
      cxTipDoc.Text := '';
      F_TIPD:=false;
    end;
  end
end;

procedure TDocWorkReestrNew.FormCreate(Sender: TObject);
begin
  Caption:=MAT_SYS_PREFIX+'–еЇестр документ≥в за пер≥од';
  cxCopies.Value:=1;
  cxCheckOnPrinter.Checked:=IntToBool(_SET_PRINT_ON_PRINTER);
  cxCheckEdit.Visible := IntToBool(_ALLOW_EDIT_TEMPLATE);
  cxCheckOnPrinter.Checked:=IntToBool(_SET_PRINT_ON_PRINTER);
  OkButton.Caption:=MAT_ACTION_PRINT_CONST;
  CancelButton.Caption:=MAT_BUTTON_CANCEL_CONST;
  cxDateReestrBeg.Date:=StartOfTheMonth(_MATAS_PERIOD);
  cxDateReestrEnd.Date:=EndOfTheMonth(_MATAS_PERIOD);
  F_TIPD := false;
end;

procedure TDocWorkReestrNew.OkButtonClick(Sender: TObject);
begin
  ReportDataSet.Close;
  ReportDataSet.SelectSQL.Clear;
  with ReportDataSet.SelectSQL do
  begin
    Add('SELECT * FROM MAT_SEL_REESTR_DOC_BY_PERIOD(:PDATE_BEG,:PDATE_END)');
    if F_TIPD then
    begin
      Add('WHERE ID_TIPD IN (SELECT ID_KEY FROM MAT_TMP_FILTER WHERE ID_OBJECT=12 AND ID_SESSION='+IntToStr(FILTER_ID_SESSION)+')');
    end;
    Add('ORDER BY TIPD, NUM_DOC');
  end;

  ReportDataSet.ParamByName('PDATE_BEG').Value:=cxDateReestrBeg.Date;
  ReportDataSet.ParamByName('PDATE_END').Value:=cxDateReestrEnd.Date;
  ReportDataSet.CloseOpen(false);
  frxReport.LoadFromFile(ExtractFilePath(Application.ExeName)+ _PATH_REPORTS+'\ReestrDocPeriod.fr3');

  frxReport.Variables['DateB']:= ''''+DateToStr(cxDateReestrBeg.Date)+'''';
  frxReport.Variables['DateE']:= ''''+DateToStr(cxDateReestrEnd.Date)+'''';
  frxReport.Variables['ORG_NAME']:=''''+_ORG_FULL_NAME+'''';
  frxReport.Variables['ORG_SHORT_NAME']:=''''+_ORG_SHORT_NAME+'''';
  frxReport.Variables['ORG_KOD_OKPO']:=''''+_ORG_KOD_OKPO+'''';
  frxReport.PrintOptions.Copies:=cxCopies.Value;
  frxReport.PrintOptions.ShowDialog:=cxSelectPrinter.Checked;
  if cxCheckOnPrinter.Checked then
    frxReport.Print
  else
    frxReport.ShowReport;
  if cxCheckEdit.Checked then frxReport.DesignReport;
end;

procedure TDocWorkReestrNew.ActionCancelExecute(Sender: TObject);
begin
  Close;
end;

procedure TDocWorkReestrNew.ActionOkExecute(Sender: TObject);
begin
  OkButtonClick(self);
end;

end.
