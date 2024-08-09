pageextension 50123 "ORBAPP Customer Card" extends "Customer Card"
{
    layout
    {
        addlast(General)
        {
            field("Needs Approval"; Rec."Needs_Approval")
            {
                Caption = 'Needs Approval';
                ApplicationArea = all;
            }
            field("Magento ID"; Rec."Magento ID")
            {
                Caption = 'Magento ID';
                ApplicationArea = all;
            }
            field(ORBAPPAssociationsName; Rec.ORBAPPAssociationsName)
            {
                ApplicationArea = all;
            }
        }
        addlast(Shipping)
        {
            field("UPS Account Number"; Rec."UPS Account Number")
            {
                Caption = 'UPS Account Number';
                ApplicationArea = all;
            }
            field("FedEx Account Number"; Rec."FedEx Account Number")
            {
                Caption = 'FedEx Account Number';
                ApplicationArea = all;
            }
        }
    }
}
