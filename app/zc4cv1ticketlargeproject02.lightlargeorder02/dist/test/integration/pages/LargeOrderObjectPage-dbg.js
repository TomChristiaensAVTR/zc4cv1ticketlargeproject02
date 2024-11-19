sap.ui.define(['sap/fe/test/ObjectPage'], function(ObjectPage) {
    'use strict';

    var CustomPageDefinitions = {
        actions: {},
        assertions: {}
    };

    return new ObjectPage(
        {
            appId: 'zc4cv1ticketlargeproject02.lightlargeorder02',
            componentId: 'LargeOrderObjectPage',
            contextPath: '/LargeOrder'
        },
        CustomPageDefinitions
    );
});