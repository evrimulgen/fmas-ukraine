unit uHistoryNom;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxLookAndFeelPainters, cxStyles, cxCustomData, cxGraphics, Math,
  cxFilter, cxData, cxDataStorage, cxEdit, DB, cxDBData, FIBDatabase,
  pFIBDatabase, FIBQuery, pFIBQuery, pFIBStoredProc, FIBDataSet,
  pFIBDataSet, cxGridTableView, cxGridLevel, cxClasses, cxControls,
  cxGridCustomView, cxGridCustomTableView, cxGridDBTableView, cxGrid,
  StdCtrls, cxButtons, cxContainer, cxTextEdit, ExtCtrls, ibase, cxSplitter,
  cxMaskEdit, cxDropDownEdit, cxCalendar, cxCheckBox, DateUtils,
  cxButtonEdit, uSpMatOtv, uMatasUtils, ActnList, frxClass, frxDBSet,
  frxDesgn, uSpMatSchMulti, uMatasVars, uPackageManager;

type
  THistoryNomForm = class(TForm)
    pnl1: TPanel;
    lbl1: TLabel;
    cxName: TcxTextEdit;
    cxShow: TcxButton;
    StyleRepository: TcxStyleRepository;
    cxStyle1: TcxStyle;
    cxStyle2: TcxStyle;
    cxStyle3: TcxStyle;
    cxStyle4: TcxStyle;
    cxStyle5: TcxStyle;
    cxStyle6: TcxStyle;
    cxStyle7: TcxStyle;
    cxStyle8: TcxStyle;
    cxStyle9: TcxStyle;
    cxStyle10: TcxStyle;
    cxStyle11: TcxStyle;
    cxStyle12: TcxStyle;
    cxStyle13: TcxStyle;
    cxStyle14: TcxStyle;
    GridTableViewStyleSheetDevExpress: TcxGridTableViewStyleSheet;
    ds1: TDataSource;
    DB_History: TpFIBDatabase;
    DS_History: TpFIBDataSet;
    SP_History: TpFIBStoredProc;
    TR_History: TpFIBTransaction;
    DS_Pos: TpFIBDataSet;
    ds2: TDataSource;
    pFIBDataSet: TpFIBDataSet;
    ds3: TDataSource;
    lblMol: TLabel;
    cxMatOtv: TcxButtonEdit;
    pFIBDataSetFIO_IN: TFIBStringField;
    pFIBDataSetFIO_OUT: TFIBStringField;
    pFIBDataSetTIPD: TFIBStringField;
    pFIBDataSetDATE_DOC: TFIBDateField;
    pFIBDataSetNUM_DOC: TFIBStringField;
    pFIBDataSetKOL_MAT: TFIBBCDField;
    DS_PosFIO_IN: TFIBStringField;
    DS_PosFIO_OUT: TFIBStringField;
    DS_PosTIPD: TFIBStringField;
    DS_PosDATE_DOC: TFIBDateField;
    DS_PosNUM_DOC: TFIBStringField;
    DS_PosKOL_MAT: TFIBBCDField;
    actlst1: TActionList;
    act1: TAction;
    cxButton1: TcxButton;
    act2: TAction;
    frxReport1: TfrxReport;
    frxDesigner1: TfrxDesigner;
    frxDBDataset1: TfrxDBDataset;
    ForReport: TpFIBDataSet;
    DS_PosID_DOC: TFIBBCDField;
    pFIBDataSetID_DOC: TFIBBCDField;
    cxButton2: TcxButton;
    act3: TAction;
    pnl2: TPanel;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxgrdbclmnGrid1DBTableView1DBColumn1: TcxGridDBColumn;
    cxGrid1Level1: TcxGridLevel;
    pnl3: TPanel;
    cxGrid2: TcxGrid;
    cxGrid2DBTableView1: TcxGridDBTableView;
    cxgrdbclmnGrid2DBTableView1DBColumn4: TcxGridDBColumn;
    cxgrdbclmnGrid2DBTableView1DBColumn1: TcxGridDBColumn;
    cxgrdbclmnGrid2DBTableView1DBColumn2: TcxGridDBColumn;
    cxgrdbclmnGrid2DBTableView1DBColumn3: TcxGridDBColumn;
    cxgrdbclmnGrid2DBTableView1DBColumn5: TcxGridDBColumn;
    cxGrid2Level1: TcxGridLevel;
    cxSplitter1: TcxSplitter;
    cxGrid3: TcxGrid;
    cxGrid3DBTableView1: TcxGridDBTableView;
    cxgrdbclmnGrid3DBTableView1DBColumn5: TcxGridDBColumn;
    cxgrdbclmnGrid3DBTableView1DBColumn1: TcxGridDBColumn;
    cxgrdbclmnGrid3DBTableView1DBColumn2: TcxGridDBColumn;
    cxgrdbclmnGrid3DBTableView1DBColumn3: TcxGridDBColumn;
    cxgrdbclmnGrid3DBTableView1DBColumn4: TcxGridDBColumn;
    cxGrid3Level1: TcxGridLevel;
    cxSplitter2: TcxSplitter;
    DS_PosSUMMA: TFIBBCDField;
    cxgrdbclmnGrid2DBTableView1DBColumn6: TcxGridDBColumn;
    pFIBDataSetSUMMA: TFIBBCDField;
    cxgrdbclmnGrid3DBTableView1DBColumn6: TcxGridDBColumn;
    DS_PosPRICE: TFIBBCDField;
    pFIBDataSetPRICE: TFIBBCDField;
    cxgrdbclmnGrid2DBTableView1DBColumn7: TcxGridDBColumn;
    cxgrdbclmnGrid3DBTableView1DBColumn7: TcxGridDBColumn;
    lbl2: TLabel;
    lbl3: TLabel;
    cxDateBeg: TcxDateEdit;
    lbl4: TLabel;
    cxDateEnd: TcxDateEdit;
    cxPeriod: TcxCheckBox;
    cxLookupSch: TcxButtonEdit;
    Label1: TLabel;
    cxGrid1DBTableView1DBColumn1: TcxGridDBColumn;
    frxUserDataSet1: TfrxUserDataSet;
    procedure FormShow(Sender: TObject);
    procedure cxGrid1DBTableView1FocusedRecordChanged(
      Sender: TcxCustomGridTableView; APrevFocusedRecord,
      AFocusedRecord: TcxCustomGridRecord;
      ANewItemRecordFocusingChanged: Boolean);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cxMatOtvPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure act1Execute(Sender: TObject);
    procedure act2Execute(Sender: TObject);
    procedure act3Execute(Sender: TObject);
    procedure cxGrid2DBTableView1DblClick(Sender: TObject);
    procedure cxGrid3DBTableView1DblClick(Sender: TObject);
    procedure cxPeriodPropertiesChange(Sender: TObject);
    procedure cxLookupSchKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure cxLookupSchPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
  private

  public
    id_mo:Integer;
    DBHANDLE : TISC_DB_HANDLE;
    NOMN_NAME:string;
    WORK_PERIOD: TDateTime;
    DateBeg, DateEnd: TDateTime;
    Year, Month, Day: Word;
    F_SCH: boolean;
    FILTER_ID_SESSION: integer;
    constructor Create(AOwner:TComponent; DBHANDLE : TISC_DB_HANDLE; ID_USER: int64; PERIOD: TDateTime);overload;
  end;

