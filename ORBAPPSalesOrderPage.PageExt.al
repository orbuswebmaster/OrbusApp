pageextension 50121 ORBAPPSalesOrderPage extends "Sales Order"
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
            field("Needs Approval"; Rec."Needs_Approval")
            {
                Caption = 'Customer Needs Approval';
                ApplicationArea = all;
                Editable = false;
            }
            // SAR 12.29.22 - Added per Jenny and Kyle.
            field(ArtEmail; Rec.ArtEmail)
            {
                Caption = 'Email (Art)';
                ApplicationArea = all;
            }
            field("Graphics Only"; Rec."Graphics Only")
            {
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
            field(TFlowStatus; Rec.TFlowStatus)
            {
                ApplicationArea = All;
            }
        }
        addafter("Shipment Date")
        {
            field("UPS Account Number"; Rec."UPS Account Number")
            {
                Caption = 'UPS Account Number';
                ApplicationArea = all;
                Editable = false;
            }
            field("FedEx Account Number"; Rec."FedEx Account Number")
            {
                Caption = 'FedEx Account Number';
                ApplicationArea = all;
                Editable = false;
            }
        }
    }
    trigger OnOpenPage()
    begin
        if Rec."No." <> '' then begin
            Rec.Validate("Needs_Approval");
            Rec.Validate("UPS Account Number");
            Rec.Validate("FedEx Account Number");
        end;
    end;
}
