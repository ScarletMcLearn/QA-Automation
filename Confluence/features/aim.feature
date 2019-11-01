Feature: AIM Site functionalities

    Background: 

        Given Browser is opened
        And nagivated to AIM inspect site // https://crm-qa.aiminspect.com/
        And AIM Inspect site is displayed 
        And correct user name and password is entered
        And login form is submitted


    Scenario: Launch AIM Inspect site
    
        When logged in to AIM Inspect site
        Then AIM Inspect site is displayed


    

    

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






    Scenario: Edit Lessee info

        Given current page is single inspection search result detail page 
        When find Lessee Info section
        And hover over Lessee Info edit button
        And click on Lessee Info edit button
        Then edit Lessee Info page is shown 


    Scenario: Edit Dealer info

        Given current page is single inspection search result detail page 
        When find Dealer Info section
        And hover over Dealer Info edit button
        And click on Dealer Info edit button
        Then edit Dealer Info page is shown 


    Scenario: Add Disposition

        Given current page is single inspection search result detail page 
        When find Dispositions section
        And hover over Add Disposition button
        And click Add Disposition button
        And Add Disposition page is displayed
        And select call type from options
        And select disposition type from dropdown menu
        And click Add
        Then Disposition is added in Disposition section


    Scenario: Schedule Appointment

        Given current page is single inspection search result detail page 
        When find Current Appointment Detail section
        And click the options button
        And select Schedule from options
        And Schedule Appointment form is displayed
        And fill up the Schedule Appointment form
        And click Save
        Then appointment can be seen scheduled in the Current Appointments section


    Scenario: Add Internal Comment

        Given current page is single inspection search result detail page 
        When find Internal Comments section
        And click the Add Comment button
        And Add Internal Comment page is shown
        And input comment in field
        And click Add
        Then comment can be seen in Internal Comments section


    Scenario: Navigate to Add Organization Page

        Given logged in to AIM Inspect site
        And current page is AIM Inspect site 
        When hover over Request tab
        And click the Add organization
        Then Add Organization page is shown


    Scenario: Add Organization 

        Given logged in to AIM Inspect site
        And current page is AIM Inspect site 
        When hover over Request tab
        And click the Add organization
        And Add Organization page is shown
        And fill up Add Organization form
        And click Submit
        Then AIM Inspect home page is displayed


    Scenario: See Organization Exists

        Given current page is AIM Inspect site 
        When click Basic Search box
        And input Organization name
        And click Search
        And click Submit
        Then Organization is displayed in search results
        

    Scenario: If User logs in and there is already an inspection Completed

        Given current page is AIM Inspect site
        And user has a Completed Inspection
        When log in to AIM Inspect site
        Then can see Completed Report PDF


    Scenario: Dropdown Request menu is shown

        Given current page is AIM Inspect site 
        When hover cursor over Request tab
        Then dropdown Request menu is shown 


    Scenario: Inspection Request page is shown

        Given current page is AIM Inspect site 
        When hover cursor over Request tab
        And dropdown Request menu is shown 
        And clicks on Add request
        Then inspection request page is shown 


    Scenario: Inspection Request page is shown

        Given current page is Inspection Request page 
        When click customer type 
        Then dropdown  menu is shown 


    Scenario: Customer dropdown menu is shown

        Given current page is Inspection Request page 
        When click customer type 
        Then customer dropdown menu is shown 


    Scenario: Request Type dropdown menu is shown

        Given current page is Inspection Request page 
        When click Request Type 
        Then Request Type dropdown menu is shown 
       









    Scenario: If Inspection already requested by TFS Dealer then redirected to Inspection Request Detail page

        Given current page is Inspection Request page
        And account number exists
        And  account has inspection requsted already
        When click customer type 
        And select TFS from customer dropdown menu
        And select Dealer from Request Type dropdown menu
        And enter account number
        And click find
        Then redirected to Inspection Requested Detail page for that account


    Scenario: If Inspection not already requested by TFS Dealer then form is rendered

        Given current page is Inspection Request page
        When click customer type 
        And select TFS from customer dropdown menu
        And select Dealer from Request Type dropdown menu
        And enter account number
        And click find
        Then Inspection Request form is rendered 


    
    Scenario: Inspection Request form submitted successfully by TFS Dealer 

        Given current page is Inspection Request page
        When click customer type 
        And select TFS from customer dropdown menu
        And select Dealer from Request Type dropdown menu
        And enter account number
        And click find
        And Request form is rendered 
        And fill up all the form fields with 
        required data 
        And click submit 
        And schedule appointment window is shown       # check
        And fill up schedule appointment form
        And click submit
        Then newly created inspection request detail page is shown


    Scenario: Inspection Request form and Schedule Request form submitted successfully with only mandatory fields by TFS Dealer 

        Given current page is Inspection Request page
        When click customer type 
        And select TFS from customer dropdown menu
        And select Dealer from Request Type dropdown menu
        And enter account number
        And click find
        And Request form is rendered 
        And fill up all the mandatory form fields with 
        required data 
        And click submit 
        And schedule appointment window is shown       # check
        And fill up mandatory fields in schedule appointment form
        And click submit
        Then newly created inspection request detail page is shown


    Scenario: Inspection Request form not submitted by TFS Dealer without mandatory fields 

        Given current page is Inspection Request page
        When click customer type 
        And select TFS from customer dropdown menu
        And select Dealer from Request Type dropdown menu
        And enter account number
        And click find
        And Request form is rendered 
        And leave mandatory fields empty 
        And click submit 
        Then form is not accepted and error message is shown


    Scenario: Schedule Appointment form not submitted by TFS Dealer without mandatory fields 

        Given current page is Inspection Request page
        When click customer type 
        And select TFS from customer dropdown menu
        And select Dealer from Request Type dropdown menu
        And enter account number
        And click find
        And Request form is rendered 
        And fill up all the mandatory form fields with 
        required data 
        And click submit 
        And schedule appointment window is shown       # check
        And leave mandatory fields empty 
        And click submit
        Then form is not accepted and error message is shown

    







    Scenario: If Inspection already requested by CHRYSLER SANTANDER Home then redirected to Inspection Request Detail page

        Given current page is Inspection Request page
        And account number exists
        And  account has inspection requsted already
        When click customer type 
        And select CHRYSLER SANTANDER from customer dropdown menu
        And select Home from Request Type dropdown menu
        And enter account number
        And click find
        Then redirected to Inspection Requested Detail page for that account


    Scenario: If Inspection not already requested by CHRYSLER SANTANDER Home then form is rendered

        Given logged in to AIM Inspect site
        And current page is Inspection Request page
        When click customer type 
        And select CHRYSLER SANTANDER from customer dropdown menu
        And select Home from Request Type dropdown menu
        And enter account number
        And click find
        Then Inspection Request form is rendered 


    
    Scenario: Inspection Request form submitted successfully by CHRYSLER SANTANDER Home 

        Given current page is Inspection Request page
        When click customer type 
        And select CHRYSLER SANTANDER from customer dropdown menu
        And select Home from Request Type dropdown menu
        And enter account number
        And click find
        And Request form is rendered 
        And fill up all the form fields with 
        required data 
        And click submit 
        And schedule appointment window is shown       # check
        And fill up schedule appointment form
        And click submit
        Then newly created inspection request detail page is shown


    Scenario: Inspection Request form and Schedule Request form submitted successfully with only mandatory fields by CHRYSLER SANTANDER Home 

        Given current page is Inspection Request page
        When click customer type 
        And select CHRYSLER SANTANDER from customer dropdown menu
        And select Home from Request Type dropdown menu
        And enter account number
        And click find
        And Request form is rendered 
        And fill up all the mandatory form fields with 
        required data 
        And click submit 
        And schedule appointment window is shown       # check
        And fill up mandatory fields in schedule appointment form
        And click submit
        Then newly created inspection request detail page is shown


    Scenario: Inspection Request form not submitted by CHRYSLER SANTANDER Home without mandatory fields 

        Given current page is Inspection Request page
        When click customer type 
        And select CHRYSLER SANTANDER from customer dropdown menu
        And select Home from Request Type dropdown menu
        And enter account number
        And click find
        And Request form is rendered 
        And leave mandatory fields empty 
        And click submit 
        Then form is not accepted and error message is shown


    Scenario: Schedule Appointment form not submitted by CHRYSLER SANTANDER Home without mandatory fields 

        Given current page is Inspection Request page
        When click customer type 
        And select CHRYSLER SANTANDER from customer dropdown menu
        And select Home from Request Type dropdown menu
        And enter account number
        And click find
        And Request form is rendered 
        And fill up all the mandatory form fields with 
        required data 
        And click submit 
        And schedule appointment window is shown       # check
        And leave mandatory fields empty 
        And click submit
        Then form is not accepted and error message is shown

    






 Scenario: If Inspection already requested by CHRYSLER SANTANDER DEALER then redirected to Inspection Request Detail page

        Given current page is Inspection Request page
        And account number exists
        And  account has inspection requsted already
        When click customer type 
        And select CHRYSLER SANTANDER from customer dropdown menu
        And select DEALER from Request Type dropdown menu
        And enter account number
        And click find
        Then redirected to Inspection Requested Detail page for that account


    Scenario: If Inspection not already requested by CHRYSLER SANTANDER DEALER then form is rendered

        Given current page is Inspection Request page
        When click customer type 
        And select CHRYSLER SANTANDER from customer dropdown menu
        And select DEALER from Request Type dropdown menu
        And enter account number
        And click find
        Then Inspection Request form is rendered 


    
    Scenario: Inspection Request form submitted successfully by CHRYSLER SANTANDER DEALER 

        Given current page is Inspection Request page
        When click customer type 
        And select CHRYSLER SANTANDER from customer dropdown menu
        And select DEALER from Request Type dropdown menu
        And enter account number
        And click find
        And Request form is rendered 
        And fill up all the form fields with 
        required data 
        And click submit 
        And schedule appointment window is shown       # check
        And fill up schedule appointment form
        And click submit
        Then newly created inspection request detail page is shown


    Scenario: Inspection Request form and Schedule Request form submitted successfully with only mandatory fields by CHRYSLER SANTANDER DEALER 

        Given current page is Inspection Request page
        When click customer type 
        And select CHRYSLER SANTANDER from customer dropdown menu
        And select DEALER from Request Type dropdown menu
        And enter account number
        And click find
        And Request form is rendered 
        And fill up all the mandatory form fields with 
        required data 
        And click submit 
        And schedule appointment window is shown       # check
        And fill up mandatory fields in schedule appointment form
        And click submit
        Then newly created inspection request detail page is shown


    Scenario: Inspection Request form not submitted by CHRYSLER SANTANDER DEALER without mandatory fields 

        Given current page is Inspection Request page
        When click customer type 
        And select CHRYSLER SANTANDER from customer dropdown menu
        And select DEALER from Request Type dropdown menu
        And enter account number
        And click find
        And Request form is rendered 
        And leave mandatory fields empty 
        And click submit 
        Then form is not accepted and error message is shown


    Scenario: Schedule Appointment form not submitted by CHRYSLER SANTANDER DEALER without mandatory fields 

        Given current page is Inspection Request page
        When click customer type 
        And select CHRYSLER SANTANDER from customer dropdown menu
        And select DEALER from Request Type dropdown menu
        And enter account number
        And click find
        And Request form is rendered 
        And fill up all the mandatory form fields with 
        required data 
        And click submit 
        And schedule appointment window is shown       # check
        And leave mandatory fields empty 
        And click submit
        Then form is not accepted and error message is shown

    





    Scenario: If Inspection already requested by HYUNDAI DEALER then redirected to Inspection Request Detail page

        Given current page is Inspection Request page
        And account number exists
        And  account has inspection requsted already
        When click customer type 
        And select HYUNDAI from customer dropdown menu
        And select DEALER from Request Type dropdown menu
        And enter account number
        And click find
        Then redirected to Inspection Requested Detail page for that account


    Scenario: If Inspection not already requested by HYUNDAI DEALER then form is rendered

        Given current page is Inspection Request page
        When click customer type 
        And select HYUNDAI from customer dropdown menu
        And select DEALER from Request Type dropdown menu
        And enter account number
        And click find
        Then Inspection Request form is rendered 


    
    Scenario: Inspection Request form submitted successfully by HYUNDAI DEALER 

        Given current page is Inspection Request page
        When click customer type 
        And select HYUNDAI from customer dropdown menu
        And select DEALER from Request Type dropdown menu
        And enter account number
        And click find
        And Request form is rendered 
        And fill up all the form fields with 
        required data 
        And click submit 
        And schedule appointment window is shown       # check
        And fill up schedule appointment form
        And click submit
        Then newly created inspection request detail page is shown


    Scenario: Inspection Request form and Schedule Request form submitted successfully with only mandatory fields by HYUNDAI DEALER 

        Given current page is Inspection Request page
        When click customer type 
        And select HYUNDAI from customer dropdown menu
        And select DEALER from Request Type dropdown menu
        And enter account number
        And click find
        And Request form is rendered 
        And fill up all the mandatory form fields with 
        required data 
        And click submit 
        And schedule appointment window is shown       # check
        And fill up mandatory fields in schedule appointment form
        And click submit
        Then newly created inspection request detail page is shown


    Scenario: Inspection Request form not submitted by HYUNDAI DEALER without mandatory fields 

        Given current page is Inspection Request page
        When click customer type 
        And select HYUNDAI from customer dropdown menu
        And select DEALER from Request Type dropdown menu
        And enter account number
        And click find
        And Request form is rendered 
        And leave mandatory fields empty 
        And click submit 
        Then form is not accepted and error message is shown


    Scenario: Schedule Appointment form not submitted by HYUNDAI DEALER without mandatory fields 

        Given current page is Inspection Request page
        When click customer type 
        And select HYUNDAI from customer dropdown menu
        And select DEALER from Request Type dropdown menu
        And enter account number
        And click find
        And Request form is rendered 
        And fill up all the mandatory form fields with 
        required data 
        And click submit 
        And schedule appointment window is shown       # check
        And leave mandatory fields empty 
        And click submit
        Then form is not accepted and error message is shown

    




