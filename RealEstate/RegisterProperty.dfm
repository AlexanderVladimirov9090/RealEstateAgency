object RegProperty: TRegProperty
  Left = 0
  Top = 0
  Caption = 'Property'
  ClientHeight = 231
  ClientWidth = 505
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object address: TEdit
    Left = 85
    Top = 9
    Width = 129
    Height = 21
    TabOrder = 0
  end
  object Description: TEdit
    Left = 85
    Top = 36
    Width = 129
    Height = 73
    AutoSize = False
    TabOrder = 1
  end
  object PropertySize: TEdit
    Left = 85
    Top = 171
    Width = 49
    Height = 20
    AutoSize = False
    TabOrder = 2
  end
  object Price: TEdit
    Left = 85
    Top = 115
    Width = 74
    Height = 21
    TabOrder = 3
  end
  object PropertyType: TComboBox
    Left = 318
    Top = 8
    Width = 145
    Height = 21
    Style = csDropDownList
    TabOrder = 4
    OnSelect = SelectedItem
  end
  object BuildMaterials: TComboBox
    Left = 318
    Top = 42
    Width = 145
    Height = 21
    Style = csDropDownList
    TabOrder = 5
  end
  object YardSize: TEdit
    Left = 85
    Top = 142
    Width = 61
    Height = 21
    TabOrder = 6
  end
  object ParkingSpace: TEdit
    Left = 85
    Top = 196
    Width = 41
    Height = 21
    TabOrder = 7
  end
  object PropertySubType: TComboBox
    Left = 318
    Top = 78
    Width = 145
    Height = 21
    Style = csDropDownList
    TabOrder = 8
  end
  object Regulation: TComboBox
    Left = 318
    Top = 114
    Width = 145
    Height = 21
    Style = csDropDownList
    TabOrder = 9
  end
  object RegisterProperty: TButton
    Left = 359
    Top = 196
    Width = 107
    Height = 25
    Caption = 'Register'
    TabOrder = 10
    OnClick = RegisterPropertyClick
  end
  object AddressTXT: TStaticText
    Left = 36
    Top = 12
    Width = 47
    Height = 17
    Caption = 'Address:'
    TabOrder = 11
  end
  object DescriptionTXT: TStaticText
    Left = 22
    Top = 36
    Width = 61
    Height = 17
    Caption = 'Description:'
    TabOrder = 12
  end
  object StaticText1: TStaticText
    Left = 56
    Top = 174
    Width = 27
    Height = 17
    Caption = 'Size:'
    TabOrder = 13
  end
  object PriceTXT: TStaticText
    Left = 52
    Top = 119
    Width = 31
    Height = 17
    Caption = 'Price:'
    TabOrder = 14
  end
  object YardSizeTXT: TStaticText
    Left = 31
    Top = 146
    Width = 52
    Height = 17
    Caption = 'Yard Size:'
    TabOrder = 15
  end
  object PropertyTypeTXT: TStaticText
    Left = 241
    Top = 12
    Width = 77
    Height = 17
    Caption = 'Property Type:'
    TabOrder = 16
  end
  object BuildMaterialsTXT: TStaticText
    Left = 242
    Top = 41
    Width = 76
    Height = 17
    Caption = 'Build Materials:'
    TabOrder = 17
  end
  object SubTypeTXT: TStaticText
    Left = 286
    Top = 82
    Width = 32
    Height = 17
    Caption = 'Type:'
    TabOrder = 18
  end
  object RequlationTXT: TStaticText
    Left = 259
    Top = 118
    Width = 59
    Height = 17
    Caption = 'Regulation:'
    TabOrder = 19
  end
  object ParkingSpaceTXT: TStaticText
    Left = 3
    Top = 198
    Width = 80
    Height = 17
    Caption = 'Parking Spaces:'
    TabOrder = 20
  end
end
