table 50120 Chicken
{
    Caption = 'Chicken Table';
    DataClassification = CustomerContent;
    LookupPageId = "Chicken Card";

    fields
    {
        field(1; "No."; Code[20])
        {
            Caption = 'No.';
            DataClassification = CustomerContent;

        }

        field(2; Description; Text[100])
        {
            Caption = 'Description';
            DataClassification = CustomerContent;
        }


        field(3; "Chicken Type Code"; Code[20])
        {
            Caption = 'Chicken Type Code';
            DataClassification = CustomerContent;
            TableRelation = ChickenType;
            trigger OnValidate()
            begin
                CalcFields("Chicken Type Description");
            end;

        }

        field(4; "Last Date Modified"; Date)
        {
            Caption = 'Last Date Modified';
            DataClassification = CustomerContent;
        }


        field(5; Picture; MediaSet)
        {
            Caption = 'Picture';
            DataClassification = CustomerContent;
        }
        field(6; "Chicken Type Description"; text[100])
        {
            Caption = 'Chicken Type Description';
            FieldClass = FlowField;
            Editable = false;
            CalcFormula = lookup(ChickenType.Code where(Code = field("Chicken Type Code")));
        }

        field(7; "Number of Eggs Produced"; Decimal)
        {
            Caption = 'Number of Eggs Produced';
            FieldClass = FlowField;
            Editable = false;
            CalcFormula = sum(EggProductionLine.Quantity
            where("Chicken No." = field("No."),
            "Egg Production Date" = field("Date Filter"),
            "Egg Type Code" = field("Egg Type Filter")));
        }

        field(8; "Date Filter"; Date)
        {
            Caption = 'Date Filter';
            FieldClass = FlowFilter;
        }
        field(9; "Egg Type Filter"; code[20])
        {
            Caption = 'Egg Type Filter';
            FieldClass = FlowFilter;
            TableRelation = EggType;
        }


    }

    keys
    {
        key(pk; "No.")
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
        fieldgroup(DropDown; Description, "Chicken Type Code") { }
        fieldgroup(Brick; Description, Picture) { }

    }


}