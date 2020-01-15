Feature: AIM Site Login and Dashboard Functionalities 

    Background: 

        # Given Browser is opened
        Given navigated to AIM Assistant Manager site // https://crm-qa.aiminspect.com/
        And AIM Assistant Manager site is displayed 
        And correct user name and password is entered
        And login form is submitted


    Scenario: Launch AIM Inspect site
    
        When logged in to AIM Inspect site
        Then AIM Assistant Manager site logged in is displayed


    

    

    Scenario: Go to Dashboard

        When click on Dashboard 
        Then Dashboard data is displayed


    Scenario: Overdue inspection is shown

        When click on Dashboard 
        And click on Overdue Inspection 
        Then Overdue Inspection are displayed


    Scenario: Due today is shown

        When click on Dashboard 
        And click on Due today 
        Then Due today are displayed


    Scenario: Awaiting CSR is shown

        When click on Dashboard 
        And click on Awaiting CSR 
        Then Awaiting CSR are displayed


    Scenario: Awaiting Dispatch is shown

        When click on Dashboard 
        And click on Awaiting Dispatch 
        Then Awaiting Dispatch are displayed


    Scenario: Awaiting Quality is shown

        When click on Dashboard 
        And click on Awaiting Quality 
        Then Awaiting Quality are displayed


    Scenario: Open Requests is shown

        When click on Dashboard 
        And click on Open Requests 
        Then Open Requests are displayed


    Scenario: States Dropdown menu on Dashboard

        When click on Showing:All States 
        Then All states Dropdown menu is displayed 


    Scenario: States Dropdown menu on Dashboard functioning

        When click on Showing:All States 
        And select an option from the menu
        Then Dashboard is updated to show information of the option selected 



    Scenario: Overdue Inspections and results count on dashboard match

        When click on Dashboard
        And see subtext on Overdue Inspections
        And click on Overdue Inspections 
        Then Overdue Inspections results count are same as the Overdue Inspections subtext


    Scenario: Due Today and results count on dashboard match

        When click on Dashboard
        And see subtext on Due Today
        And click on Due Today
        Then Due Today results count are same as the Due Today subtext



    Scenario: Awaiting CSR and results count on dashboard match

        When click on Dashboard
        And see subtext on Awaiting CSR
        And click on Awaiting CSR
        Then Awaiting CSR results count are same as the Awaiting CSR subtext


    Scenario: Awaiting Dispatch and results count on dashboard match

        When click on Dashboard
        And see subtext on Awaiting Dispatch
        And click on Awaiting Dispatch
        Then Awaiting Dispatch results count are same as the Awaiting Dispatch subtext


    Scenario: Awaiting Quality and results count on dashboard match

        When click on Dashboard
        And see subtext on Awaiting Quality
        And click on Awaiting Quality
        Then Awaiting Quality results count are same as the Awaiting Quality subtext


    Scenario: Open Requests and results count on dashboard match

        When click on Dashboard
        And see subtext on Open Requests
        And click on Open Requests
        Then Open Requests results count are same as the Open Requests subtext


    Scenario: Result Detail is shown

        When click on Dashboard 
        And click on Open Requests 
        And select result from the results displayed
        Then selected result details are shown




    Scenario: Last updated date time stamp is shown

        When click on Dashboard 
        Then Last updated date time stamp is shown 




    Scenario: Overdue Inspections Excel file download

        When click on Dashboard
        And see subtext on Overdue Inspections
        And click on Overdue Inspections 
        And click on Export to Excel button
        Then Overdue Inspection Excel file is generated


    Scenario: Due Today Excel file download

        When click on Dashboard
        And see subtext on Due Today
        And click on Due Today
        And click on Export to Excel button
        Then Due Today Excel file is generated



    Scenario: Awaiting CSR Excel file download

        When click on Dashboard
        And see subtext on Awaiting CSR
        And click on Awaiting CSR
        And click on Export to Excel button
        Then Awaiting CSR Excel file is generated


    Scenario: Awaiting Dispatch Excel file download

        When click on Dashboard
        And see subtext on Awaiting Dispatch
        And click on Awaiting Dispatch
        And click on Export to Excel button
        Then Awaiting Dispatch Excel file is generated


    Scenario: Awaiting Quality Excel file download

        When click on Dashboard
        And see subtext on Awaiting Quality
        And click on Awaiting Quality
        And click on Export to Excel button
        Then Awaiting Quality Excel file is generated


    Scenario: Open Requests Excel file download

        When click on Dashboard
        And see subtext on Open Requests
        And click on Open Requests
        And click on Export to Excel button
        Then Open Requests Excel file is generated




    Scenario: Page count tab is displayed on Dashboard 

        Given more than 25 Overdue Inspection 
        When click on Dashboard
        And click on Overdue Inspections 
        Then pages count tab is displayed 



    Scenario: Page count tab is working on Dashboard 

        Given more than 25 Overdue Inspection 
        When click on Dashboard
        And click on Overdue Inspections 
        And pages count tab is displayed 
        And click on page 2
        Then results updated 


    Scenario: Overdue Inspections Table Data is displayed correctly

        Given Following Data Exists
        | Conf # | Status | Type | Customer | Name | VIN | City | State | Request Date | SLA Date | 
        | 1099690 | Pending | Dealer | HYUNDAI | Andres J Bredeweg | 5NPD84LF6HH097866 | EL PASO | TX | Oct 22, 2019 | Oct 24, 2019 
        | 1099684 | Pending | Dealer | VCI | KEVIN RINK | J2222603 | VALDOSTA | GA | Oct 22, 2019 | Oct 24, 2019 |
        And click on Dashboard 
        And click on Overdue Inspection 
        Then Data is shown in Overdue Inspections Table 


    Scenario: Due Today Table Data is displayed correctly

        Given Following Data Exists
        | Conf # | Status | Type | Customer | Name | VIN | City | State | Request Date | SLA Date | 
        | 1099690 | Pending | Dealer | HYUNDAI | Andres J Bredeweg | 5NPD84LF6HH097866 | EL PASO | TX | Oct 22, 2019 | Oct 24, 2019 
        | 1099684 | Pending | Dealer | VCI | KEVIN RINK | J2222603 | VALDOSTA | GA | Oct 22, 2019 | Oct 24, 2019 |
        And click on Dashboard 
        And click on Due Today 
        Then Data is shown in Due Today Table 


    Scenario: Awaiting CSR Table Data is displayed correctly

        Given Following Data Exists
        | Conf # | Status | Type | Customer | Name | VIN | City | State | Request Date | SLA Date | 
        | 1099690 | Pending | Dealer | HYUNDAI | Andres J Bredeweg | 5NPD84LF6HH097866 | EL PASO | TX | Oct 22, 2019 | Oct 24, 2019 
        | 1099684 | Pending | Dealer | VCI | KEVIN RINK | J2222603 | VALDOSTA | GA | Oct 22, 2019 | Oct 24, 2019 |
        And click on Dashboard 
        And click on Awaiting CSR 
        Then Data is shown in Awaiting CSR Table 


    Scenario: Awaiting Dispatch Table Data is displayed correctly

        Given Following Data Exists
        | Conf # | Status | Type | Customer | Name | VIN | City | State | Request Date | SLA Date | 
        | 1099690 | Pending | Dealer | HYUNDAI | Andres J Bredeweg | 5NPD84LF6HH097866 | EL PASO | TX | Oct 22, 2019 | Oct 24, 2019 
        | 1099684 | Pending | Dealer | VCI | KEVIN RINK | J2222603 | VALDOSTA | GA | Oct 22, 2019 | Oct 24, 2019 |
        And click on Dashboard 
        And click on Awaiting Dispatch 
        Then Data is shown in Awaiting Dispatch Table 


    Scenario: Awaiting Quality Table Data is displayed correctly

        Given Following Data Exists
        | Conf # | Status | Type | Customer | Name | VIN | City | State | Request Date | SLA Date | 
        | 1099690 | Pending | Dealer | HYUNDAI | Andres J Bredeweg | 5NPD84LF6HH097866 | EL PASO | TX | Oct 22, 2019 | Oct 24, 2019 
        | 1099684 | Pending | Dealer | VCI | KEVIN RINK | J2222603 | VALDOSTA | GA | Oct 22, 2019 | Oct 24, 2019 |
        And click on Dashboard 
        And click on Awaiting Quality 
        Then Data is shown in Awaiting Quality Table 


    Scenario: Open Requests Table Data is displayed correctly

        Given Following Data Exists
        | Conf # | Status | Type | Customer | Name | VIN | City | State | Request Date | SLA Date | 
        | 1099690 | Pending | Dealer | HYUNDAI | Andres J Bredeweg | 5NPD84LF6HH097866 | EL PASO | TX | Oct 22, 2019 | Oct 24, 2019 
        | 1099684 | Pending | Dealer | VCI | KEVIN RINK | J2222603 | VALDOSTA | GA | Oct 22, 2019 | Oct 24, 2019 |
        And click on Dashboard 
        And click on Open Requests 
        Then Data is shown in Open Requests Table 







    Scenario: No Results found if does not exist

        When click on Request 
        And input text in search bar which does not exist # sdfsdf32423
        And click search
        Then 'No Results Found.' message is displayed


    Scenario: Results displayed if does exist

        When click on Request 
        And input text in search bar which does exist # asa
        And click search
        Then search results are displayed




    Scenario: Search bar is displayed

        When logged in 
        Then search bar on navigation menu is displayed 







    Scenario: No States selected on Dashboard shows no counts

        When click on State Dropdown menu
        And unselects all states
        And clicks blank space on dashboard 
        Then Dashboard updated to no counts




    
    Scenario: All States selected on Dashboard shows all states counts

        When click on State Dropdown menu
        And selects all states
        And clicks blank space on dashboard 
        Then Dashboard updated to all states counts



    Scenario: Alabama selected on Dashboard shows Alabama counts

        When click on State Dropdown menu
        And selects Alabama
        And clicks blank space on dashboard 
        Then Dashboard updated to Alabama counts


    Scenario: Alaska selected on Dashboard shows Alaska counts

        When click on State Dropdown menu
        And selects Alaska
        And clicks blank space on dashboard 
        Then Dashboard updated to Alaska counts


    Scenario: Arizona selected on Dashboard shows Arizona counts

        When click on State Dropdown menu
        And selects Arizona
        And clicks blank space on dashboard 
        Then Dashboard updated to Arizona counts


    Scenario: Arizona, Alaska and Alabama selected on Dashboard shows total counts of Arizona, Alaska and Alabama

        When click on State Dropdown menu
        And selects  Arizona, Alaska and Alabama
        And clicks blank space on dashboard 
        Then Dashboard updated to  Arizona, Alaska and Alabama counts summed






    Scenario: Changing Overdue Inspection to Cancel, decrease Overdue Inspection count and increase Awaiting Quality count

        When click on Dashboard
        And click on Overdue Inspections
        And see the result count
        And click the status of the first result
        And inspection request detail page is displayed
        And click status from inspection request detail page
        And update status form is displayed
        And change status to Cancel
        And add a comment
        And click save 
        And click on Dashboard 
        Then Overdue Inspections count decrease by 1 and Awaiting Quality count increase by 1



    Scenario: Changing Due Today to Cancel, decrease Due Today count, Awaiting Quality Count, and  Overdue Inspection count

        When click on Dashboard
        And click on Overdue Inspections
        And see the result count
        And click the status of the first result
        And inspection request detail page is displayed
        And click status from inspection request detail page
        And update status form is displayed
        And change status to Cancel
        And add a comment
        And click save 
        And click on Dashboard 
        Then Due Today count, Awaiting Quality Count, and  Overdue Inspection count decrease by 1 



    Scenario: Changing Awaiting CSR to Cancel, decrease Awaiting CSR count

        When click on Dashboard
        And click on Awaiting CSR
        And see the result count
        And click the status of the first result
        And inspection request detail page is displayed
        And click status from inspection request detail page
        And update status form is displayed
        And change status to Cancel
        And add a comment
        And click save 
        And click on Dashboard 
        Then Awaiting CSR count decrease by 1 



    Scenario: Changing Awaiting Dispatch to Cancel, decrease Awaiting Dispatch count

        When click on Dashboard
        And click on Awaiting Dispatch
        And see the result count
        And click the status of the first result
        And inspection request detail page is displayed
        And click status from inspection request detail page
        And update status form is displayed
        And change status to Cancel
        And add a comment
        And click save 
        And click on Dashboard 
        Then Awaiting Dispatch count decrease by 1 



    Scenario: Changing Awaiting Quality to Cancel, decrease Awaiting Quality count and Overdue Inspections count

        When click on Dashboard
        And click on Awaiting Quality
        And see the result count
        And click the status of the first result
        And inspection request detail page is displayed
        And click status from inspection request detail page
        And update status form is displayed
        And change status to Cancel
        And add a comment
        And click save 
        And click on Dashboard 
        Then Awaiting Quality count and Overdue Inspections count decrease by 1 



    Scenario: Changing Open Request to Cancel, decrease Open Request count

        When click on Dashboard
        And click on Open Request
        And see the result count
        And click the status of the first result
        And inspection request detail page is displayed
        And click status from inspection request detail page
        And update status form is displayed
        And change status to Cancel
        And add a comment
        And click save 
        And click on Dashboard 
        Then Open Request count decrease by 1 









#   To do # Request
#   - Basic Search
#   - Advance search
  