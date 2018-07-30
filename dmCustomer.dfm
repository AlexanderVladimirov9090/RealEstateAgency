object Form2: TForm2
  Left = 0
  Top = 0
  Caption = 'Form2'
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
  object AgencyconnectionConnection: TFDConnection
    Params.Strings = (
      'ConnectionDef=AgencyConnection')
    LoginPrompt = False
    Left = 378
    Top = 55
  end
  object CustomerTable: TFDQuery
    Connection = AgencyconnectionConnection
    SQL.Strings = (
      'SELECT * FROM CUSTOMER')
    Left = 378
    Top = 103
  end
  object qrCustomer: TFDQuery
    Connection = AgencyconnectionConnection
    Left = 224
    Top = 112
  end
end
