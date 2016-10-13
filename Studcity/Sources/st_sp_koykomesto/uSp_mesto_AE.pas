//***********************************************************************
//* Проект "Студгородок"                                                *
//* Добавление льготы                                                   *
//***********************************************************************
unit uSp_mesto_AE;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxLookAndFeelPainters, cxStyles, cxCustomData, cxGraphics,
  cxFilter, cxData, cxDataStorage, cxEdit, DB, cxDBData, cxCalendar,
  cxCurrencyEdit, cxGridLevel, cxGridCustomTableView, cxGridTableView,
  cxClasses, cxControls, cxGridCustomView, cxGridDBTableView, cxGrid,
  Buttons, cxCheckBox, cxTextEdit, cxLabel, cxContainer, cxGroupBox,
  StdCtrls, cxButtons, FIBDataSet, pFIBDataSet, st_ConstUnit,
  uSp_mesto_DM, st_common_funcs, iBase,
  st_Common_Messages, st_Consts_Messages, st_common_types, cxMaskEdit,
  cxDropDownEdit, cxButtonEdit, St_Loader_Unit, st_common_loader, uSp_mesto_serv_AE;

type
  Tfrm_mesto_AE = class(TForm)
    cxGroupBox1: TcxGroupBox;
    NameLabel: TcxLabel;
    OKButton: TcxButton;
    CancelButton: TcxButton;
    ButtonEdit_Builds: TcxButtonEdit;
    DateEdit_beg: TcxDateEdit;
    DateEdit_end: TcxDateEdit;
    cxLabel1: TcxLabel;
    cxLabel2: TcxLabel;
    ComboBox_type_norma: TcxComboBox;
    cxLabel4: TcxLabel;
    Button_add_services: TcxButton;
    Button_edit_services: TcxButton;
    Button_del_services: TcxButton;
    cxGroupBox2: TcxGroupBox;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1DB_name_serv: TcxGridDBColumn;
    cxGrid1DB_Summa: TcxGridDBColumn;
    cxGrid1Level1: TcxGridLevel;
    cxStyleRepository1: TcxStyleRepository;
    cxStyle1: TcxStyle;
    cxStyle2: TcxStyle;
    cxStyle3: TcxStyle;
    cxStyle4: TcxStyle;
    cxStyle5: TcxStyle;
    Cash_Style: TcxStyle;
    cxLabel3: TcxLabel;
    Serv_button_edit: TcxButtonEdit;
    cxLabel5: TcxLabel;
    CurrencyEdit_living: TcxCurrencyEdit;
    Label_headcound: TcxLabel;
    CurrencyEdit_headcount: TcxCurrencyEdit;
    procedure CancelButtonClick(Sender: TObject);
    procedure OKButtonClick(Sender: TObject);
    procedure MedCheckKeyPress(Sender: TObject; var Key: Char);
    procedure cxButtonEdit_BuildsPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure FormShow(Sender: TObject);
    procedure Button_del_servicesClick(Sender: TObject);
    procedure Button_add_servicesClick(Sender: TObject);
    procedure Button_edit_servicesClick(Sender: TObject);
    procedure Serv_button_editPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure ComboBox_type_normaPropertiesChange(Sender: TObject);
  private
    PLanguageIndex: byte;
    procedure FormIniLanguage;
  public
    aHandle : TISC_DB_HANDLE;
    is_admin : Boolean;
    id_build : Int64;
    id_param_serves : int64;
    id_type_norma, id_opt: integer;
    DM : Tfrm_mesto_DM;
    constructor Create(aOwner : TComponent; aHandle : TISC_DB_HANDLE; id_build : int64);reintroduce;
  end;

var
  frm_mesto_AE: Tfrm_mesto_AE;

implementation

{$R *.dfm}

procedure Tfrm_mesto_AE.FormIniLanguage();
begin
  // индекс языка (1-укр, 2 - рус)
  PLanguageIndex:=            stLanguageIndex;

  //названия кнопок
  OKButton.Caption       := st_ConstUnit.st_Accept[PLanguageIndex];
  CancelButton.Caption   := st_ConstUnit.st_Cancel[PLanguageIndex];
end;

procedure Tfrm_mesto_AE.CancelButtonClick(Sender: TObject);
begin
  Close;
end;

