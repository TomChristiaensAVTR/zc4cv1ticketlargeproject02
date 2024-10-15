sap.ui.require(
    [
        'sap/fe/test/JourneyRunner',
        'zc4cv1ticketlargeproject02/largeorder02/test/integration/FirstJourney',
		'zc4cv1ticketlargeproject02/largeorder02/test/integration/pages/LargeOrderList',
		'zc4cv1ticketlargeproject02/largeorder02/test/integration/pages/LargeOrderObjectPage'
    ],
    function(JourneyRunner, opaJourney, LargeOrderList, LargeOrderObjectPage) {
        'use strict';
        var JourneyRunner = new JourneyRunner({
            // start index.html in web folder
            launchUrl: sap.ui.require.toUrl('zc4cv1ticketlargeproject02/largeorder02') + '/index.html'
        });

       
        JourneyRunner.run(
            {
                pages: { 
					onTheLargeOrderList: LargeOrderList,
					onTheLargeOrderObjectPage: LargeOrderObjectPage
                }
            },
            opaJourney.run
        );
    }
);