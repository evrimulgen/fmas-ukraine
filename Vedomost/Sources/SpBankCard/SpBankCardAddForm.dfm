object fmSpBankCardAddForm: TfmSpBankCardAddForm
  Left = 284
  Top = 183
  Width = 477
  Height = 284
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnActivate = FormActivate
  PixelsPerInch = 96
  TextHeight = 13
  object cxTextEdit1: TcxTextEdit
    Left = 16
    Top = 24
    Width = 153
    Height = 21
    Properties.MaxLength = 16
    Style.Color = 15204351
    TabOrder = 0
  end
  object cxDateEdit1: TcxDateEdit
    Left = 264
    Top = 24
    Width = 121
    Height = 21
    Style.Color = 15204351
    TabOrder = 1
  end
  object cxCheckBox1: TcxCheckBox
    Left = 14
    Top = 181
    Width = 267
    Height = 21
    Properties.DisplayUnchecked = 'False'
    TabOrder = 2
  end
  object cxButtonEdit1: TcxButtonEdit
    Left = 16
    Top = 72
    Width = 329
    Height = 21
    Properties.Buttons = <
      item
        Default = True
        Kind = bkEllipsis
      end>
    Properties.ReadOnly = True
    Properties.OnButtonClick = cxButtonEdit1PropertiesButtonClick
    Style.Color = 15204351
    TabOrder = 3
  end
  object cxMemo1: TcxMemo
    Left = 16
    Top = 112
    Width = 449
    Height = 49
    Properties.MaxLength = 255
    Style.Color = 15204351
    TabOrder = 4
  end
  object cxButton1: TcxButton
    Left = 336
    Top = 216
    Width = 121
    Height = 25
    Action = AClose
    Cancel = True
    TabOrder = 6
    Glyph.Data = {
      32040000424D3204000000000000360000002800000014000000110000000100
      180000000000FC030000120B0000120B00000000000000000000C8D0D4C8D0D4
      C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4B54A009C31009C3100C8D0D4C8D0D4C8D0
      D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8
      D0D4C8D0D4C8D0D4C8D0D4B54A00FFEFA5FFEFA55A31185A3118C8D0D4C8D0D4
      C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0
      D4C8D0D4C8D0D4B54A00FFEFA5FFEFA5FFE78CFFE78C313131313131C8D0D4C8
      D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4
      FF6331B54A00FFEFA5FFEFA5FFE78CFFE78CFFCE63FFC65A3131319C31009C31
      00C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4FF31FFFF6331B5
      4A00FFEFA5FFEFA5FFE78CFFE78CFFCE63FFC65AFF9C00FF9C639C3100C8D0D4
      C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4FF6331B54A00FFEF
      A5FFEFA5000000080808FFCE63FFC65AFF9C00FF9C639C3100C8D0D4C8D0D4C8
      D0D4C8D0D4C8D0D4C8D0D4080808C8D0D4C8D0D4FF6331B54A00FFEFA5FFEFA5
      FFDE84FFDE84FFCE63FFC65AFF9C00FF9C639C3100C8D0D4C8D0D4C8D0D4C8D0
      D4C8D0D4000000000000C8D0D4C8D0D4FF6331B54A00F7FFFFFFDE84FFDE84FF
      DE84FFDE84FFC65AFF9C00FF9C639C3100C8D0D4C8D0D4C8D0D4C8D0D4000000
      FFFFCE000000000000000000000000B54A00F7FFFFFFEFA5FFDE84FFDE84FFDE
      84FFC65AFF9C00FF9C639C3100C8D0D4C8D0D4C8D0D4000000FFFFCEFFFFCEFF
      FFBDFFC65AFFA510FF9C00B54A00F7FFFFFFEFA5FFDE84FFDE84FFCE63FFC65A
      FF9C00FF9C639C3100C8D0D4C8D0D4C8D0D4C8D0D4000000FFFFCE0000000000
      00000000080808B54A00F7FFFFFFFFFFFFDE84FFDE84FFCE63FFC65AFF9C00FF
      9C639C3100C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4080808000000C8D0D4C8D0D4
      FF6331B54A00F7FFFFFFFFFFFFDE84FFDE84FFCE63FFC65AFF9C00FF9C639C31
      00C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4000000C8D0D4FF31FFFF6331C6
      5A00C65A00FFFFFFFFDE84FFDE84FFCE63FFC65AFF9C00FF9C009C3100C8D0D4
      C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4FF6331FFD673FFD6
      73C65A00C65A00CE6363FFCE63FFC65AFF9C00FF9C009C3100C8D0D4C8D0D4C8
      D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4FF6331FFD673FFD673FFD673
      FFD673C65A00C65A00CE6363FF9C00FF9C009C3100C8D0D4C8D0D4C8D0D4C8D0
      D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4FF6331FFDE84FFDE84FFDE84FFDE84FF
      DE84FFDE84C65A00C65A00C65A009C3100C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4
      C8D0D4C8D0D4C8D0D4C8D0D4FF6331FF6331FF6331FF6331FF6331FF6331FF63
      31FF6331FF6331FF6331FF6331C8D0D4C8D0D4C8D0D4}
    UseSystemPaint = False
  end
  object cxButton2: TcxButton
    Left = 184
    Top = 216
    Width = 137
    Height = 25
    Action = AAdd
    Default = True
    TabOrder = 5
    Glyph.Data = {
      36030000424D3603000000000000360000002800000010000000100000000100
      18000000000000030000130B0000130B00000000000000000000FF00FFFF00FF
      FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
      FFFF00FFFF00FFFF00FFFF00FF9A9D9E9A9D9E9A9D9E9A9D9E9A9D9E9A9D9E9A
      9D9E9A9D9E9A9D9E9A9D9E9A9D9E9A9D9E9A9D9EFF00FFFF00FFA6A8A9FEFEFD
      FEFEFDFEFEFDFEFEFDFEFEFDFCFCFBF9F9F8F5F5F4F1F1F0EDEDECE9E9E8E0E0
      E0D2D2D29A9D9EFF00FFA6A8A9FEFEFDFEFEFDFEFEFDFEFEFDFEFEFDFEFEFDFC
      FCFBF9F9F8F5F5F4F1F1F0EDEDECE9E9E8E0E0E09A9D9EFF00FFA6A8A9FEFEFD
      FEFEFDFEFEFDFEFEFDFEFEFDFEFEFDFEFEFDFCFCFBF9F9F8F5F5F4F1F1F0EDED
      ECE9E9E89A9D9EFF00FFA6A8A9FEFEFDFEFEFDFEFEFDFEFEFDFEFEFDFEFEFDFE
      FEFDFEFEFDFCFCFBF9F9F8F5F5F4F1F1F0EDEDEC9A9D9EFF00FFA6A8A9FEFEFD
      FEFEFDFEFEFDFEFEFDFEFEFDFEFEFDFEFEFDFEFEFDFEFEFDFCFCFBF9F9F8F5F5
      F4F1F1F09A9D9EFF00FFA6A8A9FEFEFDFEFEFDFEFEFDFEFEFDFEFEFDFEFEFDFE
      FEFDFEFEFDFEFEFDFEFEFDFCFCFBF9F9F8F5F5F49A9D9EFF00FFA6A8A9FEFEFD
      FEFEFDFEFEFDFEFEFDFEFEFDFEFEFDFEFEFDFEFEFDFEFEFDFEFEFDFEFEFDFEFE
      FDFAFAF99A9D9EFF00FFA6A8A9FEFEFDFEFEFDFEFEFDFEFEFDFEFEFDFEFEFDFE
      FEFDFEFEFDFEFEFDFEFEFD087019087019FEFEFD9A9D9EFF00FFA6A8A9108C31
      108C31108C31108C31108C31108C31108C31108C3110B53110B53114A02E0870
      1910B5319A9D9EFF00FF10B53173D69C10B53110B53110B53110B53110B53110
      B53129C6630870190870191FA943087019087019087019FF00FFFF00FF10B531
      73D69C2BBD5F2BBD5F21A542FF00FFFF00FFFF00FF29C66314A02E14A02E1FA9
      431FA943087019FF00FFFF00FFFF00FF10B53110B53120A439FF00FFFF00FFFF
      00FFFF00FFFF00FFFF00FF14A02E087019FF00FFFF00FFFF00FFFF00FFFF00FF
      FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF14A02E0870
      19FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
      00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF}
    UseSystemPaint = False
  end
  object cxLabel1: TcxLabel
    Left = 16
    Top = 6
    Width = 209
    Height = 17
    AutoSize = False
    TabOrder = 7
  end
  object cxLabel2: TcxLabel
    Left = 264
    Top = 6
    Width = 193
    Height = 16
    AutoSize = False
    TabOrder = 8
  end
  object cxLabel3: TcxLabel
    Left = 16
    Top = 54
    Width = 265
    Height = 16
    AutoSize = False
    TabOrder = 9
  end
  object cxLabel4: TcxLabel
    Left = 17
    Top = 94
    Width = 265
    Height = 16
    AutoSize = False
    TabOrder = 10
  end
  object ActionList1: TActionList
    Left = 288
    Top = 8
    object AClose: TAction
      Caption = 'AClose'
      ShortCut = 27
      OnExecute = ACloseExecute
    end
    object AAdd: TAction
      Caption = 'AAdd'
      OnExecute = AAddExecute
    end
    object ActionSelectLang: TAction
      Caption = 'ActionSelectLang'
      ShortCut = 24652
      OnExecute = ActionSelectLangExecute
    end
  end
  object Db: TpFIBDatabase
    DBParams.Strings = (
      'lc_ctype=win1251'
      'password=masterkey'
      'user_name=sysdba')
    SQLDialect = 3
    Timeout = 0
    WaitForRestoreConnect = 0
    Left = 192
    Top = 8
  end
  object DataSet: TpFIBDataSet
    Left = 224
    Top = 8
    poSQLINT64ToBCD = True
  end
  object Transaction: TpFIBTransaction
    TimeoutAction = TARollback
    TRParams.Strings = (
      'write'
      'wait'
      'rec_version'
      'read_committed')
    TPBMode = tpbDefault
    Left = 256
    Top = 8
  end
end