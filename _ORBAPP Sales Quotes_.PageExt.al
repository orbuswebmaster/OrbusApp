pageextension 50127 "ORBAPP Sales Quotes" extends "Sales Quotes"
{
    layout
    {
        addbefore("Assigned User ID")
        {
            field(Created_By; Rec.Created_By)
            {
                Caption = 'Created By';
                ApplicationArea = all;
                Editable = false;
            }
        }
    }
}