procedure Tfrm_mesto_AE.OKButtonClick(Sender: TObject);
begin

  if (ButtonEdit_Builds.Text = '')  then
   Begin
    ShowMessage('Необхідно обрати гуртожиток!');
    ButtonEdit_Builds.SetFocus;
    exit;
   end;

  if DateEdit_end.EditValue <= DateEdit_beg.EditValue then
   Begin
    ShowMessage('Дата початку повинна бути менше дати закінчення!');
    DateEdit_beg.SetFocus;
    exit;
   end;

  ModalResult := mrOK;
end;

procedure Tfrm_mesto_AE.MedCheckKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then OKButton.SetFocus;
end;

constructor Tfrm_mesto_AE.Create(aOwner: TComponent;
  aHandle: TISC_DB_HANDLE; id_build: int64);
begin
  inherited Create(aOwner);

  self.id_build := id_build;

  self.aHandle := aHandle;

  DM := Tfrm_mesto_DM.Create(self);
  DM.DB.Handle := aHandle;
  DM.DB.Connected := True;
  DM.Transaction_Read.StartTransaction;
  cxGrid1DBTableView1.DataController.DataSource := DM.DataSource_serv;

  FormIniLanguage;

  DM.MemoryData_mesto.Open;
  
end;

procedure Tfrm_mesto_AE.cxButtonEdit_BuildsPropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
var
  ResOpl:Variant;
  BuildInfo: TBuildsInfo;
begin
  BuildInfo.id_build:= -1;
  BuildInfo.N_Room := '';
  ResOpl:= Load_st_Builds(self, DM.DB.Handle, true, false, BuildInfo);

  if VarArrayDimCount(ResOpl)>0 then
   begin
     id_build := ResOpl[0];
     ButtonEdit_Builds.Text := ResOpl[2];
   end;
end;

procedure Tfrm_mesto_AE.FormShow(Sender: TObject);
var
  i, liv : Integer;
  head: double;
begin
  DM.DataSet_read.Close;
  DM.DataSet_read.SQLs.SelectSQL.Text := 'select * from st_ini_type_norm where id_type_norma in (1,3)';
  DM.DataSet_read.Open;
  DM.DataSet_read.FetchAll;
  DM.DataSet_read.First;

  ComboBox_type_norma.Properties.items.Clear;
  for i := 0 to DM.DataSet_read.RecordCount - 1 do
   Begin
    ComboBox_type_norma.Properties.items.Add(DM.DataSet_read['NAME_TYPE_NORMA']);
    DM.DataSet_read.Next;
   end;

  if DM.DataSet_read.RecordCount > 0 then
   Begin
      if id_type_norma = 1 then
      begin
          if (not(VarIsNull(CurrencyEdit_headcount.EditValue)))
          then head := CurrencyEdit_headcount.EditValue;
          ComboBox_type_norma.ItemIndex := 0; //на семью
          CurrencyEdit_headcount.EditValue:=head;
          CurrencyEdit_living.Enabled:=False;
          CurrencyEdit_living.EditValue:=1;
          CurrencyEdit_headcount.Visible:=true;
          Label_headcound.Visible:=true;
      end;
      if (id_type_norma = 3) or (id_type_norma = -1) then
      begin
          if ((id_type_norma = 3) and (not(VarIsNull(CurrencyEdit_living.EditValue))))
          then liv := CurrencyEdit_living.EditValue;
          ComboBox_type_norma.ItemIndex := 1;  //на человека
          CurrencyEdit_headcount.Visible:=False;
          Label_headcound.Visible:=False;
          CurrencyEdit_headcount.EditValue:=0;
          CurrencyEdit_living.Enabled:=true;
          if id_type_norma = -1 then CurrencyEdit_living.EditValue:=1;
          if id_type_norma = 3 then CurrencyEdit_living.EditValue:=liv;
      end;
   end;
end;

procedure Tfrm_mesto_AE.Button_del_servicesClick(Sender: TObject);
var
  i : Integer;
  id_services : Int64;
begin
  if DM.MemoryData_mesto.RecordCount = 0 then exit;

  If MessageBox(Handle,PChar(st_ConstUnit.st_DeletePromt[PLanguageIndex]),PChar(st_ConstUnit.st_Confirmation_Caption[PLanguageIndex]),MB_YESNO or MB_ICONQUESTION)= mrNo
   then exit;

  id_services := DM.MemoryData_mesto['MemoryData_id'];

  DM.MemoryData_mesto.First;
  For i := 0 to DM.MemoryData_mesto.RecordCount - 1 do
   Begin
    if DM.MemoryData_mesto['MemoryData_id'] = id_services
     then DM.MemoryData_mesto.Delete;
    DM.MemoryData_mesto.Next;
   End;
