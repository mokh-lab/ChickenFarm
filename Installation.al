codeunit 50111 Insatllation
{
    Subtype = Install;

    trigger OnInstallAppPerCompany();

    begin
        InsertDefaultChickenTypes();
    end;

    //************************************************************//
    local procedure InsertChickenType(ChickenTypeCode: Code[20]; ChickenTypeDescription: Text[50])
    var
        RChickenType: Record ChickenType;
    begin
        Clear(RChickenType);
        RChickenType.Code := ChickenTypeCode;
        RChickenType.Decription := ChickenTypeDescription;
        RChickenType.Insert();
    end;

    local procedure InsertDefaultChickenTypes()
    var
        RChickenType: Record ChickenType;
    begin
        if RChickenType.IsEmpty() then begin
            InsertChickenType('ChkT01', 'ChkT Desc 01');
            InsertChickenType('ChkT02', 'ChkT Desc 02');
            InsertChickenType('ChkT03', 'ChkT Desc 03');
        end
        else
            exit;

    end;



}