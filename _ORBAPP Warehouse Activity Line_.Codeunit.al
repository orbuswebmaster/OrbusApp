codeunit 50121 "ORBAPP Warehouse Activity Line"
{
    TableNo = "Warehouse Activity Line";

    [EventSubscriber(ObjectType::Table, Database::"Warehouse Activity Line", 'OnAfterInsertEvent', '', true, true)]
    local procedure OnAfterInsertAddLocationDimension(Rec: Record "Warehouse Activity Line"; Runtrigger: Boolean)
    var
        warehouseActityHeader: Record "Warehouse Activity Header";
    begin
        if warehouseActityHeader.Get(Rec."Activity Type", Rec."No.")then begin
            warehouseActityHeader."Source No.":=Rec."Source No.";
            warehouseActityHeader."Source Document":=Rec."Source Document";
            warehouseActityHeader.Modify();
        end;
    end;
}
