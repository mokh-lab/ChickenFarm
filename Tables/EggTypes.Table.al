table 50122 EggTypes
{
    Caption = 'EggTypes';
    DataClassification = CustomerContent;
    LookupPageId = 5124;

    fields
    {
        field(1; Code; code[20])
        {
            Caption = 'Egg Code';
            DataClassification = CustomerContent;

        }
        field(2; Description; Text[100])
        {
            Caption = 'Egg Description';
            DataClassification = CustomerContent;

        }
    }

    keys
    {
        key(PK; Code)
        {
            Clustered = true;
        }
    }
    procedure InsertEggType(PEggTypeCode: Code[20]; PEggTypeDescription: text[50])
    var
        REggType: Record EggTypes;
    begin
        Clear(REggType);
        REggType.Code := PEggTypeCode;
        REggType.Description := PEggTypeDescription;
        REggType.Insert();

    end;


}