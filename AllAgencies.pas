unit AllAgencies;
  {This form displays all Agencies.}
interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.FB,
  FireDAC.Phys.FBDef, FireDAC.VCLUI.Wait, FireDAC.Stan.Param, FireDAC.DatS,
  FireDAC.DApt.Intf, FireDAC.DApt, Data.DB, Vcl.Grids, Vcl.DBGrids,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.StdCtrls;

type
  TAgencies = class(TForm)
    AgencyconnectionConnection: TFDConnection;
    AgencyTable: TFDQuery;
    AgencyDataSource: TDataSource;
    AgencyGrid: TDBGrid;
    Exit: TButton;
    Refresh: TButton;
    procedure ExitClick(Sender: TObject);
    procedure RefreshClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Agencies: TAgencies;

implementation

{$R *.dfm}

{This is the exit button. Closes Angecies form.}
procedure TAgencies.ExitClick(Sender: TObject);
begin
  Agencies.Close;
end;

{This is fired on creation of the form.
 It refreshes the dataset and updates if has new content for display.}
procedure TAgencies.FormCreate(Sender: TObject);
begin
  AgencyDataSource.DataSet.Refresh;
end;

{This is the refresh button.}
procedure TAgencies.RefreshClick(Sender: TObject);
begin
  AgencyDataSource.DataSet.Refresh;
end;
end.