procedure ShowWareHouseKart(AOwner:TComponent; DBHANDLE : TISC_DB_HANDLE; aID_USER : INT64; aPERIOD: TDateTime);stdcall;

exports ShowWareHouseKart;

var
  HistoryNomForm: THistoryNomForm;

implementation

{$R *.dfm}

uses uWHKartPrintForm;

procedure ShowWareHouseKart(AOwner:TComponent; DBHANDLE : TISC_DB_HANDLE; aID_USER : INT64; aPERIOD: TDateTime);stdcall;
begin
 THistoryNomForm.Create(AOwner, DBHANDLE, aID_USER, aPERIOD);
end;

constructor THistoryNomForm.Create(AOwner:TComponent;DBHANDLE : TISC_DB_HANDLE; ID_USER : Int64; PERIOD: TDateTime);
begin
 inherited Create(AOwner);
 if Assigned(DBHandle)
 then begin
   Self.DBHANDLE := DBHandle;
   Self.DB_History.Close;
   Self.Db_History.Handle:=DBHANDLE;
   Self.WORK_PERIOD:=PERIOD;
   Self.NOMN_NAME := cxName.Text;
   id_mo:=0;
   cxPeriod.Checked:=False;
   lbl3.Enabled:=False;
   lbl4.Enabled:=False;
   cxDateBeg.Enabled:=false;
   cxDateEnd.Enabled:=False;
   cxDateBeg.EditValue:=PERIOD;
   cxDateEnd.EditValue:=PERIOD;
   F_SCH:=false;
   FILTER_ID_SESSION:=0;
 end;
