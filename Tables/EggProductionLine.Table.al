table 50127 EggProductionLine
{
    Caption = 'Egg Production Line Table';
    DataClassification = ToBeClassified;
    DrillDownPageId = 50129;

    fields
    {
        field(1; "Document No."; Code[20])
        {
            DataClassification = ToBeClassified;
            Caption = 'Document No.';

        }

        field(2; "Line No."; Code[20])
        {
            DataClassification = ToBeClassified;
            Caption = 'Line No.';

        }

        field(3; "Chicken No."; Code[20])
        {
            DataClassification = ToBeClassified;
            Caption = 'Chicken No.';
            TableRelation = Chicken;

        }

        field(4; "Chicken Description"; text[100])
        {
            DataClassification = ToBeClassified;
            Caption = 'Chicken Description';

        }

        field(5; "Egg Production Date"; Date)
        {
            DataClassification = ToBeClassified;
            Caption = 'Egg Production Date';
        }
        field(6; "Egg Type Code"; Code[20])
        {
            DataClassification = ToBeClassified;
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
            DataClassification = ToBeClassified;
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