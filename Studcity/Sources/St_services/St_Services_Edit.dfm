object frmServiceEdit: TfrmServiceEdit
  Left = 471
  Top = 274
  BorderStyle = bsDialog
  Caption = #1056#1086#1073#1086#1090#1072' '#1079' '#1087#1086#1089#1083#1091#1075#1086#1102
  ClientHeight = 168
  ClientWidth = 400
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 8
    Top = 8
    Width = 118
    Height = 13
    Caption = #1053#1072#1081#1084#1077#1085#1091#1074#1072#1085#1085#1103' '#1087#1086#1089#1083#1091#1075#1080
  end
  object Label2: TLabel
    Left = 8
    Top = 48
    Width = 72
    Height = 13
    Caption = #1064#1080#1092#1088' '#1087#1086#1089#1083#1091#1075#1080
  end
  object cxTextEdit1: TcxTextEdit
    Left = 8
    Top = 21
    Width = 385
    Height = 21
    Properties.MaxLength = 255
    TabOrder = 0
  end
  object cxTextEdit2: TcxTextEdit
    Left = 8
    Top = 64
    Width = 385
    Height = 21
    TabOrder = 1
  end
  object cxButton1: TcxButton
    Left = 225
    Top = 136
    Width = 75
    Height = 25
    Caption = #1054#1050
    TabOrder = 2
    OnClick = cxButton1Click
  end
  object cxButton2: TcxButton
    Left = 317
    Top = 136
    Width = 75
    Height = 25
    Caption = #1042#1110#1076#1084#1110#1085#1072
    TabOrder = 3
    OnClick = cxButton2Click
  end
  object ComboBox_type: TcxComboBox
    Left = 7
    Top = 104
    Width = 386
    Height = 21
    Properties.Items.Strings = (
      '1-'#1084#1077#1093#1072#1085#1080#1079#1084' '#1088#1072#1089#1095#1077#1090#1072' '#1082#1074#1072#1088#1090#1087#1083#1072#1090#1099
      '2-'#1084#1077#1093#1072#1085#1080#1079#1084' '#1088#1072#1089#1095#1077#1090#1072' '#1090#1077#1087#1083#1072
      
        '3-'#1084#1077#1093#1072#1085#1080#1079#1084' '#1088#1072#1089#1095#1077#1090#1072' '#1091#1089#1083#1091#1075': '#1101#1083#1077#1082#1090#1088#1086#1101#1085#1077#1088#1075#1080#1103', '#1093#1086#1083'. '#1080' '#1075#1086#1088'. '#1074#1086#1076#1072', '#1082#1072#1085#1072 +
        #1083#1080#1079#1072#1094#1080#1103', '#1075#1072#1079
      '4-'#1084#1077#1093#1072#1085#1080#1079#1084' '#1088#1072#1089#1095#1077#1090#1072' '#1082#1086#1081#1082#1086'-'#1084#1077#1089#1090#1072)
    Style.Color = clInfoBk
    TabOrder = 4
  end
  object cxLabel1: TcxLabel
    Left = 8
    Top = 88
    Width = 89
    Height = 17
    AutoSize = False
    ParentFont = False
    Style.Font.Charset = DEFAULT_CHARSET
    Style.Font.Color = clBlack
    Style.Font.Height = -11
    Style.Font.Name = 'MS Sans Serif'
    Style.Font.Style = []
    TabOrder = 5
    Caption = #1058#1080#1087' '#1088#1086#1079#1088#1072#1093#1091#1085#1082#1091
  end
end
