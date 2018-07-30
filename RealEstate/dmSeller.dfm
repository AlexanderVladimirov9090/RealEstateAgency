object Form5: TForm5
  Left = 0
  Top = 0
  Caption = 'Form5'
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
    Left = 368
    Top = 105
  end
  object SellerTable: TFDQuery
    Connection = AgencyconnectionConnection
    SQL.Strings = (
      'SELECT * FROM SELLER')
    Left = 368
    Top = 153
  end
  object qrSeller: TFDQuery
    Connection = AgencyconnectionConnection
    Left = 216
    Top = 120
  end
end
