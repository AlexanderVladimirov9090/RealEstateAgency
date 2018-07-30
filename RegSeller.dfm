object RegisterSeller: TRegisterSeller
  Left = 0
  Top = 0
  Caption = 'RegisterSeller'
  ClientHeight = 231
  ClientWidth = 505
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object StaticText1: TStaticText
    Left = 115
    Top = 23
    Width = 240
    Height = 28
    Caption = 'Would you like to register:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -20
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
  end
  object CustomerName: TStaticText
    Left = 208
    Top = 61
    Width = 56
    Height = 28
    Caption = 'Name'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -20
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
  end
  object StaticText3: TStaticText
    Left = 180
    Top = 99
    Width = 105
    Height = 28
    Caption = 'As a seller?'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -20
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
  end
  object Yes: TButton
    Left = 130
    Top = 142
    Width = 75
    Height = 25
    Caption = 'Yes'
    TabOrder = 3
    OnClick = YesClick
  end
  object No: TButton
    Left = 251
    Top = 142
    Width = 75
    Height = 25
    Caption = 'No'
    TabOrder = 4
    OnClick = NoClick
  end
end
