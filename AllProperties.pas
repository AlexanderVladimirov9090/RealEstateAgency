unit AllProperties;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.FB,
  FireDAC.Phys.FBDef, FireDAC.VCLUI.Wait, FireDAC.Stan.Param, FireDAC.DatS,
  FireDAC.DApt.Intf, FireDAC.DApt, Data.DB, Vcl.StdCtrls, Vcl.Grids,
  Vcl.DBGrids, FireDAC.Comp.DataSet, FireDAC.Comp.Client, dmProperty;

type
  TProperties = class(TForm)
    AgencyconnectionConnection: TFDConnection;
    PropertyTable: TFDQuery;
    PropertyData: TDataSource;
    PropertyGrid: TDBGrid;
    Exit: TButton;
    Houses: TButton;
    Apartments: TButton;
    Lands: TButton;
    AllHouses: TFDQuery;
    HousesData: TDataSource;
    AllApartments: TFDQuery;
    ApartmentData: TDataSource;
    AllLand: TFDQuery;
    LandData: TDataSource;
    PropertiesAllData: TButton;
    procedure HousesClick(Sender: TObject);
    procedure ApartmentsClick(Sender: TObject);
    procedure LandsClick(Sender: TObject);
    procedure PropertiesAllDataClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Properties: TProperties;

implementation

{$R *.dfm}

procedure TProperties.ApartmentsClick(Sender: TObject);
begin
  ApartmentData.DataSet.Refresh;
  PropertyGrid.DataSource := ApartmentData;
end;

procedure TProperties.FormCreate(Sender: TObject);
begin
  PropertyData.DataSet.Refresh;
end;

procedure TProperties.HousesClick(Sender: TObject);
begin
  HousesData.DataSet.Refresh;
  PropertyGrid.DataSource := HousesData;
end;

procedure TProperties.LandsClick(Sender: TObject);
begin
  LandData.DataSet.Refresh;
  PropertyGrid.DataSource := LandData;
end;

procedure TProperties.PropertiesAllDataClick(Sender: TObject);
begin
  PropertyData.DataSet.Refresh;
  PropertyGrid.DataSource := PropertyData;
end;
end.