end;

procedure THistoryNomForm.FormShow(Sender: TObject);
begin
  DecodeDate(WORK_PERIOD, Year, Month, Day);
  DateBeg:=StartOfAMonth(Year, Month);
  DateEnd:=EndOfAMonth(Year, Month);
end;

procedure THistoryNomForm.cxGrid1DBTableView1FocusedRecordChanged(
  Sender: TcxCustomGridTableView; APrevFocusedRecord,
  AFocusedRecord: TcxCustomGridRecord;
  ANewItemRecordFocusingChanged: Boolean);
  var  w: TForm;
begin

end;

procedure THistoryNomForm.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
if FormStyle = fsMDIChild then Action := caFree;
end;

procedure THistoryNomForm.cxMatOtvPropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
  var   Res : Variant;
  FioMO, SpodrMO: string;
  IsMoOk: boolean;
  dm, dy: Word;
begin
  Res:=uSpMatOtv.GetMatOtv(self, DBHandle, 0, ID_MO);
  if  VarType(Res) <> varEmpty
   then begin
    ID_MO:=Res[0];
    FioMO := Res[1];
    SpodrMO := Res[2];
    IsMoOk:=true;
  end;
  if IsMoOk then
  begin
   cxMatOtv.Text:=FioMO+' / '+SpodrMO;
  end;
end;

