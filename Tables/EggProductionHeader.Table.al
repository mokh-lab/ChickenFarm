table 50126 EggProductionHeader
{
    DataClassification = CustomerContent;
    Caption = 'Egg Production Header Table';

    fields
    {
        field(1; "No."; Code[20])
        {
            Caption = 'No.';
            DataClassification = CustomerContent;

        }

        field(2; DocumentDate; Date)
        {
            Caption = 'Document Date';
            DataClassification = CustomerContent;
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