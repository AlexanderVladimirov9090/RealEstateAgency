unit RegSeller;
{Confirmation form for registerting a seller.}
interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, dmSeller;

type
  TRegisterSeller = class(TForm)
    StaticText1: TStaticText;
    CustomerName: TStaticText;
    StaticText3: TStaticText;
    Yes: TButton;
    No: TButton;
    procedure NoClick(Sender: TObject);
    procedure YesClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  RegisterSeller: TRegisterSeller;
  customerID: integer;

implementation

{$R *.dfm}
 {Cancels the registration.}
procedure TRegisterSeller.NoClick(Sender: TObject);
begin
  RegisterSeller.Close;
end;

  {Executes the query for registration.}
procedure TRegisterSeller.YesClick(Sender: TObject);
begin
if (customerId<>0) then begin
   with dmSeller.Form5.qrSeller do
    begin
        dmSeller.Form5.qrSeller.Close;
        dmSeller.Form5.qrSeller.SQL.Clear;
        dmSeller.Form5.qrSeller.SQL.Add('INSERT INTO SELLER (customer_id)');
        dmSeller.Form5.qrSeller.SQL.Add('VALUES ('+customerId.ToString+')');
        dmSeller.Form5.qrSeller.ExecSQL;
        RegisterSeller.Close;
    end;
    end
    else begin
        ShowMessage('Error no customer with id: 0');
    end;

end;

end.
