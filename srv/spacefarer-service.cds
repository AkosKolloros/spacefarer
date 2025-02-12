using {sap.capire.spacefarer as my} from '../db/schema';

@impl: 'srv/spacefarer-service.js'
service SpacefarerService @(path: '/spacefarers') {

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
}
