pageextension 50124 "ORBAPP PagTemplateField" extends "Item Card"
{
    layout
    {
        addlast(Item)
        {
            field("BCItemTemplate"; Rec.BCItemTemplate)
            {
                Visible = false; // SAR 12.22.22 Set to false for production
                ApplicationArea = all;
                ToolTip = 'Works in the background';
            }
        }
        // SAR 12.29.22 - Added Height and Weight per Kyle Pace.
        addlast(InventoryGrp)
        {
            field(Width; Rec.Width)
            {
                ApplicationArea = all;
                ToolTip = 'Width';
            }
            field(Height; Rec.Height)
            {
                ApplicationArea = all;
                ToolTip = 'Height';
            }
        }
    }
}
