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






    Scenario: Edit Lessee info form displayed

        Given current page is single inspection search result detail page 
        When find Lessee Info section
        And hover over Lessee Info edit button
        And click on Lessee Info edit button
        Then edit Lessee Info page is shown 

    Scenario: Edit Lessee info form accepted with all required fields

        Given current page is single inspection search result detail page 
        When find Dealer Info section
        And hover over Lessee Info edit button
        And click on Lessee Info edit button
        And edit Lessee Info page is shown 
        And User inputs all the required fields
        And clicks Save
        Then Lessee info is edited sucessfully


     Scenario: Edit Lessee info form not accepted without all required fields

        Given current page is single inspection search result detail page 
        When find Lessee Info section
        And hover over Lessee Info edit button
        And click on Lessee Info edit button
        And edit Lessee Info page is shown 
        And clicks Save
        Then Required Fields error message displayed


    Scenario: Edit Dealer info form displayed

        Given current page is single inspection search result detail page 
        When find Dealer Info section
        And hover over Dealer Info edit button
        And click on Dealer Info edit button
        Then edit Dealer Info page is shown 

#################
    Scenario: Edit Dealer info form accepted with all required fields

        Given current page is single inspection search result detail page 
        When find Dealer Info section
        And hover over Dealer Info edit button
        And click on Dealer Info edit button
        And edit Dealer Info page is shown 
        And User inputs all the required fields
        And clicks Save
        Then Dealer info is edited sucessfully


     Scenario: Edit Dealer info form not accepted without all required fields

        Given current page is single inspection search result detail page 
        When find Dealer Info section
        And hover over Dealer Info edit button
        And click on Dealer Info edit button
        And edit Dealer Info page is shown 
        And clicks Save
        Then Required Fields error message displayed


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



    Scenario: Add Incoming Call Busy Signal Disposition

        Given current page is single inspection search result detail page 
        When find Dispositions section
        And hover over Add Disposition button
        And click Add Disposition button
        And Add Disposition page is displayed
        And select Incoming Call from call type options
        And click disposition type dropdown menu 
        And select Busy Signal disposition type from dropdown menu
        And click Add
        Then Incoming Call Busy Signal Disposition is added in Disposition section


    Scenario: Add Incoming Call Contact made Disposition

        Given current page is single inspection search result detail page 
        When find Dispositions section
        And hover over Add Disposition button
        And click Add Disposition button
        And Add Disposition page is displayed
        And select Incoming Call from call type options
        And click disposition type dropdown menu 
        And select Contact made disposition type from dropdown menu
        And click Add
        Then Incoming Call Contact made Disposition is added in Disposition section


    Scenario: Add Incoming Call Inspector Unavailable Disposition

        Given current page is single inspection search result detail page 
        When find Dispositions section
        And hover over Add Disposition button
        And click Add Disposition button
        And Add Disposition page is displayed
        And select Incoming Call from call type options
        And click disposition type dropdown menu 
        And select Inspector Unavailable disposition type from dropdown menu
        And click Add
        Then Incoming Call Inspector Unavailable Disposition is added in Disposition section


    Scenario: Add Incoming Call Left message with someone Disposition

        Given current page is single inspection search result detail page 
        When find Dispositions section
        And hover over Add Disposition button
        And click Add Disposition button
        And Add Disposition page is displayed
        And select Incoming Call from call type options
        And click disposition type dropdown menu 
        And select Left message with someone disposition type from dropdown menu
        And click Add
        Then Incoming Call Left message with someone Disposition is added in Disposition section


    Scenario: Add Incoming Call Lessee Requests Cancel Disposition

        Given current page is single inspection search result detail page 
        When find Dispositions section
        And hover over Add Disposition button
        And click Add Disposition button
        And Add Disposition page is displayed
        And select Incoming Call from call type options
        And click disposition type dropdown menu 
        And select Lessee Requests Cancel disposition type from dropdown menu
        And click Add
        Then Incoming Call Lessee Requests Cancel Disposition is added in Disposition section


    Scenario: Add Incoming Call Lessee Uncooperative Disposition

        Given current page is single inspection search result detail page 
        When find Dispositions section
        And hover over Add Disposition button
        And click Add Disposition button
        And Add Disposition page is displayed
        And select Incoming Call from call type options
        And click disposition type dropdown menu 
        And select Lessee Uncooperative disposition type from dropdown menu
        And click Add
        Then Incoming Call Lessee Uncooperative Disposition is added in Disposition section


    Scenario: Add Incoming Call Need Contact Name Disposition

        Given current page is single inspection search result detail page 
        When find Dispositions section
        And hover over Add Disposition button
        And click Add Disposition button
        And Add Disposition page is displayed
        And select Incoming Call from call type options
        And click disposition type dropdown menu 
        And select Need Contact Name disposition type from dropdown menu
        And click Add
        Then Incoming Call Need Contact Name Disposition is added in Disposition section

    Scenario: Add Incoming Call No Answer Disposition

        Given current page is single inspection search result detail page 
        When find Dispositions section
        And hover over Add Disposition button
        And click Add Disposition button
        And Add Disposition page is displayed
        And select Incoming Call from call type options
        And click disposition type dropdown menu 
        And select No Answer disposition type from dropdown menu
        And click Add
        Then Incoming Call No Answer Disposition is added in Disposition section

    Scenario: Add Incoming Call Purchase Disposition

        Given current page is single inspection search result detail page 
        When find Dispositions section
        And hover over Add Disposition button
        And click Add Disposition button
        And Add Disposition page is displayed
        And select Incoming Call from call type options
        And click disposition type dropdown menu 
        And select Purchase disposition type from dropdown menu
        And click Add
        Then Incoming Call Purchase Disposition is added in Disposition section

    Scenario: Add Incoming Call Scheduled Disposition

        Given current page is single inspection search result detail page 
        When find Dispositions section
        And hover over Add Disposition button
        And click Add Disposition button
        And Add Disposition page is displayed
        And select Incoming Call from call type options
        And click disposition type dropdown menu 
        And select Scheduled disposition type from dropdown menu
        And click Add
        Then Incoming Call Scheduled Disposition is added in Disposition section

    Scenario: Add Incoming Call Voice Mail Disposition

        Given current page is single inspection search result detail page 
        When find Dispositions section
        And hover over Add Disposition button
        And click Add Disposition button
        And Add Disposition page is displayed
        And select Incoming Call from call type options
        And click disposition type dropdown menu 
        And select Voice Mail disposition type from dropdown menu
        And click Add
        Then Incoming Call Voice Mail Disposition is added in Disposition section


    


    Scenario: Add Outgoing Call Busy Signal Disposition

        Given current page is single inspection search result detail page 
        When find Dispositions section
        And hover over Add Disposition button
        And click Add Disposition button
        And Add Disposition page is displayed
        And select Outgoing Call from call type options
        And click disposition type dropdown menu 
        And select Busy Signal disposition type from dropdown menu
        And click Add
        Then Outgoing Call Busy Signal Disposition is added in Disposition section


    Scenario: Add Outgoing Call Contact made Disposition

        Given current page is single inspection search result detail page 
        When find Dispositions section
        And hover over Add Disposition button
        And click Add Disposition button
        And Add Disposition page is displayed
        And select Outgoing Call from call type options
        And click disposition type dropdown menu 
        And select Contact made disposition type from dropdown menu
        And click Add
        Then Outgoing Call Contact made Disposition is added in Disposition section


    Scenario: Add Outgoing Call Inspector Unavailable Disposition

        Given current page is single inspection search result detail page 
        When find Dispositions section
        And hover over Add Disposition button
        And click Add Disposition button
        And Add Disposition page is displayed
        And select Outgoing Call from call type options
        And click disposition type dropdown menu 
        And select Inspector Unavailable disposition type from dropdown menu
        And click Add
        Then Outgoing Call Inspector Unavailable Disposition is added in Disposition section


    Scenario: Add Outgoing Call Left message with someone Disposition

        Given current page is single inspection search result detail page 
        When find Dispositions section
        And hover over Add Disposition button
        And click Add Disposition button
        And Add Disposition page is displayed
        And select Outgoing Call from call type options
        And click disposition type dropdown menu 
        And select Left message with someone disposition type from dropdown menu
        And click Add
        Then Outgoing Call Left message with someone Disposition is added in Disposition section


    Scenario: Add Outgoing Call Lessee Requests Cancel Disposition

        Given current page is single inspection search result detail page 
        When find Dispositions section
        And hover over Add Disposition button
        And click Add Disposition button
        And Add Disposition page is displayed
        And select Outgoing Call from call type options
        And click disposition type dropdown menu 
        And select Lessee Requests Cancel disposition type from dropdown menu
        And click Add
        Then Outgoing Call Lessee Requests Cancel Disposition is added in Disposition section


    Scenario: Add Outgoing Call Lessee Uncooperative Disposition

        Given current page is single inspection search result detail page 
        When find Dispositions section
        And hover over Add Disposition button
        And click Add Disposition button
        And Add Disposition page is displayed
        And select Outgoing Call from call type options
        And click disposition type dropdown menu 
        And select Lessee Uncooperative disposition type from dropdown menu
        And click Add
        Then Outgoing Call Lessee Uncooperative Disposition is added in Disposition section


    Scenario: Add Outgoing Call Need Contact Name Disposition

        Given current page is single inspection search result detail page 
        When find Dispositions section
        And hover over Add Disposition button
        And click Add Disposition button
        And Add Disposition page is displayed
        And select Outgoing Call from call type options
        And click disposition type dropdown menu 
        And select Need Contact Name disposition type from dropdown menu
        And click Add
        Then Outgoing Call Need Contact Name Disposition is added in Disposition section

    Scenario: Add Outgoing Call No Answer Disposition

        Given current page is single inspection search result detail page 
        When find Dispositions section
        And hover over Add Disposition button
        And click Add Disposition button
        And Add Disposition page is displayed
        And select Outgoing Call from call type options
        And click disposition type dropdown menu 
        And select No Answer disposition type from dropdown menu
        And click Add
        Then Outgoing Call No Answer Disposition is added in Disposition section

    Scenario: Add Outgoing Call Purchase Disposition

        Given current page is single inspection search result detail page 
        When find Dispositions section
        And hover over Add Disposition button
        And click Add Disposition button
        And Add Disposition page is displayed
        And select Outgoing Call from call type options
        And click disposition type dropdown menu 
        And select Purchase disposition type from dropdown menu
        And click Add
        Then Outgoing Call Purchase Disposition is added in Disposition section

    Scenario: Add Outgoing Call Scheduled Disposition

        Given current page is single inspection search result detail page 
        When find Dispositions section
        And hover over Add Disposition button
        And click Add Disposition button
        And Add Disposition page is displayed
        And select Outgoing Call from call type options
        And click disposition type dropdown menu 
        And select Scheduled disposition type from dropdown menu
        And click Add
        Then Outgoing Call Scheduled Disposition is added in Disposition section

    Scenario: Add Outgoing Call Voice Mail Disposition

        Given current page is single inspection search result detail page 
        When find Dispositions section
        And hover over Add Disposition button
        And click Add Disposition button
        And Add Disposition page is displayed
        And select Outgoing Call from call type options
        And click disposition type dropdown menu 
        And select Voice Mail disposition type from dropdown menu
        And click Add
        Then Outgoing Call Voice Mail Disposition is added in Disposition section

    


    









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


    Scenario: Internal Comment shows all relavent information 

        Given current page is inspection request detail page
        And current Inspection Request detail page has internal comment 
        When User finds Internal Comments section
        Then Internal Comments section includes internal comment(s) with all proper data  


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


    Scenario: Inspection Request detail page edit Vehicle Info form appears

        When user goes to a particular inspection requests detail page 
        And Vehicle info section is shown 
        And user clicks edit vehicle info button
        Then edit Vehicle info form displayed  


    Scenario: Inspection Request detail page edit Vehicle Info successful with proper VIN

        When user goes to a particular inspection requests detail page 
        And Vehicle info section is shown 
        And user clicks edit vehicle info button
        And edit Vehicle info form displayed  
        And enters proper VIN
        And clicks Save 
        Then Vehicle Info section updated with new VIN information


    Scenario: Inspection Request detail page edit Vehicle Info successful with incorrect VIN

        When user goes to a particular inspection requests detail page 
        And Vehicle info section is shown 
        And user clicks edit vehicle info button
        And edit Vehicle info form displayed  
        And enters incorrect VIN
        And clicks Save 
        Then Incorrect VIN error message is displayed 


    Scenario: Inspection Request detail page edit Vehicle Info successful with proper VIN and Stock #

        When user goes to a particular inspection requests detail page 
        And Vehicle info section is shown 
        And user clicks edit vehicle info button
        And edit Vehicle info form displayed  
        And enters proper VIN
        And enters Stock #
        And clicks Save 
        Then Vehicle Info section updated with new VIN and Stock # information


    Scenario: Inspection Request detail page edit Vehicle Info successful with proper VIN and Stock # and Year

        When user goes to a particular inspection requests detail page 
        And Vehicle info section is shown 
        And user clicks edit vehicle info button
        And edit Vehicle info form displayed  
        And enters proper VIN
        And enters Stock #
        And enters Year
        And clicks Save 
        Then Vehicle Info section updated with new VIN and Stock # and Year information


    Scenario: Inspection Request detail page edit Vehicle Info successful with proper VIN and Stock # and Year and Make

        When user goes to a particular inspection requests detail page 
        And Vehicle info section is shown 
        And user clicks edit vehicle info button
        And edit Vehicle info form displayed  
        And enters proper VIN
        And enters Stock #
        And enters Year
        And enters Make
        And clicks Save 
        Then Vehicle Info section updated with new VIN and Stock # and Year and Make information


    Scenario: Inspection Request detail page edit Vehicle Info successful with proper VIN and Stock # and Year and Make and Model

        When user goes to a particular inspection requests detail page 
        And Vehicle info section is shown 
        And user clicks edit vehicle info button
        And edit Vehicle info form displayed  
        And enters proper VIN
        And enters Stock #
        And enters Year
        And enters Make
        And enters Model
        And clicks Save 
        Then Vehicle Info section updated with new VIN and Stock # and Year and Make and Model information 


    Scenario: Inspection Request detail page edit Vehicle Info successful with proper VIN and Stock # and Year and Make and Model and Trim

        When user goes to a particular inspection requests detail page 
        And Vehicle info section is shown 
        And user clicks edit vehicle info button
        And edit Vehicle info form displayed  
        And enters proper VIN
        And enters Stock #
        And enters Year
        And enters Make
        And enters Model
        And enters Trim
        And clicks Save 
        Then Vehicle Info section updated with new VIN and Stock # and Year and Make and Model and Trim information 


    Scenario: Inspection Request detail page edit Vehicle Info successful with proper VIN and Stock # and Year and Make and Model and Trim and Color Gray

        When user goes to a particular inspection requests detail page 
        And Vehicle info section is shown 
        And user clicks edit vehicle info button
        And edit Vehicle info form displayed  
        And enters proper VIN
        And enters Stock #
        And enters Year
        And enters Make
        And enters Model
        And enters Trim
        And clicks color dropdown menu
        And selects color Gray
        And clicks Save 
        Then Vehicle Info section updated with new VIN and Stock # and Year and Make and Model and Trim and color Gray information 


    Scenario: Inspection Request detail page edit Vehicle Info successful with proper VIN and Stock # and Year and Make and Model and Trim and Color Black

        When user goes to a particular inspection requests detail page 
        And Vehicle info section is shown 
        And user clicks edit vehicle info button
        And edit Vehicle info form displayed  
        And enters proper VIN
        And enters Stock #
        And enters Year
        And enters Make
        And enters Model
        And enters Trim
        And clicks color dropdown menu
        And selects color Black
        And clicks Save 
        Then Vehicle Info section updated with new VIN and Stock # and Year and Make and Model and Trim and color Black information 


    Scenario: Inspection Request detail page edit Vehicle Info successful with proper VIN and Stock # and Year and Make and Model and Trim and Color Blue

        When user goes to a particular inspection requests detail page 
        And Vehicle info section is shown 
        And user clicks edit vehicle info button
        And edit Vehicle info form displayed  
        And enters proper VIN
        And enters Stock #
        And enters Year
        And enters Make
        And enters Model
        And enters Trim
        And clicks color dropdown menu
        And selects color Blue
        And clicks Save 
        Then Vehicle Info section updated with new VIN and Stock # and Year and Make and Model and Trim and color Blue information 


    Scenario: Inspection Request detail page edit Vehicle Info successful with proper VIN and Stock # and Year and Make and Model and Trim and Color Brown

        When user goes to a particular inspection requests detail page 
        And Vehicle info section is shown 
        And user clicks edit vehicle info button
        And edit Vehicle info form displayed  
        And enters proper VIN
        And enters Stock #
        And enters Year
        And enters Make
        And enters Model
        And enters Trim
        And clicks color dropdown menu
        And selects color Brown
        And clicks Save 
        Then Vehicle Info section updated with new VIN and Stock # and Year and Make and Model and Trim and color Brown information 


    Scenario: Inspection Request detail page edit Vehicle Info successful with proper VIN and Stock # and Year and Make and Model and Trim and Color Gold

        When user goes to a particular inspection requests detail page 
        And Vehicle info section is shown 
        And user clicks edit vehicle info button
        And edit Vehicle info form displayed  
        And enters proper VIN
        And enters Stock #
        And enters Year
        And enters Make
        And enters Model
        And enters Trim
        And clicks color dropdown menu
        And selects color Gold
        And clicks Save 
        Then Vehicle Info section updated with new VIN and Stock # and Year and Make and Model and Trim and color Gold information 


    Scenario: Inspection Request detail page edit Vehicle Info successful with proper VIN and Stock # and Year and Make and Model and Trim and Color Green

        When user goes to a particular inspection requests detail page 
        And Vehicle info section is shown 
        And user clicks edit vehicle info button
        And edit Vehicle info form displayed  
        And enters proper VIN
        And enters Stock #
        And enters Year
        And enters Make
        And enters Model
        And enters Trim
        And clicks color dropdown menu
        And selects color Green
        And clicks Save 
        Then Vehicle Info section updated with new VIN and Stock # and Year and Make and Model and Trim and color Green information 


    Scenario: Inspection Request detail page edit Vehicle Info successful with proper VIN and Stock # and Year and Make and Model and Trim and Color Orange

        When user goes to a particular inspection requests detail page 
        And Vehicle info section is shown 
        And user clicks edit vehicle info button
        And edit Vehicle info form displayed  
        And enters proper VIN
        And enters Stock #
        And enters Year
        And enters Make
        And enters Model
        And enters Trim
        And clicks color dropdown menu
        And selects color Orange
        And clicks Save 
        Then Vehicle Info section updated with new VIN and Stock # and Year and Make and Model and Trim and color Orange information 


    Scenario: Inspection Request detail page edit Vehicle Info successful with proper VIN and Stock # and Year and Make and Model and Trim and Color Red

        When user goes to a particular inspection requests detail page 
        And Vehicle info section is shown 
        And user clicks edit vehicle info button
        And edit Vehicle info form displayed  
        And enters proper VIN
        And enters Stock #
        And enters Year
        And enters Make
        And enters Model
        And enters Trim
        And clicks color dropdown menu
        And selects color Red
        And clicks Save 
        Then Vehicle Info section updated with new VIN and Stock # and Year and Make and Model and Trim and color Red information 


    Scenario: Inspection Request detail page edit Vehicle Info successful with proper VIN and Stock # and Year and Make and Model and Trim and Color Silver

        When user goes to a particular inspection requests detail page 
        And Vehicle info section is shown 
        And user clicks edit vehicle info button
        And edit Vehicle info form displayed  
        And enters proper VIN
        And enters Stock #
        And enters Year
        And enters Make
        And enters Model
        And enters Trim
        And clicks color dropdown menu
        And selects color Silver
        And clicks Save 
        Then Vehicle Info section updated with new VIN and Stock # and Year and Make and Model and Trim and color Silver information 


    Scenario: Inspection Request detail page edit Vehicle Info successful with proper VIN and Stock # and Year and Make and Model and Trim and Color White

        When user goes to a particular inspection requests detail page 
        And Vehicle info section is shown 
        And user clicks edit vehicle info button
        And edit Vehicle info form displayed  
        And enters proper VIN
        And enters Stock #
        And enters Year
        And enters Make
        And enters Model
        And enters Trim
        And clicks color dropdown menu
        And selects color White
        And clicks Save 
        Then Vehicle Info section updated with new VIN and Stock # and Year and Make and Model and Trim and color White information 


    Scenario: Inspection Request detail page edit Vehicle Info successful with proper VIN and Stock # and Year and Make and Model and Trim and Color Yellow

        When user goes to a particular inspection requests detail page 
        And Vehicle info section is shown 
        And user clicks edit vehicle info button
        And edit Vehicle info form displayed  
        And enters proper VIN
        And enters Stock #
        And enters Year
        And enters Make
        And enters Model
        And enters Trim
        And clicks color dropdown menu
        And selects color Yellow
        And clicks Save 
        Then Vehicle Info section updated with new VIN and Stock # and Year and Make and Model and Trim and color Yellow information 


    Scenario: Inspection Request detail page edit Vehicle Info successful with proper VIN and Stock # and Year and Make and Model and Trim and Color Tan

        When user goes to a particular inspection requests detail page 
        And Vehicle info section is shown 
        And user clicks edit vehicle info button
        And edit Vehicle info form displayed  
        And enters proper VIN
        And enters Stock #
        And enters Year
        And enters Make
        And enters Model
        And enters Trim
        And clicks color dropdown menu
        And selects color Tan
        And clicks Save 
        Then Vehicle Info section updated with new VIN and Stock # and Year and Make and Model and Trim and color Tan information 


    Scenario: Inspection Request detail page edit Vehicle Info successful with proper VIN and Stock # and Year and Make and Model and Trim and Color Violet

        When user goes to a particular inspection requests detail page 
        And Vehicle info section is shown 
        And user clicks edit vehicle info button
        And edit Vehicle info form displayed  
        And enters proper VIN
        And enters Stock #
        And enters Year
        And enters Make
        And enters Model
        And enters Trim
        And clicks color dropdown menu
        And selects color Violet
        And clicks Save 
        Then Vehicle Info section updated with new VIN and Stock # and Year and Make and Model and Trim and color Violet information 


    Scenario: Inspection Request detail page edit Vehicle Info successful with proper VIN and Stock # and Year and Make and Model and Trim and Color Pink

        When user goes to a particular inspection requests detail page 
        And Vehicle info section is shown 
        And user clicks edit vehicle info button
        And edit Vehicle info form displayed  
        And enters proper VIN
        And enters Stock #
        And enters Year
        And enters Make
        And enters Model
        And enters Trim
        And clicks color dropdown menu
        And selects color Pink
        And clicks Save 
        Then Vehicle Info section updated with new VIN and Stock # and Year and Make and Model and Trim and color Pink information 


    Scenario: Inspection Request detail page edit Vehicle Info successful with proper VIN and Stock # and Year and Make and Model and Trim and Color Grey

        When user goes to a particular inspection requests detail page 
        And Vehicle info section is shown 
        And user clicks edit vehicle info button
        And edit Vehicle info form displayed  
        And enters proper VIN
        And enters Stock #
        And enters Year
        And enters Make
        And enters Model
        And enters Trim
        And clicks color dropdown menu
        And selects color Grey
        And clicks Save 
        Then Vehicle Info section updated with new VIN and Stock # and Year and Make and Model and Trim and color Grey information 


    Scenario: Inspection Request detail page edit Vehicle Info successful with proper VIN and Stock # and Year and Make and Model and Trim and Color Other

        When user goes to a particular inspection requests detail page 
        And Vehicle info section is shown 
        And user clicks edit vehicle info button
        And edit Vehicle info form displayed  
        And enters proper VIN
        And enters Stock #
        And enters Year
        And enters Make
        And enters Model
        And enters Trim
        And clicks color dropdown menu
        And selects color Other
        And clicks Save 
        Then Vehicle Info section updated with new VIN and Stock # and Year and Make and Model and Trim and color Other information 







    Scenario: Inspection Request detail page shows all Dispositions section information

        When user goes to a particular inspection requests detail page 
        And Dispositions section is shown 
        Then Dispositions section displays all relevant information 


    Scenario: Inspection Request detail page shows Dispositions empty message if does not exist

        Given internal comment does not exist
        When user goes to a particular inspection requests detail page 
        And Dispositions section is shown 
        Then Dispositions section displays does not exist text  


    Scenario: Inspection Request detail page shows all Current Appointment Detail section information

        When user goes to a particular inspection requests detail page 
        And Current Appointment Detail section is shown 
        Then Current Appointment Detail section displays all relevant information 


    Scenario: Appointment Audits displayed when clicks Appointment from Appointments section of Inspection Request detail page

        Given Appointment exists in Appointment Detail page 
        When user goes to a particular inspection requests detail page 
        And Appointments section is shown 
        And user clicks Appointment from Appointments
        Then Appointment Audit list is displayed 





