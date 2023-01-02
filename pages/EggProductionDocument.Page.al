page 50126 EggProductionDocument
{
    PageType = Document;
    ApplicationArea = All;
    UsageCategory = Administration;
    SourceTable = EggProductionHeader;

    layout
    {
        area(Content)
        {
            group(General)
            {
                field("No."; Rec."No.")
                {
                    ToolTip = 'No.';
                    ApplicationArea = All;

                }

                field(DocumentDate; rec.DocumentDate)
                {
                    ToolTip = '';
                    ApplicationArea = All;

                }


            }
            part("Egg Production Subpage"; "Egg Production Subpage")
            {
                SubPageLink = "Document No." = field("No.");
                UpdatePropagation = Both;

            }

        }


    }


}