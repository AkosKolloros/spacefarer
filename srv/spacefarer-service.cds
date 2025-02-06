using {sap.capire.spacefarer as my} from '../db/schema';

service SpacefarerService @(path: '/spacefarers') {

    @readonly
    entity Spacefarers as
        select from my.Spacefarers {
            *,
            originPlanet.name as originPlanet,
            department.name   as department,
            position.name     as position
        }
        excluding {
            createdBy,
            modifiedBy
        };

    @requires: 'authenticated-user'
    action newCandidate(name : String);
}
