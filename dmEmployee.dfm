object Form4: TForm4
  Left = 0
  Top = 0
  Caption = 'Form4'
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
    Left = 342
    Top = 78
  end
  object EmployeeTable: TFDQuery
    Connection = AgencyconnectionConnection
    SQL.Strings = (
      'SELECT * FROM EMPLOYEE')
    Left = 342
    Top = 126
  end
  object qrEmployee: TFDQuery
    Connection = AgencyconnectionConnection
    Left = 232
    Top = 96
  end
end
