pageextension 55198 OrbPostedSalesInvoiceDocument extends "Posted Sales Invoice"
{
    layout
    {
        addafter("No. Printed")
        {
            field(Custom; Rec.Custom)
            {
                ApplicationArea = All;
                Caption = 'Custom';
            }
        }
    }
}
