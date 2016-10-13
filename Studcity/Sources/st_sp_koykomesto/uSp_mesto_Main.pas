//***********************************************************************
//* Проект "Студгородок"                                                *
//* Справочник койко-мест                                               *                            *
//***********************************************************************
unit uSp_mesto_Main;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxStyles, cxCustomData, cxGraphics, cxFilter, cxData,
  cxDataStorage, cxEdit, DB, cxDBData, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGridLevel, cxClasses, cxControls,
  cxGridCustomView, cxGrid, Menus, ComCtrls, ToolWin, ExtCtrls,
  cxContainer, cxCheckBox, cxDBEdit, StdCtrls, ImgList, FIBDatabase,
  pFIBDatabase, FIBDataSet, pFIBDataSet, cxCalendar, cxCurrencyEdit,
  FIBQuery, pFIBQuery, pFIBStoredProc, ActnList, cxTextEdit, dxBar,
  dxStatusBar, AccMGMT, st_ConstUnit, uSp_mesto_AE, st_common_funcs,
  dxBarExtItems, Placemnt, uSp_mesto_DM, st_common_types, st_Consts_Messages,
  st_Common_Messages, uSp_mesto_Copy;

type
  Tfrm_mesto_main = class(TForm)
    cxStyleRepository1: TcxStyleRepository;
    cxStyle1: TcxStyle;
    cxStyle3: TcxStyle;
    ActionList1: TActionList;
    AddAction: TAction;
    EditAction: TAction;
    DeleteAction: TAction;
    RefreshAction: TAction;
    ExitAction: TAction;
    cxStyle2: TcxStyle;
    cxStyle4: TcxStyle;
    cxStyle5: TcxStyle;
    LargeImages: TImageList;
    DisabledLargeImages: TImageList;
    SearchAction: TAction;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    PopupMenu1: TPopupMenu;
    MenuItem1: TMenuItem;
    MenuItem2: TMenuItem;
    MenuItem3: TMenuItem;
    MenuItem4: TMenuItem;
    HotKey_StatusBar: TdxStatusBar;
    N4: TMenuItem;
    PopupImageList: TImageList;
    SelectAction: TAction;
    BarManager: TdxBarManager;
    AddButton: TdxBarLargeButton;
    EditButton: TdxBarLargeButton;
    DeleteButton: TdxBarLargeButton;
    RefreshButton: TdxBarLargeButton;
    ExitButton: TdxBarLargeButton;
    SelectButton: TdxBarLargeButton;
    Search_BarEdit: TdxBarEdit;
    StFormStorage: TFormStorage;
    act_help: TAction;
    cxGrid1DBTableView1DBColumn1: TcxGridDBColumn;
    cxGrid1DBTableView1DBColumn2: TcxGridDBColumn;
    cxGrid1DBTableView1DBColumn3: TcxGridDBColumn;
    cxGrid1DBTableView1DBColumn4: TcxGridDBColumn;
    cxGrid1DBTableView1DBColumn6: TcxGridDBColumn;
    dxBarPopupMenu1: TdxBarPopupMenu;
    dxBarButton1: TdxBarButton;
    dxBarButton2: TdxBarButton;
    cxGrid1DBTableView1DBColumn5: TcxGridDBColumn;
    cxGrid1DBTableView1DBColumn7: TcxGridDBColumn;
    cxGrid1DBTableView1DBColumn8: TcxGridDBColumn;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure ExitButtonClick(Sender: TObject);
    procedure RefreshButtonClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure DeleteButtonClick(Sender: TObject);
    procedure AddButtonClick(Sender: TObject);
    procedure EditButtonClick(Sender: TObject);
    procedure DataSet_mainAfterScroll(DataSet: TDataSet);
    procedure DataSet_mainAfterOpen(DataSet: TDataSet);
    procedure act_helpExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure dxBarButton2Click(Sender: TObject);
  private
    PLanguageIndex: byte;
    DM : Tfrm_mesto_DM;
    is_admin : Boolean;
    procedure FormIniLanguage();
  public
    res : Variant;
    constructor Create(aParameter : TstSimpleParams);reintroduce;
  end;
  
var
  frm_mesto_main: Tfrm_mesto_main;

implementation

{uses St_PfLg_Add_Form, ;}

{$R *.dfm}

