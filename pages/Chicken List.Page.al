page 50121 "Chicken List"
{
    Caption = 'PageName';
    PageType = List;
    UsageCategory = Lists;
    ApplicationArea = All;
    SourceTable = Chicken;
    CardPageId = 50120;

    layout
    {
        area(Content)
        {
            repeater(General)
            {
                field("No."; rec."No.")
                {
                    ToolTip = 'No';
                    ApplicationArea = All;
                }
                field("Description."; rec.Description)
                {
                    ToolTip = 'Description';
                    ApplicationArea = All;
                }
                field("Chicken Type Code"; rec."Chicken Type Code")
                {
                    ToolTip = 'Chicken Type Code';
                    ApplicationArea = All;
                }


            }
        }
        area(Factboxes)
        {

        }
    }

    actions
    {
        area(Processing)
        {
            action(ActionName)
            {
                ApplicationArea = All;

                trigger OnAction();
                begin

                end;
            }
        }
    }
}