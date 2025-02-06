using {sap.capire.spacefarer as my} from '../db/schema';

service AdminService @(requires: 'authenticated-user') {
    entity Planets     as projection on my.Planets;
    entity Candidates  as projection on my.Candidates;
    entity Departments as projection on my.Departments;
    entity Positions   as projection on my.Positions;
}
