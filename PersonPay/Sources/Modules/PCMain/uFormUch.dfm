object RegUchForm: TRegUchForm
  Left = 310
  Top = 245
  Width = 762
  Height = 465
  Caption = #1056#1077#1075#1110#1089#1090#1088#1080' '#1086#1073#1083#1110#1082#1091
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Position = poMainFormCenter
  Visible = True
  OnClose = FormClose
  OnResize = FormResize
  PixelsPerInch = 96
  TextHeight = 13
  object pnl1: TPanel
    Left = 0
    Top = 0
    Width = 737
    Height = 417
    TabOrder = 0
    object pnl3: TPanel
      Left = 1
      Top = 247
      Width = 735
      Height = 169
      Align = alBottom
      BevelOuter = bvNone
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      object lbl1: TLabel
        Left = 8
        Top = 8
        Width = 172
        Height = 13
        Caption = #1056#1077#1075#1110#1089#1090#1088' '#1086#1073#1083#1110#1082#1091' ('#1087#1086#1074#1085#1072' '#1085#1072#1079#1074#1072')'
      end
      object lbl2: TLabel
        Left = 8
        Top = 35
        Width = 199
        Height = 13
        Caption = #1056#1077#1075#1110#1089#1090#1088' '#1086#1073#1083#1110#1082#1091' ('#1089#1082#1086#1088#1086#1095#1077#1085#1072' '#1085#1072#1079#1074#1072')'
      end
      object lbl3: TLabel
        Left = 528
        Top = 35
        Width = 41
        Height = 13
        Caption = #1055#1077#1088#1110#1086#1076
      end
      object lbl4: TLabel
        Left = 8
        Top = 60
        Width = 84
        Height = 13
        Caption = #1060#1086#1088#1084#1072' '#1086#1073#1083#1110#1082#1091
      end
      object lbl5: TLabel
        Left = 475
        Top = 59
        Width = 94
        Height = 13
        Caption = #1058#1080#1087' '#1088#1086#1079#1088#1072#1093#1091#1085#1082#1091
      end
      object lbl6: TLabel
        Left = 8
        Top = 86
        Width = 175
        Height = 13
        Caption = #1058#1080#1087' '#1076#1086#1082#1091#1084#1077#1085#1090#1091' ('#1087#1086#1074#1085#1072' '#1085#1072#1079#1074#1072')'
      end
      object lbl7: TLabel
        Left = 8
        Top = 110
        Width = 202
        Height = 13
        Caption = #1058#1080#1087' '#1076#1086#1082#1091#1084#1077#1085#1090#1091' ('#1089#1082#1086#1088#1086#1095#1077#1085#1072' '#1085#1072#1079#1074#1072')'
      end
      object cxFormUch: TcxComboBox
        Left = 216
        Top = 56
        Width = 209
        Height = 21
        Properties.DropDownListStyle = lsFixedList
        Properties.Items.Strings = (
          #1050#1086#1085#1090#1088#1072#1082#1090#1080' '#1079#1072' '#1085#1072#1074#1095#1072#1085#1085#1103
          #1050#1086#1085#1090#1088#1072#1082#1090#1080' '#1079#1072' '#1085#1072#1074#1095#1072#1085#1085#1103' ('#1074#1072#1083#1102#1090#1072')'
          #1057#1090#1091#1076#1084#1110#1089#1090#1077#1095#1082#1086)
        Properties.OnChange = cxFormUchPropertiesChange
        TabOrder = 0
      end
      object cxRozsh: TcxComboBox
        Left = 576
        Top = 56
        Width = 145
        Height = 21
        Enabled = False
        Properties.DropDownListStyle = lsFixedList
        Properties.Items.Strings = (
          #1075#1088#1080#1074#1085#1103
          #1075#1088#1080#1074#1085#1103'+'#1074#1072#1083#1102#1090#1072)
        TabOrder = 1
      end
      object cxReg_uch: TcxTextEdit
        Left = 216
        Top = 8
        Width = 505
        Height = 21
        TabOrder = 2
      end
      object cxReg_short: TcxTextEdit
        Left = 216
        Top = 32
        Width = 209
        Height = 21
        TabOrder = 3
      end
      object cxPeriod: TcxDateEdit
        Left = 600
        Top = 32
        Width = 121
        Height = 21
        TabOrder = 4
      end
      object cxIspolnit: TcxCheckBox
        Left = 8
        Top = 136
        Width = 233
        Height = 21
        Properties.DisplayUnchecked = 'False'
        Properties.Caption = #1044#1088#1091#1082#1091#1074#1072#1090#1080' '#1074#1080#1082#1086#1085#1072#1074#1094#1103' '#1091' '#1079#1074#1110#1090#1072#1093
        TabOrder = 5
      end
      object cxKassDay: TcxCheckBox
        Left = 240
        Top = 136
        Width = 217
        Height = 21
        Properties.DisplayUnchecked = 'False'
        Properties.Caption = #1055#1110#1076#1082#1083#1102#1095#1080#1090#1080' '#1079#1074#1110#1090' '#1050#1072#1089#1086#1074#1086#1075#1086' '#1076#1085#1103
        TabOrder = 6
      end
      object cxDocFull: TcxTextEdit
        Left = 216
        Top = 80
        Width = 505
        Height = 21
        TabOrder = 7
      end
      object cxDocShort: TcxTextEdit
        Left = 216
        Top = 104
        Width = 209
        Height = 21
        TabOrder = 8
      end
      object cxAdd: TcxButton
        Left = 568
        Top = 136
        Width = 33
        Height = 33
        TabOrder = 9
        OnClick = cxAddClick
        Glyph.Data = {
          F6060000424DF606000000000000360000002800000018000000180000000100
          180000000000C0060000120B0000120B00000000000000000000FF00FFFF00FF
          FF00FFA97C79B78183B78183B78183B78183B78183B78183B78183B78183B781
          83B78183B78183B78183B78183B78183B78183B78183B78183B78183FF00FFFF
          00FFFF00FFFF00FFFF00FFAE7781F3DDC4F8E3C6F6DFBFF5DCB8F4D9B2F3D7AC
          F3D4A7F2D2A0F0CF9AF0CE98F0CE98F0CE98F0CE98F0CE98F0CE98F1CF98EFCD
          97B88183FF00FFFF00FFFF00FFFF00FFFF00FFAE7782F2DEC8F7E3CAF5DFC2F4
          DCBCF3DAB6F2D7B1F1D4ABF1D2A5F0CF9FEFCD9AEECC97EECC97EECC97EECC97
          EECC97EFCD97EDCB96B88183FF00FFFF00FFFF00FFFF00FFFF00FFAE7782F2E0
          CEF8E7CFF5E2C8F5DEC2F4DCBCF3DAB7F2D7B1F1D4ABF1D2A5F0CFA0EFCD9AEE
          CC97EECC97EECC97EECC97EFCD97EDCB96B88183FF00FFFF00FFFF00FFFF00FF
          FF00FFAE7782F3E3D2F9E9D4F6E4CDF5E1C7F5DEC1F4DCBCF3D9B6F2D7B0F1D4
          AAF1D2A5F0CFA0EECC99EECC97EECC97EECC97EFCD97EDCB96B88183FF00FFFF
          00FFFF00FFFF00FFFF00FFAE7783F4E6D8FAECDAF8E7D3F6E4CCF5E1C7F5DFC2
          F4DCBCF3D9B6F2D7B0F1D4ABF1D2A6F0CFA0EECD9AEECC97EECC97EFCD97EDCB
          96B88183FF00FFFF00FFFF00FFFF00FFFF00FFAF7883F5E9DDFBEFE0F8EAD9F7
          E6D2F6E4CDF5E1C8F4DEC2F4DCBCF3D9B6F2D7B1F1D4ACF1D2A6F0CFA0EECC99
          EECC97EFCD97EDCB96B88183FF00FFFF00FFFF00FFFF00FFFF00FFB27B85F5EC
          E3FBF2E6F9EDDEF8E9D7F7E7D2F6E4CDF5E1C7F5DFC1F4DCBBF3D9B6F2D7B1F1
          D4ABF1D2A5F0CFA0EECC99EFCD97EDCB96B88183FF00FFFF00FFFF00FFFF00FF
          FF00FFB78086F7EFE8FCF5ECFAEFE4F9ECDDF8E9D8F7E7D3F6E4CDF5E1C7F5DF
          C1F4DCBCF3D9B7F1D7B0F1D4ABF0D2A5F0CF9FEFCD9AEDCA96B88183FF00FFFF
          00FFFF00FFFF00FFFF00FFBB8388F8F2EEFDF8F1FAF3EAF9EFE3F9ECDDF8E9D8
          F7E6D2F6E4CCF5E1C6F4DFC1F4DCBCF3D9B6F2D6B0F1D4AAF0D1A4F0D09FEDCB
          98B88183FF00FFFF00FFFF00FFFF00FFFF00FFBE8689FAF6F4FEFCF8FCF6F0FA
          F2EAFAF0E4F9EDDDF8E9D8F7E7D2F6E4CCF5E1C7F5DEC2F4DCBBF3D9B6F1D7B0
          F1D4AAF1D2A5EECD9EB88184FF00FFFF00FFFF00FFFF00FFFF00FFC2898AFBF8
          F7FFFFFEFEFAF6FCF5EFFAF2EAFAF0E3F9ECDDF9E9D8F8E7D2F6E4CDF5E1C7F5
          DEC1F4DCBCF3D9B6F2D7B0F2D5ABEFCFA4B98285FF00FFFF00FFFF00FFFF00FF
          FF00FFC68D8CFBF8F7FFFFFFFFFEFCFEF9F4FCF6EFFBF3EAFAEFE3F9EDDDF8E9
          D7F8E7D2F6E4CDF5E1C6F5DEC1F4DCBBF3D9B5F2D7B0F0D2A8B98386FF00FFFF
          00FFFF00FFFF00FFFF00FFCA908DFBF8F7FFFFFFFFFFFFFFFDFCFEF9F5FCF6F0
          FAF2EAFAF0E4F9ECDDF8EAD8F8E6D2F6E4CCF6E1C6F5DEC0F4DCBBF4DAB6F1D5
          AEB58286FF00FFFF00FFFF00FFFF00FFFF00FFCD938FFBF8F7FFFFFFFFFFFFFF
          FFFFFFFEFCFEF9F5FCF6EFFBF2EAFAEFE3F9ECDDF8E9D7F8E6D1F6E3CBF5E1C6
          F4DEC0F3DBBAD9C4A7A47E83FF00FFFF00FFFF00FFFF00FFFF00FFD19790FCF9
          F7FFFFFFFFFFFFFFFFFFFFFFFFFFFEFCFEF9F5FCF5EFFBF2E9FAF0E3F9ECDDF8
          E9D7F8E6D1F6E4CCEBD9C0D1C1ABB5A8979C7C81FF00FFFF00FFFF00FFFF00FF
          FF00FFD59A91FCF9F7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFCFDFAF5FCF6
          EFFAF2E9FAEFE2FAEDDEFBEEDBE7DBC9C8BDAFBAB0A2B7AC9DA07E83FF00FFFF
          00FFFF00FFFF00FFFF00FFDA9D93FCF9F7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFEFCFDF9F4FCF5EEFCF5EBEEDDD1B28176AD8076AA7F76AB7F76AB7F
          76AF7F77FF00FFFF00FFFF00FFFF00FFFF00FFDDA194FCF9F8FFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFBFDF9F4FFFBF3E3CEC6B38176E3B585
          E5AD6AE9A654EFA039B88285FF00FFFF00FFFF00FFFF00FFFF00FFE0A395FDFA
          F8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFCFFFEF9E5
          D1CBB38176EFC48DF3BB6DF8B450B88285FF00FFFF00FFFF00FFFF00FFFF00FF
          FF00FFE0A395FDFAF8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFE5D4D0B38176EFC38CF3BA6CB88285FF00FFFF00FFFF00FFFF
          00FFFF00FFFF00FFFF00FFE0A395FFFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE9DBD9B38176F1C58BB88285FF00FFFF00
          FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFDEA78CECD0BEEDD3C1EDD3C1EC
          D1C1EAD0C1E8CEC0E6CCBFE4CBBEE1C9BEDFC7BDDDC5BDCEAEA6B38176B88285
          FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
          FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
          00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF}
        Layout = blGlyphTop
        LookAndFeel.Kind = lfFlat
        UseSystemPaint = False
      end
      object cxEdit: TcxButton
        Left = 604
        Top = 136
        Width = 33
        Height = 33
        TabOrder = 10
        OnClick = cxEditClick
        Glyph.Data = {
          F6060000424DF606000000000000360000002800000018000000180000000100
          180000000000C0060000120B0000120B00000000000000000000FF00FFFF00FF
          FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
          FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
          00FFA97F79B78183B78183B78183B78183B78183B78183B78183B78183B78183
          B78183B78183B78183B78183B78183B78183B78183B78183B78183FF00FFFF00
          FFFF00FFFF00FFFF00FFA97F7AF2DEC8F7E3CAF5DFC2F1D9BAECD4B1E8CEA9E6
          CAA3E8CA9FEBCB9CEDCB99EDCB96EECC97EECC97EECC97EECC97EFCD97EDCB96
          B3897BFF00FFFF00FFFF00FFFF00FFFF00FFA97F7AF2E0CEF7E6CEF4E1C7EED8
          BDE2CCAED5BFA0CFB897D3B996DCC097E3C497E8C795EAC995EDCB96EECC97EE
          CC97EFCD97EDCB96B3897BFF00FFFF00FFFF00FFFF00FFFF00FFA97F7AF3E3D2
          F8E8D3F4E2CBECD9C038373958534EA3927BB19E81BCA585C8AF89D4B78DDCBD
          8EE6C592EBCA95EDCB96EFCD97EDCB96B3897BFF00FFFF00FFFF00FFFF00FFFF
          00FFA97F7BF4E6D8F9EBD9F7E6D2EFDEC656524F3535372C424C4D5E5F9B8971
          A49074B29B7AC3A882D4B689E2C28FEAC995EDCB96EDCB96B3897BFF00FFFF00
          FFFF00FFFF00FFFF00FFAA807BF5E9DDFBEFE0F8EAD9F4E3D0BEB1A12255690C
          82AF106A8E1A566D546463907E67A08B6EB79D7ACBAE83DCBD8CE8C792EAC994
          B3897BFF00FFFF00FFFF00FFFF00FFFF00FFAD837DF5ECE3FBF2E6F9EDDEF7E8
          D6F0E1CC2E58680A84B10D81AD2F6B88424D5A5B4E5284705D968367AD9573C3
          A77DD8B988E3C290B1877AFF00FFFF00FFFF00FFFF00FFFF00FFB2887EF7EFE8
          FCF5ECFAEFE4F9ECDDF6E7D68D9D9D0B749B4A6B7FAA7B7BBC8888AB78787E55
          547F6D5A8F7D62A48D6CBBA078CEB083AB8375FF00FFFF00FFFF00FFFF00FFFF
          00FFB68B80F8F2EEFDF8F1FAF3EAF9EFE3F9ECDDF4E5D5185B74A37676D8A4A4
          CA9696BC8888AB77777E55547E6C5889785E9A8666AF96709D786CFF00FFFF00
          FFFF00FFFF00FFFF00FFBA8E82FAF6F4FEFCF8FCF6F0FAF2EAFAF0E4F8ECDC69
          868FB08383E5B1B1D7A3A3C99595BB8787A77474754E4D7C6B5784735B948063
          8C6B61FF00FFFF00FFFF00FFFF00FFFF00FFBE9283FBF8F7FFFFFEFEFAF6FCF5
          EFFAF2EAFAF0E3F7EADB946B6AE9B7B7E4B1B1D6A3A3C99595BB8787A3727275
          4E4D7B6A5786745C7C5F56FF00FFFF00FFFF00FFFF00FFFF00FFC29685FBF8F7
          FFFFFFFFFEFCFEF9F4FCF6EFFBF3EAFAEFE3E8D8CA946B6AE9B6B6E4B0B0D6A2
          A2C89494BA8686A37171754E4E806D59735951FF00FFFF00FFFF00FFFF00FFFF
          00FFC69986FBF8F7FFFFFFFFFFFFFFFDFCFEF9F5FCF6F0FAF2EAFAF0E4E8D8CA
          8C6362E8B6B6E3B0B0D5A2A2C89494BA8686A271717852506E564FFF00FFFF00
          FFFF00FFFF00FFFF00FFCA9C88FBF8F7FFFFFFFFFFFFFFFFFFFFFEFCFEF9F5FC
          F6EFFBF2EAFAEFE3CAB5AB8C6362E8B5B5E3AFAFD5A1A1C79393B98585A27070
          754F4EFF00FFFF00FFFF00FFFF00FFFF00FFCEA089FCF9F7FFFFFFFFFFFFFFFF
          FFFFFFFFFFFEFCFEF9F5FCF5EFFBF2E9FAF0E3CAB5AB8C6362E7B5B5E2AFAFD4
          A1A1C79393B98585A17070764E4EFF00FFFF00FFFF00FFFF00FFD2A38AFCF9F7
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFCFDFAF5FCF6EFFAF2E9FAEFE2CBB5
          ABA77B7BF0BCBCE2AEAED4A0A0C692929869695C63704F6271FF00FFFF00FFFF
          00FFD7A78CFCF9F7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFCFDF9F4
          FCF5EEFCF5EBEEDDD19C6F67A77B7BEFBCBCE1AEAE6E697207A1D100BCEF00B9
          EC009ED1FF00FFFF00FFDAAB8DFCF9F8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFDFBFDF9F4FFFBF3E3CEC6B38176BC9171A67B7BD0A0A01594BD
          00CCFF00CCFF00B9EC0130B100009AFF00FFDEAD8EFDFAF8FFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFCFFFEF9E5D1CBB38176EFC48DC7
          95618C626200B3E600CCFF00A3DC0130B1041CB10316AC00009ADEAD8EFDFAF8
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE5D4
          D0B38176EFC38CF3BA6C93646500A9DC00C2F50443BA113CE40C36C80732C203
          16ACDEAD8EFFFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFE9DBD9B38176F1C58BB88285FF00FFFF00FF019CCF1A37CD456A
          F81E47D80833C2020EA5DAA482DAA482DAA482DAA482DAA482DAA482DAA482DA
          A482DAA482DAA482DAA482DAA482DAA482B38176B88285FF00FFFF00FFFF00FF
          FF00FF293BCD6D8AFD2B53EA0515ACFF00FFFF00FFFF00FFFF00FFFF00FFFF00
          FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
          00FFFF00FFFF00FFFF00FFFF00FF2538CC0E1BB8FF00FFFF00FF}
        Layout = blGlyphTop
        LookAndFeel.Kind = lfFlat
        UseSystemPaint = False
      end
      object cxDel: TcxButton
        Left = 640
        Top = 136
        Width = 33
        Height = 33
        TabOrder = 11
        OnClick = cxDelClick
        Glyph.Data = {
          F6060000424DF606000000000000360000002800000018000000180000000100
          180000000000C0060000120B0000120B00000000000000000000FF00FFFF00FF
          FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
          FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
          00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
          FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
          FF0732DE0732DEFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
          00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
          FF00FFFF00FF0732DE0732DE0732DEFF00FFFF00FFFF00FF0732DE0732DE0732
          DEFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
          00FFFF00FFFF00FFFF00FF0732DE0732DE0732DEFF00FFFF00FFFF00FFFF00FF
          0732DE0732DE0732DE0732DEFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
          FFFF00FFFF00FFFF00FFFF00FF0732DE0732DE0732DE0732DEFF00FFFF00FFFF
          00FFFF00FFFF00FF0732DE0732DE0732DE0732DE0732DEFF00FFFF00FFFF00FF
          FF00FFFF00FFFF00FFFF00FFFF00FFFF00FF0732DE0732DE0732DE0732DEFF00
          FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF0732DE0732DE0732DE0732DE07
          32DEFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF0732DE0732DE0732DE
          0732DEFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF0335
          FB0732DE0732DE0732DE0732DEFF00FFFF00FFFF00FFFF00FFFF00FF0732DE07
          32DE0732DE0732DEFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
          FF00FFFF00FFFF00FFFF00FF0732DE0732DE0732DE0732DEFF00FFFF00FF0732
          DE0732DE0732DE0732DE0732DEFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
          00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF0732DE0732DE0732DE
          0732DE0732DE0732DE0732DE0732DE0732DEFF00FFFF00FFFF00FFFF00FFFF00
          FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
          00FF0732DE0732DE0335FB0732DE0335FB0732DE0732DEFF00FFFF00FFFF00FF
          FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
          FFFF00FFFF00FFFF00FFFF00FF0732DE0732DE0732DE0335FB0732DEFF00FFFF
          00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
          FF00FFFF00FFFF00FFFF00FFFF00FFFF00FF0732DE0732DE0335FB0732DE0732
          DE0335FB0335FBFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
          00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF0732DE0732DE0335FB
          0732DE0335FB0335FB0335FB0732DE0335FBFF00FFFF00FFFF00FFFF00FFFF00
          FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF0335FB03
          35FB0335FB0732DE0335FBFF00FFFF00FF0335FB0335FB0335FB0335FBFF00FF
          FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
          FF0335FB0335FB0732DE0335FB0335FBFF00FFFF00FFFF00FFFF00FF0335FB03
          35FB0335FB0335FBFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
          FF00FFFF00FF0335FB0335FB0335FB0335FB0335FBFF00FFFF00FFFF00FFFF00
          FFFF00FFFF00FFFF00FF0335FB0335FB0335FBFF00FFFF00FFFF00FFFF00FFFF
          00FFFF00FFFF00FFFF00FF0335FB0335FB0335FB0335FB0335FBFF00FFFF00FF
          FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF0335FB0335FB0335FBFF00
          FFFF00FFFF00FFFF00FFFF00FFFF00FF0335FB0335FB0335FB0335FB0335FBFF
          00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
          FF00FF0335FBFF00FFFF00FFFF00FFFF00FFFF00FF0335FB0335FB0335FB0335
          FB0335FBFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
          00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF0335FB
          0335FB0335FB0335FBFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
          FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
          00FFFF00FF0335FB0335FB0335FBFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
          FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
          FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
          00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
          FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
          FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
          00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF}
        Layout = blGlyphTop
        LookAndFeel.Kind = lfFlat
        UseSystemPaint = False
      end
      object cxExit: TcxButton
        Left = 704
        Top = 136
        Width = 33
        Height = 33
        TabOrder = 12
        OnClick = cxExitClick
        Glyph.Data = {
          F6060000424DF606000000000000360000002800000018000000180000000100
          180000000000C0060000120B0000120B00000000000000000000FF00FFFF00FF
          FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF9A66666933
          34FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
          00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF9A66669A6666
          A36666A76666693334FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
          FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF9A66669A6666A0
          6666B06667C66667CC6667B36667693334FF00FFFF00FFFF00FFFF00FFFF00FF
          FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF9A66669A66
          66AF6869C0696ACF696ACE6869CD6768CD6768B36667693334AE66669A66669A
          66669A66669A66669A66669A66669A66669A6666FF00FFFF00FFFF00FFFF00FF
          FF00FF9A6666D26F70D56F70D46E6FD36D6ED26C6DD16B6CD06A6BB467686933
          34FEA2A3FDA8A9FCAFB0FBB6B7FABCBDF9C2C2F9C5C6F9C5C69A6666FF00FFFF
          00FFFF00FFFF00FFFF00FF9A6666D97374D87273D77172D67071D56F70D46E6F
          D36D6EB6696A69333459B26733CB6733CB6733CB6733CB6733CB6733CB67F9C5
          C69A6666FF00FFFF00FFFF00FFFF00FFFF00FF9A6666DC7677DB7576DA7475D9
          7374D87273D77172D67071B86B6B69333459B26733CB6733CB6733CB6733CB67
          33CB6733CB67F9C5C69A6666FF00FFFF00FFFF00FFFF00FFFF00FF9A6666DF79
          7ADF797ADE7879DD7778DC7677DB7576DA7475B96C6D69333459B26733CB6733
          CB6733CB6733CB6733CB6733CB67F9C5C69A6666FF00FFFF00FFFF00FFFF00FF
          FF00FF9A6666E37D7EE27C7DE17B7CE07A7BDF797ADE7879DD7778BB6E6F6933
          3459B26733CB6733CB6733CB6733CB6733CB6733CB67F9C5C69A6666FF00FFFF
          00FFFF00FFFF00FFFF00FF9A6666E68081E57F80E47E7FE37D7EE27C7DE17B7C
          E07A7BBD707069333459B26733CB6733CB6733CB6733CB6733CB6733CB67F9C5
          C69A6666FF00FFFF00FFFF00FFFF00FFFF00FF9A6666E98384E88283E78182E6
          8081E78788ECA6A7E47E7FBE717269333473B87633CB6733CB6733CB6733CB67
          33CB6733CB67F9C5C69A6666FF00FFFF00FFFF00FFFF00FFFF00FF9A6666ED87
          88EC8687EB8586EA8485F2B9BAFFFFFFF0B0B0C07374693334F2D9C0C7F0BC79
          DD9079DD9060D68160D68160D681F9C5C69A6666FF00FFFF00FFFF00FFFF00FF
          FF00FF9A6666F08A8BEF898AEE8889ED8788F5BBBCFFFFFFF0AAABC275756933
          34F2D9C0FFFFDDFFFFDDFFFFDDFFFFDDE2F8CCE2F8CCF9C5C69A6666FF00FFFF
          00FFFF00FFFF00FFFF00FF9A6666F38D8EF28C8DF18B8CF08A8BEF898AF3A6A7
          ED8788C37677693334F2D9C0FFFFDDFFFFDDFFFFDDFFFFDDFFFFDDFFFFDDF9C5
          C69A6666FF00FFFF00FFFF00FFFF00FFFF00FF9A6666F69091F69091F58F90F4
          8E8FF38D8EF28C8DF18B8CC57878693334F2D9C0FFFFDDFFFFDDFFFFDDFFFFDD
          FFFFDDFFFFDDF9C5C69A6666FF00FFFF00FFFF00FFFF00FFFF00FF9A6666FA94
          95F99394F89293F79192F69091F58F90F48E8FC77A7A693334F2D9C0FFFFDDFF
          FFDDFFFFDDFFFFDDFFFFDDFFFFDDF9C5C69A6666FF00FFFF00FFFF00FFFF00FF
          FF00FF9A6666FD9798FC9697FB9596FA9495F99394F89293F79192C87B7C6933
          34F2D9C0FFFFDDFFFFDDFFFFDDFFFFDDFFFFDDFFFFDDF9C5C69A6666FF00FFFF
          00FFFF00FFFF00FFFF00FF9A6666FF999AFF999AFE9899FD9798FD9798FC9697
          FB9596CA7D7D693334F2D9C0FFFFDDFFFFDDFFFFDDFFFFDDFFFFDDFFFFDDF9C5
          C69A6666FF00FFFF00FFFF00FFFF00FFFF00FF9A6666FF999AFF999AFF999AFF
          999AFF999AFE9899FE9899CC7F7F693334F2D9C0FFFFDDFFFFDDFFFFDDFFFFDD
          FFFFDDFFFFDDF9C5C69A6666FF00FFFF00FFFF00FFFF00FFFF00FF9A6666F996
          97FF999AFF999AFF999AFF999AFF999AFF999ACD8080693334F2D9C0FFFFDDFF
          FFDDFFFFDDFFFFDDFFFFDDFFFFDDF9C5C69A6666FF00FFFF00FFFF00FFFF00FF
          FF00FF9A66669A6666C0797ADF898AFF999AFF999AFF999AFF999ACD80806933
          34F2D9C0FFFFDDFFFFDDFFFFDDFFFFDDFFFFDDFFFFDDF9C5C69A6666FF00FFFF
          00FFFF00FFFF00FFFF00FFFF00FFFF00FF9A66669A6666A76C6DC67C7DF29394
          FF999ACD8080693334A766669A66669A66669A66669A66669A66669A66669A66
          669A6666FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
          00FF9A66669A6666AD7070B37373693334FF00FFFF00FFFF00FFFF00FFFF00FF
          FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
          FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF9A6666693334FF00FFFF00FFFF
          00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF}
        Layout = blGlyphTop
        LookAndFeel.Kind = lfFlat
        UseSystemPaint = False
      end
      object cxButton1: TcxButton
        Left = 512
        Top = 136
        Width = 33
        Height = 33
        TabOrder = 13
        OnClick = cxButton1Click
        Glyph.Data = {
          F6060000424DF606000000000000360000002800000018000000180000000100
          180000000000C0060000120B0000120B00000000000000000000FF00FFFF00FF
          FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
          FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
          00FFFF00FFFF00FFA87D78A47874A47874A47874A47874A47874A47874A47874
          A47874A47874A47874A47874A47874A47874A47874A47874A47874A47874986B
          66FF00FFFF00FFFF00FFFF00FFFF00FFA97F79F3DDC4F8E3C6F6DFBFF5DCB8F4
          D9B2F3D7ACF3D4A7F2D2A0F0CF9AF0CE98F0CE98F0CE98F0CE98F0CE98F0CE98
          F1CF98EFCD97986B66FF00FFFF00FFFF00FFFF00FFFF00FFA97F7AF2DEC8F7E3
          CAF5DFC2F4DCBCF3DAB6F2D7B1F1D4ABF1D2A5F0CF9FEFCD9AEECC97EECC97EE
          CC97EECC97EECC97EFCD97EDCB96986B66FF00FFFF00FFFF00FFFF00FFFF00FF
          A97F7AF2E0CEF8E7CFF5E2C8F5DEC2F4DCBCF3DAB7F2D7B1F1D4ABF1D2A5F0CF
          A0EFCD9AEECC97EECC97EECC97EECC97EFCD97EDCB96986B66FF00FFFF00FFFF
          00FFFF00FFFF00FFA97F7AF3E3D2F9E9D4F6E4CDF5E1C7018A02F4DCBCF3D9B6
          C2C88D018A02018A02018A02BFBF7BEECC97EECC97EECC97EFCD97EDCB96986B
          66FF00FFFF00FFFF00FFFF00FFFF00FFA97F7BF4E6D8FAECDAF8E7D3F6E4CC01
          8A020B8E0AC3CC97018A02C2C88DF1D4ABC1C485018A02BFC07CEECC97EECC97
          EFCD97EDCB96986B66FF00FFFF00FFFF00FFFF00FFFF00FFAA807BF5E9DDFBEF
          E0F8EAD9F7E6D2018A02018A02018A02C3CC97F3D9B6F2D7B1F1D4ACC1C48501
          8A02EECC99EECC97EFCD97EDCB96986B66FF00FFFF00FFFF00FFFF00FFFF00FF
          AD837DF5ECE3FBF2E6F9EDDEF8E9D7018A02018A02018A02018A02F4DCBBF3D9
          B6F2D7B1F1D4AB018A02F0CFA0EECC99EFCD97EDCB96986B66FF00FFFF00FFFF
          00FFFF00FFFF00FFB2887EF7EFE8FCF5ECFAEFE4F9ECDD018A02018A02018A02
          018A02018A02F4DCBCF3D9B7F1D7B0F1D4ABF0D2A5F0CF9FEFCD9AEDCA96986B
          66FF00FFFF00FFFF00FFFF00FFFF00FFB68B80F8F2EEFDF8F1FAF3EAF9EFE3F9
          ECDDF8E9D8F7E6D2F6E4CCF5E1C6F4DFC1F4DCBCF3D9B6F2D6B0F1D4AAF0D1A4
          F0D09FEDCB98986B66FF00FFFF00FFFF00FFFF00FFFF00FFBA8E82FAF6F4FEFC
          F8FCF6F0FAF2EAFAF0E4F9EDDDF8E9D8F7E7D2018A02018A02018A02018A0201
          8A02F1D7B0F1D4AAF1D2A5EECD9E986B66FF00FFFF00FFFF00FFFF00FFFF00FF
          BE9283FBF8F7FFFFFEFEFAF6FCF5EF018A02FAF0E3F9ECDDF9E9D8F8E7D2018A
          02018A02018A02018A02F3D9B6F2D7B0F2D5ABEFCFA4986B66FF00FFFF00FFFF
          00FFFF00FFFF00FFC29685FBF8F7FFFFFFFFFEFCFEF9F4018A02C9DEBCFAEFE3
          F9EDDDF8E9D7C7D4A8018A02018A02018A02F4DCBBF3D9B5F2D7B0F0D2A8986B
          66FF00FFFF00FFFF00FFFF00FFFF00FFC69986FBF8F7FFFFFFFFFFFFFFFDFCCB
          E3C4018A02C8DDBCFAF0E4C7D8B1018A02C7D4A80B8E0A018A02F5DEC0F4DCBB
          F4DAB6F1D5AE986B66FF00FFFF00FFFF00FFFF00FFFF00FFCA9C88FBF8F7FFFF
          FFFFFFFFFFFFFFFFFEFCCBE3C4018A02018A02018A02C7D8B1F8E9D7F8E6D101
          8A02F5E1C6F4DEC0F3DBBAD9C4A7986B66FF00FFFF00FFFF00FFFF00FFFF00FF
          CEA089FCF9F7FFFFFFFFFFFFFFFFFFFFFFFFFFFEFCFEF9F5FCF5EFFBF2E9FAF0
          E3F9ECDDF8E9D7F8E6D1F6E4CCEBD9C0D1C1ABB5A897986B66FF00FFFF00FFFF
          00FFFF00FFFF00FFD2A38AFCF9F7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFC
          FDFAF5FCF6EFFAF2E9FAEFE2FAEDDEFBEEDBE7DBC9C8BDAFBAB0A2B7AC9D986B
          66FF00FFFF00FFFF00FFFF00FFFF00FFD7A78CFCF9F7FFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFEFCFDF9F4FCF5EEFCF5EBEEDDD1B48176B48176B48176
          B48176B48176B48176FF00FFFF00FFFF00FFFF00FFFF00FFDAAB8DFCF9F8FFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFBFDF9F4FFFBF3E3CEC6B4
          8176E3B585E5AD6AE9A654EFA039B88285FF00FFFF00FFFF00FFFF00FFFF00FF
          DEAD8EFDFAF8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD
          FCFFFEF9E5D1CBB48176EFC48DF3BB6DF8B450B88285FF00FFFF00FFFF00FFFF
          00FFFF00FFFF00FFDEAD8EFDFAF8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFE5D4D0B48176EFC38CF3BA6CB88285FF00FFFF00
          FFFF00FFFF00FFFF00FFFF00FFFF00FFDEAD8EFFFEFEFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE9DBD9B48176F1C58BB88285
          FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFDAA482DAA482DAA4
          82DAA482DAA482DAA482DAA482DAA482DAA482DAA482DAA482DAA482DAA482B4
          8176B88285FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF}
        Layout = blGlyphTop
        LookAndFeel.Kind = lfFlat
        UseSystemPaint = False
      end
    end
    object cxGrid1: TcxGrid
      Left = 1
      Top = 1
      Width = 735
      Height = 238
      Align = alClient
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      object cxGrid1DBTableView1: TcxGridDBTableView
        DataController.DataSource = ds1
        DataController.Filter.Criteria = {FFFFFFFF0000000000}
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        NavigatorButtons.ConfirmDelete = False
        OnFocusedRecordChanged = cxGrid1DBTableView1FocusedRecordChanged
        OptionsData.Deleting = False
        OptionsData.DeletingConfirmation = False
        OptionsData.Editing = False
        OptionsData.Inserting = False
        OptionsSelection.CellSelect = False
        OptionsView.GroupByBox = False
        Styles.Background = cxStyle7
        Styles.Content = cxStyle7
        Styles.Header = cxStyle11
        object cxGrid1DBTableView1DBColumn1: TcxGridDBColumn
          Caption = #1060#1086#1088#1084#1072' '#1086#1073#1083#1110#1082#1091
          Visible = False
          GroupIndex = 0
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
          Options.Filtering = False
          SortOrder = soAscending
          Styles.Header = cxStyle11
          DataBinding.FieldName = 'FORM_UCH'
        end
        object cxGrid1DBTableView1DBColumn2: TcxGridDBColumn
          Caption = #1056#1077#1075#1110#1089#1090#1088' '#1086#1073#1083#1110#1082#1091
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
          Options.Filtering = False
          Width = 257
          DataBinding.FieldName = 'REG_TITLE'
        end
        object cxGrid1DBTableView1DBColumn6: TcxGridDBColumn
          Caption = #1057#1082#1086#1088#1086#1095#1077#1085#1086
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
          Options.Filtering = False
          Width = 86
          DataBinding.FieldName = 'REG_SHORT'
        end
        object cxGrid1DBTableView1DBColumn3: TcxGridDBColumn
          Caption = #1055#1077#1088#1110#1086#1076
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
          Options.Filtering = False
          DataBinding.FieldName = 'DATE_REC'
        end
        object cxGrid1DBTableView1DBColumn4: TcxGridDBColumn
          Caption = #1056#1086#1079#1088#1072#1093#1091#1085#1086#1082
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
          Options.Filtering = False
          DataBinding.FieldName = 'ROZSH'
        end
        object cxGrid1DBTableView1DBColumn5: TcxGridDBColumn
          Caption = #1058#1080#1087' '#1076#1086#1082#1091#1084#1077#1085#1090#1091
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
          Options.Filtering = False
          Width = 119
          DataBinding.FieldName = 'T_DOC'
        end
      end
      object cxGrid1Level1: TcxGridLevel
        GridView = cxGrid1DBTableView1
      end
    end
    object cxSplitter1: TcxSplitter
      Left = 1
      Top = 239
      Width = 735
      Height = 8
      HotZoneClassName = 'TcxSimpleStyle'
      HotZone.SizePercent = 100
      AlignSplitter = salBottom
      AutoSnap = True
      ResizeUpdate = True
      Control = pnl3
    end
  end
  object StyleRepository: TcxStyleRepository
    Left = 18
    Top = 256
    object cxStyle1: TcxStyle
      AssignedValues = [svColor, svFont]
      Color = 15451300
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
    end
    object cxStyle2: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 16247513
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      TextColor = clBlack
    end
    object cxStyle3: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 16247513
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      TextColor = clBlack
    end
    object cxStyle4: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 16247513
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGreen
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      TextColor = clBlack
    end
    object cxStyle5: TcxStyle
      AssignedValues = [svColor, svTextColor]
      Color = clBtnFace
      TextColor = clBlack
    end
    object cxStyle6: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 14811135
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      TextColor = clNavy
    end
    object cxStyle7: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = clMoneyGreen
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      TextColor = clBlack
    end
    object cxStyle8: TcxStyle
      AssignedValues = [svColor, svTextColor]
      Color = 4707838
      TextColor = clBlack
    end
    object cxStyle9: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = clBtnFace
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      TextColor = clBlack
    end
    object cxStyle10: TcxStyle
      AssignedValues = [svColor, svFont]
      Color = 15451300
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
    end
    object cxStyle11: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 4707838
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      TextColor = clBlack
    end
    object cxStyle12: TcxStyle
      AssignedValues = [svColor]
      Color = 15451300
    end
    object cxStyle13: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 14811135
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      TextColor = clBlack
    end
    object cxStyle14: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 12937777
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      TextColor = clWhite
    end
    object GridTableViewStyleSheetDevExpress: TcxGridTableViewStyleSheet
      Caption = 'DevExpress'
      Styles.Background = cxStyle1
      Styles.Content = cxStyle2
      Styles.ContentEven = cxStyle3
      Styles.ContentOdd = cxStyle4
      Styles.Inactive = cxStyle10
      Styles.IncSearch = cxStyle11
      Styles.Selection = cxStyle14
      Styles.FilterBox = cxStyle5
      Styles.Footer = cxStyle6
      Styles.Group = cxStyle7
      Styles.GroupByBox = cxStyle8
      Styles.Header = cxStyle9
      Styles.Indicator = cxStyle12
      Styles.Preview = cxStyle13
      BuiltIn = True
    end
  end
  object DS: TpFIBDataSet
    Database = DB
    Transaction = TR
    SelectSQL.Strings = (
      'SELECT * FROM PC_SELECT_ALL_ABOUT_UCH')
    Left = 312
    Top = 80
    poSQLINT64ToBCD = True
    object DSID_FORM_UCH: TFIBBCDField
      FieldName = 'ID_FORM_UCH'
      Size = 0
      RoundByScale = True
    end
    object DSDATE_REC: TFIBDateField
      FieldName = 'DATE_REC'
    end
    object DSID_REG: TFIBBCDField
      FieldName = 'ID_REG'
      Size = 0
      RoundByScale = True
    end
    object DSIS_VALYUTA: TFIBIntegerField
      FieldName = 'IS_VALYUTA'
    end
    object DSID_SYS: TFIBStringField
      FieldName = 'ID_SYS'
      Size = 15
      EmptyStrToNull = True
    end
    object DSGRP_DOG_STUD: TFIBIntegerField
      FieldName = 'GRP_DOG_STUD'
    end
    object DSGRP_DOG_KONTR: TFIBIntegerField
      FieldName = 'GRP_DOG_KONTR'
    end
    object DSTYPE_DOC: TFIBIntegerField
      FieldName = 'TYPE_DOC'
    end
    object DSNOT_PRINT_FIO_ISPOLN: TFIBIntegerField
      FieldName = 'NOT_PRINT_FIO_ISPOLN'
    end
    object DSTYPE_DOC_VAL: TFIBIntegerField
      FieldName = 'TYPE_DOC_VAL'
    end
    object DSKASS_DAY: TFIBIntegerField
      FieldName = 'KASS_DAY'
    end
    object DSFORM_UCH: TFIBStringField
      FieldName = 'FORM_UCH'
      Size = 60
      EmptyStrToNull = True
    end
    object DSREG_TITLE: TFIBStringField
      FieldName = 'REG_TITLE'
      Size = 200
      EmptyStrToNull = True
    end
    object DSREG_SHORT: TFIBStringField
      FieldName = 'REG_SHORT'
      Size = 16
      EmptyStrToNull = True
    end
    object DSROZSH: TFIBStringField
      FieldName = 'ROZSH'
      EmptyStrToNull = True
    end
    object DSSYSTEM: TFIBStringField
      FieldName = 'SYSTEM'
      Size = 30
      EmptyStrToNull = True
    end
    object DST_DOC: TFIBStringField
      FieldName = 'T_DOC'
      EmptyStrToNull = True
    end
    object DST_FULL: TFIBStringField
      FieldName = 'T_FULL'
      Size = 100
      EmptyStrToNull = True
    end
  end
  object DB: TpFIBDatabase
    DBParams.Strings = (
      'user_name=SYSDBA'
      'password=masterkey'
      'lc_ctype=WIN1251')
    SQLDialect = 3
    Timeout = 0
    WaitForRestoreConnect = 0
    Left = 352
    Top = 80
  end
  object ds1: TDataSource
    DataSet = DS
    Left = 352
    Top = 152
  end
  object SP: TpFIBStoredProc
    Database = DB
    Transaction = TR
    Left = 392
    Top = 80
  end
  object TR: TpFIBTransaction
    DefaultDatabase = DB
    TimeoutAction = TARollback
    Left = 440
    Top = 80
  end
end