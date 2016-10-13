unit uSp_mesto_DM;

interface

uses
  SysUtils, Classes, frxExportImage, frxExportPDF, frxExportRTF,
  frxExportXLS, frxClass, frxExportTXT, frxBarcode, frxDBSet, frxDesgn,
  FIBQuery, pFIBQuery, pFIBStoredProc, DB, FIBDataSet, pFIBDataSet,
  FIBDatabase, pFIBDatabase, RxMemDS;

type
  Tfrm_mesto_DM = class(TDataModule)
    Transaction_Read: TpFIBTransaction;
    Transaction_write: TpFIBTransaction;
    DataSet_read: TpFIBDataSet;
    DataSet_serv: TpFIBDataSet;
    DataSet_main: TpFIBDataSet;
    DataSource_read: TDataSource;
    DataSource_serv: TDataSource;
    DataSource_main: TDataSource;
    StoredProc: TpFIBStoredProc;
    DataSet_reports: TpFIBDataSet;
    DB: TpFIBDatabase;
    DataSource_Param: TDataSource;
    MemoryData_mesto: TRxMemoryData;
    MemoryData_mestoMemoryData_id: TIntegerField;
    MemoryData_mestoMemoryData_name: TStringField;
    MemoryData_mestoMemoryData_summa: TFloatField;
    DataSet_Param: TpFIBDataSet;
  private
    { Private declarations }
  public
  end;

var
  frm_mesto_DM: Tfrm_mesto_DM;

implementation

{$R *.dfm}

{ TfrmDM }

end.
