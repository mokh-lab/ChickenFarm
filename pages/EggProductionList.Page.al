page 50128 "Egg Production List"
{
    PageType = list;
    ApplicationArea = All;
    UsageCategory = Lists;
    SourceTable = EggProductionHeader;
    CardPageId = EggProductionDocument;


    layout
    {
        area(Content)
        {
            group(GroupName)
            {
                field("No."; Rec."No.")
                {
                    ToolTip = 'No.';
                    ApplicationArea = All;

                }

                field(DocumentDate; Rec.DocumentDate)
                {
                    ToolTip = 'Document Date';
                    ApplicationArea = All;

                }
            }
        }
    }

}