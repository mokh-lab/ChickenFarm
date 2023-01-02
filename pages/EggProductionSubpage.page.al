page 50127 "Egg Production Subpage"
{
    PageType = ListPart;
    ApplicationArea = All;
    UsageCategory = Administration;
    SourceTable = EggProductionLine;
    AutoSplitKey = true;
    DelayedInsert = true;

    layout
    {
        area(Content)
        {
            group(General)
            {
                field("Chicken No."; Rec."Chicken No.")
                {
                    ToolTip = 'Chicken No.';
                    ApplicationArea = All;

                }

                field("Chicken Description"; Rec."Chicken Description")
                {
                    ToolTip = 'Chicken Description';
                    ApplicationArea = All;

                }

                field("Egg Production Date"; Rec."Egg Production Date")
                {
                    ToolTip = 'Egg Production Date';
                    ApplicationArea = All;

                }

                field("Egg Type Code "; Rec."Egg Type Code")/////////////////////////
                {
                    ToolTip = 'Egg Type Code';
                    ApplicationArea = All;

                }

                field(Quantity; Rec.Quantity)
                {
                    ToolTip = 'QTY';
                    ApplicationArea = All;

                }
            }
        }
    }

    actions
    {
        area(Processing)
        {
            action(ActionName)
            {
                ApplicationArea = All;

                trigger OnAction()
                begin

                end;
            }
        }
    }

    var
        myInt: Integer;
}