procedure Tfrm_mesto_main.FormIniLanguage();
begin
  // индекс языка (1-укр, 2 - рус)
  PLanguageIndex:=              stLanguageIndex;

  //названия кнопок
  ExitButton.Caption :=         st_ConstUnit.st_ExitBtn_Caption[PLanguageIndex];
  ExitButton.Hint :=            st_ConstUnit.st_ExitBtn_Caption[PLanguageIndex];
  AddButton.Caption :=          st_ConstUnit.st_InsertBtn_Caption[PLanguageIndex];
  AddButton.Hint :=             st_ConstUnit.st_InsertBtn_Caption[PLanguageIndex];
  EditButton.Caption :=         st_ConstUnit.st_EditBtn_Caption[PLanguageIndex];
  EditButton.Hint :=            st_ConstUnit.st_EditBtn_Caption[PLanguageIndex];
  DeleteButton.Caption :=       st_ConstUnit.st_DeleteBtn_Caption[PLanguageIndex];
  DeleteButton.Hint :=          st_ConstUnit.st_DeleteBtn_Caption[PLanguageIndex];
  RefreshButton.Caption :=      st_ConstUnit.st_RefreshBtn_Caption[PLanguageIndex];
  RefreshButton.Hint :=         st_ConstUnit.st_RefreshBtn_Caption[PLanguageIndex];
  SelectButton.Caption :=      st_ConstUnit.st_Select_Caption[PLanguageIndex];
  SelectButton.Hint :=         st_ConstUnit.st_Select_Caption[PLanguageIndex];

  HotKey_StatusBar.Panels[0].Text := st_ConstUnit.st_HelpBtn_ShortCut[PLanguageIndex]    + st_ConstUnit.st_HelpBtn_Caption[PLanguageIndex];
  HotKey_StatusBar.Panels[1].Text := st_ConstUnit.st_InsertBtn_ShortCut[PLanguageIndex]  + st_ConstUnit.st_InsertBtn_Caption[PLanguageIndex];
  HotKey_StatusBar.Panels[2].Text := st_ConstUnit.st_EditBtn_ShortCut[PLanguageIndex]    + st_ConstUnit.st_EditBtn_Caption[PLanguageIndex];
  HotKey_StatusBar.Panels[3].Text := st_ConstUnit.st_DeleteBtn_ShortCut[PLanguageIndex]  + st_ConstUnit.st_DeleteBtn_Caption[PLanguageIndex];
  HotKey_StatusBar.Panels[4].Text := st_ConstUnit.st_RefreshBtn_ShortCut[PLanguageIndex] + st_ConstUnit.st_RefreshBtn_Caption[PLanguageIndex];
  HotKey_StatusBar.Panels[5].Text := st_ConstUnit.st_Select_Caption[PLanguageIndex]      + st_ConstUnit.st_EnterBtn_ShortCut[PLanguageIndex];
  HotKey_StatusBar.Panels[6].Text := st_ConstUnit.st_ExitBtn_ShortCut[PLanguageIndex]    + st_ConstUnit.st_ExitBtn_Caption[PLanguageIndex];
  HotKey_StatusBar.Hint           := st_ConstUnit.st_HotKeys[PLanguageIndex];

  MenuItem1.Caption := st_ConstUnit.st_InsertBtn_Caption[PLanguageIndex];
  MenuItem2.Caption := st_ConstUnit.st_EditBtn_Caption[PLanguageIndex];
  MenuItem3.Caption := st_ConstUnit.st_DeleteBtn_Caption[PLanguageIndex];
  MenuItem4.Caption := st_ConstUnit.st_RefreshBtn_Caption[PLanguageIndex];
  N4.Caption        := st_ConstUnit.st_ExitBtn_Caption[PLanguageIndex];

  MenuItem1.Hint := st_ConstUnit.st_InsertBtn_Caption[PLanguageIndex];
  MenuItem2.Hint := st_ConstUnit.st_EditBtn_Caption[PLanguageIndex];
  MenuItem3.Hint := st_ConstUnit.st_DeleteBtn_Caption[PLanguageIndex];
  MenuItem4.Hint := st_ConstUnit.st_RefreshBtn_Caption[PLanguageIndex];
  N4.Hint        := st_ConstUnit.st_ExitBtn_Caption[PLanguageIndex];
end;

procedure Tfrm_mesto_main.FormClose(Sender: TObject;
  var Action: TCloseAction);
