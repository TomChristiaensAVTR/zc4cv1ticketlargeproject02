namespace zc4cv1ticketlargeproject02;

using
{
    Country,
    Currency,
    Language,
    User,
    cuid,
    managed,
    temporal
}
from '@sap/cds/common';

entity LargeOrder : managed
{
    key ID : UUID;
    TicketObjectID : String(32);
    TicketID : String(10);
    ProjectValue : Price;
    ProjectValueComment : LargeString;
    PONumber : String(10);
    PONumberComment : LargeString;
    SONumber : String(10);
    SONumberComment : LargeString;
    InsideDelivery : Boolean;
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

type Price
{
    amount : Decimal(10,2);
    currency : Currency;
}
