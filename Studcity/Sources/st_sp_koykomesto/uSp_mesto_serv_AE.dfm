object frm_mesto_serv_AE: Tfrm_mesto_serv_AE
  Left = 408
  Top = 273
  Width = 342
  Height = 171
  Caption = #1089#1090#1072#1090#1090#1110
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  DesignSize = (
    326
    132)
  PixelsPerInch = 96
  TextHeight = 13
  object cxServ: TcxLabel
    Left = 8
    Top = 8
    Width = 115
    Height = 17
    TabOrder = 0
    Caption = #1053#1072#1081#1084#1077#1085#1091#1074#1072#1085#1085#1103' '#1089#1090#1072#1090#1090#1110
  end
  object ButtonEdit_param: TcxButtonEdit
    Left = 8
    Top = 24
    Width = 313
    Height = 21
    Properties.Buttons = <
      item
        Default = True
        Kind = bkEllipsis
      end>
    Properties.ReadOnly = True
    Properties.OnButtonClick = ButtonEdit_type_studPropertiesButtonClick
    Style.Color = clInfoBk
    TabOrder = 1
  end
  object CurrencyEdit_summ: TcxCurrencyEdit
    Left = 8
    Top = 69
    Width = 121
    Height = 21
    EditValue = 0.000000000000000000
    Properties.DisplayFormat = '0.00'
    Style.Color = clInfoBk
    TabOrder = 2
  end
  object cxLbl_Summ: TcxLabel
    Left = 8
    Top = 50
    Width = 34
    Height = 17
    TabOrder = 3
    Caption = #1057#1091#1084#1072
  end
  object OKButton: TcxButton
    Left = 157
    Top = 101
    Width = 75
    Height = 25
    Anchors = []
    Caption = #1055#1088#1080#1081#1085#1103#1090#1080
    TabOrder = 4
    OnClick = OKButtonClick
    LookAndFeel.Kind = lfUltraFlat
    LookAndFeel.NativeStyle = False
  end
  object CancelButton: TcxButton
    Left = 242
    Top = 101
    Width = 75
    Height = 25
    Anchors = []
    Cancel = True
    Caption = #1042#1110#1076#1084#1110#1085#1080#1090#1080
    TabOrder = 5
    OnClick = CancelButtonClick
    LookAndFeel.Kind = lfUltraFlat
  end
end
