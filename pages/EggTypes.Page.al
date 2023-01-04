page 50124 "Egg Types"
{
    PageType = Card;
    ApplicationArea = All;
    UsageCategory = Administration;
    SourceTable = EggTypes;

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