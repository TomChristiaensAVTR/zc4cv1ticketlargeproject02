sap.ui.require(
    [
        'sap/fe/test/JourneyRunner',
        'zc4cv1ticketlargeproject02/largeorder02form/test/integration/FirstJourney',
		'zc4cv1ticketlargeproject02/largeorder02form/test/integration/pages/LargeOrderObjectPage'
    ],
    function(JourneyRunner, opaJourney, LargeOrderObjectPage) {
        'use strict';
        var JourneyRunner = new JourneyRunner({
            // start index.html in web folder
            launchUrl: sap.ui.require.toUrl('zc4cv1ticketlargeproject02/largeorder02form') + '/index.html'
        });

       
        JourneyRunner.run(
            {
                pages: { 
					onTheLargeOrderObjectPage: LargeOrderObjectPage
                }
            },
            opaJourney.run
        );
    }
);