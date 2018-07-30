object Buyer: TBuyer
  Left = 0
  Top = 0
  Caption = 'RegBuyer'
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
  object BudgetTXT: TStaticText
    Left = 151
    Top = 49
    Width = 48
    Height = 20
    Caption = 'Budget:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
  end
  object Budget: TEdit
    Left = 200
    Top = 48
    Width = 121
    Height = 21
    TabOrder = 1
  end
  object Registerbtn: TButton
    Left = 200
    Top = 104
    Width = 75
    Height = 25
    Caption = 'Register'
    TabOrder = 2
    OnClick = RegisterbtnClick
  end
  object CustomerName: TStaticText
    Left = 216
    Top = 8
    Width = 26
    Height = 17
    Caption = 'Text'
    TabOrder = 3
  end
end
