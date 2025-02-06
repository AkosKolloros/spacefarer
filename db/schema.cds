using {managed} from '@sap/cds/common';

namespace sap.capire.spacefarer;

entity Planets : managed {
    key ID          : Integer;
        name        : localized String;
        description : localized String;
        sizeRadius  : Integer;
}

entity Spacefarers : managed {
    key ID                 : Integer;
        name               : localized String;
        description        : localized String;
        spacesuitColor     : String;
        navigationSkill    : Integer;
        stardustCollection : Integer;
        originPlanet       : Association to Planets;
        department         : Association to Departments;
        position           : Association to Positions;
}

entity Departments : managed {
    key ID          : Integer;
        name        : localized String;
        description : localized String;
        budget      : Integer;
        location    : Association to Planets;
}

entity Positions : managed {
    key ID          : Integer;
        name        : localized String;
        description : localized String;
        salary      : Integer;
}
