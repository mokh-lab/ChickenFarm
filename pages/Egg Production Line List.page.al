page 50129 "Egg Production Line List"
{
    Caption = 'Egg Production Line List';
    PageType = List;
    UsageCategory = Lists;
    ApplicationArea = All;
    SourceTable = EggProductionLine;
    Editable = true;

    layout
    {
        area(Content)
        {
            repeater(General)
            {
                field("Chicken No."; rec."Chicken No.")
                {
                    ToolTip = 'Chicken No.';
                    ApplicationArea = All;
                }

                field("Chicken Description"; rec."Chicken Description")
                {
                    ApplicationArea = All;
                    ToolTip = 'Chicken Description';
                }

                field("Document No."; rec."Document No.")
                {
                    ApplicationArea = All;
                    ToolTip = 'Document No.';
                }

                field("Egg Production Date"; rec."Egg Production Date")
                {
                    ApplicationArea = All;
                    ToolTip = 'Egg Production Date';
                }

                field("Egg Type Code"; rec."Egg Type Code")
                {
                    ApplicationArea = All;
                    ToolTip = 'Egg Type Code';
                }

                field(Quantity; rec.Quantity)
                {
                    ApplicationArea = All;
                    ToolTip = 'Quantity';
                }

            }
        }
        area(Factboxes)
        {

        }
    }


}