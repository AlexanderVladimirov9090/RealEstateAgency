object Form6: TForm6
  Left = 0
  Top = 0
  Caption = 'Form6'
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
    Left = 376
    Top = 94
  end
  object PropertyTable: TFDQuery
    Connection = AgencyconnectionConnection
    SQL.Strings = (
      'SELECT * FROM PROPERTY')
    Left = 376
    Top = 142
  end
  object qrProperty: TFDQuery
    Connection = AgencyconnectionConnection
    Left = 304
    Top = 144
  end
end
