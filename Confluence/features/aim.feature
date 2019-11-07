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




    Scenario: Inspection Request detail page shows all sections

        When user goes to a particular inspection requests detail page 
        Then all Inspection Request detail page sections are visible  


    Scenario: Inspection Request detail page shows all Lesse info section information

        When user goes to a particular inspection requests detail page 
        And Lesse info section is shown 
        Then Lesse info section displays all relevant information 


    Scenario: Inspection Request detail page shows all Dealer info section information

        When user goes to a particular inspection requests detail page 
        And Dealer info section is shown 
        Then Dealer info section displays all relevant information 


    Scenario: Inspection Request detail page shows all Vehicle Info section information

        When user goes to a particular inspection requests detail page 
        And Vehicle info section is shown 
        Then Vehicle info section displays all relevant information 


    Scenario: Inspection Request detail page shows all Dispositions section information

        When user goes to a particular inspection requests detail page 
        And Dispositions section is shown 
        Then Dispositions section displays all relevant information 


    Scenario: Inspection Request detail page shows all Current Appointment Detail section information

        When user goes to a particular inspection requests detail page 
        And Current Appointment Detail section is shown 
        Then Current Appointment Detail section displays all relevant information 


    Scenario: Inspection Request detail page shows all Appointments section information

        When user goes to a particular inspection requests detail page 
        And Appointments section is shown 
        Then Appointments section displays all relevant information 


    Scenario: Inspection Request detail page shows all Internal Comments section information

        When user goes to a particular inspection requests detail page 
        And Internal Comments section is shown 
        Then Internal Comments section displays all relevant information 


    Scenario: Inspection Request detail page shows all Request History section information

        When user goes to a particular inspection requests detail page 
        And Request History section is shown 
        Then Request History section displays all relevant information 




    

    
# TO DO
# https://crm-uat.aiminspect.com/#!/inspection-request/add
# CUSTOMER : MANHEIM
# REQUEST TYPE : THIRD PARTY INSPECTION 
# FORM NOT WORKING!!!!!














    

    


    









    



