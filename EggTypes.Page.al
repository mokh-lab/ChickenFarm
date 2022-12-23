page 50124 MyPage
{
    PageType = Card;
    ApplicationArea = All;
    UsageCategory = Administration;
    SourceTable = EggType;

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
                field(Description; rec.Description)
                {
                    ToolTip = 'Description';
                    ApplicationArea = All;

                }
            }
        }
    }


}