unit RegisterBuyer;
{This is the registration of a Buyer.}
interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, dmBuyer;

type
  TBuyer = class(TForm)
    BudgetTXT: TStaticText;
    Budget: TEdit;
    Registerbtn: TButton;
    CustomerName: TStaticText;
    procedure RegisterbtnClick(Sender: TObject);
  private
    { Private declarations }
  public
     customerID : integer;
    { Public declarations }
  end;

var
  Buyer: TBuyer;


implementation

{$R *.dfm}

  {Registers buyer.}
procedure TBuyer.RegisterbtnClick(Sender: TObject);
begin
if (customerID<>0) and (Budget.Text <>'') then begin
   with dmBuyer.Form1.qrBuyer do
    begin
        dmBuyer.Form1.qrBuyer.Close;
        dmBuyer.Form1.qrBuyer.SQL.Clear;
        dmBuyer.Form1.qrBuyer.SQL.Add('INSERT INTO BUYER (customer_id, budget)');
        dmBuyer.Form1.qrBuyer.SQL.Add('VALUES ('''+customerID.ToString+''',');
        dmBuyer.Form1.qrBuyer.SQL.Add(' '+Budget.Text+')');
        dmBuyer.Form1.qrBuyer.ExecSQL;
        Buyer.Close;
    end;
    end
    else begin
        ShowMessage('Error no customer with id: 0');
    end;

end;

end.
