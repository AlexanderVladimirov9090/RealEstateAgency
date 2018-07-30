unit Main;
      {This is the main Form, that I`m using to display all the functionality, that is written. }
interface
  {This is where Dependencies declared}
uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls,
  {From Here are what I`ve decleared as a dependencies}
  RegisterAgency,
  AllAgencies,
  RegisterEmployee,
  AllEmployees,
  RegisterCustomer,
  AllCustomers,
  AllBuyers,
  AllSellers,
  AllProperties;
  {Declaration of types that are used in this unit.}
type
{This is the form that is displayed}
  TMainForm = class(TForm)
  {Thees are the buttons}
    RegisterAgency: TButton;
    RegisterEmployee: TButton;
    RegisterCustomer: TButton;
    ViewAgencies: TButton;
    ViewEmployees: TButton;
    ViewCustomers: TButton;
    ViewBuyers: TButton;
    ViewSellers: TButton;
    ViewProperties: TButton;
    {These are the procedures that used by the buttons}
    procedure RegisterAgencyClick(Sender: TObject);
    procedure ViewAgenciesClick(Sender: TObject);
    procedure RegisterEmployeeClick(Sender: TObject);
    procedure ViewEmployeesClick(Sender: TObject);
    procedure RegisterCustomerClick(Sender: TObject);
    procedure ViewCustomersClick(Sender: TObject);
    procedure ViewBuyersClick(Sender: TObject);
    procedure ViewSellersClick(Sender: TObject);
    procedure ViewPropertiesClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;
 {Think this is where the magic happens with the first Form is instantiate (Not sure for now)}
var
  MainForm: TMainForm;

implementation
 {This I think is for loading the forms will read what it does.}
{$R *.dfm}
{This is where the magic happens.
  Procedures that are for the buttons that calls the other forms to appear from out of the blue (Inserted Jocke here)
  it uses the ShowModal function that every form has.
}

{Clicked shows the registartion of Agency form}
procedure TMainForm.RegisterAgencyClick(Sender: TObject);
begin
RegAgency.ShowModal;
end;
{Clicked shows the registration of Customer form}
procedure TMainForm.RegisterCustomerClick(Sender: TObject);
begin
RegCustomer.ShowModal;
end;
{Clicked shows the registration of Employee form}
procedure TMainForm.RegisterEmployeeClick(Sender: TObject);
begin
RegEmployee.ShowModal;
end;
{Clicked shows all Agencies form}
procedure TMainForm.ViewAgenciesClick(Sender: TObject);
begin
AllAgencies.Agencies.ShowModal;
end;
 procedure TMainForm.ViewBuyersClick(Sender: TObject);
begin
AllBuyers.Buyers.ShowModal;
end;

{Clicked shows all Customers form}
procedure TMainForm.ViewCustomersClick(Sender: TObject);
begin
AllCustomers.FormCustomers.ShowModal;
end;
 {Clicked shows all Employees form}
procedure TMainForm.ViewEmployeesClick(Sender: TObject);
begin
AllEmployees.Employees.ShowModal;
end;
 {Clicked shows all properties.}
procedure TMainForm.ViewPropertiesClick(Sender: TObject);
begin
     AllProperties.Properties.ShowModal;
end;
  {Clicked shows all sellers.}
procedure TMainForm.ViewSellersClick(Sender: TObject);
begin
  AllSellers.Sellers.ShowModal;
end;

end.
