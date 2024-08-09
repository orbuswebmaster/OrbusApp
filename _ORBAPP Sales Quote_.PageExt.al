pageextension 50129 "ORBAPP Sales Quote" extends "Sales Quote"
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
            field(Custom; Rec.Custom)
            {
                Caption = 'Custom';
                ApplicationArea = all;
            }
        }
    }
}
