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
    actions
    {
        area(Creation)

        {
            action(InsertDefaultEggTypes)
            {
                ApplicationArea = all;
                ToolTip = 'InsertDefaultEggTypes';
                Image = Insert;

                trigger OnAction()
                var
                    REggType: Record EggTypes;
                    EggTypeNotEmptyErr: Label 'There are already Egg Types in the table.';
                begin

                    if REggType.IsEmpty() then begin

                        rec.InsertEggType('ET01', 'ET Desc 01');
                        rec.InsertEggType('ET02', 'ET Desc 02');
                        rec.InsertEggType('ET03', 'ET Desc 03');

                    end
                    else
                        Message(EggTypeNotEmptyErr);
                end;
            }

        }
    }
}