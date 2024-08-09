page 50121 "ORBAPP Assigned User ID Lookup"
{
    ApplicationArea = All;
    Caption = 'Assigned User ID Lookup';
    PageType = List;
    SourceTable = "Warehouse Employee";
    SourceTableTemporary = true;
    UsageCategory = Lists;

    layout
    {
        area(content)
        {
            repeater(General)
            {
                field("User ID"; Rec."User ID")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the ID of the user who posted the entry, to be used, for example, in the change log.';
                    Caption = 'Assigned User ID';
                }
                field("Location Code"; Rec."Location Code")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the Location Code of the user who posted the entry, to be used, for example, in the change log.';
                    Caption = 'Location Code';
                }
            }
        }
    }
}
