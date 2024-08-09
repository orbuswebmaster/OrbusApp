table 50121 "ORBAPP Associations"
{
    Caption = 'ORBAPP Associations';
    DataClassification = ToBeClassified;
    LookupPageId = "ORBAPP Associations List";

    fields
    {
        field(1; Name; Text[250])
        {
            Caption = 'Name';
            DataClassification = ToBeClassified;
        }
    }
    keys
    {
        key(PK; Name)
        {
            Clustered = true;
        }
    }
}
