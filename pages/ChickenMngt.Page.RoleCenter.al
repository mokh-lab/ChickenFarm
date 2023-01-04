page 50125 "Chicken Management Rolecenter"
{
    PageType = RoleCenter;
    Caption = ' Chicken Management Rolecenter';

    layout
    {
        area(RoleCenter)
        {
            part(HeadLineOrderProcessor; "Headline RC Order Processor")
            {
                ApplicationArea = All;
            }
            part(O365CustomerActivity; "O365 Customer Activity Page")
            {
                ApplicationArea = All;
            }
            part("O365Activities"; "O365 Activities")
            {
                ApplicationArea = All;
            }

        }
    }

    actions
    {
        area(Sections)
        {
            group(MasterData)
            {
                Caption = 'Master Data Action Group';
                ToolTip = 'Master Data';
                Image = RegisteredDocs;


                action("ChickenList")
                {
                    ToolTip = 'Chicken List';
                    RunObject = Page "Chicken List";
                    ApplicationArea = All;

                }
                action("ChickenTypes")
                {
                    ToolTip = 'Chicken Types';
                    RunObject = Page "Chicken Types";
                    ApplicationArea = All;

                }


            }

            group(Documents)
            {
                Caption = 'Document Action Group';
                action(EggProduction)
                {
                    ToolTip = 'Egg Production';
                    RunObject = page "Egg Production List";
                    ApplicationArea = all;
                }
                action(EggTypes)
                {
                    ToolTip = 'Egg Types';
                    RunObject = page "Egg Types";
                    ApplicationArea = all;
                }
            }
        }

        area(Embedding)
        {
            action(eChickenList)
            {
                ToolTip = 'eChickenList';
                RunObject = page "Chicken List";
                ApplicationArea = all;

            }

            action(eChickenTypes)
            {
                ToolTip = 'eChickenTypes';
                RunObject = page "Chicken Types";
                ApplicationArea = all;

            }

            action(eEggProduction)
            {
                ToolTip = 'eEggProduction';
                RunObject = page "Egg Production List";
                ApplicationArea = all;

            }

            action(eEggTypes)
            {
                ToolTip = 'eEggTypes';
                RunObject = page "Egg Types";
                ApplicationArea = all;

            }

        }
    }

}