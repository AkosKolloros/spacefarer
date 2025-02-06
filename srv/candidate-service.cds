using {sap.capire.spacefarer as my} from '../db/schema';

service CandidateService @(path: '/candidates') {

    @readonly
    entity Candidates as
        select from my.Candidates {
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
