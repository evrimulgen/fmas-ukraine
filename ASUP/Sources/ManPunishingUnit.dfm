object ManPunishingAddForm: TManPunishingAddForm
  Left = 288
  Top = 170
  BorderStyle = bsSingle
  Caption = 'ManPunishingAddForm'
  ClientHeight = 525
  ClientWidth = 504
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = [fsBold]
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnResize = FormResize
  PixelsPerInch = 96
  TextHeight = 13
  object GroupBox1: TGroupBox
    Left = 0
    Top = 0
    Width = 504
    Height = 321
    Align = alTop
    TabOrder = 0
    OnClick = GroupBox1Click
    object Label1: TLabel
      Left = 8
      Top = 20
      Width = 26
      Height = 13
      Caption = #1055#1030#1041':'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGreen
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label2: TLabel
      Left = 8
      Top = 104
      Width = 63
      Height = 13
      Caption = #1057#1090#1103#1075#1085#1077#1085#1085#1103
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGreen
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label3: TLabel
      Left = 8
      Top = 257
      Width = 42
      Height = 13
      Caption = #1053#1072#1082#1072#1079':'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGreen
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object OrderLabel: TLabel
      Left = 56
      Top = 257
      Width = 63
      Height = 13
      Caption = 'OrderLabel'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label5: TLabel
      Left = 136
      Top = 257
      Width = 80
      Height = 13
      Caption = #1044#1072#1090#1072' '#1085#1072#1082#1072#1079#1091':'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGreen
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Date: TLabel
      Left = 224
      Top = 257
      Width = 28
      Height = 13
      Caption = 'Date'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label6: TLabel
      Left = 8
      Top = 48
      Width = 62
      Height = 13
      Caption = #1055#1110#1076#1088#1086#1079#1076#1110#1083':'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGreen
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label11: TLabel
      Left = 8
      Top = 72
      Width = 49
      Height = 13
      Caption = #1055#1086#1089#1072#1076#1072':'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGreen
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label9: TLabel
      Left = 8
      Top = 168
      Width = 55
      Height = 13
      Caption = #1055#1088#1080#1095#1080#1085#1072':'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGreen
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label4: TLabel
      Left = 8
      Top = 192
      Width = 54
      Height = 26
      Caption = #1055#1110#1076#1089#1090#1072#1074#1072#13#10#1085#1072#1082#1072#1079#1091':'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGreen
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object FIOEdit: TCheckEdit
      Left = 80
      Top = 16
      Width = 297
      Height = 21
      ReadOnly = True
      TabOrder = 0
      InputSet = isAll
    end
    object PunishingSpComboBox: TSpComboBox
      Left = 80
      Top = 100
      Width = 297
      Height = 21
      Style = csDropDownList
      ItemHeight = 13
      TabOrder = 1
      OnChange = PunishingSpComboBoxChange
      ItemCount = 5
      SpOpenItem = '* '#1044#1086#1074#1110#1076#1085#1080#1082' ...'
      AutoDrop = True
      SpParams.Table = 'Sp_Punishing'
      SpParams.IdField = 'Id_Punishing'
      SpParams.SpFields = 'Name_Punishing'
      SpParams.Title = #1044#1086#1074#1110#1076#1085#1080#1082' '#1089#1090#1103#1075#1085#1077#1085#1100
      SpParams.ComboField = 'Name_Punishing'
      SpParams.ColumnNames = #1057#1090#1103#1075#1085#1077#1085#1085#1103
      SpParams.InsertProcName = 'Sp_Punishing_Insert'
      SpParams.UpdateProcName = 'Sp_Punishing_Update'
      SpParams.DeleteProcName = 'Sp_Punishing_Delete'
      SpParams.DontHideFirstColumn = False
      SpParams.SpMode = [spfAdd, spfModify, spfDelete, spfFind, spfSelect, spfExt]
    end
    object DeleteButton: TBitBtn
      Left = 112
      Top = 281
      Width = 105
      Height = 33
      Hint = #1042#1080#1083#1091#1095#1080#1090#1080' '#1074#1080#1073#1088#1072#1085#1077' '#1091#1085#1080#1079#1091' '#1089#1090#1103#1075#1085#1077#1085#1085#1103
      BiDiMode = bdLeftToRight
      Caption = #1042#1080#1083#1091#1095#1080#1090#1080
      Default = True
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentBiDiMode = False
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 2
      OnClick = DeleteButtonClick
      Glyph.Data = {
        8E0B0000424D8E0B00000000000036000000280000002C000000160000000100
        180000000000580B0000C40E0000C40E00000000000000000000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000CC0000CCFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF868686868686FF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000CC0000CC0000
        CCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF868686868686
        868686FFFFFFFFFFFFFFFFFF0000CC0000CC0000CCFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000CC0000CC00
        00CCFFFFFFFFFFFFFFFFFFFFFFFF868686868686868686FFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8686868686
        86868686FFFFFFFFFFFFFFFFFFFFFFFF0000CC0000CC0000CCFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000CC0000CC
        0000CCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF868686868686868686FFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF86868686
        8686868686FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000CC0000CC0000CC0000CC
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000CC0000
        CC0000CCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF86868686868686868686
        8686FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF868686
        868686868686FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000
        FF0000CC0000CC0000CCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000CC0000CC00
        00CCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        999999868686868686868686FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8686868686
        86868686FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFF0000CC0000CC0000CC0000CCFFFFFFFFFFFF0000CC0000CC0000CC
        0000CC0000CCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFF868686868686868686868686FFFFFFFFFFFF86868686868686
        8686868686868686FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFF0000CC0000CC0000CC0000CC0000CC0000CC0000
        CC0000CC0000CCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFF868686868686868686868686868686868686
        868686868686868686FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000CC0000CC0000FF0000CC00
        00FF0000CC0000CCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8686868686869999998686
        86999999868686868686FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000CC0000CC
        0000CC0000FF0000CCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF86868686
        8686868686999999868686FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000CC0000
        CC0000FF0000CC0000CC0000FF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF868686
        868686999999868686868686999999999999FFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000CC00
        00CC0000FF0000CC0000FF0000FF0000FF0000CC0000FFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8686
        86868686999999868686999999999999999999868686999999FFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FF
        0000FF0000FF0000CC0000FFFFFFFFFFFFFF0000FF0000FF0000FF0000FFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF99
        9999999999999999868686999999FFFFFFFFFFFF999999999999999999999999
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FF0000FF0000CC0000FF0000FFFFFFFFFFFFFFFFFFFFFFFFFF0000FF0000FF00
        00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFF999999868686999999999999FFFFFFFFFFFFFFFFFFFFFFFF9999999999
        99999999FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFF0000FF0000FF0000FF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFF0000FF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFF999999999999999999999999FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFF999999999999FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFF0000FF0000FF0000FF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFF0000FF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFF999999999999999999999999FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFF999999999999FFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FF0000FF0000FF0000FF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFF999999999999999999999999FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFF0000FF0000FF0000FF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFF999999999999999999999999FFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFF0000FF0000FF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFF999999999999999999FFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
      NumGlyphs = 2
    end
    object AddButton: TBitBtn
      Left = 8
      Top = 281
      Width = 89
      Height = 33
      Hint = #1044#1086#1076#1072#1090#1080' '#1089#1090#1103#1075#1085#1077#1085#1085#1103' '#1076#1086' '#1085#1072#1082#1072#1079#1091
      BiDiMode = bdLeftToRight
      Caption = #1044#1086#1076#1072#1090#1080
      Default = True
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentBiDiMode = False
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 3
      OnClick = AddButtonClick
      Glyph.Data = {
        8E0B0000424D8E0B00000000000036000000280000002C000000160000000100
        180000000000580B0000C40E0000C40E00000000000000000000FFFFFFFFFFFF
        FFFFFF9966669966669966669966669966669966669966669966669966669966
        66996666996666996666996666996666996666996666FFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFF969696999999999999999999999999999999999999999999999999
        999999999999999999999999999999999999999999999999FFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFF996666F0CAA6F0CAA6F0CAA6F0CAA6F0CAA6F0CAA6FFCC99FF
        CC99FFCC99FFCC99FFCC99FFCC99FFCC99FFCC99FFCC66996666FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFF969696DDDDDDDDDDDDD7D7D7D7D7D7CCCCCCCCCCCCCCCC
        CCC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0969696FFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFF996666F0CAA6F0CAA6F0CAA6F0CAA6F0CAA6F0CAA6
        FFCC99FFCC99FFCC99FFCC66FFCC66FFCC66FFCC66FFCC66CCCC66996666FFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFF969696DDDDDDDDDDDDDDDDDDD7D7D7D7D7D7CC
        CCCCCCCCCCC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0969696
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF996666FFCCCCFFECCCF0CAA6F0CAA6F0CA
        A6F0CAA6F0CAA6FFCC99FFCC99FFCC99FFCC66FFCC66FFCC66FFCC66CCCC6699
        6666FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF969696E3E3E3DDDDDDDDDDDDDDDDDD
        D7D7D7D7D7D7CCCCCCCCCCCCCCCCCCC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0969696FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF996666FFECCCFFECCCF0CAA6F0
        CAA6F0CAA6F0CAA6F0CAA6F0CAA6FFCC99FFCC99FFCC99FFCC66FFCC66FFCC66
        CCCC66996666FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF969696E3E3E3E3E3E3DDDD
        DDDDDDDDDDDDDDD7D7D7D7D7D7CCCCCCCCCCCCCCCCCCC0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0969696FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF996666FFECCCFFECCC
        FFECCCF0CAA6F0CAA6F0CAA6CCCC99CCCC99CCCC99CCCC99CCCC99FFCC99FFCC
        66FFCC66CCCC66996666FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF969696E3E3E3E3
        E3E3E3E3E3DDDDDDDDDDDDD7D7D7C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0969696FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF996666EAEA
        EAFFECCCFFECCCFFECCCFFECCC003300003300003300003300999966CCCC99FF
        CC99FFCC99FFCC66CCCC66996666FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF969696
        EAEAEAEAEAEAE3E3E3E3E3E3E3E3E3868686868686868686868686969696C0C0
        C0CCCCCCC0C0C0C0C0C0C0C0C0969696FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF99
        6666EAEAEAFFECCCFFECCCF0CAA6F0CAA6003300009900009900003300999966
        CC9999CCCC99CCCC99FFCC99CCCC66996666FFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FF999999EAEAEAEAEAEAE3E3E3D7D7D7CCCCCC868686B2B2B2A4A0A086868696
        9696B2B2B2C0C0C0C0C0C0C0C0C0C0C0C0969696FFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFF996666F1F1F1F1F1F1D7D7D7B2B2B2A4A0A00033000099330099000033
        00999966999966999966CCCC99FFCC99CCCC99996666FFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFF999999F1F1F1F1F1F1DDDDDDB2B2B2A4A0A0868686B2B2B2B2B2B2
        868686868686868686969696C0C0C0C0C0C0C0C0C0969696FFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFF996666F8F8F8F1F1F100330000330000330000330000993300
        9933003300003300003300003300CCCC99FFCC99FFCC99996666FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFF999999F1F1F1F1F1F1868686868686868686868686B2B2
        B2B2B2B2868686868686868686868686C0C0C0CCCCCCC0C0C0969696FFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFF996666F8F8F8F8F8F800330033CC3333CC3333CC33
        33CC33009933009933009933009900003300CCCC99F0CAA6FFCC99996666FFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFA4A0A0FFFFFFFFFFFF868686CCCCCCCCCCCCC0
        C0C0C0C0C0C0C0C0B2B2B2B2B2B2B2B2B2868686C0C0C0CCCCCCCCCCCC999999
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCC6666F8F8F8FFFFFF00330033CC6633CC
        3333CC3333CC3333CC3300CC33009933009933003300CCCC99F0CAA6F0CAA699
        6666FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFA4A0A0FFFFFFFFFFFF868686D7D7D7
        D7D7D7CCCCCCCCCCCCC0C0C0C0C0C0C0C0C0B2B2B2868686C0C0C0D7D7D7CCCC
        CC999999FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCC9966F8F8F8FFFFFF00330000
        330000330000330033CC3333CC33003300003300003300003300F0CAA6F0CAA6
        F0CAA6996666FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFA4A0A0FFFFFFFFFFFF8686
        86868686868686868686D7D7D7CCCCCC868686868686868686868686D7D7D7D7
        D7D7CCCCCC999999FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCC9966F8F8F8FFFFFF
        FFFFFFFFFFFFF8F8F800330033CC6633CC66003300A4A0A0F0CAA6FFECCCF0CA
        A6F0CAA6CCCC99996666FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB2B2B2FFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFF868686DDDDDDD7D7D7868686A4A0A0CCCCCCE3E3E3
        DDDDDDD7D7D7C0C0C0868686FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCC9966F8F8
        F8FFFFFFFFFFFFFFFFFFFFFFFF00330033CC6633CC66003300B2B2B2F0CAA6FF
        ECCCF0CAA6CCCC99999966996666FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB2B2B2
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF868686DDDDDDDDDDDD868686B2B2B2D7D7
        D7E3E3E3D7D7D7C0C0C0A4A0A0868686FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCC
        9966F8F8F8FFFFFFFFFFFFFFFFFFFFFFFF003300003300003300003300D7D7D7
        FFECCCFFECCCB2B2B2999999969696996666FFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFB2B2B2FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF868686868686868686868686DD
        DDDDE3E3E3EAEAEAC0C0C0B2B2B2B2B2B2868686FFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFCC9966F8F8F8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8F8F8F1F1
        F1F1F1F1FFCCCC996666996666996666996666996666FFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFB2B2B2FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        F1F1F1F1F1F1DDDDDD969696969696969696969696969696FFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFCC9966F8F8F8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFF8F8F8CBCBCB996666FF9966FF9933996666FFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFB2B2B2FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFDDDDDD969696B2B2B2A4A0A0999999FFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFCC9966F8F8F8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFCCCCCC996666FF9966996666FFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFB2B2B2FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFDDDDDD969696B2B2B2999999FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCC9966FFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD7D7D7996666996666FFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB2B2B2FFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE3E3E3969696999999FFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCC9966F0CAA6F0CAA6F0CAA6F0
        CAA6F0CAA6F0CAA6F0CAA6F0CAA6C0C0C0C0C0C0CC9999996666FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB2B2B2B2B2B2B2B2B2B2B2
        B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2969696FFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
      NumGlyphs = 2
    end
    object Podrazd: TEdit
      Left = 80
      Top = 44
      Width = 297
      Height = 21
      TabStop = False
      ReadOnly = True
      TabOrder = 4
    end
    object Post: TEdit
      Left = 80
      Top = 68
      Width = 297
      Height = 21
      TabStop = False
      ReadOnly = True
      TabOrder = 5
    end
    object SelectPodrazdAndPostButton: TButton
      Left = 386
      Top = 48
      Width = 31
      Height = 43
      Caption = '...'
      TabOrder = 6
      TabStop = False
      OnClick = SelectPodrazdAndPostButtonClick
    end
    object PCardsButton: TBitBtn
      Left = 386
      Top = 16
      Width = 31
      Height = 27
      TabOrder = 7
      OnClick = PcardsButtonClick
      Glyph.Data = {
        F6060000424DF606000000000000360000002800000018000000180000000100
        180000000000C0060000230B0000230B00000000000000000000FF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFD5BFB169473169473169473169473169473169
        4731694731694731694731694731694731694731694731694731694731694731
        694731694731694731694731694731FF00FFFF00FFD5BFB1F6F1EFF4EEECF2EC
        E8F0E9E5EEE6E2EDE4DFEBE1DCEADED9E8DBD6E6D9D2E4D6CFE2D3CCE0D1C8DE
        CEC5DCCBC2DBC9BFDBC9BFDBC9BFDBC9BFDBC9BF694731FF00FFFF00FFD5BFB1
        F8F4F2F6F1EFF4EEECF2ECE8F0E9E5EEE6E2EDE4DFEBE1DCEADED9E8DBD6E6D9
        D2E4D6CFE2D3CCE0D1C8DECEC5DCCBC2DBC9BFDBC9BFDBC9BFDBC9BF694731FF
        00FFFF00FFD5BFB1FAF6F6CDDDC96AA66437823032802C32812B32802B327E2B
        337C2B398C34B3C1A4E6D9D2E4D6CFE2D3CCE0D1C8DECEC5DCCBC2DBC9BFDBC9
        BFDBC9BF694731FF00FFFF00FFD5BFB1B2D7AE3E8C323E842B43932F3E9C2D3B
        A02C3C9F2C40992D458F303680242178186DA464E6D9D2A1745CA1745CA1745C
        A1745CA1745CA1745CDBC9BF694731FF00FFFF00FFD5BFB19ACD973389224491
        303C9F2C34A9272BA2222EA52337A6293F9B2D478C30257A18428A3DE8DBD6E6
        D9D2E4D6CFE2D3CCE0D1C8DECEC5DCCBC2DBC9BF694731FF00FFFF00FFD5BFB1
        B3D9B14A983B41982E36A7292AA323379735329D2E2DA7233AA32B40912C217C
        196BA264EADED9A1745CA1745CA1745CA1745CA1745CA1745CDCCBC2694731FF
        00FFFF00FFD5BFB1E1F0E075B66C3C9C2D2DA2233490348ABC936DAC732E9929
        36A129388E296BA064CDD4C1ECE2DEEBE0DBE9DDD7E7DAD4E4D6CFE2D3CCE0D1
        C8DECEC5694731FF00FFFF00FFD5BFB1FFFFFFC4E3C251AD4A29942C4E8E8070
        A6BC5E98A23A87592684236EA566DBDDD1EFE8E3EDE5E0A1745CA1745CA1745C
        A1745CA1745CA1745CE1D2CA694731FF00FFFF00FFD5BFB1FFFFFFFFFFFFC3E1
        D45CA6B5549ECC539ED14E9ACC4990B275A09ED5DCD3F3EDEAF1EAE7EFE8E3ED
        E5E0ECE2DEEBE0DBE9DDD7E7DAD4E5D7D1E3D5CD694731FF00FFFF00FFD5BFB1
        FFFFFFFFFFFF98C6E35EA9DC5BA8DC5AA7DB56A3D8509ED35490B8CAD3D9F5F0
        EDF3EDEAF1EAE7EFE8E3EDE5E0ECE2DEEBE0DBE9DDD7E7DAD4E5D7D1694731FF
        00FFFF00FFD5BFB1FFFFFFC9E4F171B6DF61AEE162AFE360ADE15CA9DD57A4D9
        4F99CC8DACBEF7F2F1F5F0EDF3EDEAF1EAE7EFE8E3EDE5E0ECE2DEEBE0DBE9DD
        D7E7DAD4694731FF00FFFF00FFD5BFB1FFFFFFAEDDEC5BB2DC65B2E46AB6E966
        B3E661AEE15BA8DC54A1D65292B1F9F5F4F7F2F1F5F0EDF3EDEAF1EAE7EFE8E3
        EDE5E0ECE2DEEBE0DBE9DDD7694731FF00FFFF00FFD5BFB1FFFFFFAEDDEC53A7
        D056A0CE60A9D865AFE063AFE15CA8DC529ED23688ADFCF9F9FAF6F6F7F2F1F7
        A073F7A073F7A073F7A073F7A073F7A073EBE0DB694731FF00FFFF00FFD5BFB1
        FFFFFFCDEAF45BAED3529DC9569CCA559CCA569FCF509AC93A87B46DA7C1FDFC
        FCFCF9F9FAF6F6F8F4F2F6F1EFF4EEECF2ECE8F0E9E5EEE6E2EDE4DF694731FF
        00FFFF00FFD5BFB1FFFFFFFFFFFF79C6E15AACDA60A9D7559CCA4B91BE4086B2
        2D7CA5C0D9E3FFFFFFFDFCFCFCF9F9F7A073F7A073F7A073F7A073F7A073F7A0
        73EEE6E2694731FF00FFFF00FFD5BFB1FFFFFFFFFFFFFFFFFF80CAE45AB0DE52
        A1CF4693BF4990B6A9CBD9FFFFFFFFFFFFFFFFFFFDFCFCFCF9F9FAF6F6F8F4F2
        F6F1EFF4EEECF2ECE8F0E9E5694731FF00FFFF00FFD5BFB1FFFFFFFFFFFFFFFF
        FFEDF8FB7EC7E15CACD05BA9CDA6CEE0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD
        FCFCFCF9F9FAF6F6F8F4F2F6F1EFF4EEECF2ECE8694731FF00FFFF00FFD5BFB1
        D5BFB1D5BFB1D5BFB1D5BFB1D5BFB1D5BFB1D5BFB1D5BFB1D5BFB1D5BFB1D5BF
        B1D5BFB1D5BFB1D5BFB1D5BFB1D5BFB1D5BFB1D5BFB1D5BFB1D5BFB1D5BFB1FF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF}
    end
    object ReasonEdit: TEdit
      Left = 80
      Top = 164
      Width = 297
      Height = 21
      TabStop = False
      MaxLength = 255
      TabOrder = 8
    end
    object cxMemoOsnovanie: TcxMemo
      Left = 79
      Top = 192
      Width = 301
      Height = 57
      Properties.MaxLength = 255
      Style.BorderStyle = ebs3D
      TabOrder = 9
    end
    object PremiaRemovePercent: TqFFloatControl
      Left = 0
      Top = 128
      Width = 200
      Height = 21
      DisplayName = #1055#1088#1086#1094#1077#1085#1090' '#1079#1085#1103#1090#1090#1103' '#1087#1088#1077#1084#1110#1111
      Interval = 150
      Value = Null
      LabelColor = clGreen
      Required = True
      Semicolon = True
      Asterisk = False
      Enabled = True
      Default = '100'
      Blocked = False
      TabOrder = 10
      AutoSaveToRegistry = False
      MaxLength = 0
      NegativeAllowed = False
      Precision = 2
      Format = '#########0.00'
    end
  end
  object ManPunishingGrid: TDBGrid
    Left = 0
    Top = 321
    Width = 504
    Height = 146
    Align = alClient
    Color = clInfoBk
    DataSource = ManPunishingSource
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
    ParentShowHint = False
    ShowHint = True
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = [fsBold]
    Columns = <
      item
        Expanded = False
        FieldName = 'FIO'
        Title.Caption = #1055'.'#1030'.'#1041'.'
        Width = 185
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NAME_PUNISHING'
        Title.Caption = #1057#1090#1103#1075#1085#1077#1085#1085#1103
        Width = 170
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'REASON'
        Title.Caption = #1055#1088#1080#1095#1080#1085#1072
        Width = 125
        Visible = True
      end>
  end
  object InfoPanel: TPanel
    Left = 0
    Top = 467
    Width = 504
    Height = 58
    Align = alBottom
    TabOrder = 2
    object Label7: TLabel
      Left = 8
      Top = 10
      Width = 62
      Height = 13
      Caption = #1055#1110#1076#1088#1086#1079#1076#1110#1083':'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGreen
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label8: TLabel
      Left = 8
      Top = 34
      Width = 49
      Height = 13
      Caption = #1055#1086#1089#1072#1076#1072':'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGreen
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object DBText1: TDBText
      Left = 80
      Top = 8
      Width = 50
      Height = 13
      AutoSize = True
      DataField = 'DEPARTMENT_NAME'
      DataSource = ManPunishingSource
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object DBText2: TDBText
      Left = 80
      Top = 32
      Width = 50
      Height = 13
      AutoSize = True
      DataField = 'POST_NAME'
      DataSource = ManPunishingSource
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object CancelButton: TBitBtn
      Left = 317
      Top = 16
      Width = 92
      Height = 33
      Cancel = True
      Caption = #1047#1072#1082#1088#1080#1090#1080
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ModalResult = 1
      ParentFont = False
      TabOrder = 0
      Glyph.Data = {
        8E0B0000424D8E0B00000000000036000000280000002C000000160000000100
        180000000000580B0000C40E0000C40E00000000000000000000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000066000066FF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000066000066
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6666
        66666666FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF66
        6666666666FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000660033FF0033FF
        0033FF0000CC000066FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000660000CC0000
        FF0000FF0000FF000066FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF666666B2
        B2B2B2B2B2A4A0A0969696666666FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF666666
        969696999999999999999999666666FFFFFFFFFFFFFFFFFFFFFFFF0000660000
        CC0033FF0033FF0033FF0000CC000066FFFFFFFFFFFFFFFFFF0000660000CC00
        00FF0000FF0000FF0000CC000066FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        666666A4A0A0B2B2B2B2B2B2B2B2B2969696666666FFFFFFFFFFFFFFFFFF6666
        66969696999999999999999999969696666666FFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFF0000660000CC0033FF0033FF0033FF0000CC000066FFFFFF0000660000CC
        0000FF0000FF0000FF0000CC000066FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFF666666A4A0A0B2B2B2B2B2B2B2B2B2999999666666FFFFFF66
        6666999999999999999999999999969696666666FFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFF0000660000CC0033FF0033FF0033FF0000CC0000660000
        CC0000FF0000FF0000FF0000CC000066FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFF666666A4A0A0B2B2B2B2B2B2B2B2B2999999
        666666999999999999999999999999969696666666FFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000660000CC0033FF0033FF0033FF00
        00FF0000FF0000FF0000FF0000CC000066FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF666666A4A0A0B2B2B2B2B2
        B2B2B2B2999999999999999999999999969696666666FFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000660000CC0033FF
        0033FF0000FF0000FF0000FF0000CC000066FFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF666666A4
        A0A0B2B2B2B2B2B2A4A0A0A4A0A0999999969696666666FFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000
        660033CC0033FF0000FF0000FF0000CC000066FFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFF666666A4A0A0B2B2B2A4A0A0A4A0A0999999666666FFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00
        00660033CC0033FF0033FF0033FF0033FF0033FF0000CC000066FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFF666666B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2A4A0A0666666FF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        0000660033CC0033FF0033FF0033FF0033CC0033FF0033FF0033FF0000CC0000
        66FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFF666666B2B2B2B2B2B2B2B2B2B2B2B2A4A0A0B2B2B2B2B2B2B2B2B2
        A4A0A0666666FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FF0000660033CC0033FF0033FF0033FF0033CC0000660033CC0033FF0033FF00
        33FF0000CC000066FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFF666666B2B2B2C0C0C0B2B2B2B2B2B2B2B2B2666666A4A0A0B2B2
        B2B2B2B2B2B2B2A4A0A0666666FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFF0000660033CC0033FF0033FF0033FF0033CC000066FFFFFF0000660000CC
        0033FF0033FF0033FF0000CC000066FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFF666666B2B2B2C0C0C0C0C0C0C0C0C0A4A0A0666666FFFFFF66
        6666A4A0A0B2B2B2B2B2B2B2B2B2A4A0A0666666FFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFF0000660033CC0033FF0033FF0033FF0033CC000066FFFFFFFFFFFFFFFF
        FF0000660000CC0033FF0033FF0033FF0033CC000066FFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFF666666C0C0C0C0C0C0C0C0C0C0C0C0A4A0A0666666FFFFFF
        FFFFFFFFFFFF666666999999B2B2B2B2B2B2B2B2B2A4A0A0666666FFFFFFFFFF
        FFFFFFFFFFFFFF0000663333FF3333FF3333FF0033CC000066FFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFF0000660000CC0033FF0033FF0033CC000066FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFF666666C0C0C0C0C0C0C0C0C0A4A0A0666666FFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFF666666999999B2B2B2B2B2B2A4A0A0666666FF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFF0000663333CC0033CC000066FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000660033CC0033CC000066FFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF666666C0C0C0B2B2B2666666FF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF666666A4A0A0B2B2B2666666
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
      NumGlyphs = 2
    end
  end
  object WorkQuery: TIBQuery
    BufferChunks = 1000
    CachedUpdates = False
    Left = 352
    Top = 224
  end
  object ManPunishingSource: TDataSource
    DataSet = ManPunishingQuery
    Left = 352
    Top = 280
  end
  object ManPunishingQuery: TIBQuery
    Database = Main.ChermetDatabase
    Transaction = Main.DefaultTransaction
    AfterOpen = ManPunishingQueryAfterOpen
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'SELECT * FROM GET_MAN_PUNISHING_BY_ORDER(:ID_ORDER)')
    Left = 320
    Top = 280
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'ID_ORDER'
        ParamType = ptUnknown
      end>
    object ManPunishingQueryID_MAN_PUNISHING: TIntegerField
      FieldKind = fkInternalCalc
      FieldName = 'ID_MAN_PUNISHING'
      ReadOnly = True
    end
    object ManPunishingQueryID_MAN_MOVING: TIntegerField
      FieldKind = fkInternalCalc
      FieldName = 'ID_MAN_MOVING'
      ReadOnly = True
    end
    object ManPunishingQueryID_PUNISHING: TIntegerField
      FieldKind = fkInternalCalc
      FieldName = 'ID_PUNISHING'
      ReadOnly = True
    end
    object ManPunishingQueryNAME_PUNISHING: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'NAME_PUNISHING'
      ReadOnly = True
      Size = 70
    end
    object ManPunishingQueryFIO: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'FIO'
      ReadOnly = True
      Size = 255
    end
    object ManPunishingQueryDEPARTMENT_NAME: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'DEPARTMENT_NAME'
      ReadOnly = True
      Size = 255
    end
    object ManPunishingQueryPOST_NAME: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'POST_NAME'
      ReadOnly = True
      Size = 100
    end
    object ManPunishingQueryID_ORDER_BEG: TIntegerField
      FieldKind = fkInternalCalc
      FieldName = 'ID_ORDER_BEG'
      ReadOnly = True
    end
    object ManPunishingQueryID_STATUS_BEG: TIntegerField
      FieldKind = fkInternalCalc
      FieldName = 'ID_STATUS_BEG'
      ReadOnly = True
    end
    object ManPunishingQueryNUM_ITEM_BEG: TIntegerField
      FieldKind = fkInternalCalc
      FieldName = 'NUM_ITEM_BEG'
      ReadOnly = True
    end
    object ManPunishingQueryID_PCARD: TIntegerField
      FieldKind = fkInternalCalc
      FieldName = 'ID_PCARD'
      ReadOnly = True
    end
    object ManPunishingQueryNUM_ORDER_BEG: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'NUM_ORDER_BEG'
      ReadOnly = True
      Size = 10
    end
    object ManPunishingQueryDATE_ORDER_BEG: TDateField
      FieldKind = fkInternalCalc
      FieldName = 'DATE_ORDER_BEG'
      ReadOnly = True
    end
    object ManPunishingQueryID_ORDER_END: TIntegerField
      FieldKind = fkInternalCalc
      FieldName = 'ID_ORDER_END'
      ReadOnly = True
    end
    object ManPunishingQueryNUM_ORDER_END: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'NUM_ORDER_END'
      ReadOnly = True
      Size = 10
    end
    object ManPunishingQueryNUM_ITEM_END: TIntegerField
      FieldKind = fkInternalCalc
      FieldName = 'NUM_ITEM_END'
      ReadOnly = True
    end
    object ManPunishingQueryDATE_ORDER_END: TDateField
      FieldKind = fkInternalCalc
      FieldName = 'DATE_ORDER_END'
      ReadOnly = True
    end
    object ManPunishingQueryREASON: TIBStringField
      FieldName = 'REASON'
      Origin = 'GET_MAN_PUNISHING_BY_ORDER.REASON'
      Size = 255
    end
  end
  object TempQuery: TIBQuery
    BufferChunks = 1000
    CachedUpdates = False
    Left = 320
    Top = 224
  end
end