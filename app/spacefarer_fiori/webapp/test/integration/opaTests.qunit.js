sap.ui.require(
    [
        'sap/fe/test/JourneyRunner',
        'spacefarerfioriapp/spacefarerfiori/test/integration/FirstJourney',
		'spacefarerfioriapp/spacefarerfiori/test/integration/pages/SpacefarersList',
		'spacefarerfioriapp/spacefarerfiori/test/integration/pages/SpacefarersObjectPage'
    ],
    function(JourneyRunner, opaJourney, SpacefarersList, SpacefarersObjectPage) {
        'use strict';
        var JourneyRunner = new JourneyRunner({
            // start index.html in web folder
            launchUrl: sap.ui.require.toUrl('spacefarerfioriapp/spacefarerfiori') + '/index.html'
        });

       
        JourneyRunner.run(
            {
                pages: { 
					onTheSpacefarersList: SpacefarersList,
					onTheSpacefarersObjectPage: SpacefarersObjectPage
                }
            },
            opaJourney.run
        );
    }
);