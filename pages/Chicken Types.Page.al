page 50123 "Chicken Types"
{
    PageType = Card;
    ApplicationArea = All;
    UsageCategory = Administration;
    SourceTable = ChickenType;

    layout
    {
        area(Content)
        {
            group(General)
            {
                field(Code; rec.Code)
                {
                    ToolTip = 'Code';
                    ApplicationArea = All;

                }
                field(Decription; rec.Decription)
                {
                    ToolTip = 'Decription';
                    ApplicationArea = All;

                }
            }
        }
    }

}