# To do

    Scenario: Appointment Audits detail displayed when clicks Appointment from Appointmen Audits 

        Given Appointment exists in Appointment Detail page 
        When user goes to a particular inspection requests detail page 
        And Appointments section is shown 
        And user clicks Appointment from Appointments
        Then Appointment Audit list is displayed 



    Scenario: Appointment Audits window closed when clicks CLOSE

        Given Appointment exists in Appointment Detail page 
        When user goes to a particular inspection requests detail page 
        And Appointments section is shown 
        And user clicks Appointment from Appointments
        And Appointment Audit list is displayed 
        And when user clicks close button 
        Then Appointment Audit list window is closed and Appointment Detail page is shown 


    Scenario: Appointment Audits window closed when clicks cross button

        Given Appointment exists in Appointment Detail page 
        When user goes to a particular inspection requests detail page 
        And Appointments section is shown 
        And user clicks Appointment from Appointments
        And Appointment Audit list is displayed 
        And when user clicks cross button 
        Then Appointment Audit list window is closed and Appointment Detail page is shown 



    Scenario: Inspection Request detail page shows all Appointments section information

        When user goes to a particular inspection requests detail page 
        And Appointments section is shown 
        Then Appointments section displays all relevant information 




    Scenario: Inspection Request detail page shows all Internal Comments section information

        When user goes to a particular inspection requests detail page 
        And Internal Comments section is shown 
        Then Internal Comments section displays all relevant information 


    Scenario: Inspection Request detail page shows Internal Comments empty message if does not exist

        Given internal comment does not exist
        When user goes to a particular inspection requests detail page 
        And Internal Comments section is shown 
        Then Internal Comments section displays does not exist text  


    Scenario: Inspection Request detail page shows all Request History section information

        Given Request History exists
        When user goes to a particular inspection requests detail page 
        And Request History section is shown 
        Then Request History section displays all relevant information 


    Scenario: Inspection Request detail page shows all Request History section information

        Given Request History exists
        When user goes to a particular inspection requests detail page 
        And Request History section is shown 
        And user clicks a particular request history row
        Then particular Request History row's all relevant information are shown




    
    Scenario: Add inspector Comment to Current Appointment Detail

        Given Inspection Comment does not exist
        And current page is Inspection Request Detail page 
        When user clicks Comment for inspector
        And Edit Inspector Comment window shown
        And user enters comment
        And clicks save 
        And Add Disposition window shown 
        And User closes Add Disposition window
        Then comment added in Current Appointmnet Detail section  


    Scenario: Edit inspector Comment on Current Appointment Detail

        Given Inspection Comment does exist
        And current page is Inspection Request Detail page 
        When user clicks on Edit inspector Comment
        And Edit Inspector Comment window shown
        And user enters comment
        And clicks save 
        And Add Disposition window shown 
        And User closes Add Disposition window
        Then comment updated in Current Appointmnet Detail section  





    Scenario: Inspection Request Update Status form displayed

        Given current page is inspection request detail page 
        And status is Pending 
        When click Pending status 
        Then Update status form is shown


    Scenario: Inspection Request Detail Status updated to Hold with Reason Awaiting Quality

        Given current page is inspection request detail page 
        And status is Pending 
        When click Pending status 
        And Update status form is shown
        And click Hold status 
        And click Reason Dropdown menu
        And select Awaiting Quality 
        And click save 
        Then Inspection Request Detail page updated with status from Pending to Hold with Reason Awaiting Quality

    Scenario: Inspection Request Detail Status updated to Hold with Reason Awaiting Dispatch

        Given current page is inspection request detail page 
        And status is Pending 
        When click Pending status 
        And Update status form is shown
        And click Hold status 
        And click Reason Dropdown menu
        And select Awaiting Dispatch 
        And click save 
        Then Inspection Request Detail page updated with status from Pending to Hold with Reason Awaiting Dispatch

    Scenario: Inspection Request Detail Status updated to Hold with Reason Awaiting CSR Action

        Given current page is inspection request detail page 
        And status is Pending 
        When click Pending status 
        And Update status form is shown
        And click Hold status 
        And click Reason Dropdown menu
        And select Awaiting CSR Action 
        And click save 
        Then Inspection Request Detail page updated with status from Pending to Hold with Reason Awaiting CSR Action

    Scenario: Inspection Request Detail Status updated to Hold with Reason Awaiting Helpdesk

        Given current page is inspection request detail page 
        And status is Pending 
        When click Pending status 
        And Update status form is shown
        And click Hold status 
        And click Reason Dropdown menu
        And select Awaiting Helpdesk 
        And click save 
        Then Inspection Request Detail page updated with status from Pending to Hold with Reason Awaiting Helpdesk

    Scenario: Inspection Request Detail Status updated to Hold with Reason Awaiting Financial info

        Given current page is inspection request detail page 
        And status is Pending 
        When click Pending status 
        And Update status form is shown
        And click Hold status 
        And click Reason Dropdown menu
        And select Awaiting Financial info 
        And click save 
        Then Inspection Request Detail page updated with status from Pending to Hold with Reason Awaiting Financial info

    Scenario: Inspection Request Detail Status updated to Hold with Reason Awaiting Client

        Given current page is inspection request detail page 
        And status is Pending 
        When click Pending status 
        And Update status form is shown
        And click Hold status 
        And click Reason Dropdown menu
        And select Awaiting Client 
        And click save 
        Then Inspection Request Detail page updated with status from Pending to Hold with Reason Awaiting Client

    Scenario: Inspection Request Detail Status updated to Hold with Reason Awaiting Date

        Given current page is inspection request detail page 
        And status is Pending 
        When click Pending status 
        And Update status form is shown
        And click Hold status 
        And click Reason Dropdown menu
        And select Awaiting Date 
        And click save 
        Then Inspection Request Detail page updated with status from Pending to Hold with Reason Awaiting Date




    Scenario: Inspection Request Detail Status updated to Cancel with Reason Per Aim Request

        Given current page is inspection request detail page 
        And status is Pending 
        When click Pending status 
        And Update status form is shown
        And click Cancel status 
        And click Reason Dropdown menu
        And select Per Aim Request
        And enter a comment for internal use
        And click save 
        Then Inspection Request Detail page updated with status from Pending to Cancel with Reason Per Aim Request


    Scenario: Inspection Request Detail Status updated to Cancel with Reason Per Customer Request

        Given current page is inspection request detail page 
        And status is Pending 
        When click Pending status 
        And Update status form is shown
        And click Cancel status 
        And click Reason Dropdown menu
        And select Per Customer Request 
        And enter a comment for internal use
        And click save 
        Then Inspection Request Detail page updated with status from Pending to Cancel with Reason Per Customer Request
    


    Scenario: Organization detail page is shown

        Given organization exists
        When user clicks Request tab 
        And clicks search organization 
        And organization search page is shown
        And clicks search button 
        And organization search results are shown 
        And clicks on a result
        Then organization detail page is shown  


        
# TO DO
# https://crm-uat.aiminspect.com/#!/inspection-request/add
# CUSTOMER : MANHEIM
# REQUEST TYPE : THIRD PARTY INSPECTION 
# FORM NOT WORKING!!!!!














    

    


    









    