end;

procedure Tfrm_mesto_AE.Button_add_servicesClick(Sender: TObject);
var
  ViewForm : Tfrm_mesto_serv_AE;
begin
  ViewForm := Tfrm_mesto_serv_AE.Create(self);
   ViewForm.aHandle := DM.DB.Handle;
  ViewForm.ShowModal;
  if ViewForm.ModalResult = mrOK then
   Begin

    DM.MemoryData_mesto.Insert;
    DM.MemoryData_mesto['MemoryData_id']              := ViewForm.id_serv;
    DM.MemoryData_mesto['MemoryData_name']            := ViewForm.ButtonEdit_param.Text;
    DM.MemoryData_mesto['MemoryData_summa']           := ViewForm.CurrencyEdit_summ.Value;
    DM.MemoryData_mesto.Post;

    ViewForm.Free;
   end;
end;

procedure Tfrm_mesto_AE.Button_edit_servicesClick(Sender: TObject);
var
  ViewForm : Tfrm_mesto_serv_AE;
  i : Integer;
  id_serv : int64;
begin
  If DM.MemoryData_mesto.RecordCount = 0 then Exit;

  ViewForm := Tfrm_mesto_serv_AE.Create(self);
  ViewForm.aHandle := DM.DB.Handle;

  id_serv := DM.MemoryData_mesto['MemoryData_id'];

  ViewForm.id_serv              := DM.MemoryData_mesto['MemoryData_id'];
  ViewForm.ButtonEdit_param.Text:= DM.MemoryData_mesto['MemoryData_name'];
  ViewForm.CurrencyEdit_summ.Value := DM.MemoryData_mesto['MemoryData_summa'];

  ViewForm.ShowModal;

  if ViewForm.ModalResult = mrOK then
   Begin
    DM.MemoryData_mesto.First;
    For i := 0 to DM.MemoryData_mesto.RecordCount - 1 do
     Begin
      if DM.MemoryData_mesto['MemoryData_id'] = id_serv
       then DM.MemoryData_mesto.Delete;
      DM.MemoryData_mesto.Next;
     End;

     DM.MemoryData_mesto.Insert;
     DM.MemoryData_mesto['MemoryData_id']              := ViewForm.id_serv;
     DM.MemoryData_mesto['MemoryData_name']            := ViewForm.ButtonEdit_param.Text;
     DM.MemoryData_mesto['MemoryData_summa']           := ViewForm.CurrencyEdit_summ.Value;
     DM.MemoryData_mesto.Post;
   end;

  ViewForm.Free;
end;

procedure Tfrm_mesto_AE.Serv_button_editPropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
var
  aParameter : TstSimpleParams;
  res : Variant;
begin
  aParameter                 := TstSimpleParams.Create;
  aParameter.Owner           := self;
  aParameter.Db_Handle       := aHandle;
  AParameter.Formstyle       := fsNormal;
  AParameter.WaitPakageOwner := self;
  aParameter.is_admin        := is_admin;

  res := RunFunctionFromPackage(aParameter, 'Studcity\st_services.bpl', 'getServices');

  If VarArrayDimCount(res) <> 0 then
   begin
     id_param_serves        := res[0];
     Serv_button_edit.Text  := res[1];
     id_opt                 := res[3];
   end;

  aParameter.Free;
end;

procedure Tfrm_mesto_AE.ComboBox_type_normaPropertiesChange(
  Sender: TObject);
begin
    if ComboBox_type_norma.ItemIndex = 0 then //на семью
    begin
        CurrencyEdit_living.Enabled:=False;
        CurrencyEdit_living.EditValue:=1;
        CurrencyEdit_headcount.Visible:=true;
        Label_headcound.Visible:=true;
        CurrencyEdit_headcount.EditValue:=0.35;
    end;
    if ComboBox_type_norma.ItemIndex = 1 then  //на человека
    begin
        CurrencyEdit_headcount.Visible:=False;
        Label_headcound.Visible:=False;
        CurrencyEdit_headcount.EditValue:=0;
        CurrencyEdit_living.Enabled:=true;
        CurrencyEdit_living.EditValue:=1;
    end


end;

end.
