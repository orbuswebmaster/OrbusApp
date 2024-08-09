pageextension 50125 "ORBAPP Sales Line" extends "Sales Order Subform"
{
    layout
    {
        // SAR 12.29.22 - Added Height and Weight per Kyle Pace.
        addafter("Shipment Date")
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