procedure THistoryNomForm.act1Execute(Sender: TObject);
var  w: TForm;
begin
  if cxMatOtv.Text = '' then begin ShowMessage('Âèáåð³òü ÌÂÎ!'); Exit; cxMatOtv.SetFocus;end;
  NOMN_NAME:=AnsiUpperCase(cxName.Text);
  Application.ProcessMessages;
  w:=ShowWaitWindow(self);
  with DS_History do
  begin
    Close;
    SelectSQL.Clear;
    SelectSQL.Add(' SELECT * FROM MAT_HISTORY_NOMN_SELECT(:ID_MO)');
    SelectSQL.Add(' WHERE NAME like :NOMN');
    if F_SCH then
    begin
      SelectSQL.Add('AND ( ID_SCH IN (SELECT ID_KEY FROM MAT_TMP_FILTER WHERE ID_OBJECT=2 AND ID_SESSION='+IntToStr(FILTER_ID_SESSION)+')');
      SelectSQL.Add('OR BAL_ID_SCH IN (SELECT ID_KEY FROM MAT_TMP_FILTER WHERE ID_OBJECT=3 AND ID_SESSION='+IntToStr(FILTER_ID_SESSION)+'))');
    end;
    if cxPeriod.Checked=True then
      SelectSQL.Add(' AND A.DATE_DOC between :date_beg and :date_end');
    SelectSQL.Add(' ORDER BY NAME');
    Prepare;
    ParamByName('ID_MO').Value:=IntToStr(ID_MO);
    ParamByName('NOMN').AsString:='%'+AnsiUpperCase(cxName.Text)+'%';
    if cxPeriod.Checked=True then
    begin
      ParamByName('DATE_BEG').AsDate:=cxDateBeg.EditValue;
      ParamByName('DATE_END').AsDate:=cxDateEnd.EditValue;
    end;
    CloseOpen(False);
  end;
  DS_History.First;

  DS_Pos.Close;
  DS_POS.SelectSql.clear;
  Ds_pos.selectSql.Add ('SELECT * from MAT_HISTORY_SP_NOM_POS(:ID_NOMN, :ID_MO, 1)');
  if cxPeriod.Checked = True then
    Ds_pos.selectSql.Add (' WHERE Date_Doc between :date_beg and :date_end');
  Ds_pos.selectSql.Add ('Order by Date_Doc, Num_Doc');
  Ds_pos.Prepare;
  if cxPeriod.Checked=True then
  begin
    DS_Pos.ParamByName('DATE_BEG').AsDate:=cxDateBeg.EditValue;
    DS_Pos.ParamByName('DATE_END').AsDate:=cxDateEnd.EditValue;
  end;
  DS_Pos.CloseOpen(False);

  pFIBDataSet.Close;
  pFIBDataSet.SelectSql.clear;
  pFIBDataSet.selectSql.Add ('SELECT * from MAT_HISTORY_SP_NOM_POS(:ID_NOMN, :ID_MO, 0)');
  if cxPeriod.Checked = True then
  pFIBDataSet.selectSql.Add (' WHERE Date_Doc between :date_beg and :date_end');
  pFIBDataSet.selectSql.Add ('Order by Date_Doc, Num_Doc');
  pFIBDataSet.Prepare;
  if cxPeriod.Checked=True then
  begin
    pFIBDataSet.ParamByName('DATE_BEG').AsDate:=cxDateBeg.EditValue;
    pFIBDataSet.ParamByName('DATE_END').AsDate:=cxDateEnd.EditValue;
  end;
  pFIBDataSet.CloseOpen(False);
  CloseWaitWindow(w);
  cxGrid1.SetFocus;
end;

procedure THistoryNomForm.act2Execute(Sender: TObject);
var
  fp: TOborotPrintForm;
  zapros:string;
  pages, lines, cnt: integer;
const
  FPL = 33; //lines on first page
  LPP = 52; //lines per page
