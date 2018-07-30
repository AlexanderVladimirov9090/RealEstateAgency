unit RegisterCustomer;
{This form will register Customer.}
interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, dmCustomer;

type
  TRegCustomer = class(TForm)
    CustomerName: TEdit;
    CustomerPhone: TEdit;
    Registerbtn: TButton;
    Name: TStaticText;
    Phone: TStaticText;
    procedure RegisterbtnClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  RegCustomer: TRegCustomer;

implementation

{$R *.dfm}

{Clicked this button will fire the query for registration customer to databse.}
procedure TRegCustomer.RegisterbtnClick(Sender: TObject);
begin
    if (CustomerName.Text<>'') and (CustomerPhone.Text <>'') then begin
    with dmCustomer.Form2.qrCustomer do
    begin
      dmCustomer.Form2.qrCustomer.Close;
      dmCustomer.Form2.qrCustomer.SQL.Clear;
      dmCustomer.Form2.qrCustomer.SQL.Add('INSERT INTO CUSTOMER (NAME, PHONE, EMPLOYEE_ID)');
      dmCustomer.Form2.qrCustomer.SQL.Add('VALUES ('''+CustomerName.Text+''',');
      dmCustomer.Form2.qrCustomer.SQL.Add(' '''+CustomerPhone.Text+''',');
      dmCustomer.Form2.qrCustomer.SQL.Add(' (SELECT FIRST 1 id FROM EMPLOYEE ORDER BY RAND()))');
      dmCustomer.Form2.qrCustomer.ExecSQL;
      RegCustomer.Close;
    end;
    end
    else begin
      ShowMessage('No Empty Values!');
    end;
end;
end.
