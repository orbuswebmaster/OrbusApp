pageextension 60001 ORBAPPSalesQuoteSubform extends "Sales Quote Subform"
{
    layout
    {
        addlast(Control1)
        {
            field(Width; Rec.Width)
            {
                ApplicationArea = All;
            }
            field(Height; Rec.Height)
            {
                ApplicationArea = All;
            }
        }
    }
}
