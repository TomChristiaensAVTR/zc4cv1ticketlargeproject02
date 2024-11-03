using { zc4cv1ticketlargeproject02 as my } from '../db/schema';

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