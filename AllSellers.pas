unit AllSellers;
  {Shows all sellers.}
interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.FB,
  FireDAC.Phys.FBDef, FireDAC.VCLUI.Wait, FireDAC.Stan.Param, FireDAC.DatS,
  FireDAC.DApt.Intf, FireDAC.DApt, Data.DB, Vcl.Grids, Vcl.DBGrids,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.StdCtrls, RegisterProperty;

type
  TSellers = class(TForm)
    AgencyconnectionConnection: TFDConnection;
    SellerTable: TFDQuery;
    SellerData: TDataSource;
    DBGrid1: TDBGrid;
    Exitbtn: TButton;
    RegisterPropertybtn: TButton;
    Refreshbtn: TButton;
    procedure ExitbtnClick(Sender: TObject);
    procedure RegisterPropertybtnClick(Sender: TObject);
    procedure idCustomerAndEmployee(Column: TColumn);
    procedure FormCreate(Sender: TObject);
    procedure RefreshbtnClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Sellers: TSellers;
  SellerId: integer;
  EmployeeId : integer;
implementation

{$R *.dfm}

{}
procedure TSellers.RegisterPropertybtnClick(Sender: TObject);
begin
if (SellerId<>0) then
begin
  RegisterProperty.SellerId := SellerId;
  RegisterProperty.EmployeeId := EmployeeId;
  RegisterProperty.RegProperty.ShowModal;
end
else begin
  ShowMessage('Choose Seller!');
end;
end;

procedure TSellers.ExitbtnClick(Sender: TObject);
begin
  Sellers.Close;
end;

procedure TSellers.FormCreate(Sender: TObject);
begin
  SellerData.DataSet.Refresh;
end;

procedure TSellers.idCustomerAndEmployee(Column: TColumn);
begin
  SellerId:= DBGrid1.Fields[0].AsInteger;
  EmployeeId :=DBGrid1.Fields[3].AsInteger;
end;

procedure TSellers.RefreshbtnClick(Sender: TObject);
begin
  SellerData.DataSet.Refresh;
end;

end.
