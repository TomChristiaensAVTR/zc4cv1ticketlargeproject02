namespace zc4cv1ticketlargeproject02;

using
{
    Country,
    Currency,
    Language,
    User,
    cuid,
    managed,
    temporal,
    sap.common.CodeList
}
from '@sap/cds/common';

using
{
    sap.changelog,
    sap.changelog.aspect,
}
from '@cap-js/change-tracking';

entity LargeOrder : managed, aspect
{
    key ID : UUID;
    TicketObjectID : String(32) not null;
    TicketID : String(10)
        @Core.Description : 'C4C Ticket ID';
    ProjectValue : Price;
    ProjectValueComment : LargeString;
    PONumber : String(10);
    PONumberComment : LargeString;
    SONumber : String(10);
    SONumberComment : LargeString;
    InsideDelivery : Association to one InsideDeliveryValue
        @assert.target;
    InsideDeliveryComment : LargeString;
    Liftgate : Boolean;
    LiftgateComment : LargeString;
    SpecialDeliveryRequirements : Boolean;
    SpecialDeliveryRequirementsComment : LargeString;
    Installation : Boolean;
    InstallationComment : LargeString;
    ConsolidatedInvoicing : Boolean;
    ConsolidatedInvoicingComment : LargeString;
    GrantFunds : Boolean;
    GrantFundsComment : LargeString;
    NewConstruction : Boolean;
    NewConstructionComment : LargeString;
    SendInvoiceCopies : Boolean;
    SendInvoiceCopiesComment : LargeString;
    SendPacklistCopies : Boolean;
    SendPacklistCopiesComment : LargeString;
    ShipComplete : Boolean;
    ShipCompleteComment : LargeString;
    ProjectedDeliveryDate : Date;
    ProjectedDeliveryDateComment : LargeString;
}

annotate LargeOrder with @assert.unique :
{
    locTicketIDale : [ TicketID ],
};

type Price
{
    amount : Decimal(10,2);
    currency : Currency;
}

entity InsideDeliveryValue : CodeList
{
    key code : Boolean default false;
    fieldControl : Integer;
}

entity LiftgateValue : CodeList
{
    key code : Boolean default false;
    fieldControl : Integer;
}

entity SpecialDeliveryRequirementsValue : CodeList
{
    key code : Boolean default false;
    fieldControl : Integer;
}

entity InstallationValue : CodeList
{
    key code : Boolean default false;
    fieldControl : Integer;
}

entity ConsolidatedInvoicingValue : CodeList
{
    key code : Boolean default false;
    fieldControl : Integer;
}

entity GrantFundsValue : CodeList
{
    key code : Boolean default false;
    fieldControl : Integer;
}

entity NewConstructionValue : CodeList
{
    key code : Boolean default false;
    fieldControl : Integer;
}

entity SendInvoiceCopiesValue : CodeList
{
    key code : Boolean default false;
    fieldControl : Integer;
}

entity SendPacklistCopiesValue : CodeList
{
    key code : Boolean default false;
    fieldControl : Integer;
}

entity ShipCompleteValue : CodeList
{
    key code : Boolean default false;
    fieldControl : Integer;
}
