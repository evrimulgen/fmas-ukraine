object FormCalculationsDM: TFormCalculationsDM
  OldCreateOrder = False
  Left = 662
  Top = 305
  Height = 176
  Width = 275
  object DB: TpFIBDatabase
    SQLDialect = 3
    Timeout = 0
    WaitForRestoreConnect = 0
    Left = 24
    Top = 8
  end
  object FormCalculationsDSet: TpFIBDataSet
    Database = DB
    Transaction = ReadTransaction
    Left = 40
    Top = 64
    poSQLINT64ToBCD = True
  end
  object ReadTransaction: TpFIBTransaction
    DefaultDatabase = DB
    TimeoutAction = TARollback
    Left = 96
    Top = 8
  end
  object WriteTransaction: TpFIBTransaction
    DefaultDatabase = DB
    TimeoutAction = TARollback
    Left = 184
    Top = 8
  end
  object FormCalculationsDSource: TDataSource
    DataSet = FormCalculationsDSet
    Left = 168
    Top = 64
  end
end