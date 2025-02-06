using {managed} from '@sap/cds/common';

namespace sap.capire.spacefarer;

entity Planets : managed {
    key ID          : UUID;
        name        : localized String @mandatory;
        description : localized String;
        sizeRadius  : Integer;
}

entity Spacefarers : managed {
    key ID                 : UUID;
        name               : localized String           @mandatory;
        description        : localized String;
        spacesuitColor     : String;
        navigationSkill    : Integer;
        stardustCollection : Integer;
        originPlanet       : Association to Planets     @assert.target;
        department         : Association to Departments @assert.target;
        position           : Association to Positions   @assert.target;
}

entity Departments : managed {
    key ID          : UUID;
        name        : localized String       @mandatory;
        description : localized String;
        budget      : Integer;
        location    : Association to Planets @assert.target;
}

entity Positions : managed {
    key ID          : UUID;
        name        : localized String @mandatory;
        description : localized String;
        salary      : Integer;
}
