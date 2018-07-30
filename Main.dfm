object MainForm: TMainForm
  Left = 0
  Top = 0
  Caption = 'Main'
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
  object RegisterAgency: TButton
    Left = 113
    Top = 24
    Width = 97
    Height = 25
    Caption = 'RegisterAgency'
    TabOrder = 0
    OnClick = RegisterAgencyClick
  end
  object RegisterEmployee: TButton
    Left = 113
    Top = 55
    Width = 97
    Height = 25
    Caption = 'RegisterEmployee'
    TabOrder = 1
    OnClick = RegisterEmployeeClick
  end
  object RegisterCustomer: TButton
    Left = 113
    Top = 86
    Width = 97
    Height = 25
    Caption = 'RegisterCustomer'
    TabOrder = 2
    OnClick = RegisterCustomerClick
  end
  object ViewAgencies: TButton
    Left = 257
    Top = 24
    Width = 81
    Height = 25
    Caption = 'ViewAgencies'
    TabOrder = 3
    OnClick = ViewAgenciesClick
  end
  object ViewEmployees: TButton
    Left = 257
    Top = 55
    Width = 81
    Height = 25
    Caption = 'ViewEmployees'
    TabOrder = 4
    OnClick = ViewEmployeesClick
  end
  object ViewCustomers: TButton
    Left = 257
    Top = 86
    Width = 81
    Height = 25
    Caption = 'ViewCustomers'
    TabOrder = 5
    OnClick = ViewCustomersClick
  end
  object ViewBuyers: TButton
    Left = 257
    Top = 117
    Width = 81
    Height = 25
    Caption = 'ViewBuyers'
    TabOrder = 6
    OnClick = ViewBuyersClick
  end
  object ViewSellers: TButton
    Left = 257
    Top = 148
    Width = 81
    Height = 25
    Caption = 'View Sellers'
    TabOrder = 7
    OnClick = ViewSellersClick
  end
  object ViewProperties: TButton
    Left = 257
    Top = 179
    Width = 81
    Height = 25
    Caption = 'View Properties'
    TabOrder = 8
    OnClick = ViewPropertiesClick
  end
end
