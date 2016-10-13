unit uSp_mesto_param;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxStyles, cxCustomData, cxGraphics, cxFilter, cxData,
  cxDataStorage, cxEdit, DB, cxDBData, ActnList, ImgList, dxBar,
  dxBarExtItems, cxGridLevel, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxClasses, cxControls, cxGridCustomView, cxGrid,
  ComCtrls, Ibase, uSp_mesto_DM;

type
  Tfrm_serv = class(TForm)
    StatusBar1: TStatusBar;
    Grid: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    NameField: TcxGridDBColumn;
    Name_ID: TcxGridDBColumn;
    cxGridLevel1: TcxGridLevel;
    dxBarManager1: TdxBarManager;
    dxBarLargeButton1: TdxBarLargeButton;
    dxBarLargeButton2: TdxBarLargeButton;
    dxBarLargeButton3: TdxBarLargeButton;
    dxBarLargeButtonRefresh: TdxBarLargeButton;
    dxBarLargeButton5: TdxBarLargeButton;
    dxBarLargeButton6: TdxBarLargeButton;
    dxBarLargeButton7: TdxBarLargeButton;
    dxBarLargeButton4: TdxBarLargeButton;
    dxBarLargeButton8: TdxBarLargeButton;
    dxBarLargeButton9: TdxBarLargeButton;
    LargeImages: TImageList;
    ActionList1: TActionList;
    ActionF10: TAction;
    MarkAll: TAction;
    UnMarkAll: TAction;
    InvertAll: TAction;
    cxStyleRepository1: TcxStyleRepository;
    cxStyle1: TcxStyle;
    cxStyle2: TcxStyle;
    cxStyle3: TcxStyle;
    cxStyle4: TcxStyle;
    procedure cxGridDBTableView1DblClick(Sender: TObject);
    procedure dxBarLargeButton7Click(Sender: TObject);
    procedure dxBarLargeButton6Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    DM : Tfrm_mesto_DM;
    id_ : Int64;
    Name: String;
    aHandle_s : TISC_DB_HANDLE;
    Constructor Create (AOwnwer : TComponent; aHandle: TISC_DB_HANDLE); overload;
  end;

var
  frm_serv: Tfrm_serv;

implementation

{$R *.dfm}

constructor Tfrm_serv.Create (AOwnwer : TComponent; aHandle: TISC_DB_HANDLE);
begin

  inherited Create(AOwnwer);
  DM := Tfrm_mesto_DM.Create(self);
  DM.DB.Handle := aHandle;
  DM.DB.Connected := True;

  DM.Transaction_Read.StartTransaction;
  DM.DataSet_Param.Close;
  DM.DataSet_Param.SelectSQL.Clear;
  DM.DataSet_Param.SQLs.SelectSQL.Text := 'select ID_MESTO_SERV as id, NAME_MESTO_SERV as name  from ST_SP_MESTO_SERV';
  DM.DataSet_Param.Open;
  DM.DataSet_Param.FetchAll;
  DM.DataSet_Param.First;


  cxGridDBTableView1.DataController.DataSource := DM.DataSource_Param;
end;

procedure Tfrm_serv.cxGridDBTableView1DblClick(Sender: TObject);
begin
 if Dm.DataSet_Param.RecordCount = 0 then exit;
  id_  := DM.DataSet_Param['ID'];
  Name := DM.DataSet_Param['NAME'];
  ModalResult := mrOK;
end;

procedure Tfrm_serv.dxBarLargeButton7Click(Sender: TObject);
begin
  close;
end;

procedure Tfrm_serv.dxBarLargeButton6Click(Sender: TObject);
begin
  cxGridDBTableView1DblClick(self);
end;

end.
