unit PlaceMissionForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxCustomData, cxStyles, cxTL, cxControls,
  cxInplaceContainer, cxTLData, cxDBTL, ComCtrls, ToolWin, cxClasses,
  cxGridBandedTableView, FIBQuery, pFIBQuery, pFIBStoredProc, FIBDatabase,
  pFIBDatabase, DB, FIBDataSet, pFIBDataSet, ImgList, ActnList, cxMaskEdit,
  PlaceMissionClass, Un_R_file_Alex, Menus, Ibase, cxLookAndFeelPainters,
  StdCtrls, cxRadioGroup, cxButtons, cxContainer, cxEdit, cxTextEdit,
  cxDropDownEdit, cxMRUEdit, ExtCtrls, cxGridTableView, cxFilter, cxData,
  cxDataStorage, cxDBData, cxGridLevel, cxGridCustomView,
  cxGridCustomTableView, cxGridDBTableView, cxGrid, Buttons, PlaceMissionAddChangeDate;

type
  TfmSpCostMode = (Edit, Sp, SpEdit);

  TfmPlaceMissionForm = class(TForm)
    cxDBTreeMain: TcxDBTreeList;
    CoolBar1: TCoolBar;
    ToolBar1: TToolBar;
    ToolBar2: TToolBar;
    ToolButtonAdd: TToolButton;
    ToolButtonChange: TToolButton;
    ToolButtonDelete: TToolButton;
    ToolButtonRefresh: TToolButton;
    ToolButtonTake: TToolButton;
    ToolButtonExit: TToolButton;
    ActionList1: TActionList;
    ImageList: TImageList;
    Database: TpFIBDatabase;
    TransactionRead: TpFIBTransaction;
    Short: TcxDBTreeListColumn;
    Full: TcxDBTreeListColumn;
    ActionClose: TAction;
    ActionAdd: TAction;
    ActionChange: TAction;
    ActionDelete: TAction;
    ActionRefresh: TAction;
    ActionTake: TAction;
    DataSourceTree: TDataSource;
    PopupButton: TPopupMenu;
    ActionAdd1: TMenuItem;
    ActionChange1: TMenuItem;
    ActionClose1: TMenuItem;
    ActionRefresh1: TMenuItem;
    ActionTake1: TMenuItem;
    ActionCancel: TAction;
    ActionFind: TAction;
    ActionCancel1: TMenuItem;
    Panel1: TPanel;
    cxRadLong_name: TcxRadioButton;
    cxRadShort_name: TcxRadioButton;
    cxMRUEditFind: TcxMRUEdit;
    cxButtonFind: TcxButton;
    DataSetFind: TpFIBDataSet;
    StyleRepository: TcxStyleRepository;
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
    cxStyle15: TcxStyle;
    cxStyle16: TcxStyle;
    cxStyle17: TcxStyle;
    cxStyleYellow: TcxStyle;
    cxStyleFontBlack: TcxStyle;
    cxStyleMalin: TcxStyle;
    cxStyleBorder: TcxStyle;
    cxStylemalinYellow: TcxStyle;
    cxStyleGrid: TcxStyle;
    GridTableViewStyleSheetDevExpress: TcxGridTableViewStyleSheet;
    DataSetMain: TpFIBDataSet;
    TransactionWrite: TpFIBTransaction;
    pFIBStoredProc: TpFIBStoredProc;
    Panel2: TPanel;
    Panel3: TPanel;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1DBColumn1: TcxGridDBColumn;
    cxGrid1DBTableView1DBColumn2: TcxGridDBColumn;
    cxGrid1DBTableView1DBColumn3: TcxGridDBColumn;
    BitBtnAdd: TBitBtn;
    BitBtnDel: TBitBtn;
    DSetPlaceMissionTMP: TpFIBDataSet;
    DSourcePlaceMissionTMP: TDataSource;
    ToolButton1: TToolButton;
    ToolButton2: TToolButton;
    procedure ActionCloseExecute(Sender: TObject);
    procedure ActionCancelExecute(Sender: TObject);
    procedure ActionRefreshExecute(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure ActionTakeExecute(Sender: TObject);
    procedure cxDBTreeMainDblClick(Sender: TObject);
    procedure ActionDeleteExecute(Sender: TObject);
    procedure ActionFindExecute(Sender: TObject);
    procedure ActionChangeExecute(Sender: TObject);
    procedure ActionAddExecute(Sender: TObject);
    procedure cxDBTreeMainKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure BitBtnAddClick(Sender: TObject);
    procedure BitBtnDelClick(Sender: TObject);
    procedure ToolButton1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure cxGrid1DBTableView1DblClick(Sender: TObject);
    procedure ToolButton2Click(Sender: TObject);
  private
  public
    min_date_place_mission : TDateTime;
    max_date_place_mission : TDateTime;
    key_session : Int64;
    myclass : TSpCostClass;
    ResValue : Variant;
    function AddVetka(long_name, shrot_name : String; LinkTo : int64):int64;
    function ChangeVetka(long_name, shrot_name : String; id, linkto : int64): int64;
    constructor Create(AOwner: TComponent; mclass: TSpCostClass; DBHandle: TISC_DB_HANDLE{TpFIBDatabase}; ReadTr : TISC_TR_HANDLE{TpFIBTransaction}; m : TfmSpCostMode); reintroduce; overload;
    destructor Destroy; override;
  end;

procedure LoadMRUEditFromRegistry(mruEdit: TcxMRUEdit; local: boolean; const editname: string);
procedure SaveMRUEditToRegistry(mruEdit: TcxMRUEdit; local: boolean; const editname: string);


implementation
uses PlaceMissionAddChange;
const
    CompanyName = 'OurCompany';
    ProductName = 'OurProgram';
{$R *.dfm}
procedure SaveMRUEditToRegistry(
    mruEdit: TcxMRUEdit;
    local: boolean;
    const editname: string);
var
    i: integer;
    key, key1: HKEY;
    path: PChar;
    a: string;
begin
    if local then key := HKEY_CURRENT_USER else key := HKEY_LOCAL_MACHINE;
    path := PChar('Software\'+CompanyName+'\'+ProductName+'\'+editname);
    RegDeleteKey(key, path);
    if RegCreateKey(key, path, key1)<>ERROR_SUCCESS then exit;
    for i:=0 to mruEdit.Properties.LookupItems.Count-1 do
    begin
        a := mruEdit.Properties.LookupItems.Strings[i];
        RegSetValueEx(key1, PChar(IntToStr(i)), 0, REG_SZ, PChar(a), Length(a)+1)
    end;
    RegCloseKey(key1);
end;

procedure LoadMRUEditFromRegistry(
    mruEdit: TcxMRUEdit;
    local: boolean;
    const editname: string);
var
    i: integer;
    key, key1: HKEY;
    path: PChar;
    name, value: PChar;
    vs: DWORD;
    ns: Cardinal;
    tp: DWORD;
begin
    if local then key := HKEY_CURRENT_USER else key := HKEY_LOCAL_MACHINE;
    path := PChar('Software\'+CompanyName+'\'+ProductName+'\'+editname);
    if RegOpenKey(key, path, key1)<>ERROR_SUCCESS then exit;
    mruEdit.Properties.LookupItems.Clear;

    RegQueryInfoKey(key1, nil, nil, nil, nil, nil, nil, nil, @ns, @vs, nil, nil);
    ns := ns + 1;
    vs := vs + 1;
    GetMem(name, ns);
    GetMem(value, vs);
    i := 0;
    repeat
        if RegEnumValue(key1, i, name, ns, nil, @tp, PByte(value), @vs) = ERROR_NO_MORE_ITEMS then break;
        if tp = REG_SZ then mruEdit.Properties.LookupItems.Append(value);
        i := i + 1;
    until false;
    RegCloseKey(key1);
    FreeMem(name);
    FreeMem(value);
end;

procedure TfmPlaceMissionForm.ActionCloseExecute(Sender: TObject);
begin
    if not(DSetPlaceMissionTMP.IsEmpty) then
    begin
    pFIBStoredProc.Transaction.StartTransaction;
      pFIBStoredProc.StoredProcName:='J4_SP_PLACE_DATE_VERIFICATION';
      pFIBStoredProc.Prepare;
      pFIBStoredProc.ParamByName('key_session').AsInt64:=key_session;
      try
          pFIBStoredProc.ExecProc;
          pFIBStoredProc.Transaction.Commit;
          if (pFIBStoredProc.ParamByName('error').AsInteger = 1) then
          begin
            ShowMessage('У датах перебування є помилка. Порушена цілостность!');
          end
          else
          begin
            min_date_place_mission := pFIBStoredProc.ParamByName('min_date').AsDate;
            max_date_place_mission := pFIBStoredProc.ParamByName('max_date').AsDate;
            close;
          end;
      except on E:Exception do begin
          pFIBStoredProc.Transaction.Rollback;
          ShowMessage(E.Message);
      end end;
    end
    else
    begin
      close;
    end;

end;

constructor TfmPlaceMissionForm.Create(AOwner: TComponent; mclass: TSpCostClass;
  DBHandle: TISC_DB_HANDLE{TpFIBDatabase}; ReadTr: {TpFIBTransaction}TISC_TR_HANDLE; m: TfmSpCostMode);
begin
    inherited Create (AOwner);
    myclass := mclass;

   { Database.Handle:=DBHandle;
    TransactionRead.DefaultDatabase := Database;   }

    If m = Edit then
    begin
         ToolButtonTake.Enabled   := false;
    end;
    if m = Sp then
    begin
         ToolButtonTake.Enabled   := true;
         ToolButtonAdd.Enabled    := false;
         ToolButtonChange.Enabled := false;
         ToolButtonDelete.Enabled := false;
    end;

    DataSetMain.Transaction.StartTransaction;
    DataSetMain.Close;
    DataSetMain.SelectSQL.Text:= 'select * from J4_SP_PLACE_MISSION';
    DataSetMain.Open;

    LoadMRUEditFromRegistry(cxMRUEditFind, true, 'J4_Sp_Cost_Form_Find');
end;

procedure TfmPlaceMissionForm.ActionCancelExecute(Sender: TObject);
begin
//
end;

procedure TfmPlaceMissionForm.ActionRefreshExecute(Sender: TObject);
begin
  DataSetMain.Close;
  DataSetMain.SelectSQL.Text:= 'select * from J4_SP_PLACE_MISSION';
  DataSetMain.Open;

  DSetPlaceMissionTMP.Close;
  DSetPlaceMissionTMP.SelectSQL.Text:= 'select * from J4_DT_AO_PLACE_MISSION_TMP_SEL(:i)';
  DSetPlaceMissionTMP.ParamByName('i').AsInt64 := key_session;
  DSetPlaceMissionTMP.Open;
  cxMRUEditFind.Text := '';
end;

procedure TfmPlaceMissionForm.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
    SaveMRUEditToRegistry(cxMRUEditFind, true, 'J4_Sp_Cost_Form_Find');
    DataSetMain.Close;
    if FormStyle = fsMDIChild then Action := caFree;
end;

procedure TfmPlaceMissionForm.ActionTakeExecute(Sender: TObject);
begin
    if not(DSetPlaceMissionTMP.IsEmpty) then
    begin
      pFIBStoredProc.Transaction.StartTransaction;
      pFIBStoredProc.StoredProcName:='J4_SP_PLACE_DATE_VERIFICATION';
      pFIBStoredProc.Prepare;
      pFIBStoredProc.ParamByName('key_session').AsInt64:=key_session;
      try
          pFIBStoredProc.ExecProc;
          pFIBStoredProc.Transaction.Commit;
          if (pFIBStoredProc.ParamByName('error').AsInteger = 1) then
          begin
            ShowMessage('У датах перебування є помилка. Порушена цілостность!');
          end
          else
          begin
            min_date_place_mission := pFIBStoredProc.ParamByName('min_date').AsDate;
            max_date_place_mission := pFIBStoredProc.ParamByName('max_date').AsDate;
            close;
          end;
      except on E:Exception do
        begin
          pFIBStoredProc.Transaction.Rollback;
          ShowMessage(E.Message);
        end
      end;
    end
    else
    begin
      close;
    end;  
end;

procedure TfmPlaceMissionForm.cxDBTreeMainDblClick(Sender: TObject);
var
    long_name, short_name : string;
    id : int64;
begin
    {id         := DataSetMain['ID_SP_AO_COST'];
    long_name  := DataSetMain['NAME'];
    short_name := DataSetMain['SHORT_NAME'];
    ResValue   := VarArrayOf([id, long_name, short_name]);
    close; }
    BitBtnAdd.Click;
end;

procedure TfmPlaceMissionForm.ActionDeleteExecute(Sender: TObject);
var
    id_del:int64;
begin
    if DataSetMain.IsEmpty then
    begin
        MessageBox(Handle, PChar(Un_R_file_Alex.J4_FORM_ERROR_DEL), PChar(Un_R_file_Alex.J4_FORM_WARNING), 16);
        exit;
    end
    else begin
        if MessageBox(Handle,Pchar(Un_R_file_Alex.J4_MESSAGE_DEL+' - '+DataSetMain.FieldByName('NAME').AsString),Pchar(Un_R_file_Alex.J4_MESSAGE_OK),mb_YesNO)=mrYes
        then
        begin
            // Удаляем поле
            if cxDBTreeMain.Selections[0].HasChildren then
            begin
                if MessageBox(Handle,'Під цією групою існує інша. Ви дійсно бажаєте видалити?',
                  Pchar('Підтвердження'),mb_YesNO)=IDNo then
                begin
                     exit;
                end;
            end;
            id_del := DataSetMain['LINKTO'];
            pFIBStoredProc.Transaction.StartTransaction;
            pFIBStoredProc.StoredProcName:='J4_SP_PLACE_MISSION_DEL';
            pFIBStoredProc.Prepare;
            pFIBStoredProc.ParamByName('D_ID').AsInt64:=DataSetMain['ID_PLACE_MISSION'];
            try
                pFIBStoredProc.ExecProc;
                pFIBStoredProc.Transaction.Commit;
            except on E:Exception do begin
                pFIBStoredProc.Transaction.Rollback;
                ShowMessage(E.Message);
            end end;
            ActionRefreshExecute(Sender);
            DataSetMain.Locate('ID_PLACE_MISSION',id_del, []);
        end;
    end;
end;

procedure TfmPlaceMissionForm.ActionFindExecute(Sender: TObject);
begin
    if cxMRUEditFind.Text = '' then
    begin
      MessageBox(Handle, PChar(Un_R_file_Alex.J4_DONT_NAME), PChar(Un_R_file_Alex.J4_FORM_WARNING), 16);
    end
    else
    begin
        DataSetFind.Close;
        DataSetFind.SelectSQL.Text := ' SELECT ID_PLACE_MISSION FROM J4_SP_PLACE_MISSION_FIND(:NAME,:IS_FIND_IN_SHORT)';
        DataSetFind.ParamByName('NAME').AsString := cxMRUEditFind.Text;
        if cxRadShort_name.Checked then
          DataSetFind.ParamByName('IS_FIND_IN_SHORT').AsInteger := 1
        else
          DataSetFind.ParamByName('IS_FIND_IN_SHORT').AsInteger := 0;
        DataSetFind.Open;
        if DataSetFind.IsEmpty then
           MessageBox(Handle, 'Нічого не знайдено', 'інформація', 16)
        else
           DataSetMain.Locate('id_place_mission', DataSetFind.FieldByName('id_place_mission').AsVariant, []);
        DataSetFind.Close;
    end;
end;

procedure TfmPlaceMissionForm.ActionChangeExecute(Sender: TObject);
var
    T : TfmPlaceMissionAddChange;
    id, linkto,j : int64;
    name, short : string;
begin
    if (not DataSetMain.IsEmpty) and (cxDBTreeMain.IsFocused)then
    begin
        T := TfmPlaceMissionAddChange.Create(self, myclass, self, change, name, short, id, linkto);
        t.cxEditLongName.Text := DataSetMain['NAME'];
        t.cxEditShortName.Text := DataSetMain['SHORT_NAME'];
        T.ShowModal;

        if (t.ModalResult = mrok) then
        begin
            j := ChangeVetka(t.cxEditLongName.Text, t.cxEditShortName.Text, DataSetMain['ID_PLACE_MISSION'], DataSetMain['LINKTO']);
            if j > 0 then
            begin
                ActionRefreshExecute(Sender);
                DataSetMain.Locate('ID_PLACE_MISSION', j, []);
            end else
            begin
                ActionRefreshExecute(Sender);;
                DataSetMain.Locate('ID_PLACE_MISSION', DataSetMain['ID_PLACE_MISSION'], []);
            end;
        end;
    end;
end;

procedure TfmPlaceMissionForm.ActionAddExecute(Sender: TObject);
var
    T : TfmPlaceMissionAddChange;
    linkto,j : int64;
begin
    if DataSetMain.IsEmpty then
    begin
        T := TfmPlaceMissionAddChange.Create(self, myclass, self, add, '', '', 0, 0);
        T.ShowModal;
        if (T.ModalResult = mrOk) then
        begin
          j := AddVetka(T.cxEditLongName.Text, T.cxEditShortName.Text, 0);
          If j > 0 then
          begin
              ActionRefreshExecute(Sender);
              DataSetMain.Locate('ID_PLACE_MISSION', j, []);
          end else
          begin
              ActionRefreshExecute(Sender);;
              DataSetMain.Locate('ID_PLACE_MISSION', 0, []);
          end;

        end;
        T.Free;
    end;

    if (not DataSetMain.IsEmpty) and (cxDBTreeMain.IsFocused) then
    begin
        if MessageBox(Handle, PChar(Un_R_file_Alex.J4_SP_RAZDELENIE_ADD_NEW_MESS), PChar(Un_R_file_Alex.J4_SP_RAZDELENIE_MESSAGA), MB_YESNO or MB_ICONQUESTION) = IDYES then
        begin
            T := TfmPlaceMissionAddChange.Create(self, myclass, self, add, '', '', 0, 0);
            T.ShowModal;
            if (T.ModalResult = mrOk) then
            begin
              
              j := AddVetka(T.cxEditLongName.Text, T.cxEditShortName.Text, 0);
              If j > 0 then
              begin
                  ActionRefreshExecute(Sender);
                  DataSetMain.Locate('ID_PLACE_MISSION', j, []);
              end else
              begin
                  ActionRefreshExecute(Sender);;
                  DataSetMain.Locate('ID_PLACE_MISSION', 0, []);
              end;

            end;

        end else
        begin
            linkto := DataSetMain['ID_PLACE_MISSION'];
            T := TfmPlaceMissionAddChange.Create(self, myclass, self, add, '', '', 0, linkto);
            T.ShowModal;
            if (T.ModalResult = mrOk) then
            begin
              j := AddVetka(T.cxEditLongName.Text, T.cxEditShortName.Text, linkto);
              If j > 0 then
              begin
                  ActionRefreshExecute(Sender);
                  DataSetMain.Locate('ID_PLACE_MISSION', j, []);
              end else
              begin
                  ActionRefreshExecute(Sender);;
                  DataSetMain.Locate('ID_PLACE_MISSION', linkto, []);
              end;

            end;
            T.Free;
        end;
    end;
end;

destructor TfmPlaceMissionForm.Destroy;
begin
    if FormStyle = fsMDIChild then myclass.Free;
    inherited;
end;

procedure TfmPlaceMissionForm.cxDBTreeMainKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
    if (KEY=VK_LEFT) then
    begin
       if cxDBTreeMain.FocusedNode<>nil
           then cxDBTreeMain.FocusedNode.Collapse(true);
    end;
    if (KEY=VK_RIGHT) then
    begin
       if cxDBTreeMain.FocusedNode<>nil
           then cxDBTreeMain.FocusedNode.Expand(false);
    end;
end;


function TfmPlaceMissionForm.AddVetka(long_name, shrot_name: String;
  LinkTo: int64): int64;
begin
    TransactionWrite.StartTransaction;
    pFIBStoredProc.StoredProcName := 'J4_SP_PLACE_MISSION_INS';
    pFIBStoredProc.ParamByName('D_LINKTO').asint64 := linkto;
    pFIBStoredProc.ParamByName('D_SHORT_NAME').Value := shrot_name;
    pFIBStoredProc.ParamByName('D_NAME').Value := long_name;

    try
        pFIBStoredProc.ExecProc;
        Result := pFIBStoredProc.parambyname('R_ID').AsInt64;
        TransactionWrite.Commit;
    except on E: Exception do begin
        TransactionWrite.Rollback;
        ShowMessage(E.Message);
        Result := 0;
    end end;
end;

function TfmPlaceMissionForm.ChangeVetka(long_name,
  shrot_name: String; id, linkto: int64): int64;
begin
    TransactionWrite.StartTransaction;
    pFIBStoredProc.StoredProcName := 'J4_SP_PLACE_MISSION_UPDATE';
    pFIBStoredProc.ParamByName('D_ID').asint64 := id;
    pFIBStoredProc.ParamByName('D_LINKTO').asint64 := linkto;
    pFIBStoredProc.ParamByName('D_SHORT_NAME').Value := shrot_name;
    pFIBStoredProc.ParamByName('D_NAME').Value := long_name;

    try
        pFIBStoredProc.ExecProc;
        Result := id;
        TransactionWrite.Commit;
    except on E: Exception do begin
        TransactionWrite.Rollback;
        ShowMessage(E.Message);
        Result := 0;
    end end;
end;

procedure TfmPlaceMissionForm.BitBtnAddClick(Sender: TObject);
var
  ViewForm: TfmPlaceMissionAddChangeDate;
  Result: Int64;
begin
  ViewForm := TfmPlaceMissionAddChangeDate.create(self);
  ViewForm.LabelPlaceMission.Caption := 'Місце перебування: ' + DataSetMain['NAME'];
  ViewForm.cxDateBegEdit.Date := Now;
  ViewForm.cxDateEndEdit.Date := Now;
  ViewForm.showmodal;

  if (ViewForm.ModalResult = mrOk) then
  begin
    TransactionWrite.StartTransaction;
    pFIBStoredProc.StoredProcName := 'J4_DT_AO_PLACE_MISSION_TMP_INS';
    pFIBStoredProc.ParamByName('KEY_SESSION').asint64 := key_session;
    pFIBStoredProc.ParamByName('ID_PLACE_MISSION').asint64 := DataSetMain['ID_PLACE_MISSION'];
    pFIBStoredProc.ParamByName('DATE_BEG').AsDate := ViewForm.cxDateBegEdit.Date;
    pFIBStoredProc.ParamByName('DATE_END').AsDate := ViewForm.cxDateEndEdit.Date;
    try
        pFIBStoredProc.ExecProc;
        Result := pFIBStoredProc.parambyname('ID_AO_PLACE_MISSION_TMP').AsInt64;
        TransactionWrite.Commit;
        DSetPlaceMissionTMP.Close;
        DSetPlaceMissionTMP.SelectSQL.Text:= 'select * from J4_DT_AO_PLACE_MISSION_TMP_SEL(:i)';
        DSetPlaceMissionTMP.ParamByName('i').AsInt64 := key_session;
        DSetPlaceMissionTMP.Open;
        DSetPlaceMissionTMP.Locate('id_ao_place_mission_tmp', Result, []);
    except on E: Exception do begin
        TransactionWrite.Rollback;
        ShowMessage(E.Message);
        Result := 0;
    end end;

  end;

end;

procedure TfmPlaceMissionForm.BitBtnDelClick(Sender: TObject);
begin
    if DSetPlaceMissionTMP.IsEmpty then
    begin
        MessageBox(Handle, PChar(Un_R_file_Alex.J4_FORM_ERROR_DEL), PChar(Un_R_file_Alex.J4_FORM_WARNING), 16);
        exit;
    end
    else
    begin
        if MessageBox(Handle,'Ви дійсно бажаєте вилучити запис?',Pchar(Un_R_file_Alex.J4_MESSAGE_OK),mb_YesNO)=mrYes
        then
        begin
            TransactionWrite.StartTransaction;
            pFIBStoredProc.StoredProcName := 'J4_DT_AO_PLACE_MISSION_TMP_DEL';
            pFIBStoredProc.ParamByName('ID_AO_PLACE_MISSION_TMP').asint64 :=
                DSetPlaceMissionTMP['ID_AO_PLACE_MISSION_TMP'];
            try
                pFIBStoredProc.ExecProc;
                TransactionWrite.Commit;
                DSetPlaceMissionTMP.Close;
                DSetPlaceMissionTMP.SelectSQL.Text:= 'select * from J4_DT_AO_PLACE_MISSION_TMP_SEL(:i)';
                DSetPlaceMissionTMP.ParamByName('i').AsInt64 := key_session;
                DSetPlaceMissionTMP.Open;
            except on E: Exception do begin
                TransactionWrite.Rollback;
                ShowMessage(E.Message);
            end end;
        end;
    end;
end;

procedure TfmPlaceMissionForm.ToolButton1Click(Sender: TObject);
begin
  if (MessageBox(Handle,
                 'Ви дійсно бажаєте видалити усі вибрані місця перебування у відрядженні?',
                 'Увага!',
                 mb_YesNO
                 ) = mrYes)
  then
  begin
    try
      TransactionWrite.StartTransaction;
      pFIBStoredProc.StoredProcName := 'J4_DT_AO_PL_MIS_TMP_DEL_BY_SES';
      pFIBStoredProc.ParamByName('KEY_SESSION').AsInt64 := key_session;
      pFIBStoredProc.ExecProc;
      TransactionWrite.Commit;
      ToolButtonRefresh.Click;
    except on E: Exception do
      begin
        TransactionWrite.Rollback;
        ShowMessage(E.Message);
      end;
    end;
  end;
end;

procedure TfmPlaceMissionForm.FormCreate(Sender: TObject);
begin
  ToolButtonTake.Visible := True;
end;

procedure TfmPlaceMissionForm.cxGrid1DBTableView1DblClick(Sender: TObject);
begin
  BitBtnDel.Click;
end;

procedure TfmPlaceMissionForm.ToolButton2Click(Sender: TObject);
var
  ViewForm: TfmPlaceMissionAddChangeDate;
  Result: Int64;
begin
  if not(DSetPlaceMissionTMP.IsEmpty) then
  begin
    ViewForm := TfmPlaceMissionAddChangeDate.create(self);
    ViewForm.LabelPlaceMission.Caption := 'Місце перебування: ' + DataSetMain['NAME'];
    ViewForm.cxDateBegEdit.Date := DSetPlaceMissionTMP['DATE_BEG'];
    ViewForm.cxDateEndEdit.Date := DSetPlaceMissionTMP['DATE_END'];;
    ViewForm.showmodal;

    if (ViewForm.ModalResult = mrOk) then
    begin
      TransactionWrite.StartTransaction;
      pFIBStoredProc.StoredProcName := 'J4_DT_AO_PLACE_MISSION_TMP_UPD';
      pFIBStoredProc.ParamByName('ID_AO_PLACE_MISSION_TMP').asint64 := DSetPlaceMissionTMP['ID_AO_PLACE_MISSION_TMP'];
      pFIBStoredProc.ParamByName('DATE_BEG').AsDate := ViewForm.cxDateBegEdit.Date;
      pFIBStoredProc.ParamByName('DATE_END').AsDate := ViewForm.cxDateEndEdit.Date;
      try
        pFIBStoredProc.ExecProc;
        Result := pFIBStoredProc.parambyname('ID_AO_PLACE_MISSION_TMP').AsInt64;
        TransactionWrite.Commit;
        DSetPlaceMissionTMP.Close;
        DSetPlaceMissionTMP.Open;
        DSetPlaceMissionTMP.Locate('id_ao_place_mission_tmp', Result, []);
      except on E: Exception do
        begin
          TransactionWrite.Rollback;
          ShowMessage(E.Message);
          Result := 0;
        end
      end;
    end;
  end;
end;

end.
