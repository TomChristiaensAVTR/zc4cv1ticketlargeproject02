sap.ui.define(['sap/fe/test/ListReport'], function(ListReport) {
    'use strict';

    var CustomPageDefinitions = {
        actions: {},
        assertions: {}
    };

    return new ListReport(
        {
            appId: 'zc4cv1ticketlargeproject02.largeorder02',
            componentId: 'LargeOrderList',
            contextPath: '/LargeOrder'
        },
        CustomPageDefinitions
    );
});