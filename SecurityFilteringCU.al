codeunit 50100 "Security Filtering Test"
{

    procedure TestwithoutSecurityFilter()
    begin
        if Customer.get(30000) then
            Message('Data fetched Successfully')
        else
            Message('No Data Found');
    end;


    procedure FilteredCustomer()
    begin
        Customer.SecurityFiltering := Customer.SecurityFiltering::Filtered;
        if Customer.get(30000) then
            Message('Data fetched Successfully')
        else
            Message('No Data Found');
    end;

    procedure SecurityFilterDisallowed()
    begin
        Customer.SecurityFiltering := Customer.SecurityFiltering::Disallowed;
        if Customer.get(30000) then
            Message('Data fetched Successfully')
        else
            Message('No Data Found');
    end;

    procedure SecurityFilterIgnored()
    begin
        
        if Customer.get(30000) then
            Message('Data fetched Successfully')
        else
            Message('No Data Found');
    end;

    procedure SecurityFiltervalidated()
    begin
        
        if Customer.get(30000) then
            Message('Data fetched Successfully')
        else
            Message('No Data Found');
    end;


    var

    [SecurityFiltering(SecurityFilter::filtered)]
        Customer: Record Customer;
}