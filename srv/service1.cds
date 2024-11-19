using { zc4cv1ticketlargeproject02 as my } from '../db/schema.cds';

@path : '/default'
service LightService
{
    annotate LargeOrder with @restrict :
    [
        { grant : [ 'READ' ], to : [ 'authenticated-user' ] },
        { grant : [ '*' ], to : [ 'system-user' ] },
        { grant : [ '*' ], to : [ 'admin' ] },
        { grant : [ 'READ' ], to : [ 'display' ] }
    ];

    annotate LargeOrder with @Common.SemanticKey : 
    [
        TicketID
    ];

    @odata.draft.bypass
    @odata.draft.enabled
    entity LargeOrder as
        projection on my.LargeOrder;

}

annotate LightService with @requires :
[
    'authenticated-user',
    'system-user',
    'admin',
    'display'
];
