using {employee.Employee as Employee} from './employee';

annotate Employee with @(
    UI.LineItem: [
        {
            $Type:'UI.DataField',
            Value: empid
        },
         {
            $Type:'UI.DataField',
            Value: empname
        },
         {
            $Type:'UI.DataField',
            Value: address
        },
         {
            $Type:'UI.DataField',
            Value: pincode
        },
        {
            $Type:'UI.DataField',
            Value: city
        },

        
    ]
);

annotate Employee with @(
    UI.FieldGroup #Employee : {
        $Type : 'UI.FieldGroupType',
        Data : [
        {
            $Type:'UI.DataField',
            Value: empid
        },
         {
            $Type:'UI.DataField',
            Value: empname
        },
         {
            $Type:'UI.DataField',
            Value: address
        },
         {
            $Type:'UI.DataField',
            Value: address
        },
        {
            $Type:'UI.DataField',
            Value: pincode
        },
        {
            $Type:'UI.DataField',
            Value: city
        },
    ]
    },
    UI.Facets : [
        {
            $Type : 'UI.ReferenceFacet',
            ID : 'GeneratedFacet1',
            Label : 'General Information',
            Target : '@UI.FieldGroup#Employee',
        },
    ],
    
);