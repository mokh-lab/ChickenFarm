table 50122 EggType
{
    Caption = 'EggType';
    DataClassification = CustomerContent;

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



}