pageextension 50128 "ORBAPP Sales Return Order List" extends "Sales Return Order List"
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
