unit RegisterProperty;
  {This is the property registration form.}
interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, dmProperty;

type
  TRegProperty = class(TForm)
    address: TEdit;
    Description: TEdit;
    PropertySize: TEdit;
    Price: TEdit;
    PropertyType: TComboBox;
    BuildMaterials: TComboBox;
    YardSize: TEdit;
    ParkingSpace: TEdit;
    PropertySubType: TComboBox;
    Regulation: TComboBox;
    RegisterProperty: TButton;
    AddressTXT: TStaticText;
    DescriptionTXT: TStaticText;
    StaticText1: TStaticText;
    PriceTXT: TStaticText;
    YardSizeTXT: TStaticText;
    PropertyTypeTXT: TStaticText;
    BuildMaterialsTXT: TStaticText;
    SubTypeTXT: TStaticText;
    RequlationTXT: TStaticText;
    ParkingSpaceTXT: TStaticText;
    procedure FormCreate(Sender: TObject);
    procedure SelectedItem(Sender: TObject);
    procedure RegisterPropertyClick(Sender: TObject);
    procedure RegisterSubTypeProperty();

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  RegProperty: TRegProperty;
  SellerId : integer;
  EmployeeId : integer;
  Regulated : string;
implementation

{$R *.dfm}


  {Populates all combo boxes, and sets to first element.}
procedure TRegProperty.FormCreate(Sender: TObject);
begin
  {Property types added to combo box.}
  PropertyType.AddItem('House', nil);
  PropertyType.AddItem('Apartment', nil);
  PropertyType.AddItem('Land', nil);
  PropertyType.ItemIndex := 0;

  {Sub Type of e property added to combo box.}
  PropertySubType.AddItem('Floor Of House',nil);
  PropertySubType.AddItem('House',nil);
  PropertySubType.ItemIndex :=0;

  {This one is hiden becouse is it used only for LAND Property.}
  Regulation.Hide;
  Regulation.AddItem('Yes', nil);
  Regulation.AddItem('No', nil);
  Regulation.ItemIndex :=0;

  {Build Materials are added to Combo box.}
  BuildMaterials.AddItem('EPK', nil);
  BuildMaterials.AddItem('Birck', nil);
  BuildMaterials.AddItem('Panel', nil);
  BuildMaterials.AddItem('Mudbrick', nil);
  BuildMaterials.ItemIndex :=0;

  end;
  {This is the logic for registering in to one of the subtypes tables.}
