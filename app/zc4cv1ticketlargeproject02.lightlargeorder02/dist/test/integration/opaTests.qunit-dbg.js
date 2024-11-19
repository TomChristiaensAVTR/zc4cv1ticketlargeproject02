sap.ui.require(
    [
        'sap/fe/test/JourneyRunner',
        'zc4cv1ticketlargeproject02/lightlargeorder02/test/integration/FirstJourney',
		'zc4cv1ticketlargeproject02/lightlargeorder02/test/integration/pages/LargeOrderObjectPage',
		'zc4cv1ticketlargeproject02/lightlargeorder02/test/integration/pages/ChangeViewObjectPage'
    ],
    function(JourneyRunner, opaJourney, LargeOrderObjectPage, ChangeViewObjectPage) {
        'use strict';
        var JourneyRunner = new JourneyRunner({
            // start index.html in web folder
            launchUrl: sap.ui.require.toUrl('zc4cv1ticketlargeproject02/lightlargeorder02') + '/index.html'
        });

       
        JourneyRunner.run(
            {
                pages: { 
					onTheLargeOrderObjectPage: LargeOrderObjectPage,
					onTheChangeViewObjectPage: ChangeViewObjectPage
                }
            },
            opaJourney.run
        );
    }
);