Scenario: If Inspection already requested by HYUNDAI HOME then redirected to Inspection Request Detail page

        Given current page is Inspection Request page
        And account number exists
        And  account has inspection requsted already
        When click customer type 
        And select HYUNDAI from customer dropdown menu
        And select HOME from Request Type dropdown menu
        And enter account number
        And click find
        Then redirected to Inspection Requested Detail page for that account


    Scenario: If Inspection not already requested by HYUNDAI HOME then form is rendered

        Given current page is Inspection Request page
        When click customer type 
        And select HYUNDAI from customer dropdown menu
        And select HOME from Request Type dropdown menu
        And enter account number
        And click find
        Then Inspection Request form is rendered 


    
    Scenario: Inspection Request form submitted successfully by HYUNDAI HOME 

        Given current page is Inspection Request page
        When click customer type 
        And select HYUNDAI from customer dropdown menu
        And select HOME from Request Type dropdown menu
        And enter account number
        And click find
        And Request form is rendered 
        And fill up all the form fields with 
        required data 
        And click submit 
        And schedule appointment window is shown       # check
        And fill up schedule appointment form
        And click submit
        Then newly created inspection request detail page is shown


    Scenario: Inspection Request form and Schedule Request form submitted successfully with only mandatory fields by HYUNDAI HOME 

        Given current page is Inspection Request page
        When click customer type 
        And select HYUNDAI from customer dropdown menu
        And select HOME from Request Type dropdown menu
        And enter account number
        And click find
        And Request form is rendered 
        And fill up all the mandatory form fields with 
        required data 
        And click submit 
        And schedule appointment window is shown       # check
        And fill up mandatory fields in schedule appointment form
        And click submit
        Then newly created inspection request detail page is shown


    Scenario: Inspection Request form not submitted by HYUNDAI HOME without mandatory fields 

        Given current page is Inspection Request page
        When click customer type 
        And select HYUNDAI from customer dropdown menu
        And select HOME from Request Type dropdown menu
        And enter account number
        And click find
        And Request form is rendered 
        And leave mandatory fields empty 
        And click submit 
        Then form is not accepted and error message is shown


    Scenario: Schedule Appointment form not submitted by HYUNDAI HOME without mandatory fields 

        Given current page is Inspection Request page
        When click customer type 
        And select HYUNDAI from customer dropdown menu
        And select HOME from Request Type dropdown menu
        And enter account number
        And click find
        And Request form is rendered 
        And fill up all the mandatory form fields with 
        required data 
        And click submit 
        And schedule appointment window is shown       # check
        And leave mandatory fields empty 
        And click submit
        Then form is not accepted and error message is shown

    



    Scenario: If Inspection already requested by NISSAN HOME then redirected to Inspection Request Detail page

        Given current page is Inspection Request page
        And account number exists
        And  account has inspection requsted already
        When click customer type 
        And select NISSAN from customer dropdown menu
        And select HOME from Request Type dropdown menu
        And enter account number
        And click find
        Then redirected to Inspection Requested Detail page for that account


    Scenario: If Inspection not already requested by NISSAN HOME then form is rendered

        Given current page is Inspection Request page
        When click customer type 
        And select NISSAN from customer dropdown menu
        And select HOME from Request Type dropdown menu
        And enter account number
        And click find
        Then Inspection Request form is rendered 


    
    Scenario: Inspection Request form submitted successfully by NISSAN HOME 

        Given current page is Inspection Request page
        When click customer type 
        And select NISSAN from customer dropdown menu
        And select HOME from Request Type dropdown menu
        And enter account number
        And click find
        And Request form is rendered 
        And fill up all the form fields with 
        required data 
        And click submit 
        And schedule appointment window is shown       # check
        And fill up schedule appointment form
        And click submit
        Then newly created inspection request detail page is shown


    Scenario: Inspection Request form and Schedule Request form submitted successfully with only mandatory fields by NISSAN HOME 

        Given current page is Inspection Request page
        When click customer type 
        And select NISSAN from customer dropdown menu
        And select HOME from Request Type dropdown menu
        And enter account number
        And click find
        And Request form is rendered 
        And fill up all the mandatory form fields with 
        required data 
        And click submit 
        And schedule appointment window is shown       # check
        And fill up mandatory fields in schedule appointment form
        And click submit
        Then newly created inspection request detail page is shown


    Scenario: Inspection Request form not submitted by NISSAN HOME without mandatory fields 

        Given current page is Inspection Request page
        When click customer type 
        And select NISSAN from customer dropdown menu
        And select HOME from Request Type dropdown menu
        And enter account number
        And click find
        And Request form is rendered 
        And leave mandatory fields empty 
        And click submit 
        Then form is not accepted and error message is shown


    Scenario: Schedule Appointment form not submitted by NISSAN HOME without mandatory fields 

        Given current page is Inspection Request page
        When click customer type 
        And select NISSAN from customer dropdown menu
        And select HOME from Request Type dropdown menu
        And enter account number
        And click find
        And Request form is rendered 
        And fill up all the mandatory form fields with 
        required data 
        And click submit 
        And schedule appointment window is shown       # check
        And leave mandatory fields empty 
        And click submit
        Then form is not accepted and error message is shown

    



    Scenario: If Inspection already requested by NISSAN DEALER then redirected to Inspection Request Detail page

        Given current page is Inspection Request page
        And account number exists
        And  account has inspection requsted already
        When click customer type 
        And select NISSAN from customer dropdown menu
        And select DEALER from Request Type dropdown menu
        And enter account number
        And click find
        Then redirected to Inspection Requested Detail page for that account


    Scenario: If Inspection not already requested by NISSAN DEALER then form is rendered

        Given current page is Inspection Request page
        When click customer type 
        And select NISSAN from customer dropdown menu
        And select DEALER from Request Type dropdown menu
        And enter account number
        And click find
        Then Inspection Request form is rendered 


    
    Scenario: Inspection Request form submitted successfully by NISSAN DEALER 

        Given current page is Inspection Request page
        When click customer type 
        And select NISSAN from customer dropdown menu
        And select DEALER from Request Type dropdown menu
        And enter account number
        And click find
        And Request form is rendered 
        And fill up all the form fields with 
        required data 
        And click submit 
        And schedule appointment window is shown       # check
        And fill up schedule appointment form
        And click submit
        Then newly created inspection request detail page is shown


    Scenario: Inspection Request form and Schedule Request form submitted successfully with only mandatory fields by NISSAN DEALER 

        Given current page is Inspection Request page
        When click customer type 
        And select NISSAN from customer dropdown menu
        And select DEALER from Request Type dropdown menu
        And enter account number
        And click find
        And Request form is rendered 
        And fill up all the mandatory form fields with 
        required data 
        And click submit 
        And schedule appointment window is shown       # check
        And fill up mandatory fields in schedule appointment form
        And click submit
        Then newly created inspection request detail page is shown


    Scenario: Inspection Request form not submitted by NISSAN DEALER without mandatory fields 

        Given current page is Inspection Request page
        When click customer type 
        And select NISSAN from customer dropdown menu
        And select DEALER from Request Type dropdown menu
        And enter account number
        And click find
        And Request form is rendered 
        And leave mandatory fields empty 
        And click submit 
        Then form is not accepted and error message is shown


    Scenario: Schedule Appointment form not submitted by NISSAN DEALER without mandatory fields 

        Given current page is Inspection Request page
        When click customer type 
        And select NISSAN from customer dropdown menu
        And select DEALER from Request Type dropdown menu
        And enter account number
        And click find
        And Request form is rendered 
        And fill up all the mandatory form fields with 
        required data 
        And click submit 
        And schedule appointment window is shown       # check
        And leave mandatory fields empty 
        And click submit
        Then form is not accepted and error message is shown










    Scenario: If Inspection already requested by CHRYSLER SANTANDER then redirected to Inspection Request Detail page

        Given current page is Inspection Request page
        And account number exists
        And  account has inspection requsted already
        When click customer type 
        And select NISSAN from customer dropdown menu
        And select MARSHALLING YARD from Request Type dropdown menu
        And enter account number
        And click find
        Then redirected to Inspection Requested Detail page for that account


    Scenario: If Inspection not already requested by CHRYSLER SANTANDER then form is rendered

        Given current page is Inspection Request page
        When click customer type 
        And select NISSAN from customer dropdown menu
        And select MARSHALLING YARD from Request Type dropdown menu
        And enter account number
        And click find
        Then Inspection Request form is rendered 


    
    Scenario: Inspection Request form submitted successfully by CHRYSLER SANTANDER 

        Given current page is Inspection Request page
        When click customer type 
        And select NISSAN from customer dropdown menu
        And select MARSHALLING YARD from Request Type dropdown menu
        And enter account number
        And click find
        And Request form is rendered 
        And fill up all the form fields with 
        required data 
        And click submit 
        Then newly created inspection request notification message is shown


    Scenario: Inspection Request form and Schedule Request form submitted successfully with only mandatory fields by CHRYSLER SANTANDER 

        Given current page is Inspection Request page
        When click customer type 
        And select NISSAN from customer dropdown menu
        And select MARSHALLING YARD from Request Type dropdown menu
        And enter account number
        And click find
        And Request form is rendered 
        And fill up all the mandatory form fields with 
        required data 
        And click submit 
        Then newly created inspection request detail page is shown


    Scenario: Inspection Request form not submitted by CHRYSLER SANTANDER without mandatory fields 

        Given current page is Inspection Request page
        When click customer type 
        And select NISSAN from customer dropdown menu
        And select MARSHALLING YARD from Request Type dropdown menu
        And enter account number
        And click find
        And Request form is rendered 
        And leave mandatory fields empty 
        And click submit 
        Then form is not accepted and error message is shown









    Scenario: If Inspection already requested by HYUNDAI then redirected to Inspection Request Detail page

        Given current page is Inspection Request page
        And account number exists
        And  account has inspection requsted already
        When click customer type 
        And select NISSAN from customer dropdown menu
        And select MARSHALLING YARD from Request Type dropdown menu
        And enter account number
        And click find
        Then redirected to Inspection Requested Detail page for that account


    Scenario: If Inspection not already requested by HYUNDAI then form is rendered

        Given current page is Inspection Request page
        When click customer type 
        And select NISSAN from customer dropdown menu
        And select MARSHALLING YARD from Request Type dropdown menu
        And enter account number
        And click find
        Then Inspection Request form is rendered 


    
    Scenario: Inspection Request form submitted successfully by HYUNDAI 

        Given current page is Inspection Request page
        When click customer type 
        And select NISSAN from customer dropdown menu
        And select MARSHALLING YARD from Request Type dropdown menu
        And enter account number
        And click find
        And Request form is rendered 
        And fill up all the form fields with 
        required data 
        And click submit 
        Then newly created inspection request notification message is shown


    Scenario: Inspection Request form and Schedule Request form submitted successfully with only mandatory fields by HYUNDAI 

        Given current page is Inspection Request page
        When click customer type 
        And select NISSAN from customer dropdown menu
        And select MARSHALLING YARD from Request Type dropdown menu
        And enter account number
        And click find
        And Request form is rendered 
        And fill up all the mandatory form fields with 
        required data 
        And click submit 
        Then newly created inspection request detail page is shown


    Scenario: Inspection Request form not submitted by HYUNDAI without mandatory fields 

        Given current page is Inspection Request page
        When click customer type 
        And select NISSAN from customer dropdown menu
        And select MARSHALLING YARD from Request Type dropdown menu
        And enter account number
        And click find
        And Request form is rendered 
        And leave mandatory fields empty 
        And click submit 
        Then form is not accepted and error message is shown


    

    
