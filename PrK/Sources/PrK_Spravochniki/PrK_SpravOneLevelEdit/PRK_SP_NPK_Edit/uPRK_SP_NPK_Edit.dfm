inherited FormPrK_SP_NPK_Edit: TFormPrK_SP_NPK_Edit
  Left = 316
  Top = 201
  Caption = 'FormPrK_SP_NPK_Edit'
  ClientHeight = 310
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited ImageSpravEdit: TImage
    Height = 310
  end
  inherited cxLabelName: TcxLabel
    TabOrder = 7
  end
  inherited cxLabelShortName: TcxLabel
    TabOrder = 8
  end
  inherited cxLabelKod: TcxLabel
    Top = 195
    TabOrder = 9
  end
  inherited cxTextEditKod: TcxTextEdit
    Top = 194
    TabOrder = 3
  end
  inherited cxButtonOK: TcxButton
    Top = 277
    TabOrder = 5
  end
  inherited cxButtonCansel: TcxButton
    Top = 277
    TabOrder = 6
  end
  inherited cxLabelFormCaption: TcxLabel
    TabOrder = 10
    Caption = ' '#1044#1086#1076#1072#1090#1080
  end
  inherited cxButtonCloseForm: TcxButton
    TabOrder = 11
  end
  inherited cxLabelNPP: TcxLabel
    Top = 229
    TabOrder = 12
    Caption = 'cxLabelNPP'
  end
  inherited cxTextEditNPP: TcxTextEdit
    Top = 228
    TabOrder = 4
  end
  object cxLabelSostavPK: TcxLabel [13]
    Left = 16
    Top = 138
    Width = 274
    Height = 19
    AutoSize = False
    ParentFont = False
    Properties.LabelStyle = cxlsRaised
    Properties.ShadowedColor = clBtnShadow
    Properties.Transparent = True
    Style.Font.Charset = DEFAULT_CHARSET
    Style.Font.Color = clWindowText
    Style.Font.Height = -11
    Style.Font.Name = 'MS Sans Serif'
    Style.Font.Style = [fsBold]
    Style.Shadow = False
    TabOrder = 13
  end
  object cxButtonEditSostavPK: TcxButtonEdit [14]
    Left = 26
    Top = 163
    Width = 290
    Height = 21
    AutoSize = False
    ParentFont = False
    Properties.Buttons = <
      item
        Default = True
        Kind = bkEllipsis
      end>
    Properties.ReadOnly = False
    Properties.OnButtonClick = cxButtonEditSostavPKPropertiesButtonClick
    Style.Color = 16776176
    Style.Font.Charset = DEFAULT_CHARSET
    Style.Font.Color = clWindowText
    Style.Font.Height = -11
    Style.Font.Name = 'MS Sans Serif'
    Style.Font.Style = [fsBold]
    TabOrder = 2
    Text = 'cxButtonEditSostavPK'
    OnKeyPress = cxButtonEditSostavPKKeyPress
  end
  inherited ActionListKlassSpravEdit: TActionList
    Top = 240
  end
end