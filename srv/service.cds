using { zc4cv1ticketlargeproject02 as my } from '../db/schema';

@path : '/ticket'
service LargeOrder
{
    annotate LargeOrder with @restrict :
    [
        { grant : [ '*' ], to : [ 'authenticated-user' ] },
        { grant : [ '*' ], to : [ 'any' ] },
        { grant : [ '*' ], to : [ 'system-user' ] }
    ];

    @odata.draft.enabled
    entity LargeOrder as
        projection on my.LargeOrder;

    action createTicketFromC4C(TicketObjectID : my.LargeOrder:TicketObjectID) returns {BTPUUID : my.LargeOrder:ID};    
}

annotate LargeOrder with @requires :
[
    'authenticated-user',
    'any'
];
