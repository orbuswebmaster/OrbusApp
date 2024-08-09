tableextension 50123 "ORBAPP Customer" extends Customer
{
    fields
    {
        field(50124; "Needs_Approval";Enum "ORBAPP Cust Needs Approval") // SAR 11.30.22
        {
            Caption = 'Needs Approval';
            DataClassification = ToBeClassified;

            trigger OnValidate()
            var
                salesHeader: Record "Sales Header";
            begin
                salesHeader.SetRange("Sell-to Customer No.", Rec."No.");
                salesHeader.ModifyAll("Needs_Approval", Rec."Needs_Approval");
            end;
        }
        field(50125; "UPS Account Number"; Code[20]) // SAR 01.09.23
        {
            Caption = 'UPS Account Number';
            DataClassification = ToBeClassified;
        }
        field(50126; "FedEx Account Number"; Code[20]) // SAR 01.09.23
        {
            Caption = 'FedEx Account Number';
            DataClassification = ToBeClassified;
        }
        field(50127; "Magento ID"; Code[20]) // SAR 02.08.23
        {
            Caption = 'Magento ID';
            DataClassification = ToBeClassified;
        }
        field(50128; ORBAPPAssociationsName; Text[250]) // SAR 02.08.23
        {
            Caption = 'Association';
            DataClassification = ToBeClassified;
            TableRelation = "ORBAPP Associations";
        }
    }
}
