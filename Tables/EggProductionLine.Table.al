table 50127 EggProductionLine
{
    Caption = 'Egg Production Line Table';
    DataClassification = CustomerContent;
    DrillDownPageId = 50129;

    fields
    {
        field(1; "Document No."; Code[20])
        {
            DataClassification = CustomerContent;
            Caption = 'Document No.';

        }

        field(2; "Line No."; Code[20])
        {
            DataClassification = CustomerContent;
            Caption = 'Line No.';

        }

        field(3; "Chicken No."; Code[20])
        {
            DataClassification = CustomerContent;
            Caption = 'Chicken No.';
            TableRelation = Chicken;

        }

        field(4; "Chicken Description"; text[100])
        {
            DataClassification = CustomerContent;
            Caption = 'Chicken Description';

        }

        field(5; "Egg Production Date"; Date)
        {
            DataClassification = CustomerContent;
            Caption = 'Egg Production Date';
        }
        field(6; "Egg Type Code"; Code[20])
        {
            DataClassification = CustomerContent;
            Caption = 'Egg Type Code';
            TableRelation = ChickenType;
        }
        field(7; "Egg Type Description"; text[100])
        {

            Caption = 'Egg Type Description';
            FieldClass = FlowField;
            CalcFormula = lookup(EggTypes.Description where(code = field("Egg Type Code")));
        }

        field(9; Quantity; Decimal)
        {
            Caption = 'QTY';
            DataClassification = CustomerContent;
        }

    }

    keys
    {
        key(Pk; "Document No.", "Line No.")
        {
            Clustered = true;
        }
    }



}