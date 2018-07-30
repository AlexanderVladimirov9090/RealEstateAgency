object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
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
    Left = 326
    Top = 81
  end
  object BuyerTable: TFDQuery
    Connection = AgencyconnectionConnection
    SQL.Strings = (
      'SELECT * FROM BUYER')
    Left = 326
    Top = 129
  end
  object qrBuyer: TFDQuery
    Connection = AgencyconnectionConnection
    Left = 224
    Top = 136
  end
end