# TO DO
# https://crm-uat.aiminspect.com/#!/inspection-request/add
# CUSTOMER : MANHEIM
# REQUEST TYPE : THIRD PARTY INSPECTION 
# FORM NOT WORKING!!!!!






    Scenario: Advanced Requests Search Form with no values returns all Requests

        Given current URL is AIM Inspect site home page
        When user overs over Request tab
        And click Search Requests
        And clicks  Advanced Search
        And leaves Advanced Search form empty
        And clicks search button
        Then all request search results will be displayed







    Scenario: Organization Search Form with no values returns all Organizations

        Given current URL is AIM Inspect site home page
        When user overs over Request tab
        And click Search Organizations
        And leaves Search form empty
        And clicks search button
        Then all organization search results will be displayed




    Scenario: Organization Search Form Customer Type dropdown menu functioning 

        Given current URL is AIM Inspect site home page
        When user overs over Request tab
        And click Search Organizations
        And clicks Customer Dropdown menu
        Then different Customers are shown in options


    Scenario: Organization Search Form with Customer Type CHASE returns CHASE results 

        Given current URL is AIM Inspect site home page
        When user overs over Request tab
        And click Search Organizations
        And clicks Customer Dropdown menu
        And selects CHASE from Dropdown menu
        And clicks search button
        Then all organization search results with CHASE will be displayed



    Scenario: Organization Search Form with Customer Type US BANK returns US BANK results 

        Given current URL is AIM Inspect site home page
        When user overs over Request tab
        And click Search Organizations
        And clicks Customer Dropdown menu
        And selects US BANK from Dropdown menu
        And clicks search button
        Then all organization search results with US BANK will be displayed



    Scenario: Organization Search Form with Customer Type ALLY returns ALLY results 

        Given current URL is AIM Inspect site home page
        When user overs over Request tab
        And click Search Organizations
        And clicks Customer Dropdown menu
        And selects ALLY from Dropdown menu
        And clicks search button
        Then all organization search results with ALLY will be displayed


    
    Scenario: Organization Search Form with Customer Type TFS returns TFS results 

        Given current URL is AIM Inspect site home page
        When user overs over Request tab
        And click Search Organizations
        And clicks Customer Dropdown menu
        And selects TFS from Dropdown menu
        And clicks search button
        Then all organization search results with TFS will be displayed



    Scenario: Organization Search Form with Customer Type VCI returns VCI results 

        Given current URL is AIM Inspect site home page
        When user overs over Request tab
        And click Search Organizations
        And clicks Customer Dropdown menu
        And selects VCI from Dropdown menu
        And clicks search button
        Then all organization search results with VCI will be displayed



    Scenario: Organization Search Form with Customer Type CHRYSLER STYDER returns CHRYSLER STYDER results 

        Given current URL is AIM Inspect site home page
        When user overs over Request tab
        And click Search Organizations
        And clicks Customer Dropdown menu
        And selects CHRYSLER STYDER from Dropdown menu
        And clicks search button
        Then all organization search results with CHRYSLER STYDER will be displayed



    Scenario: Organization Search Form with Customer Type MENHEIM returns MENHEIM results 

        Given current URL is AIM Inspect site home page
        When user overs over Request tab
        And click Search Organizations
        And clicks Customer Dropdown menu
        And selects MENHEIM from Dropdown menu
        And clicks search button
        Then all organization search results with MENHEIM will be displayed



    Scenario: Organization Search Form with Customer Type HYUNDAI returns HYUNDAI results 

        Given current URL is AIM Inspect site home page
        When user overs over Request tab
        And click Search Organizations
        And clicks Customer Dropdown menu
        And selects HYUNDAI from Dropdown menu
        And clicks search button
        Then all organization search results with HYUNDAI will be displayed



    Scenario: Organization Search Form with Customer Type NISSAN returns NISSAN results 

        Given current URL is AIM Inspect site home page
        When user overs over Request tab
        And click Search Organizations
        And clicks Customer Dropdown menu
        And selects NISSAN from Dropdown menu
        And clicks search button
        Then all organization search results with NISSAN will be displayed



    


    Scenario: Organization Search Form Country dropdown menu functioning 

        Given current URL is AIM Inspect site home page
        When user overs over Request tab
        And click Search Organizations
        And clicks Country Dropdown menu
        Then different Countries are shown in options



    Scenario: Organization Search Form with US selected from Country dropdown menu shows US results 

        Given current URL is AIM Inspect site home page
        When user overs over Request tab
        And click Search Organizations
        And clicks Country Dropdown menu
        And selects US from the options
        And clicks search
        Then US results are shown


    Scenario: Organization Search Form with Mexico selected from Country dropdown menu shows US results 

        Given current URL is AIM Inspect site home page
        When user overs over Request tab
        And click Search Organizations
        And clicks Country Dropdown menu
        And selects Mexico from the options
        And clicks search
        Then Mexico results are shown


    Scenario: Organization Search Form with Canada selected from Country dropdown menu shows Canada results 

        Given current URL is AIM Inspect site home page
        When user overs over Request tab
        And click Search Organizations
        And clicks Country Dropdown menu
        And selects Canada from the options
        And clicks search
        Then Canada results are shown



    




    Scenario: Organization Search Form with US selected from Country dropdown menu shows US results 

        Given current URL is AIM Inspect site home page
        When user overs over Request tab
        And click Search Organizations
        And clicks Country Dropdown menu
        And selects US from the options
        And clicks search
        Then US results are shown


    Scenario: Organization Search Form with Mexico selected from Country dropdown menu shows US results 

        Given current URL is AIM Inspect site home page
        When user overs over Request tab
        And click Search Organizations
        And clicks Country Dropdown menu
        And selects Mexico from the options
        And clicks search
        Then Mexico results are shown


    Scenario: Organization Search Form with Canada selected from Country dropdown menu shows Canada results 

        Given current URL is AIM Inspect site home page
        When user overs over Request tab
        And click Search Organizations
        And clicks Country Dropdown menu
        And selects Canada from the options
        And clicks search
        Then Canada results are shown




    Scenario: Organization Search Form with Mexico selected from Country dropdown menu shows Mexico states in States dropdown menu 

        Given current URL is AIM Inspect site home page
        When user overs over Request tab
        And click Search Organizations
        And clicks Country Dropdown menu
        And selects Mexico from the options
        And clicks States dropdown menu
        Then Mexico States are shown in dropdown menu








     Scenario: Organization Search Form with Mexico selected from Country dropdown menu and AGU from States dropdown menu returns AGU in search results

        Given current URL is AIM Inspect site home page
        When user overs over Request tab
        And click Search Organizations
        And clicks Country Dropdown menu
        And selects Mexico from the options
        And clicks States dropdown menu
        And selects AGU from dropdown menu
        And clicks search
        Then AGU results are shown


    Scenario: Organization Search Form with Mexico selected from Country dropdown menu and AGU from States dropdown menu returns AGU in search results

        Given current URL is AIM Inspect site home page
        When user overs over Request tab
        And click Search Organizations
        And clicks Country Dropdown menu
        And selects Mexico from the options
        And clicks States dropdown menu
        And selects AGU from dropdown menu
        And clicks search
        Then AGU results are shown


    Scenario: Organization Search Form with Mexico selected from Country dropdown menu and AGU from States dropdown menu returns AGU in search results

        Given current URL is AIM Inspect site home page
        When user overs over Request tab
        And click Search Organizations
        And clicks Country Dropdown menu
        And selects Mexico from the options
        And clicks States dropdown menu
        And selects AGU from dropdown menu
        And clicks search
        Then AGU results are shown


    Scenario: Organization Search Form with Mexico selected from Country dropdown menu and AGU from States dropdown menu returns AGU in search results

        Given current URL is AIM Inspect site home page
        When user overs over Request tab
        And click Search Organizations
        And clicks Country Dropdown menu
        And selects Mexico from the options
        And clicks States dropdown menu
        And selects AGU from dropdown menu
        And clicks search
        Then AGU results are shown


    Scenario: Organization Search Form with Mexico selected from Country dropdown menu and AGU from States dropdown menu returns AGU in search results

        Given current URL is AIM Inspect site home page
        When user overs over Request tab
        And click Search Organizations
        And clicks Country Dropdown menu
        And selects Mexico from the options
        And clicks States dropdown menu
        And selects AGU from dropdown menu
        And clicks search
        Then AGU results are shown


    Scenario: Organization Search Form with Mexico selected from Country dropdown menu and AGU from States dropdown menu returns AGU in search results

        Given current URL is AIM Inspect site home page
        When user overs over Request tab
        And click Search Organizations
        And clicks Country Dropdown menu
        And selects Mexico from the options
        And clicks States dropdown menu
        And selects AGU from dropdown menu
        And clicks search
        Then AGU results are shown


    Scenario: Organization Search Form with Mexico selected from Country dropdown menu and AGU from States dropdown menu returns AGU in search results

        Given current URL is AIM Inspect site home page
        When user overs over Request tab
        And click Search Organizations
        And clicks Country Dropdown menu
        And selects Mexico from the options
        And clicks States dropdown menu
        And selects AGU from dropdown menu
        And clicks search
        Then AGU results are shown



    Scenario: Organization Search Form with Mexico selected from Country dropdown menu and AGU from States dropdown menu returns AGU in search results

        Given current URL is AIM Inspect site home page
        When user overs over Request tab
        And click Search Organizations
        And clicks Country Dropdown menu
        And selects Mexico from the options
        And clicks States dropdown menu
        And selects AGU from dropdown menu
        And clicks search
        Then AGU results are shown


    Scenario: Organization Search Form with Mexico selected from Country dropdown menu and AGU from States dropdown menu returns AGU in search results

        Given current URL is AIM Inspect site home page
        When user overs over Request tab
        And click Search Organizations
        And clicks Country Dropdown menu
        And selects Mexico from the options
        And clicks States dropdown menu
        And selects AGU from dropdown menu
        And clicks search
        Then AGU results are shown


    Scenario: Organization Search Form with Mexico selected from Country dropdown menu and AGU from States dropdown menu returns AGU in search results

        Given current URL is AIM Inspect site home page
        When user overs over Request tab
        And click Search Organizations
        And clicks Country Dropdown menu
        And selects Mexico from the options
        And clicks States dropdown menu
        And selects AGU from dropdown menu
        And clicks search
        Then AGU results are shown


    Scenario: Organization Search Form with Mexico selected from Country dropdown menu and AGU from States dropdown menu returns AGU in search results

        Given current URL is AIM Inspect site home page
        When user overs over Request tab
        And click Search Organizations
        And clicks Country Dropdown menu
        And selects Mexico from the options
        And clicks States dropdown menu
        And selects AGU from dropdown menu
        And clicks search
        Then AGU results are shown


    Scenario: Organization Search Form with Mexico selected from Country dropdown menu and AGU from States dropdown menu returns AGU in search results

        Given current URL is AIM Inspect site home page
        When user overs over Request tab
        And click Search Organizations
        And clicks Country Dropdown menu
        And selects Mexico from the options
        And clicks States dropdown menu
        And selects AGU from dropdown menu
        And clicks search
        Then AGU results are shown


    Scenario: Organization Search Form with Mexico selected from Country dropdown menu and AGU from States dropdown menu returns AGU in search results

        Given current URL is AIM Inspect site home page
        When user overs over Request tab
        And click Search Organizations
        And clicks Country Dropdown menu
        And selects Mexico from the options
        And clicks States dropdown menu
        And selects AGU from dropdown menu
        And clicks search
        Then AGU results are shown


    Scenario: Organization Search Form with Mexico selected from Country dropdown menu and AGU from States dropdown menu returns AGU in search results

        Given current URL is AIM Inspect site home page
        When user overs over Request tab
        And click Search Organizations
        And clicks Country Dropdown menu
        And selects Mexico from the options
        And clicks States dropdown menu
        And selects AGU from dropdown menu
        And clicks search
        Then AGU results are shown


    Scenario: Organization Search Form with Mexico selected from Country dropdown menu and AGU from States dropdown menu returns AGU in search results

        Given current URL is AIM Inspect site home page
        When user overs over Request tab
        And click Search Organizations
        And clicks Country Dropdown menu
        And selects Mexico from the options
        And clicks States dropdown menu
        And selects AGU from dropdown menu
        And clicks search
        Then AGU results are shown


    Scenario: Organization Search Form with Mexico selected from Country dropdown menu and AGU from States dropdown menu returns AGU in search results

        Given current URL is AIM Inspect site home page
        When user overs over Request tab
        And click Search Organizations
        And clicks Country Dropdown menu
        And selects Mexico from the options
        And clicks States dropdown menu
        And selects AGU from dropdown menu
        And clicks search
        Then AGU results are shown


    Scenario: Organization Search Form with Mexico selected from Country dropdown menu and AGU from States dropdown menu returns AGU in search results

        Given current URL is AIM Inspect site home page
        When user overs over Request tab
        And click Search Organizations
        And clicks Country Dropdown menu
        And selects Mexico from the options
        And clicks States dropdown menu
        And selects AGU from dropdown menu
        And clicks search
        Then AGU results are shown


    Scenario: Organization Search Form with Mexico selected from Country dropdown menu and AGU from States dropdown menu returns AGU in search results

        Given current URL is AIM Inspect site home page
        When user overs over Request tab
        And click Search Organizations
        And clicks Country Dropdown menu
        And selects Mexico from the options
        And clicks States dropdown menu
        And selects AGU from dropdown menu
        And clicks search
        Then AGU results are shown


    Scenario: Organization Search Form with Mexico selected from Country dropdown menu and AGU from States dropdown menu returns AGU in search results

        Given current URL is AIM Inspect site home page
        When user overs over Request tab
        And click Search Organizations
        And clicks Country Dropdown menu
        And selects Mexico from the options
        And clicks States dropdown menu
        And selects AGU from dropdown menu
        And clicks search
        Then AGU results are shown


    Scenario: Organization Search Form with Mexico selected from Country dropdown menu and AGU from States dropdown menu returns AGU in search results

        Given current URL is AIM Inspect site home page
        When user overs over Request tab
        And click Search Organizations
        And clicks Country Dropdown menu
        And selects Mexico from the options
        And clicks States dropdown menu
        And selects AGU from dropdown menu
        And clicks search
        Then AGU results are shown


    Scenario: Organization Search Form with Mexico selected from Country dropdown menu and AGU from States dropdown menu returns AGU in search results

        Given current URL is AIM Inspect site home page
        When user overs over Request tab
        And click Search Organizations
        And clicks Country Dropdown menu
        And selects Mexico from the options
        And clicks States dropdown menu
        And selects AGU from dropdown menu
        And clicks search
        Then AGU results are shown


    Scenario: Organization Search Form with Mexico selected from Country dropdown menu and AGU from States dropdown menu returns AGU in search results

        Given current URL is AIM Inspect site home page
        When user overs over Request tab
        And click Search Organizations
        And clicks Country Dropdown menu
        And selects Mexico from the options
        And clicks States dropdown menu
        And selects AGU from dropdown menu
        And clicks search
        Then AGU results are shown


    Scenario: Organization Search Form with Mexico selected from Country dropdown menu and AGU from States dropdown menu returns AGU in search results

        Given current URL is AIM Inspect site home page
        When user overs over Request tab
        And click Search Organizations
        And clicks Country Dropdown menu
        And selects Mexico from the options
        And clicks States dropdown menu
        And selects AGU from dropdown menu
        And clicks search
        Then AGU results are shown

        


   









    Scenario: Organization Search Form with US selected from Country dropdown menu shows US states in States dropdown menu 

        Given current URL is AIM Inspect site home page
        When user overs over Request tab
        And click Search Organizations
        And clicks Country Dropdown menu
        And selects US from the options
        And clicks States dropdown menu
        Then US States are shown in dropdown menu










    Scenario: Organization Search Form with US selected from Country dropdown menu and AL from States dropdown menu returns AL in search results

        Given current URL is AIM Inspect site home page
        When user overs over Request tab
        And click Search Organizations
        And clicks Country Dropdown menu
        And selects US from the options
        And clicks States dropdown menu
        And selects AL from dropdown menu
        And clicks search
        Then AL results are shown


    Scenario: Organization Search Form with US selected from Country dropdown menu and AK from States dropdown menu returns AK in search results

        Given current URL is AIM Inspect site home page
        When user overs over Request tab
        And click Search Organizations
        And clicks Country Dropdown menu
        And selects US from the options
        And clicks States dropdown menu
        And selects AK from dropdown menu
        And clicks search
        Then AK results are shown


    Scenario: Organization Search Form with US selected from Country dropdown menu and AZ from States dropdown menu returns AZ in search results

        Given current URL is AIM Inspect site home page
        When user overs over Request tab
        And click Search Organizations
        And clicks Country Dropdown menu
        And selects US from the options
        And clicks States dropdown menu
        And selects AZ from dropdown menu
        And clicks search
        Then AZ results are shown


    Scenario: Organization Search Form with US selected from Country dropdown menu and AR from States dropdown menu returns AR in search results

        Given current URL is AIM Inspect site home page
        When user overs over Request tab
        And click Search Organizations
        And clicks Country Dropdown menu
        And selects US from the options
        And clicks States dropdown menu
        And selects AR from dropdown menu
        And clicks search
        Then AR results are shown


    Scenario: Organization Search Form with US selected from Country dropdown menu and CA from States dropdown menu returns CA in search results

        Given current URL is AIM Inspect site home page
        When user overs over Request tab
        And click Search Organizations
        And clicks Country Dropdown menu
        And selects US from the options
        And clicks States dropdown menu
        And selects CA from dropdown menu
        And clicks search
        Then CA results are shown


    Scenario: Organization Search Form with US selected from Country dropdown menu and CO from States dropdown menu returns CO in search results

        Given current URL is AIM Inspect site home page
        When user overs over Request tab
        And click Search Organizations
        And clicks Country Dropdown menu
        And selects US from the options
        And clicks States dropdown menu
        And selects CO from dropdown menu
        And clicks search
        Then CO results are shown


    Scenario: Organization Search Form with US selected from Country dropdown menu and CT from States dropdown menu returns CT in search results

        Given current URL is AIM Inspect site home page
        When user overs over Request tab
        And click Search Organizations
        And clicks Country Dropdown menu
        And selects US from the options
        And clicks States dropdown menu
        And selects CT from dropdown menu
        And clicks search
        Then CT results are shown


    Scenario: Organization Search Form with US selected from Country dropdown menu and DE from States dropdown menu returns DE in search results

        Given current URL is AIM Inspect site home page
        When user overs over Request tab
        And click Search Organizations
        And clicks Country Dropdown menu
        And selects US from the options
        And clicks States dropdown menu
        And selects DE from dropdown menu
        And clicks search
        Then DE results are shown


    Scenario: Organization Search Form with US selected from Country dropdown menu and DC from States dropdown menu returns DC in search results

        Given current URL is AIM Inspect site home page
        When user overs over Request tab
        And click Search Organizations
        And clicks Country Dropdown menu
        And selects US from the options
        And clicks States dropdown menu
        And selects DC from dropdown menu
        And clicks search
        Then DC results are shown


    Scenario: Organization Search Form with US selected from Country dropdown menu and FL from States dropdown menu returns FL in search results

        Given current URL is AIM Inspect site home page
        When user overs over Request tab
        And click Search Organizations
        And clicks Country Dropdown menu
        And selects US from the options
        And clicks States dropdown menu
        And selects FL from dropdown menu
        And clicks search
        Then FL results are shown


    Scenario: Organization Search Form with US selected from Country dropdown menu and GA from States dropdown menu returns GA in search results

        Given current URL is AIM Inspect site home page
        When user overs over Request tab
        And click Search Organizations
        And clicks Country Dropdown menu
        And selects US from the options
        And clicks States dropdown menu
        And selects GA from dropdown menu
        And clicks search
        Then GA results are shown


    Scenario: Organization Search Form with US selected from Country dropdown menu and HI from States dropdown menu returns HI in search results

        Given current URL is AIM Inspect site home page
        When user overs over Request tab
        And click Search Organizations
        And clicks Country Dropdown menu
        And selects US from the options
        And clicks States dropdown menu
        And selects HI from dropdown menu
        And clicks search
        Then HI results are shown


    Scenario: Organization Search Form with US selected from Country dropdown menu and ID from States dropdown menu returns ID in search results

        Given current URL is AIM Inspect site home page
        When user overs over Request tab
        And click Search Organizations
        And clicks Country Dropdown menu
        And selects US from the options
        And clicks States dropdown menu
        And selects ID from dropdown menu
        And clicks search
        Then ID results are shown


    Scenario: Organization Search Form with US selected from Country dropdown menu and IL from States dropdown menu returns IL in search results

        Given current URL is AIM Inspect site home page
        When user overs over Request tab
        And click Search Organizations
        And clicks Country Dropdown menu
        And selects US from the options
        And clicks States dropdown menu
        And selects IL from dropdown menu
        And clicks search
        Then IL results are shown


    Scenario: Organization Search Form with US selected from Country dropdown menu and IN from States dropdown menu returns IN in search results

        Given current URL is AIM Inspect site home page
        When user overs over Request tab
        And click Search Organizations
        And clicks Country Dropdown menu
        And selects US from the options
        And clicks States dropdown menu
        And selects IN from dropdown menu
        And clicks search
        Then IN results are shown


    Scenario: Organization Search Form with US selected from Country dropdown menu and IA from States dropdown menu returns IA in search results

        Given current URL is AIM Inspect site home page
        When user overs over Request tab
        And click Search Organizations
        And clicks Country Dropdown menu
        And selects US from the options
        And clicks States dropdown menu
        And selects IA from dropdown menu
        And clicks search
        Then IA results are shown


    Scenario: Organization Search Form with US selected from Country dropdown menu and KS from States dropdown menu returns KS in search results

        Given current URL is AIM Inspect site home page
        When user overs over Request tab
        And click Search Organizations
        And clicks Country Dropdown menu
        And selects US from the options
        And clicks States dropdown menu
        And selects KS from dropdown menu
        And clicks search
        Then KS results are shown

    
    Scenario: Organization Search Form with US selected from Country dropdown menu and KY from States dropdown menu returns KY in search results

        Given current URL is AIM Inspect site home page
        When user overs over Request tab
        And click Search Organizations
        And clicks Country Dropdown menu
        And selects US from the options
        And clicks States dropdown menu
        And selects KY from dropdown menu
        And clicks search
        Then KY results are shown


    Scenario: Organization Search Form with US selected from Country dropdown menu and LA from States dropdown menu returns LA in search results

        Given current URL is AIM Inspect site home page
        When user overs over Request tab
        And click Search Organizations
        And clicks Country Dropdown menu
        And selects US from the options
        And clicks States dropdown menu
        And selects LA from dropdown menu
        And clicks search
        Then LA results are shown


    Scenario: Organization Search Form with US selected from Country dropdown menu and ME from States dropdown menu returns ME in search results

        Given current URL is AIM Inspect site home page
        When user overs over Request tab
        And click Search Organizations
        And clicks Country Dropdown menu
        And selects US from the options
        And clicks States dropdown menu
        And selects ME from dropdown menu
        And clicks search
        Then ME results are shown


    Scenario: Organization Search Form with US selected from Country dropdown menu and MD from States dropdown menu returns MD in search results

        Given current URL is AIM Inspect site home page
        When user overs over Request tab
        And click Search Organizations
        And clicks Country Dropdown menu
        And selects US from the options
        And clicks States dropdown menu
        And selects MD from dropdown menu
        And clicks search
        Then MD results are shown


    Scenario: Organization Search Form with US selected from Country dropdown menu and MA  from States dropdown menu returns MA in search results

        Given current URL is AIM Inspect site home page
        When user overs over Request tab
        And click Search Organizations
        And clicks Country Dropdown menu
        And selects US from the options
        And clicks States dropdown menu
        And selects MA from dropdown menu
        And clicks search
        Then MA results are shown


    Scenario: Organization Search Form with US selected from Country dropdown menu and MI from States dropdown menu returns MI in search results

        Given current URL is AIM Inspect site home page
        When user overs over Request tab
        And click Search Organizations
        And clicks Country Dropdown menu
        And selects US from the options
        And clicks States dropdown menu
        And selects MI from dropdown menu
        And clicks search
        Then MI results are shown


    



    Scenario: Organization Search Form with US selected from Country dropdown menu and MN from States dropdown menu returns MN in search results

        Given current URL is AIM Inspect site home page
        When user overs over Request tab
        And click Search Organizations
        And clicks Country Dropdown menu
        And selects US from the options
        And clicks States dropdown menu
        And selects MN from dropdown menu
        And clicks search
        Then MN results are shown



    Scenario: Organization Search Form with US selected from Country dropdown menu and MS from States dropdown menu returns MS in search results

        Given current URL is AIM Inspect site home page
        When user overs over Request tab
        And click Search Organizations
        And clicks Country Dropdown menu
        And selects US from the options
        And clicks States dropdown menu
        And selects MS from dropdown menu
        And clicks search
        Then MS results are shown



    Scenario: Organization Search Form with US selected from Country dropdown menu and MO from States dropdown menu returns MO in search results

        Given current URL is AIM Inspect site home page
        When user overs over Request tab
        And click Search Organizations
        And clicks Country Dropdown menu
        And selects US from the options
        And clicks States dropdown menu
        And selects MO from dropdown menu
        And clicks search
        Then MO results are shown



    Scenario: Organization Search Form with US selected from Country dropdown menu and MT from States dropdown menu returns MT in search results

        Given current URL is AIM Inspect site home page
        When user overs over Request tab
        And click Search Organizations
        And clicks Country Dropdown menu
        And selects US from the options
        And clicks States dropdown menu
        And selects MT from dropdown menu
        And clicks search
        Then MT results are shown



    Scenario: Organization Search Form with US selected from Country dropdown menu and NE from States dropdown menu returns NE in search results

        Given current URL is AIM Inspect site home page
        When user overs over Request tab
        And click Search Organizations
        And clicks Country Dropdown menu
        And selects US from the options
        And clicks States dropdown menu
        And selects NE from dropdown menu
        And clicks search
        Then NE results are shown



    Scenario: Organization Search Form with US selected from Country dropdown menu and NV from States dropdown menu returns NV in search results

        Given current URL is AIM Inspect site home page
        When user overs over Request tab
        And click Search Organizations
        And clicks Country Dropdown menu
        And selects US from the options
        And clicks States dropdown menu
        And selects NV from dropdown menu
        And clicks search
        Then NV results are shown



    Scenario: Organization Search Form with US selected from Country dropdown menu and NH from States dropdown menu returns NH in search results

        Given current URL is AIM Inspect site home page
        When user overs over Request tab
        And click Search Organizations
        And clicks Country Dropdown menu
        And selects US from the options
        And clicks States dropdown menu
        And selects NH from dropdown menu
        And clicks search
        Then NH results are shown




    Scenario: Organization Search Form with US selected from Country dropdown menu and NJ from States dropdown menu returns NJ in search results

        Given current URL is AIM Inspect site home page
        When user overs over Request tab
        And click Search Organizations
        And clicks Country Dropdown menu
        And selects US from the options
        And clicks States dropdown menu
        And selects NJ from dropdown menu
        And clicks search
        Then NJ results are shown




    Scenario: Organization Search Form with US selected from Country dropdown menu and NM from States dropdown menu returns NM in search results

        Given current URL is AIM Inspect site home page
        When user overs over Request tab
        And click Search Organizations
        And clicks Country Dropdown menu
        And selects US from the options
        And clicks States dropdown menu
        And selects NM from dropdown menu
        And clicks search
        Then NM results are shown



    Scenario: Organization Search Form with US selected from Country dropdown menu and NY from States dropdown menu returns NY in search results

        Given current URL is AIM Inspect site home page
        When user overs over Request tab
        And click Search Organizations
        And clicks Country Dropdown menu
        And selects US from the options
        And clicks States dropdown menu
        And selects NY from dropdown menu
        And clicks search
        Then NY results are shown



    Scenario: Organization Search Form with US selected from Country dropdown menu and NC from States dropdown menu returns NC in search results

        Given current URL is AIM Inspect site home page
        When user overs over Request tab
        And click Search Organizations
        And clicks Country Dropdown menu
        And selects US from the options
        And clicks States dropdown menu
        And selects NC from dropdown menu
        And clicks search
        Then NC results are shown



    Scenario: Organization Search Form with US selected from Country dropdown menu and ND from States dropdown menu returns ND in search results

        Given current URL is AIM Inspect site home page
        When user overs over Request tab
        And click Search Organizations
        And clicks Country Dropdown menu
        And selects US from the options
        And clicks States dropdown menu
        And selects ND from dropdown menu
        And clicks search
        Then ND results are shown




    Scenario: Organization Search Form with US selected from Country dropdown menu and OH from States dropdown menu returns OH in search results

        Given current URL is AIM Inspect site home page
        When user overs over Request tab
        And click Search Organizations
        And clicks Country Dropdown menu
        And selects US from the options
        And clicks States dropdown menu
        And selects OH from dropdown menu
        And clicks search
        Then OH results are shown




    Scenario: Organization Search Form with US selected from Country dropdown menu and OK from States dropdown menu returns OK in search results

        Given current URL is AIM Inspect site home page
        When user overs over Request tab
        And click Search Organizations
        And clicks Country Dropdown menu
        And selects US from the options
        And clicks States dropdown menu
        And selects OK from dropdown menu
        And clicks search
        Then OK results are shown



    Scenario: Organization Search Form with US selected from Country dropdown menu and OR from States dropdown menu returns OR in search results

        Given current URL is AIM Inspect site home page
        When user overs over Request tab
        And click Search Organizations
        And clicks Country Dropdown menu
        And selects US from the options
        And clicks States dropdown menu
        And selects OR from dropdown menu
        And clicks search
        Then OR results are shown




    Scenario: Organization Search Form with US selected from Country dropdown menu and PA from States dropdown menu returns PA in search results

        Given current URL is AIM Inspect site home page
        When user overs over Request tab
        And click Search Organizations
        And clicks Country Dropdown menu
        And selects US from the options
        And clicks States dropdown menu
        And selects PA from dropdown menu
        And clicks search
        Then PA results are shown



    Scenario: Organization Search Form with US selected from Country dropdown menu and PR from States dropdown menu returns PR in search results

        Given current URL is AIM Inspect site home page
        When user overs over Request tab
        And click Search Organizations
        And clicks Country Dropdown menu
        And selects US from the options
        And clicks States dropdown menu
        And selects PR from dropdown menu
        And clicks search
        Then PR results are shown


    Scenario: Organization Search Form with US selected from Country dropdown menu and RI from States dropdown menu returns RI in search results

        Given current URL is AIM Inspect site home page
        When user overs over Request tab
        And click Search Organizations
        And clicks Country Dropdown menu
        And selects US from the options
        And clicks States dropdown menu
        And selects RI from dropdown menu
        And clicks search
        Then RI results are shown



    Scenario: Organization Search Form with US selected from Country dropdown menu and SC from States dropdown menu returns SC in search results

        Given current URL is AIM Inspect site home page
        When user overs over Request tab
        And click Search Organizations
        And clicks Country Dropdown menu
        And selects US from the options
        And clicks States dropdown menu
        And selects SC from dropdown menu
        And clicks search
        Then SC results are shown


    Scenario: Organization Search Form with US selected from Country dropdown menu and SD from States dropdown menu returns SD in search results

        Given current URL is AIM Inspect site home page
        When user overs over Request tab
        And click Search Organizations
        And clicks Country Dropdown menu
        And selects US from the options
        And clicks States dropdown menu
        And selects SD from dropdown menu
        And clicks search
        Then SD results are shown


    Scenario: Organization Search Form with US selected from Country dropdown menu and TN from States dropdown menu returns TN in search results

        Given current URL is AIM Inspect site home page
        When user overs over Request tab
        And click Search Organizations
        And clicks Country Dropdown menu
        And selects US from the options
        And clicks States dropdown menu
        And selects TN from dropdown menu
        And clicks search
        Then TN results are shown


    Scenario: Organization Search Form with US selected from Country dropdown menu and TX from States dropdown menu returns TX in search results

        Given current URL is AIM Inspect site home page
        When user overs over Request tab
        And click Search Organizations
        And clicks Country Dropdown menu
        And selects US from the options
        And clicks States dropdown menu
        And selects TX from dropdown menu
        And clicks search
        Then TX results are shown



    Scenario: Organization Search Form with US selected from Country dropdown menu and UT from States dropdown menu returns UT in search results

        Given current URL is AIM Inspect site home page
        When user overs over Request tab
        And click Search Organizations
        And clicks Country Dropdown menu
        And selects US from the options
        And clicks States dropdown menu
        And selects UT from dropdown menu
        And clicks search
        Then UT results are shown



    Scenario: Organization Search Form with US selected from Country dropdown menu and VT from States dropdown menu returns VT in search results

        Given current URL is AIM Inspect site home page
        When user overs over Request tab
        And click Search Organizations
        And clicks Country Dropdown menu
        And selects US from the options
        And clicks States dropdown menu
        And selects VT from dropdown menu
        And clicks search
        Then VT results are shown



    Scenario: Organization Search Form with US selected from Country dropdown menu and VI from States dropdown menu returns VI in search results

        Given current URL is AIM Inspect site home page
        When user overs over Request tab
        And click Search Organizations
        And clicks Country Dropdown menu
        And selects US from the options
        And clicks States dropdown menu
        And selects VI from dropdown menu
        And clicks search
        Then VI results are shown



    Scenario: Organization Search Form with US selected from Country dropdown menu and WA from States dropdown menu returns WA in search results

        Given current URL is AIM Inspect site home page
        When user overs over Request tab
        And click Search Organizations
        And clicks Country Dropdown menu
        And selects US from the options
        And clicks States dropdown menu
        And selects WA from dropdown menu
        And clicks search
        Then WA results are shown


    Scenario: Organization Search Form with US selected from Country dropdown menu and WV from States dropdown menu returns WV in search results

        Given current URL is AIM Inspect site home page
        When user overs over Request tab
        And click Search Organizations
        And clicks Country Dropdown menu
        And selects US from the options
        And clicks States dropdown menu
        And selects WV from dropdown menu
        And clicks search
        Then WV results are shown


    Scenario: Organization Search Form with US selected from Country dropdown menu and WI from States dropdown menu returns WI in search results

        Given current URL is AIM Inspect site home page
        When user overs over Request tab
        And click Search Organizations
        And clicks Country Dropdown menu
        And selects US from the options
        And clicks States dropdown menu
        And selects WI from dropdown menu
        And clicks search
        Then WI results are shown


    Scenario: Organization Search Form with US selected from Country dropdown menu and WY from States dropdown menu returns WY in search results

        Given current URL is AIM Inspect site home page
        When user overs over Request tab
        And click Search Organizations
        And clicks Country Dropdown menu
        And selects US from the options
        And clicks States dropdown menu
        And selects WY from dropdown menu
        And clicks search
        Then WY results are shown


   















    
    Scenario: Organization Search Form with Canada selected from Country dropdown menu shows Canada states in States dropdown menu 

        Given current URL is AIM Inspect site home page
        When user overs over Request tab
        And click Search Organizations
        And clicks Country Dropdown menu
        And selects Canada from the options
        And clicks States dropdown menu
        Then Canada States are shown in dropdown menu







    Scenario: Organization Search Form with Canada selected from Country dropdown menu and Alberta from States dropdown menu returns Alberta in search results

        Given current URL is AIM Inspect site home page
        When user overs over Request tab
        And click Search Organizations
        And clicks Country Dropdown menu
        And selects Canada from the options
        And clicks States dropdown menu
        And selects Alberta from dropdown menu
        And clicks search
        Then Alberta results are shown


    Scenario: Organization Search Form with Canada selected from Country dropdown menu and British Columbia from States dropdown menu returns British Columbia in search results

        Given current URL is AIM Inspect site home page
        When user overs over Request tab
        And click Search Organizations
        And clicks Country Dropdown menu
        And selects Canada from the options
        And clicks States dropdown menu
        And selects British Columbia from dropdown menu
        And clicks search
        Then British Columbia results are shown


    Scenario: Organization Search Form with Canada selected from Country dropdown menu and Manitoba from States dropdown menu returns Manitoba in search results

        Given current URL is AIM Inspect site home page
        When user overs over Request tab
        And click Search Organizations
        And clicks Country Dropdown menu
        And selects Canada from the options
        And clicks States dropdown menu
        And selects Manitoba from dropdown menu
        And clicks search
        Then Manitoba results are shown


    Scenario: Organization Search Form with Canada selected from Country dropdown menu and Newfoundland from States dropdown menu returns New Newfoundland in search results

        Given current URL is AIM Inspect site home page
        When user overs over Request tab
        And click Search Organizations
        And clicks Country Dropdown menu
        And selects Canada from the options
        And clicks States dropdown menu
        And selects Newfoundland from dropdown menu
        And clicks search
        Then Newfoundland results are shown


    Scenario: Organization Search Form with Canada selected from Country dropdown menu and Nova Scotia from States dropdown menu returns Nova Scotia in search results

        Given current URL is AIM Inspect site home page
        When user overs over Request tab
        And click Search Organizations
        And clicks Country Dropdown menu
        And selects Canada from the options
        And clicks States dropdown menu
        And selects Nova Scotia from dropdown menu
        And clicks search
        Then Nova Scotia results are shown


    Scenario: Organization Search Form with Canada selected from Country dropdown menu and Ontario from States dropdown menu returns Ontario in search results

        Given current URL is AIM Inspect site home page
        When user overs over Request tab
        And click Search Organizations
        And clicks Country Dropdown menu
        And selects Canada from the options
        And clicks States dropdown menu
        And selects Ontario from dropdown menu
        And clicks search
        Then Ontario results are shown


    Scenario: Organization Search Form with Canada selected from Country dropdown menu and PE from States dropdown menu returns PE in search results

        Given current URL is AIM Inspect site home page
        When user overs over Request tab
        And click Search Organizations
        And clicks Country Dropdown menu
        And selects Canada from the options
        And clicks States dropdown menu
        And selects PE from dropdown menu
        And clicks search
        Then PE results are shown


    Scenario: Organization Search Form with Canada selected from Country dropdown menu and QC from States dropdown menu returns QC in search results

        Given current URL is AIM Inspect site home page
        When user overs over Request tab
        And click Search Organizations
        And clicks Country Dropdown menu
        And selects Canada from the options
        And clicks States dropdown menu
        And selects QC from dropdown menu
        And clicks search
        Then QC results are shown


    Scenario: Organization Search Form with Canada selected from Country dropdown menu and SK from States dropdown menu returns SK in search results

        Given current URL is AIM Inspect site home page
        When user overs over Request tab
        And click Search Organizations
        And clicks Country Dropdown menu
        And selects Canada from the options
        And clicks States dropdown menu
        And selects SK from dropdown menu
        And clicks search
        Then SK results are shown



    Scenario: Organization Search Form with Canada selected from Country dropdown menu and NT from States dropdown menu returns NT in search results

        Given current URL is AIM Inspect site home page
        When user overs over Request tab
        And click Search Organizations
        And clicks Country Dropdown menu
        And selects Canada from the options
        And clicks States dropdown menu
        And selects NT from dropdown menu
        And clicks search
        Then NT results are shown


    Scenario: Organization Search Form with Canada selected from Country dropdown menu and NU from States dropdown menu returns NU in search results

        Given current URL is AIM Inspect site home page
        When user overs over Request tab
        And click Search Organizations
        And clicks Country Dropdown menu
        And selects Canada from the options
        And clicks States dropdown menu
        And selects NU from dropdown menu
        And clicks search
        Then NU results are shown


    Scenario: Organization Search Form with Canada selected from Country dropdown menu and YT from States dropdown menu returns YT in search results

        Given current URL is AIM Inspect site home page
        When user overs over Request tab
        And click Search Organizations
        And clicks Country Dropdown menu
        And selects Canada from the options
        And clicks States dropdown menu
        And selects YT from dropdown menu
        And clicks search
        Then YT results are shown


    Scenario: Organization Search Form with Canada selected from Country dropdown menu and Alberta from States dropdown menu returns Alberta in search results

        Given current URL is AIM Inspect site home page
        When user overs over Request tab
        And click Search Organizations
        And clicks Country Dropdown menu
        And selects Canada from the options
        And clicks States dropdown menu
        And selects Alberta from dropdown menu
        And clicks search
        Then Alberta results are shown


















        


    Scenario: Advanced Search Form with VINs seperated by comma returns those in results if exists

        Given the following VINs exists
        | 2C3CDZBT0JH259828 | KM8J23A44GU231323 |
        When user clicks Request
        And clicks search Requests
        And clicks Advanced Search
        And enters the given data in the VIN field seperated by comma
        And click search
        Then the results with those VINs will be shown


    Scenario: Advanced Search Form with VINs seperated by space returns those in results if exists

        Given the following VINs exists
        | 2C3CDZBT0JH259828 | KM8J23A44GU231323 |
        When user clicks Request
        And clicks search Requests
        And clicks Advanced Search
        And enters the given data in the VIN field seperated by comma
        And click search
        Then the results with those VINs will be shown


    Scenario: Advanced Search Form with VIN returns that in results if exists

        Given the VIN 2C3CDZBT0JH259828 exists
        When user clicks Request
        And clicks search Requests
        And clicks Advanced Search
        And enters the given data in the VIN field
        And click search
        Then the result with that VIN will be shown



    Scenario: Advanced Search Form with VIN returns no result found if does not exist

        Given the VIN 345465756 does not exist
        When user clicks Request
        And clicks search Requests
        And clicks Advanced Search
        And enters the given data in the VIN field
        And click search
        Then the result will show no result found 


    Scenario: Advanced Search Form with Dealer Name returns that in results if exists

        Given the Dealer Alley exists
        When user clicks Request
        And clicks search Requests
        And clicks Advanced Search
        And enters the given data in the Dealer Name field
        And click search
        Then the result with that Dealer Name will be shown


    Scenario: Advanced Search Form with Dealer Name returns no result found if does not exist

        Given the Dealer Allesdfsdy does not exist
        When user clicks Request
        And clicks search Requests
        And clicks Advanced Search
        And enters the given data in the Dealer Name field
        And click search
        Then the result will show no result found 



    Scenario: Advanced Search Form with Contact First Name returns that in results if exists

        Given the Contact Eric exists
        When user clicks Request
        And clicks search Requests
        And clicks Advanced Search
        And enters the given data in the Contact First Name field
        And click search
        Then the result with that Contact First Name will be shown


    Scenario: Advanced Search Form with Contact First Name returns no result found if does not exist

        Given the Contact Allesdfsdy does not exist
        When user clicks Request
        And clicks search Requests
        And clicks Advanced Search
        And enters the given data in the Contact First Name field
        And click search
        Then the result will show no result found 



    Scenario: Advanced Search Form with Contact Last Name returns that in results if exists

        Given the Contact Eric exists
        When user clicks Request
        And clicks search Requests
        And clicks Advanced Search
        And enters the given data in the Contact Last Name field
        And click search
        Then the result with that Contact First Name will be shown


    Scenario: Advanced Search Form with Contact Last Name returns no result found if does not exist

        Given the Contact Allesdfsdy does not exist
        When user clicks Request
        And clicks search Requests
        And clicks Advanced Search
        And enters the given data in the Contact Last Name field
        And click search
        Then the result will show no result found 
        


    Scenario: Advanced Search Form with Phone returns that in results if exists

        Given the Phone 00880077888 exists
        When user clicks Request
        And clicks search Requests
        And clicks Advanced Search
        And enters the given data in the Phone field
        And click search
        Then the result with that Phone will be shown


    Scenario: Advanced Search Form Country Dropdown Menu is working

        When user clicks Request
        And clicks search Requests
        And clicks Advanced Search
        And clicks on Country Drop down menu 
        Then countries are shown


    # TO DO
    Scenario: Specific Country Results are shown from advanced search

        When user clicks Request
        And clicks search Requests
        And clicks Advanced Search
        And clicks on Country Dropdown menu 
        And selects United States of America - US from Dropdown menu
        And clicks search
        Then USA results will be shown  


    Scenario: State Dropdown menu inactive without selecting option from Country Dropdown menu

        When user clicks Request
        And clicks search Requests
        And clicks Advanced Search
        Then State Dropdown menu is inactive 


    Scenario: State Dropdown menu active with when selected option from Country Dropdown menu

        When user clicks Request
        And clicks search Requests
        And clicks Advanced Search
        And select an option from Country Dropdown menu
        Then State Dropdown menu is active 


    Scenario: State Dropdown menu shows states of the Country selected

        When user clicks Request
        And clicks search Requests
        And clicks Advanced Search
        And select Canada - CA from Country Dropdown menu
        Then State Dropdown menu is active 
        And shows only States of Canada



    Scenario: Specific State Results are shown from advanced search

        When user clicks Request
        And clicks search Requests
        And clicks Advanced Search
        And select Canada - CA from Country Dropdown menu
        And selects Alaska - AK from States Dropdown menu
        And click Search
        Then Search results show Alaska State results



    Scenario: Advanced Search Form Status Dropdown Menu is working

        When user clicks Request
        And clicks search Requests
        And clicks Advanced Search
        And clicks on Status Drop down menu 
        Then different status are shown  


    Scenario: Reason Dropdown menu inactive without selecting option from Status Dropdown menu

        When user clicks Request
        And clicks search Requests
        And clicks Advanced Search
        Then Reason Dropdown menu is inactive 


    Scenario: Reason Dropdown menu active with when selected option from Status Dropdown menu

        When user clicks Request
        And clicks search Requests
        And clicks Advanced Search
        And select an option from Status Dropdown menu
        Then Reason Dropdown menu is active 



    # TO DO !!!!
    Scenario: Reason Dropdown menu results

        When user clicks Request
        And clicks search Requests
        And clicks Advanced Search
        And select an option from Status Dropdown menu
        Then Reason Dropdown menu is active 



    # TO DO !!!!!!!
    Scenario: Reason Dropdown menu shows reasons of the Status selected

        When user clicks Request
        And clicks search Requests
        And clicks Advanced Search
        And select Canada - CA from Country Dropdown menu
        Then State Dropdown menu is active 
        And shows only States of Canada


    Scenario: Advanced Search Form Inspection Type Dropdown Menu is working

        When user clicks Request
        And clicks search Requests
        And clicks Advanced Search
        And clicks on Inspection Type Drop down menu 
        Then different inspection types are shown 


    Scenario: Advanced Search Form Specific Inspection Type results are shown

        When user clicks Request
        And clicks search Requests
        And clicks Advanced Search
        And clicks on Inspection Type Drop down menu 
        And selects Home from Dropdown menu
        And clicks search
        Then search results show Home Inspection Type 


    Scenario: Advanced Search Form Customer Dropdown Menu is working

        When user clicks Request
        And clicks search Requests
        And clicks Advanced Search
        And clicks on Customer Drop down menu 
        Then different Customer types are shown 


    Scenario: Advanced Search Form Specific Customer results are shown

        When user clicks Request
        And clicks search Requests
        And clicks Advanced Search
        And clicks on Customer Drop down menu 
        And selects US Bank from Dropdown menu
        And clicks search
        Then search results show US Bank Results   


    Scenario: Advanced Search Form Appointment Status Dropdown Menu is working

        When user clicks Request
        And clicks search Requests
        And clicks Advanced Search
        And clicks on Appointment Status Dropdown menu 
        Then different Appointment Status are shown 



    Scenario: Advanced Search Form Appointment Status Dropdown Menu shows specific results

        When user clicks Request
        And clicks search Requests
        And clicks Advanced Search
        And clicks on Appointment Status Dropdown menu 
        And selects Pending from Status Dropdown menu
        And clicks search
        Then only Pending results will be shown 


    Scenario: Advanced Search Form Assigned Engineer Dropdown Menu is working

        When user clicks Request
        And clicks search Requests
        And clicks Advanced Search
        And clicks on Assigned Engineer Dropdown menu 
        Then different Assigned Engineer are shown   


    Scenario: Advanced Search Form specific Assigned Engineer results are shown

        When user clicks Request
        And clicks search Requests
        And clicks Advanced Search
        And clicks on Assigned Engineer Dropdown menu 
        And selects 7-UXUI2 from menu
        And clicks search
        Then results show 7-UXUI2  


    




    

    


    









    



