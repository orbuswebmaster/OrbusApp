tableextension 50124 TabTemplateField extends Item
{
    fields
    {
        field(50120; BCItemTemplate; Code[50])
        {
            Caption = 'BCItemTemplate';
            DataClassification = CustomerContent;
            TableRelation = "Item Templ.";

            trigger OnValidate()
            var
                Item: Record Item;
                ItemTemplateHeader: Record "Item Templ.";
                ItemTemplateMgt: Codeunit "Item Templ. Mgt.";
            begin
                if Rec.BCItemTemplate <> '' then begin
                    if(Rec."No." = '') or not Item.Get(Rec."No.")then Rec.Insert(true);
                    Item.Get(Rec."No.");
                    ItemTemplateHeader.Get(Rec.BCItemTemplate);
                    ItemTemplateMgt.ApplyItemTemplate(Item, ItemTemplateHeader, true);
                    Rec:=Item;
                end;
            end;
        }
        // SAR 12.29.22 - Added Height and Weight per Kyle Pace.
        field(50121; Width; Decimal)
        {
            Caption = 'Width';
            DataClassification = ToBeClassified;
        }
        field(50122; Height; Decimal)
        {
            Caption = 'Height';
            DataClassification = ToBeClassified;
        }
    }
}
