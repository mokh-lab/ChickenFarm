table 50121 ChickenType
{
    Caption = 'ChickenType';
    DataClassification = CustomerContent;

    fields
    {
        field(1; Code; Code[20])
        {
            Caption = 'ChickenType Code';
            DataClassification = CustomerContent;

        }
        field(2; Decription; text[100])
        {
            Caption = 'ChickenType Description';
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