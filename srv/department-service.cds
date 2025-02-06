using {sap.capire.spacefarer as my} from '../db/schema';

service DepartmentService @(path: '/departments') {

    @readonly
    entity Departments as
        select from my.Departments {
            *,
            location.name as location,
        }
        excluding {
            createdBy,
            modifiedBy
        };
}
