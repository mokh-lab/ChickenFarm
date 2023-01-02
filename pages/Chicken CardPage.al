page 50120 "Chicken Card"
{
    PageType = Card;
    ApplicationArea = All;
    UsageCategory = Administration;
    SourceTable = Chicken;

    layout
    {
        area(Content)
        {
            group(General)
            {
                field("No."; rec."No.")
                {
                    ApplicationArea = All;
                    ToolTip = 'No.';

                }

                field(Description; rec.Description)
                {
                    ApplicationArea = All;
                    ToolTip = 'Description';


                }
                field("Last Date Modified"; rec."Last Date Modified")
                {
                    ApplicationArea = All;
                    ToolTip = 'Last Date ';

                }
                field(Picture; rec.Picture)
                {
                    ApplicationArea = All;
                    ToolTip = 'Picture';

                }

                field("Chicken Type Code"; rec."Chicken Type Code")
                {
                    ApplicationArea = All;
                    ToolTip = 'chicken Type Code';
                }

                field(" Chicken Type Description"; rec."Chicken Type Description")
                {
                    ApplicationArea = All;
                    ToolTip = 'Chicken Type Description';
                }

                field("Number of Eggs Produced"; rec."Number of Eggs Produced")
                {
                    ApplicationArea = All;
                    ToolTip = 'Number of Eggs Produced';

                }

            }
        }
    }

    actions
    {
        area(Processing)
        {
            action(ActionNr01) // Creates a direct action that appears on the bar 
            {
                Caption = 'Action Nr 01';
                Image = MakeOrder;
                ApplicationArea = All;
                RunObject = page "Customer Card";
            }
        }

        area(Creation) // Create a new list Under the name New Document
        {
            action("Creation Action #1")
            {
                Caption = 'Creation Action #1';
                Image = Absence;
                ApplicationArea = All;
                RunObject = page "Customer Card";
            }

            action("Creation Action #2")
            {
                Caption = 'Creation Action #2';
                Image = Alerts;
                ApplicationArea = All;
                trigger OnAction()
                begin
                    Message('This is a Test for [Trigger onAction]');
                end;
            }
        }


    }
}