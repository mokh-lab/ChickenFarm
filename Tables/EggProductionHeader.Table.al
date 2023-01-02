table 50126 EggProductionHeader
{
    DataClassification = ToBeClassified;
    Caption = 'Egg Production Header Table';

    fields
    {
        field(1; "No."; Code[20])
        {
            Caption = 'No.';
            DataClassification = ToBeClassified;

        }

        field(2; DocumentDate; Date)
        {
            Caption = 'Document Date';
            DataClassification = ToBeClassified;
        }
    }

    keys
    {
        key(Pk; "No.")
        {
            Clustered = true;
        }
    }



}