var
 id_build, id_service, id_type_norma : Int64;
 result : Integer;  
begin
  DM.DataSet_read.Close;
  DM.DataSet_read.SQLs.SelectSQL.Text := 'select * from ST_SP_MESTO_CHECK_DATA';
  DM.DataSet_read.Open;

  id_build      := DM.DataSet_read['ID_BUILD'];
  id_service    := DM.DataSet_read['ID_SERVICE'];
  id_type_norma := DM.DataSet_read['ID_TYPE_NORMA'];
  result        := DM.DataSet_read['RESULT'];

  DM.DataSet_read.close;

  if result <> 0 then
   Begin
    ShowMessage('Виявлено порушення цілісності по датах!');
    RefreshButtonClick(self);
    DM.DataSet_main.Locate('ID_BUILD; ID_SERVICE; ID_TYPE_NORMA', VarArrayOf([id_build,id_service,id_type_norma]), []);
    exit;
   end;
   
  StFormStorage.SaveFormPlacement;
   If FormStyle = fsMDIChild
    then action := caFree
    else DM.Free;
end;

procedure Tfrm_mesto_main.ExitButtonClick(Sender: TObject);
begin
  close;
end;

procedure Tfrm_mesto_main.RefreshButtonClick(Sender: TObject);
var
  id : int64;
begin
  Screen.Cursor:=crHourGlass;

  id := -1;

  if DM.DataSet_main.RecordCount <> 0 then id := DM.DataSet_main['ID_MESTO'];

  DM.DataSet_main.Close;
  DM.DataSet_main.SQLs.SelectSQL.Text := 'SELECT * FROM ST_SP_MESTO_SEL ORDER BY Date_Beg DESC, Name_Service DESC, Kol_Living DESC';
  DM.DataSet_main.Open;

  DM.DataSet_main.Locate('ID_MESTO', id, []);

  Screen.Cursor:=crDefault;
end;

procedure Tfrm_mesto_main.FormCreate(Sender: TObject);
begin
  FormIniLanguage();
end;

procedure Tfrm_mesto_main.DeleteButtonClick(Sender: TObject);
var
 i : Byte;
