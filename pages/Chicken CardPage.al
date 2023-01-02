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


}