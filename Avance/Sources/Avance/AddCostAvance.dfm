object fmAddCostAvance: TfmAddCostAvance
  Left = 647
  Top = 252
  Width = 438
  Height = 211
  Caption = 'fmAddCostAvance'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  object Bevel1: TBevel
    Left = 4
    Top = 3
    Width = 410
    Height = 102
  end
  object cxCostEdit: TcxMRUEdit
    Left = 120
    Top = 8
    Width = 281
    Height = 21
    Properties.OnButtonClick = cxMRUEditPropertiesButtonClick
    Style.Color = 16776176
    TabOrder = 2
  end
  object GroupBox1: TGroupBox
    Left = 160
    Top = 112
    Width = 254
    Height = 52
    TabOrder = 0
    object cxButtonClose: TcxButton
      Left = 153
      Top = 19
      Width = 93
      Height = 25
      Action = ActionClose
      Cancel = True
      TabOrder = 1
    end
    object cxButton1: TcxButton
      Left = 23
      Top = 19
      Width = 122
      Height = 25
      Action = ActionAdd
      Default = True
      TabOrder = 0
    end
  end
  object cxLabel1: TcxLabel
    Left = 32
    Top = 8
    Width = 51
    Height = 17
    TabOrder = 1
    Caption = #1074#1080#1090#1088#1072#1090#1072
  end
  object cxLabel2: TcxLabel
    Left = 32
    Top = 32
    Width = 51
    Height = 17
    TabOrder = 3
    Caption = #1089#1091#1084#1072
  end
  object cxLabel3: TcxLabel
    Left = 240
    Top = 32
    Width = 60
    Height = 17
    TabOrder = 4
    Caption = #1091' '#1090'.'#1095'. '#1055#1044#1042
  end
  object cxMemoComment: TcxMemo
    Left = 120
    Top = 56
    Width = 281
    Height = 41
    Lines.Strings = (
      'cxMemoComment')
    Style.Color = 16776176
    TabOrder = 5
  end
  object cxLabel4: TcxLabel
    Left = 32
    Top = 64
    Width = 53
    Height = 17
    TabOrder = 6
    Caption = #1087#1088#1080#1084#1110#1090#1082#1072
  end
  object cxCurrencyEditSumma: TcxCurrencyEdit
    Left = 120
    Top = 32
    Width = 113
    Height = 21
    Properties.Alignment.Horz = taRightJustify
    Properties.Alignment.Vert = taVCenter
    Properties.DisplayFormat = ',0.00'#39#39';-,0.00'#39#39
    Style.Color = 16776176
    TabOrder = 7
  end
  object cxCurrencyEditSummaPDV: TcxCurrencyEdit
    Left = 296
    Top = 32
    Width = 105
    Height = 21
    Properties.Alignment.Horz = taRightJustify
    Properties.Alignment.Vert = taVCenter
    Properties.DisplayFormat = ',0.00'#39#39';-,0.00'#39#39
    Style.Color = 16776176
    TabOrder = 8
  end
  object ActionList1: TActionList
    Left = 104
    Top = 112
    object ActionAdd: TAction
      Caption = 'ActionAdd'
      ShortCut = 13
      OnExecute = ActionAddExecute
    end
    object ActionClose: TAction
      Caption = 'ActionClose'
      ShortCut = 27
      OnExecute = ActionCloseExecute
    end
  end
  object pFIBTransaction1: TpFIBTransaction
    TimeoutAction = TARollback
    Left = 48
    Top = 112
  end
  object pFIBDatabase1: TpFIBDatabase
    DBParams.Strings = (
      'lc_ctype=WIN1251'
      'password=masterkey'
      'user_name=SYSDBA')
    SQLDialect = 3
    Timeout = 0
    WaitForRestoreConnect = 0
    Left = 16
    Top = 112
  end
end
