using {com.satinfotech.EmployeeDetails as db} from '../db/schema';

service employee @(requires: 'authenticated-user') {
    entity Employee@(restrict: [
        {grant: ['READ'], to: 'EmployeeRead'},
        {grant: ['WRITE'], to: 'EmployeeWrite'},
        {grant: ['DELETE'], to: 'EmployeeDelete'},
    ]) as projection on db.Employee;
}

annotate employee.Employee with @odata.draft.enabled;