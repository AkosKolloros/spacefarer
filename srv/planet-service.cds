using {sap.capire.spacefarer as my} from '../db/schema';

service PlanetService @(path: '/planets') {

    @readonly
    entity Planets as
        select from my.Planets {
            *
        }
        excluding {
            createdBy,
            modifiedBy
        };

    @requires: 'authenticated-user'
    action newPlanet(name : String);
}
