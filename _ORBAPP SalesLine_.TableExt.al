tableextension 50125 "ORBAPP SalesLine" extends "Sales Line"
{
    fields
    {
        // SAR 12.29.22 - Added Height and Weight per Kyle Pace.
        field(50120; Width; Decimal)
        {
            Caption = 'Width';
            DataClassification = ToBeClassified;
        }
        field(50121; Height; Decimal)
        {
            Caption = 'Height';
            DataClassification = ToBeClassified;
        }
    }
}
