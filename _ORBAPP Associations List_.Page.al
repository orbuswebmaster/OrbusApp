page 50122 "ORBAPP Associations List"
{
    ApplicationArea = All;
    Caption = 'Associations List';
    PageType = List;
    SourceTable = "ORBAPP Associations";
    UsageCategory = Lists;

    layout
    {
        area(content)
        {
            repeater(General)
            {
                field(Name; Rec.Name)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Name field.';
                }
            }
        }
    }
}
