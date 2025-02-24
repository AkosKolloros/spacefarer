using {managed} from '@sap/cds/common';

namespace sap.capire.spacefarer;

entity Planets : managed {
    key ID          : Integer;
        name        : localized String @mandatory;
        description : localized String;
        sizeRadius  : Integer;
        spacefarers : Association to many Spacefarers
                          on spacefarers.originPlanet = $self;
        departments : Association to many Departments
                          on departments.location = $self;

}

entity Spacefarers : managed {
    key ID                 : Integer;
        name               : localized String           @mandatory;
        description        : localized String;
        spacesuitColor     : String;
        navigationSkill    : Integer                    @mandatory;
        stardustCollection : Integer                    @mandatory;
        originPlanet       : Association to Planets     @assert.target;
        department         : Association to Departments @assert.target;
        position           : Association to Positions   @assert.target;
}

entity Departments : managed {
    key ID          : Integer;
        name        : localized String       @mandatory;
        description : localized String;
        budget      : Integer;
        location    : Association to Planets @assert.target;
        spacefarers : Association to many Spacefarers
                          on spacefarers.department = $self;

}

entity Positions : managed {
    key ID          : Integer;
        name        : localized String @mandatory;
        description : localized String;
        salary      : Integer;
        spacefarers : Association to many Spacefarers
                          on spacefarers.position = $self;

}