procedure TRegProperty.RegisterSubTypeProperty();
begin
  {If the combo box of property is set to house it will go to house table.}
  if(PropertyType.Text='House')then
 begin
  begin
    try
      dmProperty.Form6.qrProperty.Close;
      dmProperty.Form6.qrProperty.SQL.Clear;
      dmProperty.Form6.qrProperty.SQL.Add('INSERT INTO HOUSE (PROPERTY_ID, BUILD_MATERIAL, HOUSE_TYPE, PARKING_SPACE, YARD_SIZE)');
      dmProperty.Form6.qrProperty.SQL.Add('VALUES( (SELECT ID FROM PROPERTY WHERE ADDRESS= '''+Address.Text+'''),'+' '''+BuildMaterials.Text+''',');
      dmProperty.Form6.qrProperty.SQL.Add(' '''+PropertySubType.Text+''','+' '+ ParkingSpace.Text+',');
      dmProperty.Form6.qrProperty.SQL.Add(' '+YardSize.Text+')');
      dmProperty.Form6.qrProperty.ExecSQL;
    Except
      ShowMessage('This Adress is alredy in use!');
    end;
   end;
   {This will register an apartment.}
 if(PropertyType.Text='Apartment')then
   begin
   begin
    try
      dmProperty.Form6.qrProperty.Close;
      dmProperty.Form6.qrProperty.SQL.Clear;
      dmProperty.Form6.qrProperty.SQL.Add('INSERT INTO APARTMENT (PROPERTY_ID, BUILD_MATERIAL, TYPE_OF_APARTMENT )');
      dmProperty.Form6.qrProperty.SQL.Add('VALUES( (SELECT ID FROM PROPERTY WHERE ADDRESS= '''+Address.Text+'''),'+' '''+BuildMaterials.Text+''',');
      dmProperty.Form6.qrProperty.SQL.Add(' '''+PropertySubType.Text+''')');
      dmProperty.Form6.qrProperty.ExecSQL;
    Except
      ShowMessage('This Adress is alredy in use!');
    end;
    end;
  end;
  end;

  {This will register a land.}
  if(PropertyType.Text='Land')then
   begin
   {Seting the regulation of a land.}
  if(Regulation.Text='Yes')then
  begin
    Regulated := 'TRUE';
  end
  else begin
    Regulated := 'FALSE';
  end;
   {Register a land.}
    begin
    try
      dmProperty.Form6.qrProperty.Close;
      dmProperty.Form6.qrProperty.SQL.Clear;
      dmProperty.Form6.qrProperty.SQL.Add('INSERT INTO LAND (PROPERTY_ID, REGULATED, LAND_TYPE )');
      dmProperty.Form6.qrProperty.SQL.Add('VALUES( (SELECT ID FROM PROPERTY WHERE ADDRESS= '''+Address.Text+'''),'+' '''+Regulated+''',');
      dmProperty.Form6.qrProperty.SQL.Add(' '''+PropertySubType.Text+''')');
      dmProperty.Form6.qrProperty.ExecSQL;
    Except
      ShowMessage('This Adress is alredy in use!');
    end;
  end;
  end;
   RegProperty.Close;
end;

  {This code is registering a property its subtype}
procedure TRegProperty.RegisterPropertyClick(Sender: TObject);
begin
  {Checks if empty string is pushed to the database}

  if (address.Text<>'') and (Description.Text <>'') and (propertySize.Text<>'') and (Price.Text<>'') then

   begin
    {From the dmAgency I`m Using qrAgency (Object that is used to query the database.)}
    with dmProperty.Form6.qrProperty do
    begin
      dmProperty.Form6.qrProperty.Close;
      dmProperty.Form6.qrProperty.SQL.Clear;
      dmProperty.Form6.qrProperty.SQL.Add('INSERT INTO PROPERTY (PROPERTY_SIZE, DESCRIPTION, ADDRESS, PRICE,');
      dmProperty.Form6.qrProperty.SQL.Add(' PROPERTY_TYPE, SOLD, SELLER_ID, EMPLOYEE_ID )');
      dmProperty.Form6.qrProperty.SQL.Add('VALUES( '+PropertySize.Text+','+' '''+ Description.Text+''',');
      dmProperty.Form6.qrProperty.SQL.Add(' '''+Address.Text+''','+' '''+ Price.Text+''',');
      dmProperty.Form6.qrProperty.SQL.Add(' '''+PropertyType.Text+''','+' FALSE,');
      dmProperty.Form6.qrProperty.SQL.Add(' '+SellerId.ToString+','+' '+ EmployeeId.ToString+' )');
      dmProperty.Form6.qrProperty.ExecSQL;
      {Calls procedure that register subtype.}
      RegisterSubTypeProperty();
    end;
    end
    else begin
      ShowMessage('No Empty Values!');
    end;
end;

{This procedure is For confguring Field for types of property, that we are going to register.}
procedure TRegProperty.SelectedItem(Sender: TObject);
begin
   case PropertyType.ItemIndex of
    {This is for the house,
    Hides regulation and shows all the others.}
    0 :begin
      BuildMaterials.Show;
      YardSize.Show;
      ParkingSpace.Show;
      PropertySubType.Clear;
      PropertySubType.AddItem('Floor Of House',nil);
      PropertySubType.AddItem('House',nil);
      PropertySubType.ItemIndex :=0;
      BuildMaterials.ItemIndex:=0;
      Regulation.Hide;
      RequlationTXT.Hide;
      YardSize.Show;
      YardSizeTxt.Show;
      ParkingSpace.Show;
      ParkingSpaceTxt.Show;
      end;
    {This is for the apartment,
    Hides the feilds that are not for the apartment type.}
    1 : begin
      BuildMaterials.Show;
      PropertySubType.Clear;
      PropertySubType.AddItem('Studio',nil);
      PropertySubType.AddItem('Garsoniera',nil);
      PropertySubType.AddItem('Two Room Apartment',nil);
      PropertySubType.AddItem('Tree Room Apartment',nil);
      PropertySubType.AddItem('Mainsonette',nil);
      PropertySubType.ItemIndex :=0;
      BuildMaterials.ItemIndex:=0;
      Regulation.Hide;
      RequlationTXT.Hide;
      YardSize.Hide;
      YardSizeTxt.Hide;
      ParkingSpace.Hide;
      ParkingSpaceTxt.Hide;
    end;
    {Shows only land fields.}
    2 : begin
      BuildMaterialsTxt.Hide;
      BuildMaterials.Hide;
      YardSizeTxt.Hide;
      YardSize.Hide;
      ParkingSpaceTxt.Hide;
      ParkingSpace.Hide;
      PropertySubType.Clear;
      PropertySubType.AddItem('Feild',nil);
      PropertySubType.AddItem('Lawn',nil);
      PropertySubType.AddItem('Forest',nil);
      PropertySubType.ItemIndex :=0;
      Regulation.Show;
    end;
    end;
end;
end.
