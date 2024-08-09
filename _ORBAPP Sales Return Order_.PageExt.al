pageextension 50130 "ORBAPP Sales Return Order" extends "Sales Return Order"
{
    layout
    {
        addlast(General)
        {
            field(Created_By; Rec.Created_By)
            {
                Caption = 'Created By';
                ApplicationArea = all;
            }
        }
    }
}
