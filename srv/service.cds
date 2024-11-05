using { zc4cv1ticketlargeproject02 as my } from '../db/schema';
using { sap.changelog as changelog } from '@cap-js/change-tracking';

@path : '/ticket'
service AdminService
{
    annotate LargeOrder with @restrict :
    [
        { grant : [ 'READ' ], to : [ 'authenticated-user' ] },
        { grant : [ '*' ], to : [ 'system-user' ] },
        { grant : [ '*' ], to : [ 'admin' ] },
        { grant : [ 'READ' ], to : [ 'display' ] }
    ];

    @odata.draft.bypass
    @odata.draft.enabled
    entity LargeOrder as
        projection on my.LargeOrder;

    entity ChangeView as select from changelog.ChangeView; 

    action createTicketFromC4C
    (
        iv_TicketObjectID : String(32),
        iv_TicketID : String(10)
    )
    returns LargeOrder;

    action openTicketFromC4C
    (
        iv_TicketID : String(10)
    )
    returns LargeOrder;

    event EntryCreated
    {
        ID : UUID;
        TicketID : String(10);
    }
}

annotate AdminService with @requires :
[
    'authenticated-user',
    'system-user',
    'admin',
    'display'
];

annotate AdminService.LargeOrder with @Common.SemanticKey: [TicketID];

// see https://github.com/cap-js/change-tracking
annotate AdminService.LargeOrder{
    ProjectValue @changelog;  
    ProjectValueComment @changelog; 
    PONumber @changelog; 
    PONumberComment @changelog;
    SONumber @changelog;
    SONumberComment @changelog;   
    InsideDelivery @changelog; 
    InsideDeliveryComment @changelog;
    Liftgate  @changelog;
    LiftgateComment @changelog;
    SpecialDeliveryRequirements @changelog;
    SpecialDeliveryRequirementsComment @changelog;
    Installation @changelog;
    InstallationComment @changelog;
    ConsolidatedInvoicing @changelog;
    ConsolidatedInvoicingComment @changelog;
    GrantFunds @changelog;
    GrantFundsComment @changelog;
    NewConstruction  @changelog;
    NewConstructionComment @changelog;
    SendInvoiceCopies @changelog;
    SendInvoiceCopiesComment @changelog;
    SendPacklistCopies @changelog;
    SendPacklistCopiesComment @changelog;
    ShipComplete @changelog;
    ShipCompleteComment @changelog;
    ProjectedDeliveryDate @changelog;
    ProjectedDeliveryDateComment @changelog;
}