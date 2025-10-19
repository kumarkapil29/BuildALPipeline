// Welcome to your new AL extension.
// Remember that object names and IDs should be unique across all extensions.
// AL snippets start with t*, like tpageext - give them a try and happy coding!

namespace DefaultPublisher.ALProject3;

using Microsoft.Sales.Customer;

pageextension 50100 CustomerListExt extends "Customer List"
{
    trigger OnOpenPage();
    var
        SecurityFilteringTest: Codeunit "Security Filtering Test";
    begin
        //SecurityFilteringTest.FilteredCustomer();
        //SecurityFilteringTest.SecurityFilterDisallowed();
        //SecurityFilteringTest.SecurityFilterIgnored();
        SecurityFilteringTest.SecurityFiltervalidated();
        // SecurityFilteringTest.TestwithoutSecurityFilter();
    end;
}