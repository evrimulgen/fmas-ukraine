unit AddCostAvance;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxControls, cxContainer, cxEdit, cxTextEdit, cxMaskEdit,
  cxDropDownEdit, cxMRUEdit, cxLookAndFeelPainters, cxLabel, ExtCtrls,
  StdCtrls, cxButtons, ActnList, FIBDatabase, pFIBDatabase, DB, FIBDataSet,
  pFIBDataSet, AddChangeAvance, Un_R_file_Alex, Un_lo_file_Alex,
  cxButtonEdit, cxCheckBox, cxCurrencyEdit, cxMemo;

type
  TModeCost = (AddCost, CHangeCost);

  TfmAddCostAvance = class(TForm)
    cxCostEdit: TcxMRUEdit;
    GroupBox1: TGroupBox;
    cxButtonClose: TcxButton;
    cxButton1: TcxButton;
    Bevel1: TBevel;
    cxLabel1: TcxLabel;
    cxLabel2: TcxLabel;
    cxLabel3: TcxLabel;
    ActionList1: TActionList;
    ActionAdd: TAction;
    ActionClose: TAction;
    pFIBTransaction1: TpFIBTransaction;
    pFIBDatabase1: TpFIBDatabase;
    cxMemoComment: TcxMemo;
    cxLabel4: TcxLabel;
    cxCurrencyEditSumma: TcxCurrencyEdit;
    cxCurrencyEditSummaPDV: TcxCurrencyEdit;
    procedure ActionAddExecute(Sender: TObject);
    procedure ActionCloseExecute(Sender: TObject);
    procedure cxTextEditSummaKeyPress(Sender: TObject; var Key: Char);
    procedure cxMRUEditPropertiesButtonClick(Sender: TObject);
    procedure cxButtonEdit1PropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure cxCheckBox1Click(Sender: TObject);
  private
    flag :TModeCost;
    id : int64;
    name : string;
    comment : string;
    mm : TfmAddChangeAvance;
    s : boolean;
    procedure LoadCaptions;
  public
    id_prov : int64;
    { Public declarations }
  end;

function Show_Cost(n : TfmAddChangeAvance; db : TpFIBDatabase; Tr : TpFIBTransaction; m : TModeCost;
var id_c : int64; var summa : Currency; var summaPDV : Currency; var name_c : string;  var comment : string):boolean;


implementation
uses SelectNeosnProv;
{$R *.dfm}

function Show_Cost(n : TfmAddChangeAvance; db : TpFIBDatabase; Tr : TpFIBTransaction; m : TModeCost;
var id_c : int64; var summa : Currency; var summaPDV : Currency; var name_c : string;  var comment : string):boolean;
var
    T : TfmAddCostAvance;
begin
    T := TfmAddCostAvance.Create(nil);
    T.mm := n;
    T.flag := m;
    T.pFIBDatabase1 := db;
    T.pFIBTransaction1 := Tr;

    T.LoadCaptions;

    T.id         := id_c;
    T.name       := name_c;
    T.comment    := comment;
    T.cxCostEdit.Text              := name_c;
    T.cxCurrencyEditSumma.Value    := summa;
    T.cxCurrencyEditSummaPDV.Value := summaPDV;
    T.cxMemoComment.text           := comment;

    if T.ShowModal=mrOk then
    begin
        id_c     := T.id;
        name_c   := T.name;
        summa    := T.cxCurrencyEditSumma.Value;
        summaPDV := T.cxCurrencyEditSummaPDV.Value;
        comment  := T.cxMemoComment.text;
        Result  := true;
    end
    else
        Result  := false;
    T.Free
end;

procedure TfmAddCostAvance.ActionAddExecute(Sender: TObject);
begin
     ModalResult := mrOK;
end;

procedure TfmAddCostAvance.ActionCloseExecute(Sender: TObject);
begin
    Close;
end;

procedure TfmAddCostAvance.cxTextEditSummaKeyPress(Sender: TObject;
  var Key: Char);
begin
   { if Key = '.' then Key := DecimalSeparator;

    if ((Ord(Key) < 48) or (Ord(Key) > 57))
        and (Ord(Key) <> 8)
        and (Ord(Key) <> VK_DELETE)
        and (Key <> DecimalSeparator)
    then
        Key := Chr(0)
    else
    if  (Key = DecimalSeparator) and
        (Pos(DecimalSeparator, cxTextEditSumma.Text) > 0)
    then
        Key := Chr(0)
    else
    if ((Length(cxTextEditSumma.Text) - Pos(DecimalSeparator, cxTextEditSumma.Text) > 1) and (Pos(DecimalSeparator,cxTextEditSumma.Text) <> 0))
        and (Ord(Key) <> 8)
        and (Ord(Key) <> VK_DELETE)
        and ((Ord(Key) > 48) or (Ord(Key) < 57))
    then
        Key := Chr(0); }
end;

procedure TfmAddCostAvance.LoadCaptions;
begin
    cxButtonClose.Caption := Un_R_file_Alex.MY_BUTTON_CLOSE;
    {cxLabel3.Caption      := Un_R_file_Alex.J4_MAIN_FORM_SUMMA;
    cxLabel2.Caption      := Un_R_file_Alex.J4_MAIN_FORM_NUMBER;
    cxLabel1.Caption      := Un_R_file_Alex.J4_ADD_PROV_RAS; 
    GroupBox1.Caption     := Un_R_file_Alex.J4_OSTATOK_ADD_FORM_GR_4; }
    caption               := '';
    if flag = AddCost then
    begin
        cxButton1.caption := Un_R_file_Alex.MY_BUTTON_ADD;
    end;
    if flag = CHangeCost then
    begin
        cxButton1.caption := Un_R_file_Alex.MY_BUTTON_EDIT;
    end;
end;

procedure TfmAddCostAvance.cxMRUEditPropertiesButtonClick(Sender: TObject);
var
    res : Variant;
begin
    res := Un_lo_file_Alex.LoadSpEditSpCostAvanse(self, 1, pFIBDatabase1);
    if VarArrayDimCount(res) > 0 then
    begin
        if (res[2]<>null) and (res[0]<>null) then
        begin
            id := res[0];
            name := res[2];
            cxCostEdit.Text := res[2];
        end;
    end;
end;

procedure TfmAddCostAvance.cxButtonEdit1PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
var
    ss : string;
begin
    {if ShowSelectNeosProvRas(mm, id_prov, ss) then
    begin
        cxButtonEdit1.Text := ss;

    end;  }
end;

procedure TfmAddCostAvance.cxCheckBox1Click(Sender: TObject);
begin
   { if cxCheckBox1.Checked then
    begin
        cxButtonEdit1.Visible := true;
        if s then cxButtonEdit1PropertiesButtonClick(self, 0);
    end else
    begin
        cxButtonEdit1.Visible := false;
    end; }
end;

end.
