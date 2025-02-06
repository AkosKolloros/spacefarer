sap.ui.require(
    [
        'sap/fe/test/JourneyRunner',
        'candidateview/spacefarerfiori/test/integration/FirstJourney',
		'candidateview/spacefarerfiori/test/integration/pages/SpacefarersList',
		'candidateview/spacefarerfiori/test/integration/pages/SpacefarersObjectPage'
    ],
    function(JourneyRunner, opaJourney, SpacefarersList, SpacefarersObjectPage) {
        'use strict';
        var JourneyRunner = new JourneyRunner({
            // start index.html in web folder
            launchUrl: sap.ui.require.toUrl('candidateview/spacefarerfiori') + '/index.html'
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