begin
  if DS_History.IsEmpty then Exit;
 fp:=TOborotPrintform.Create(self);
 fp.cxReportList.Properties.Items.Clear;
 fp.cxReportList.Properties.Items.Add('Çâ³ò çà ïîçèö³ºþ');
 if fp.ShowModal=mrOk then
 begin
   if fp.cxReportList.ItemIndex = 0 then
   zapros:= ' SELECT * from MAT_HISTORY_DOC_BY_NOMN(:ID_DOC, :ID_NOMN, :ID_MO, :PKOL_MAT, :PRICE) ';
   if cxPeriod.Checked=True then
   zapros:= zapros + ' WHERE DATE_DOC BETWEEN :date_beg and :date_end';

   With ForReport do
   begin
     Close;
     SelectSQL.Clear;
     SelectSQL.Add(zapros);
     Prepare;
     ParamByName('ID_DOC').AsInt64:=DS_PosID_DOC.AsInt64;
     ParamByName('ID_NOMN').AsInt64:=DS_History.FieldByName('ID_NOMN').AsInteger;
     ParamByName('ID_MO').AsInteger:=id_mo;
     ParamByName('PKOL_MAT').Value:=DS_PosKOL_MAT.Value;
     ParamByName('PRICE').Value:=DS_PosPRICE.Value;
     if cxPeriod.Checked=True then
     begin
      ParamByName('date_beg').AsDate:=cxDateBeg.EditValue;
      ParamByName('date_end').AsDate:=cxDateEnd.EditValue;
     end;
     Open;
   end;
   frxReport1.LoadFromFile(ExtractFilePath(Application.ExeName)+ _PATH_REPORTS+'\sklad_kart.fr3');
   frxReport1.Variables['NOMN_NAME']:= QuotedStr(DS_History.FieldByName('NAME').AsString);
   frxReport1.Variables['ORG_NAME']:= QuotedStr(_ORG_FULL_NAME);
   //frxReport1.Variables['ORG_NAME']:=_ORG_FULL_NAME;
   //frxReport1.Variables['ORG_SHORT_NAME']:=_ORG_SHORT_NAME;
   frxReport1.Variables['ORG_KOD_OKPO']:=''''+_ORG_KOD_OKPO+'''';
   ForReport.FetchAll;
   cnt:=ForReport.RecordCount;
   pages:=Ceil((cnt-FPL)*1.0/LPP)+1;
   if (pages mod 2) = 1 then pages:=pages+1;
   lines:=FPL+(pages-1)*LPP-1;
   frxUserDataSet1.RangeEndCount:=lines-cnt;
   if fp.cxCheckEdit.Checked = True then
    frxReport1.DesignReport
   else
    frxReport1.ShowReport;
 end;
end;

procedure THistoryNomForm.act3Execute(Sender: TObject);
begin
Close;
end;

procedure THistoryNomForm.cxGrid2DBTableView1DblClick(Sender: TObject);
begin
 uPackageManager.ViewDoc(self, DBHANDLE, DS_Pos.FieldByName('ID_DOC').AsInteger);
end;

procedure THistoryNomForm.cxGrid3DBTableView1DblClick(Sender: TObject);
begin
  uPackageManager.ViewDoc(self, DBHANDLE, pFIBDataSet.FieldByName('ID_DOC').AsInteger);
end;

procedure THistoryNomForm.cxPeriodPropertiesChange(Sender: TObject);
begin
if cxPeriod.Checked=False then
begin
 lbl3.Enabled:=False;
 lbl4.Enabled:=False;
 cxDateBeg.Enabled:=false;
 cxDateEnd.Enabled:=False;
end;
if cxPeriod.Checked=True then
begin
 lbl3.Enabled:=True;
 lbl4.Enabled:=True;
 cxDateBeg.Enabled:=True;
 cxDateEnd.Enabled:=True;
end;
end;

procedure THistoryNomForm.cxLookupSchKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if (Key=VK_BACK) or (Key=VK_DELETE) then
  begin
    cxLookupSch.Text:='';
    F_SCH:=false;
    FILTER_ID_SESSION:=0;
  end
end;

procedure THistoryNomForm.cxLookupSchPropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
var
  Res : Variant;
  mr: boolean;
  VarDimCnt: integer;
  i: integer;
  s: string;
begin
  mr:=false;
  if FILTER_ID_SESSION=0 then FILTER_ID_SESSION:=DB_History.Gen_Id('MAT_ID_SESSION',1, TR_History);
  Res:=uSpMatSchMulti.GetMatSchMulti(self, DBHandle, 0, FILTER_ID_SESSION, mr);
  if mr then
  begin
    if  VarType(Res) <> varEmpty then
    begin
      VarDimCnt:=VarArrayHighBound(Res,  1);
      s:='';
      for i:=0 to VarDimCnt do
      begin
        s:=s+VarToStr(Res[i][1])+';';
      end;
      cxLookupSch.Text := s;
      F_SCH:=true;
    end
  end
  else
  begin
    F_SCH:=false;
    FILTER_ID_SESSION:=0;
    cxLookupSch.Text:='';
  end;
end;

end.
