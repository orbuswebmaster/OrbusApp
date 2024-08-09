pageextension 50122 "ORBAPP Sales Order List" extends "Sales Order List"
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
            field("Needs Approval"; Rec."Needs_Approval")
            {
                Caption = 'Needs Approval';
                ApplicationArea = all;
                Editable = false;
            }
            field("Graphics Only"; Rec."Graphics Only")
            {
                Caption = 'Graphics Only';
                ApplicationArea = all;
            }
            field(Custom; Rec.Custom)
            {
                ApplicationArea = all;
            }
            field(Rush; Rec.Rush)
            {
                ApplicationArea = all;
            }
        }
    }
}
