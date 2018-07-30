object Properties: TProperties
  Left = 0
  Top = 0
  Caption = 'Properties'
  ClientHeight = 283
  ClientWidth = 618
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
  object PropertyGrid: TDBGrid
    Left = 0
    Top = 0
    Width = 618
    Height = 120
    Align = alTop
    DataSource = PropertyData
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
    ReadOnly = True
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object Exit: TButton
    Left = 8
    Top = 126
    Width = 75
    Height = 25
    Caption = 'Exit'
    TabOrder = 1
  end
  object Houses: TButton
    Left = 120
    Top = 126
    Width = 75
    Height = 25
    Caption = 'Houses'
    TabOrder = 2
    OnClick = HousesClick
  end
  object Apartments: TButton
    Left = 224
    Top = 126
    Width = 75
    Height = 25
    Caption = 'Apartments'
    TabOrder = 3
    OnClick = ApartmentsClick
  end
  object Lands: TButton
    Left = 328
    Top = 126
    Width = 75
    Height = 25
    Caption = 'Lands'
    TabOrder = 4
    OnClick = LandsClick
  end
  object PropertiesAllData: TButton
    Left = 432
    Top = 126
    Width = 75
    Height = 25
    Caption = 'All Properties'
    TabOrder = 5
    OnClick = PropertiesAllDataClick
  end
  object AgencyconnectionConnection: TFDConnection
    Params.Strings = (
      'ConnectionDef=AgencyConnection')
    Connected = True
    LoginPrompt = False
    Left = 385
    Top = 188
  end
  object PropertyTable: TFDQuery
    Active = True
    Connection = AgencyconnectionConnection
    SQL.Strings = (
      'SELECT * FROM PROPERTY ORDER BY PRICE DESC')
    Left = 97
    Top = 164
  end
  object PropertyData: TDataSource
    DataSet = PropertyTable
    Left = 24
    Top = 163
  end
  object AllHouses: TFDQuery
    Active = True
    Connection = AgencyconnectionConnection
    SQL.Strings = (
      
        'SELECT ID, PROPERTY_SIZE, DESCRIPTION, ADDRESS, PRICE, PROPERTY_' +
        'TYPE, SOLD, EMPLOYEE_ID, SELLER_ID, BUILD_MATERIAL, HOUSE_TYPE, ' +
        'PARKING_SPACE, YARD_SIZE FROM PROPERTY INNER JOIN HOUSE ON PROPE' +
        'RTY.ID=HOUSE.PROPERTY_ID ORDER BY PRICE DESC')
    Left = 97
    Top = 212
  end
  object HousesData: TDataSource
    DataSet = AllHouses
    Left = 24
    Top = 211
  end
  object AllApartments: TFDQuery
    Active = True
    Connection = AgencyconnectionConnection
    SQL.Strings = (
      
        'SELECT ID, PROPERTY_SIZE, DESCRIPTION, ADDRESS, PRICE, PROPERTY_' +
        'TYPE, SOLD, EMPLOYEE_ID, SELLER_ID, BUILD_MATERIAL, TYPE_OF_APAR' +
        'TMENT FROM PROPERTY INNER JOIN APARTMENT ON PROPERTY.ID=APARTMEN' +
        'T.PROPERTY_ID ORDER BY PRICE DESC')
    Left = 281
    Top = 164
  end
  object ApartmentData: TDataSource
    DataSet = AllApartments
    Left = 200
    Top = 163
  end
  object AllLand: TFDQuery
    Active = True
    Connection = AgencyconnectionConnection
    SQL.Strings = (
      
        'SELECT ID, PROPERTY_SIZE, DESCRIPTION, ADDRESS, PRICE, PROPERTY_' +
        'TYPE, SOLD, EMPLOYEE_ID, SELLER_ID, LAND_TYPE, REGULATED FROM PR' +
        'OPERTY INNER JOIN LAND ON PROPERTY.ID=LAND.PROPERTY_ID ORDER BY ' +
        'PRICE DESC')
    Left = 289
    Top = 220
  end
  object LandData: TDataSource
    DataSet = AllLand
    Left = 200
    Top = 219
  end
end
