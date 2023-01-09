permissionset 50100 ChickenManagement
{
    Assignable = true;
    Caption = 'ChickenManagement', MaxLength = 30;
    Permissions =
        table Chicken = X,
        tabledata Chicken = RMID,
        table EggProductionHeader = X,
        tabledata EggProductionHeader = RMID,
        table EggProductionLine = X,
        tabledata EggProductionLine = RMID,
        table EggTypes = X,
        tabledata EggTypes = RMID,
        table ChickenType = X,
        tabledata ChickenType = RMID,
        codeunit Insatllation = X,
        page "Chicken Management Rolecenter" = X,
        page "Chicken Card" = X,
        page "Chicken List" = X,
        page "Chicken Types" = X,
        page "Egg Production Line List" = X,
        page EggProductionDocument = X,
        page "Egg Production List" = X,
        page "Egg Production Subpage" = X,
        page "Egg Types" = X;
}
