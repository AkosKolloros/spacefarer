using SpacefarerService as service from '../../srv/spacefarer-service';

annotate service.Spacefarers with @(
    UI.FieldGroup #GeneratedGroup: {
        $Type: 'UI.FieldGroupType',
        Data : [
            {
                $Type: 'UI.DataField',
                Label: 'name',
                Value: name,
            },
            {
                $Type: 'UI.DataField',
                Label: 'description',
                Value: description,
            },
            {
                $Type: 'UI.DataField',
                Label: 'spacesuitColor',
                Value: spacesuitColor,
            },
            {
                $Type: 'UI.DataField',
                Label: 'navigationSkill',
                Value: navigationSkill,
            },
            {
                $Type: 'UI.DataField',
                Label: 'stardustCollection',
                Value: stardustCollection,
            },
            {
                $Type: 'UI.DataField',
                Label: 'originPlanet',
                Value: originPlanet,
            },
            {
                $Type: 'UI.DataField',
                Label: 'department',
                Value: department,
            },
            {
                $Type: 'UI.DataField',
                Label: 'position',
                Value: position,
            }
        ],
    },
    UI.Facets                    : [{
        $Type : 'UI.ReferenceFacet',
        ID    : 'GeneratedFacet1',
        Label : 'General Information',
        Target: '@UI.FieldGroup#GeneratedGroup',
    }, ],
    UI.LineItem                  : [
        {
            $Type: 'UI.DataField',
            Label: 'name',
            Value: name,
        },
        {
            $Type: 'UI.DataField',
            Label: 'description',
            Value: description,
        },
        {
            $Type: 'UI.DataField',
            Label: 'spacesuitColor',
            Value: spacesuitColor,
        },
        {
            $Type: 'UI.DataField',
            Label: 'navigationSkill',
            Value: navigationSkill,
        },
        {
            $Type: 'UI.DataField',
            Label: 'stardustCollection',
            Value: stardustCollection,
        },
        {
            $Type: 'UI.DataField',
            Label: 'originPlanet',
            Value: originPlanet,
        },
        {
            $Type: 'UI.DataField',
            Label: 'department',
            Value: department,
        },
        {
            $Type: 'UI.DataField',
            Label: 'position',
            Value: position,
        }
    ],
);

annotate service.Spacefarers with {
    name @UI.MultiLineText: true
};
