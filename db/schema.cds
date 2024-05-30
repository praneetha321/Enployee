namespace com.satinfotech.EmployeeDetails;
using {cuid, managed} from '@sap/cds/common';

entity Employee: managed,cuid {
    @title:'Id'
    empid:String(10);
    @title:'name'
    empname:String(20);
    @title:'address'
    address:String(10);
    @title:'pin-code'
    pincode:String(10);
    @title:'city'
    city:String(10);
}