begin
  {if not Is_Admin then
   if CheckPermission('/ROOT/StudCity/Sprav/sp_Effective_Area','Del') <> 0
    then
     begin
      messagebox(handle,
      pchar(st_Consts_Messages.st_NotHaveRights[PLanguageIndex]
      +#13+ st_Consts_Messages.st_GoToAdmin[PLanguageIndex]),
      pchar(st_Consts_Messages.st_ActionDenied[PLanguageIndex]), MB_ICONWARNING or mb_Ok);
      exit;
     end;
   }

  i:= st_Common_Messages.stShowMessage(st_Confirmation_Caption[PLanguageIndex], st_warning_Delete[PLanguageIndex], mtConfirmation, [mbYes, mbNo]);
  If ((i = 7) or (i= 2)) then exit;

  DM.StoredProc.StoredProcName := 'ST_SP_MESTO_DEL';
  DM.Transaction_write.StartTransaction;
  DM.StoredProc.Prepare;
  DM.StoredProc.ParamByName('ID_MESTO').AsInteger := DM.DataSet_main['ID_MESTO'];
  DM.StoredProc.ExecProc;
  try
   DM.StoredProc.Transaction.Commit;
   except
   DM.StoredProc.Transaction.Rollback;
   raise;
  end;
  DM.StoredProc.Close;

  RefreshButton.Click;
end;

procedure Tfrm_mesto_main.AddButtonClick(Sender: TObject);
var
  ViewForm : Tfrm_mesto_AE;
  new_id: Int64;
  DateNow :tdate;
  i: integer;
begin

  ViewForm := Tfrm_mesto_AE.Create(Self, DM.DB.Handle, -1);
  ViewForm.Caption := st_ConstUnit.st_InsertBtn_Caption[PLanguageIndex];
  ViewForm.is_admin := is_admin;

  DateNow := now;

  ViewForm.DateEdit_beg.EditValue := DateNow;
  ViewForm.DateEdit_end.EditValue := StrToDate('01.01.2050');
  ViewForm.id_type_norma := -1;
  ViewForm.ShowModal;

  if ViewForm.ModalResult = mrOK then
   begin
    Screen.Cursor:= crHourGlass;
    //Добавляем льготу
    DM.StoredProc.StoredProcName := 'ST_SP_MESTO_INS';
    DM.Transaction_write.StartTransaction;
    DM.StoredProc.Prepare;
    DM.StoredProc.ParamByName('ID_BUILD').AsInt64      := ViewForm.id_build;
    if ViewForm.ComboBox_type_norma.ItemIndex=0 then
    DM.StoredProc.ParamByName('ID_TYPE_NORMA').AsInt64 := 1;
    if ViewForm.ComboBox_type_norma.ItemIndex=1 then
    DM.StoredProc.ParamByName('ID_TYPE_NORMA').AsInt64 := 3;
    DM.StoredProc.ParamByName('ID_SERVICE').AsInt64    := ViewForm.id_param_serves;
    DM.StoredProc.ParamByName('DATE_BEG').AsDate       := ViewForm.DateEdit_beg.EditValue;
    DM.StoredProc.ParamByName('DATE_END').AsDate       := ViewForm.DateEdit_end.EditValue;
    DM.StoredProc.ParamByName('KOL_LIVING').AsInteger  := ViewForm.CurrencyEdit_living.EditValue;
    DM.StoredProc.ParamByName('HEAD_COUNT').AsFloat    := ViewForm.CurrencyEdit_headcount.EditValue;

    DM.StoredProc.ExecProc;

    new_id :=  DM.StoredProc['ID_MESTO'].AsInt64;

    ViewForm.DM.MemoryData_mesto.first;
    for i := 0 to ViewForm.DM.MemoryData_mesto.RecordCount - 1 do
     Begin
      DM.StoredProc.StoredProcName := 'ST_DT_MESTO_SUMM_INS';
      DM.StoredProc.Prepare;
      DM.StoredProc.ParamByName('ID_MESTO_SERV').AsInt64    := ViewForm.DM.MemoryData_mesto['MemoryData_id'];
      DM.StoredProc.ParamByName('SUMMA').AsDouble           := ViewForm.DM.MemoryData_mesto['MemoryData_summa'];
      DM.StoredProc.ParamByName('ID_MESTO').AsInt64         := new_id;

      DM.StoredProc.ExecProc;

      ViewForm.DM.MemoryData_mesto.Next;
     end;
    try
     DM.Transaction_write.Commit;
    except
     DM.Transaction_write.Rollback;
     raise;
    end;
    DM.StoredProc.Close;

    RefreshButtonClick(self);
    DM.DataSet_main.Locate('ID_MESTO', new_id, []);
   end;

  ViewForm.Free;
  Screen.Cursor:= crDefault;
end;

procedure Tfrm_mesto_main.EditButtonClick(Sender: TObject);
var
 edit_id, i : integer;
 ViewForm      : Tfrm_mesto_AE;
begin
 { if not Is_Admin then
   if CheckPermission('/ROOT/StudCity/Sprav/Lgot','Edit') <> 0
    then
     begin
      messagebox(handle,
      pchar(st_Consts_Messages.st_NotHaveRights[PLanguageIndex]
      +#13+ st_Consts_Messages.st_GoToAdmin[PLanguageIndex]),
      pchar(st_Consts_Messages.st_ActionDenied[PLanguageIndex]), MB_ICONWARNING or mb_Ok);
      exit;
     end;
  }

  edit_id          := DM.DataSet_main['ID_MESTO'];
  ViewForm         := Tfrm_mesto_AE.Create(Self, DM.DB.Handle, edit_id);
  ViewForm.Caption := st_ConstUnit.st_EditBtn_Caption[PLanguageIndex];

  if DM.DataSet_main['ID_BUILD'] <> null
   then ViewForm.id_build := DM.DataSet_main['ID_BUILD']
   else  ViewForm.id_build := -1;

  if DM.DataSet_main['ID_TYPE_NORMA'] <> null
   then ViewForm.id_type_norma := DM.DataSet_main['ID_TYPE_NORMA']
   else  ViewForm.id_type_norma := -1;

  if DM.DataSet_main['NAME_BUILD'] <> null
   then ViewForm.ButtonEdit_Builds.Text := DM.DataSet_main['NAME_BUILD']
   else ViewForm.ButtonEdit_Builds.Text := '';

   if DM.DataSet_main['ID_SERVICE'] <> null
   then ViewForm.id_param_serves := DM.DataSet_main['ID_SERVICE']
   else  ViewForm.id_param_serves := -1;

   if DM.DataSet_main['NAME_SERVICE'] <> null
   then ViewForm.Serv_button_edit.Text := DM.DataSet_main['NAME_SERVICE']
   else ViewForm.Serv_button_edit.Text := '';

   if DM.DataSet_main['Kol_Living'] <> null
   then ViewForm.CurrencyEdit_living.EditValue := DM.DataSet_main['Kol_Living']
   else ViewForm.CurrencyEdit_living.EditValue := 1;

   if DM.DataSet_main['Head_Count'] <> null
   then ViewForm.CurrencyEdit_headcount.EditValue := DM.DataSet_main['Head_Count']
   else ViewForm.CurrencyEdit_headcount.EditValue := 0;

  ViewForm.DateEdit_beg.EditValue           := DM.DataSet_main['DATE_BEG'];
  ViewForm.DateEdit_end.EditValue           := DM.DataSet_main['DATE_END'];

  DM.DataSet_read.Close;
  DM.DataSet_read.SQLs.SelectSQL.Text := 'Select * from ST_DT_MESTO_SUMM_SEL(:ID_MESTO)';
  DM.DataSet_read.paramByName('ID_MESTO').AsInt64 := edit_id;
  DM.DataSet_read.Open;
  DM.DataSet_read.FetchAll;
  DM.DataSet_read.First;

  For i := 0 to DM.DataSet_read.RecordCount - 1 do
   Begin
    ViewForm.DM.MemoryData_mesto.Insert;

    ViewForm.DM.MemoryData_mesto['MemoryData_id']      := DM.DataSet_read['ID_MESTO_SERV'];
    ViewForm.DM.MemoryData_mesto['MemoryData_name']    := DM.DataSet_read['NAME_MESTO_SERV'];
    ViewForm.DM.MemoryData_mesto['MemoryData_summa']   := DM.DataSet_read['SUMMA'];

    ViewForm.DM.MemoryData_mesto.post;
    DM.DataSet_read.Next;
   end;

  ViewForm.ShowModal;

  If  ViewForm.ModalResult = mrOK then
   begin
    Screen.Cursor:= crSQLWait;

    DM.StoredProc.StoredProcName := 'ST_SP_MESTO_UPD';
    DM.StoredProc.Transaction.StartTransaction;
    DM.StoredProc.Prepare;
    DM.StoredProc.ParamByName('ID_MESTO').AsInt64   := edit_id;
    DM.StoredProc.ParamByName('ID_BUILD').AsInt64   := ViewForm.id_build;
    if ViewForm.ComboBox_type_norma.ItemIndex=0 then
    DM.StoredProc.ParamByName('ID_TYPE_NORMA').AsInt64 := 1;
    if ViewForm.ComboBox_type_norma.ItemIndex=1 then
    DM.StoredProc.ParamByName('ID_TYPE_NORMA').AsInt64 := 3;
    DM.StoredProc.ParamByName('ID_SERVICE').AsInt64   := ViewForm.id_param_serves;
    DM.StoredProc.ParamByName('DATE_BEG').AsDate    := ViewForm.DateEdit_beg.EditValue;
    DM.StoredProc.ParamByName('DATE_END').AsDate    := ViewForm.DateEdit_end.EditValue;
    DM.StoredProc.ParamByName('KOL_LIVING').AsInteger  := ViewForm.CurrencyEdit_living.EditValue;
    DM.StoredProc.ParamByName('HEAD_COUNT').AsFloat    := ViewForm.CurrencyEdit_headcount.Value;
    DM.StoredProc.ExecProc;

    edit_id :=  DM.StoredProc['ID_MESTO_OUT'].AsInt64;

       //добавление услуг
    ViewForm.DM.MemoryData_mesto.first;
    for i := 0 to ViewForm.DM.MemoryData_mesto.RecordCount - 1 do
     Begin
      DM.StoredProc.StoredProcName := 'ST_DT_MESTO_SUMM_INS';
      DM.StoredProc.Prepare;
      DM.StoredProc.ParamByName('ID_MESTO_SERV').AsInt64    := ViewForm.DM.MemoryData_mesto['MemoryData_id'];
      DM.StoredProc.ParamByName('SUMMA').AsDouble           := ViewForm.DM.MemoryData_mesto['MemoryData_summa'];
      DM.StoredProc.ParamByName('ID_MESTO').AsInt64         := edit_id;

      DM.StoredProc.ExecProc;

      ViewForm.DM.MemoryData_mesto.Next;
     end;

    try
     DM.StoredProc.Transaction.Commit;
     DM.StoredProc.Close;
    except
     DM.StoredProc.Transaction.Rollback;
     DM.StoredProc.Close;
     raise;
    end;

    RefreshButtonClick(self);
    DM.DataSet_main.Locate('ID_MESTO', edit_id , []);  
   end;

 ViewForm.Free;      

 Screen.Cursor:= crDefault;  
end;

procedure Tfrm_mesto_main.DataSet_mainAfterScroll(DataSet: TDataSet);
begin
  if DM.DataSet_main.RecordCount = 0 then exit;
end;

procedure Tfrm_mesto_main.DataSet_mainAfterOpen(DataSet: TDataSet);
begin
  if DM.DataSet_main.RecordCount = 0 then
   begin
    EditButton.Enabled := false;
    DeleteButton.Enabled := false;
   end
  else
   begin
    EditButton.Enabled := true;
    DeleteButton.Enabled := true;
   end;
end;

constructor Tfrm_mesto_main.Create(aParameter: TstSimpleParams);
begin
  inherited Create(Aparameter.Owner);
  Screen.Cursor:= crHourGlass;

  DM := Tfrm_mesto_DM.Create(self);
  DM.DB.Handle := aParameter.Db_Handle;
  DM.DB.Connected := True;
  DM.Transaction_Read.StartTransaction;

  is_admin := aParameter.is_admin;

  cxGrid1DBTableView1.DataController.DataSource := DM.DataSource_main;
  DM.DataSet_main.AfterScroll := DataSet_MainAfterScroll;
  DM.DataSet_main.AfterOpen   := DataSet_mainAfterOpen;

  RefreshButtonClick(self);

  Screen.Cursor:= crDefault;

  StFormStorage.RestoreFormPlacement;
end;

procedure Tfrm_mesto_main.act_helpExecute(Sender: TObject);
begin
  Load_Help(self, DM.DB.Handle, 'sp_lgots');
end;

procedure Tfrm_mesto_main.FormShow(Sender: TObject);
begin
  if formstyle = fsMDIChild
   then selectButton.Visible := ivNever
   else selectButton.Visible := ivAlways;
end;

procedure Tfrm_mesto_main.dxBarButton2Click(Sender: TObject);
var
  ViewForm : Tfrm_Mesto_Copy;
  new_id: Int64;
begin
{  if not Is_Admin then
   if CheckPermission('/ROOT/StudCity/Sprav/Lgot','Add') <> 0
    then
     begin
      messagebox(handle,
      pchar(st_Consts_Messages.st_NotHaveRights[PLanguageIndex]
      +#13+ st_Consts_Messages.st_GoToAdmin[PLanguageIndex]),
      pchar(st_Consts_Messages.st_ActionDenied[PLanguageIndex]), MB_ICONWARNING or mb_Ok);
      exit;
     end;
 }
  ViewForm := Tfrm_mesto_copy.Create(Self, DM.DB.Handle);
  ViewForm.Caption := st_ConstUnit.st_InsertBtn_Caption[PLanguageIndex];

  ViewForm.ShowModal;

  if ViewForm.ModalResult = mrOK then
   begin
    Screen.Cursor:= crHourGlass;
    //Добавляем льготу
    DM.StoredProc.StoredProcName := 'ST_SP_MESTO_COPY';
    DM.Transaction_write.StartTransaction;
    DM.StoredProc.Prepare;
    DM.StoredProc.ParamByName('ID_BUILD_OLD').AsInt64 := DM.DataSet_main['ID_BUILD'];
    DM.StoredProc.ParamByName('ID_BUILD_NEW').AsInt64 := ViewForm.id_build;
    DM.StoredProc.ExecProc;

    new_id :=  DM.StoredProc['ID_MESTO'].AsInt64;

    try
     DM.Transaction_write.Commit;
    except
     DM.Transaction_write.Rollback;
     raise;
    end;
    DM.StoredProc.Close;

    RefreshButtonClick(self);
    DM.DataSet_main.Locate('ID_MESTO', new_id, []);
   end;

  ViewForm.Free;
  Screen.Cursor:= crDefault;
end;

end.
