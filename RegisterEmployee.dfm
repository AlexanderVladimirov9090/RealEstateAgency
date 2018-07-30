object RegEmployee: TRegEmployee
  Left = 0
  Top = 0
  Caption = 'RegEmployee'
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
  object EmployeePhone: TEdit
    Left = 184
    Top = 63
    Width = 121
    Height = 21
    MaxLength = 11
    TabOrder = 1
  end
  object EmployeeName: TEdit
    Left = 184
    Top = 36
    Width = 121
    Height = 21
    MaxLength = 20
    TabOrder = 0
  end
  object AgencyName: TEdit
    Left = 184
    Top = 90
    Width = 121
    Height = 21
    MaxLength = 20
    TabOrder = 2
  end
  object Name: TStaticText
    Left = 95
    Top = 40
    Width = 42
    Height = 20
    Caption = 'Name:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 3
  end
  object Phone: TStaticText
    Left = 95
    Top = 67
    Width = 44
    Height = 20
    Caption = 'Phone:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 4
  end
  object AgencyN: TStaticText
    Left = 95
    Top = 93
    Width = 87
    Height = 20
    Caption = 'Agency Name:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 5
  end
  object Register: TButton
    Left = 192
    Top = 144
    Width = 75
    Height = 25
    Caption = 'Register'
    TabOrder = 6
    OnClick = RegisterClick
  end
end
