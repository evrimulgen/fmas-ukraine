unit PlaceMissionFindForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxCustomData, cxStyles, cxTL, cxControls,
  cxInplaceContainer, cxTLData, cxDBTL, ComCtrls, ToolWin, cxClasses,
  cxGridBandedTableView, FIBQuery, pFIBQuery, pFIBStoredProc, FIBDatabase,
  pFIBDatabase, DB, FIBDataSet, pFIBDataSet, ImgList, ActnList, cxMaskEdit,
   Un_R_file_Alex, Menus, Ibase, cxLookAndFeelPainters,
  StdCtrls, cxRadioGroup, cxButtons, cxContainer, cxEdit, cxTextEdit,
  cxDropDownEdit, cxMRUEdit, ExtCtrls, cxGridTableView, cxFilter, cxData,
  cxDataStorage, cxDBData, cxGridLevel, cxGridCustomView,
  cxGridCustomTableView, cxGridDBTableView, cxGrid, Buttons;

type
  TfmSpCostMode = (Edit, Sp, SpEdit);

  TfmPlaceMissionFindForm = class(TForm)
    cxDBTreeMain: TcxDBTreeList;
    CoolBar1: TCoolBar;
    ToolBar2: TToolBar;
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
    DSetPlaceMissionTMP: TpFIBDataSet;
    DSourcePlaceMissionTMP: TDataSource;
    procedure ActionCloseExecute(Sender: TObject);
    procedure ActionCancelExecute(Sender: TObject);
    procedure ActionRefreshExecute(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure ActionTakeExecute(Sender: TObject);
    procedure cxDBTreeMainDblClick(Sender: TObject);
    procedure ActionDeleteExecute(Sender: TObject);
    procedure ActionFindExecute(Sender: TObject);
    procedure cxDBTreeMainKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormCreate(Sender: TObject);
    procedure cxGrid1DBTableView1DblClick(Sender: TObject);
  private
  public
    min_date_place_mission : TDateTime;
    max_date_place_mission : TDateTime;
    key_session : Int64;

    ResValue : Variant;
    function AddVetka(long_name, shrot_name : String; LinkTo : int64):int64;
    function ChangeVetka(long_name, shrot_name : String; id, linkto : int64): int64;
    constructor Create(AOwner: TComponent;  DBHandle: TISC_DB_HANDLE{TpFIBDatabase}; ReadTr : TISC_TR_HANDLE{TpFIBTransaction}; m : TfmSpCostMode); reintroduce; overload;
    destructor Destroy; override;
  end;

procedure LoadMRUEditFromRegistry(mruEdit: TcxMRUEdit; local: boolean; const editname: string);
procedure SaveMRUEditToRegistry(mruEdit: TcxMRUEdit; local: boolean; const editname: string);


implementation

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

procedure TfmPlaceMissionFindForm.ActionCloseExecute(Sender: TObject);
begin
  close;
end;

constructor TfmPlaceMissionFindForm.Create(AOwner: TComponent; DBHandle: TISC_DB_HANDLE{TpFIBDatabase}; ReadTr: {TpFIBTransaction}TISC_TR_HANDLE; m: TfmSpCostMode);
begin
    inherited Create (AOwner);
      { Database.Handle:=DBHandle;
    TransactionRead.DefaultDatabase := Database;   }

    If m = Edit then
    begin
         ToolButtonTake.Enabled   := false;
    end;
    if m = Sp then
    begin
         ToolButtonTake.Enabled   := true;
         //ToolButtonAdd.Enabled    := false;
         //ToolButtonChange.Enabled := false;
         //ToolButtonDelete.Enabled := false;
    end;

    DataSetMain.Transaction.StartTransaction;
    DataSetMain.Close;
    DataSetMain.SelectSQL.Text:= 'select * from J4_SP_PLACE_MISSION';
    DataSetMain.Open;

    LoadMRUEditFromRegistry(cxMRUEditFind, true, 'J4_Sp_Cost_Form_Find');
end;

procedure TfmPlaceMissionFindForm.ActionCancelExecute(Sender: TObject);
begin
//
end;

procedure TfmPlaceMissionFindForm.ActionRefreshExecute(Sender: TObject);
begin
  DataSetMain.Close;
  DataSetMain.SelectSQL.Text:= 'select * from J4_SP_PLACE_MISSION';
  DataSetMain.Open;
  cxMRUEditFind.Text := '';
end;

procedure TfmPlaceMissionFindForm.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
    SaveMRUEditToRegistry(cxMRUEditFind, true, 'J4_Sp_Cost_Form_Find');

end;

procedure TfmPlaceMissionFindForm.ActionTakeExecute(Sender: TObject);
begin
  ModalResult := mrOk;
end;

procedure TfmPlaceMissionFindForm.cxDBTreeMainDblClick(Sender: TObject);
var
    long_name, short_name : string;
    id : int64;
begin
  ModalResult := mrOk;
    {id         := DataSetMain['ID_SP_AO_COST'];
    long_name  := DataSetMain['NAME'];
    short_name := DataSetMain['SHORT_NAME'];
    ResValue   := VarArrayOf([id, long_name, short_name]);
    close; }
    //BitBtnAdd.Click;
end;

procedure TfmPlaceMissionFindForm.ActionDeleteExecute(Sender: TObject);
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

procedure TfmPlaceMissionFindForm.ActionFindExecute(Sender: TObject);
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

destructor TfmPlaceMissionFindForm.Destroy;
begin
    
    inherited;
end;

procedure TfmPlaceMissionFindForm.cxDBTreeMainKeyDown(Sender: TObject; var Key: Word;
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


function TfmPlaceMissionFindForm.AddVetka(long_name, shrot_name: String;
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

function TfmPlaceMissionFindForm.ChangeVetka(long_name,
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

procedure TfmPlaceMissionFindForm.FormCreate(Sender: TObject);
begin
  ToolButtonTake.Visible := True;
end;

procedure TfmPlaceMissionFindForm.cxGrid1DBTableView1DblClick(Sender: TObject);
begin
  //BitBtnDel.Click;
end;

end.
