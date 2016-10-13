object frm_mesto_DM: Tfrm_mesto_DM
  OldCreateOrder = False
  Left = 545
  Top = 299
  Height = 242
  Width = 562
  object Transaction_Read: TpFIBTransaction
    DefaultDatabase = DB
    TimeoutAction = TARollback
    Left = 80
    Top = 16
  end
  object Transaction_write: TpFIBTransaction
    DefaultDatabase = DB
    TimeoutAction = TARollback
    Left = 80
    Top = 72
  end
  object DataSet_read: TpFIBDataSet
    Database = DB
    Transaction = Transaction_Read
    UpdateTransaction = Transaction_write
    Left = 176
    Top = 16
    poSQLINT64ToBCD = True
  end
  object DataSet_serv: TpFIBDataSet
    Database = DB
    Transaction = Transaction_Read
    UpdateTransaction = Transaction_write
    Left = 176
    Top = 72
    poSQLINT64ToBCD = True
  end
  object DataSet_main: TpFIBDataSet
    Database = DB
    Transaction = Transaction_Read
    UpdateTransaction = Transaction_write
    Left = 176
    Top = 128
    poSQLINT64ToBCD = True
  end
  object DataSource_read: TDataSource
    DataSet = DataSet_read
    Left = 272
    Top = 16
  end
  object DataSource_serv: TDataSource
    DataSet = MemoryData_mesto
    Left = 272
    Top = 72
  end
  object DataSource_main: TDataSource
    DataSet = DataSet_main
    Left = 272
    Top = 128
  end
  object StoredProc: TpFIBStoredProc
    Database = DB
    Transaction = Transaction_write
    Left = 80
    Top = 128
  end
  object DataSet_reports: TpFIBDataSet
    Database = DB
    Transaction = Transaction_Read
    UpdateTransaction = Transaction_write
    Left = 24
    Top = 144
    poSQLINT64ToBCD = True
  end
  object DB: TpFIBDatabase
    DBParams.Strings = (
      'lc_ctype=WIN1251'
      'user_name=SYSDBA'
      'password=masterkey')
    DefaultTransaction = Transaction_Read
    DefaultUpdateTransaction = Transaction_write
    SQLDialect = 3
    Timeout = 0
    WaitForRestoreConnect = 0
    Left = 16
    Top = 40
  end
  object DataSource_Param: TDataSource
    DataSet = DataSet_Param
    Left = 472
    Top = 80
  end
  object MemoryData_mesto: TRxMemoryData
    FieldDefs = <
      item
        Name = 'MemoryData_id'
        DataType = ftInteger
      end
      item
        Name = 'MemoryData_name'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'MemoryData_buget'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'MemoryData_tariff'
        DataType = ftFloat
      end
      item
        Name = 'MemoryData_norma'
        DataType = ftFloat
      end
      item
        Name = 'MemoryData_summa'
        DataType = ftFloat
      end
      item
        Name = 'MemoryData_id_sm'
        DataType = ftInteger
      end
      item
        Name = 'MemoryData_id_rz'
        DataType = ftInteger
      end
      item
        Name = 'MemoryData_id_st'
        DataType = ftInteger
      end
      item
        Name = 'MemoryData_id_kekv'
        DataType = ftInteger
      end
      item
        Name = 'MemoryData_sm_tittle'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'MemoryData_rz_tittle'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'MemoryData_st_tittle'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'MemoryData_kekv_tittle'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'MemoryData_check_norma'
        DataType = ftInteger
      end
      item
        Name = 'MemoryData_st_options'
        DataType = ftInteger
      end
      item
        Name = 'MemoryData_id_type_norma'
        DataType = ftInteger
      end
      item
        Name = 'MemoryData_name_type_norma'
        DataType = ftString
        Size = 20
      end>
    Left = 376
    Top = 16
    object MemoryData_mestoMemoryData_id: TIntegerField
      FieldName = 'MemoryData_id'
    end
    object MemoryData_mestoMemoryData_name: TStringField
      FieldName = 'MemoryData_name'
      Size = 255
    end
    object MemoryData_mestoMemoryData_summa: TFloatField
      FieldName = 'MemoryData_summa'
    end
  end
  object DataSet_Param: TpFIBDataSet
    Database = DB
    Transaction = Transaction_Read
    UpdateTransaction = Transaction_write
    Left = 376
    Top = 80
    poSQLINT64ToBCD = True
  end
end
