tableextension 50121 ORBAPPSalesOrderCreatedBy extends "Sales Header"
{
    fields
    {
        field(50121; Created_By; Text[50])
        {
            Caption = 'Created_By';
            DataClassification = CustomerContent;

            trigger OnValidate()
            var
                userTable: Record User;
            begin
                if(Created_By = '') and (userTable.Get(UserSecurityId()))then begin
                    Created_By:=userTable."Full Name";
                    Modify();
                end;
            end;
        }
        field(50125; "Needs_Approval";Enum "ORBAPP Cust Needs Approval")
        {
            Caption = 'Needs Approval';
            DataClassification = CustomerContent;

            trigger OnValidate()
            var
                customer2: Record Customer;
            begin
                if customer2.Get("Sell-to Customer No.")then begin
                    "Needs_Approval":=customer2."Needs_Approval";
                end;
            end;
        }
        // SAR 12.29.22 - Added per Jenny and Kyle.
        field(50126; ArtEmail; Text[100])
        {
            Caption = 'Email (Art)';
            DataClassification = CustomerContent;
        }
        field(50127; "UPS Account Number"; Code[20])
        {
            Caption = 'UPS Account Number';
            DataClassification = CustomerContent;

            trigger OnValidate()
            var
                customer: Record Customer;
            begin
                if customer.Get("Sell-to Customer No.")then begin
                    "UPS Account Number":=customer."UPS Account Number";
                    Modify();
                end;
            end;
        }
        field(50128; "FedEx Account Number"; Code[20])
        {
            Caption = 'FedEx Account Number';
            DataClassification = CustomerContent;

            trigger OnValidate()
            var
                customer: Record Customer;
            begin
                if customer.Get("Sell-to Customer No.")then begin
                    "FedEx Account Number":=customer."FedEx Account Number";
                    Modify();
                end;
            end;
        }
        field(50129; "Graphics Only"; Boolean)
        {
            Caption = 'Graphics Only';
            DataClassification = CustomerContent;
        }
        field(50130; Custom; Boolean)
        {
            Caption = 'Custom';
            DataClassification = CustomerContent;
        }
        field(50131; Rush; Boolean)
        {
            Caption = 'Rush';
            DataClassification = CustomerContent;
        }
        field(50132; TFlowStatus; Text[800])
        {
            DataClassification = CustomerContent;
        }
    }
    trigger OnAfterInsert()
    var
        customer: Record Customer;
    begin
        // SAR 11.30 - Sets initial user information into Created_By
        Validate(Created_By);
        if customer.Get("Sell-to Customer No.")then begin
            "Needs_Approval":=customer."Needs_Approval";
            "UPS Account Number":=customer."UPS Account Number";
            "FedEx Account Number":=customer."FedEx Account Number";
            Modify();
        end;
    end;
}
