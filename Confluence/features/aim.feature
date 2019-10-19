

    Scenario: Launch AIM Inspect site
    
        Given Browser is opened
        And logged in to AIM Inspect site
        When navigated to AIM Inspect site   // https://crm-qa.aiminspect.com/
        Then AIM Inspect site is displayed


    Scenario: Both incorrect credentials do not allow login

        Given Browser is opened
        When navigated to AIM Inspect site   // https://crm-qa.aiminspect.com/
        And enter incorrect Username and Password
        And click Log In
        Then Invalid Login message is displayed


     Scenario: Incorrect Username do not allow login

        Given Browser is opened
        When navigated to AIM Inspect site   // https://crm-qa.aiminspect.com/
        And enter incorrect Username and Password
        And click Log In
        Then Invalid Username message is displayed  


    Scenario: Incorrect Password do not allow login

        Given Browser is opened
        When navigated to AIM Inspect site   // https://crm-qa.aiminspect.com/
        And enter incorrect Username and Password
        And click Log In
        Then Incorrect Password message is displayed  


    Scenario: Correct credentials allow succesful login

        Given Browser is opened
        When navigated to AIM Inspect site   // https://crm-qa.aiminspect.com/
        And enter correct Username and Password
        And click Log In
        Then AIM Inspection page is displayed


    Scenario: Logout of AIM Inspect site

        Given Browser is opened
        And current url is AIM Inspect site   // https://crm-qa.aiminspect.com/
        And user is logged in
        When click on Log Out button
        Then user is logged out

    

    Scenario: Go to Dashboard

        Given Browser is opened
        And logged in to AIM Inspect site
        And current page is AIM Inspect site
        When click on Dashboard 
        Then Dashboard data is displayed


    Scenario: Overdue inspection is shown

        Given Browser is opened
        And logged in to AIM Inspect site
        And current page is AIM Inspect site
        When click on Dashboard 
        And click on Overdue Inspection 
        Then Overdue Inspection are displayed


    Scenario: Due today is shown

        Given Browser is opened
        And logged in to AIM Inspect site
        And current page is AIM Inspect site
        When click on Dashboard 
        And click on Due today 
        Then Due today are displayed


    Scenario: Awaiting CSR is shown

        Given Browser is opened
        And logged in to AIM Inspect site
        And current page is AIM Inspect site
        When click on Dashboard 
        And click on Awaiting CSR 
        Then Awaiting CSR are displayed


    Scenario: Awaiting Dispatch is shown

        Given Browser is opened
        And logged in to AIM Inspect site
        And current page is AIM Inspect site
        When click on Dashboard 
        And click on Awaiting Dispatch 
        Then Awaiting Dispatch are displayed


    Scenario: Awaiting Quality is shown

        Given Browser is opened
        And logged in to AIM Inspect site
        And current page is AIM Inspect site
        When click on Dashboard 
        And click on Awaiting Quality 
        Then Awaiting Quality are displayed


    Scenario: Open Requests is shown

        Given Browser is opened
        And logged in to AIM Inspect site
        And current page is AIM Inspect site
        When click on Dashboard 
        And click on Open Requests 
        Then Open Requests are displayed


    Scenario: Result Detail is shown

        Given Browser is opened
        And logged in to AIM Inspect site
        And current page is AIM Inspect site
        When click on Dashboard 
        And click on Open Requests 
        And select result from the results displayed
        Then selected result details are shown


    Scenario: No Results found if does not exist

        Given Browser is opened
        And logged in to AIM Inspect site
        And current page is AIM Inspect site
        When click on Request 
        And input text in search bar which does not exist # sdfsdf32423
        And click search
        Then 'No Results Found.' message is displayed


    Scenario: Results displayed if does exist

        Given Browser is opened
        And logged in to AIM Inspect site
        And current page is AIM Inspect site
        When click on Request 
        And input text in search bar which does exist # asa
        And click search
        Then search results are displayed


    Scenario: Edit Lessee info

        Given Browser is opened
        And current page is single inspection search result detail page 
        When find Lessee Info section
        And hover over Lessee Info edit button
        And click on Lessee Info edit button
        Then edit Lessee Info page is shown 


    Scenario: Edit Dealer info

        Given Browser is opened
        And current page is single inspection search result detail page 
        When find Dealer Info section
        And hover over Dealer Info edit button
        And click on Dealer Info edit button
        Then edit Dealer Info page is shown 


    Scenario: Add Disposition

        Given Browser is opened
        And current page is single inspection search result detail page 
        When find Dispositions section
        And hover over Add Disposition button
        And click Add Disposition button
        And Add Disposition page is displayed
        And select call type from options
        And select disposition type from dropdown menu
        And click Add
        Then Disposition is added in Disposition section


    Scenario: Schedule Appointment

        Given Browser is opened
        And current page is single inspection search result detail page 
        When find Current Appointment Detail section
        And click the options button
        And select Schedule from options
        And Schedule Appointment form is displayed
        And fill up the Schedule Appointment form
        And click Save
        Then appointment can be seen scheduled in the Current Appointments section


    Scenario: Add Internal Comment

        Given Browser is opened
        And current page is single inspection search result detail page 
        When find Internal Comments section
        And click the Add Comment button
        And Add Internal Comment page is shown
        And input comment in field
        And click Add
        Then comment can be seen in Internal Comments section


    Scenario: Navigate to Add Organization Page

        Given Browser is opened
        And logged in to AIM Inspect site
        And current page is AIM Inspect site 
        When hover over Request tab
        And click the Add organization
        Then Add Organization page is shown


    Scenario: Add Organization 

        Given Browser is opened
        And logged in to AIM Inspect site
        And current page is AIM Inspect site 
        When hover over Request tab
        And click the Add organization
        And Add Organization page is shown
        And fill up Add Organization form
        And click Submit
        Then AIM Inspect home page is displayed


    Scenario: See Organization Exists

        Given Browser is opened
        And logged in to AIM Inspect site
        And current page is AIM Inspect site 
        When click Basic Search box
        And input Organization name
        And click Search
        And click Submit
        Then Organization is displayed in search results
        

    Scenario: If User logs in and there is already an inspection Completed

        Given Browser is opened
        And current page is AIM Inspect site
        And user has a Completed Inspection
        When log in to AIM Inspect site
        Then can see Completed Report PDF


    Scenario: Dropdown Request menu is shown

        Given Browser is opened
        And logged in to AIM Inspect site
        And current page is AIM Inspect site 
        When hover cursor over Request tab
        Then dropdown Request menu is shown 


    Scenario: Inspection Request page is shown

        Given Browser is opened
        And logged in to AIM Inspect site
        And current page is AIM Inspect site 
        When hover cursor over Request tab
        And dropdown Request menu is shown 
        And clicks on Add request
        Then inspection request page is shown 


    Scenario: Inspection Request page is shown

        Given Browser is opened
        And logged in to AIM Inspect site
        And current page is Inspection Request page 
        When click customer type 
        Then dropdown  menu is shown 


    Scenario: Customer dropdown menu is shown

        Given Browser is opened
        And logged in to AIM Inspect site
        And current page is Inspection Request page 
        When click customer type 
        Then customer dropdown menu is shown 


    Scenario: Request Type dropdown menu is shown

        Given Browser is opened
        And logged in to AIM Inspect site
        And current page is Inspection Request page 
        When click Request Type 
        Then Request Type dropdown menu is shown 
       









    Scenario: If Inspection already requested then redirected to Inspection Request Detail page

        Given Browser is opened
        And logged in to AIM Inspect site
        And current page is Inspection Request page
        And account number exists
        And  account has inspection requsted already
        When click customer type 
        And select TFS from customer dropdown menu
        And select Dealer from Request Type dropdown menu
        And enter account number
        And click find
        Then redirected to Inspection Requested Detail page for that account


    Scenario: If Inspection not already requested then form is rendered

        Given Browser is opened
        And logged in to AIM Inspect site
        And current page is Inspection Request page
        When click customer type 
        And select TFS from customer dropdown menu
        And select Dealer from Request Type dropdown menu
        And enter account number
        And click find
        Then Inspection Request form is rendered 


    
    Scenario: Inspection Request form submitted successfully 

        Given Browser is opened
        And logged in to AIM Inspect site
        And current page is Inspection Request page
        When click customer type 
        And select TFS from customer dropdown menu
        And select Dealer from Request Type dropdown menu
        And enter account number
        And click find
        And Dealer Request form is rendered 
        And fill up all the form fields with 
        required data 
        And click submit 
        And schedule appointment window is shown       # check
        And fill up schedule appointment form
        And click submit
        Then newly created inspection request detail page is shown


    Scenario: Inspection Request form submitted successfully with only mandatory fields 

        Given Browser is opened
        And logged in to AIM Inspect site
        And current page is Inspection Request page
        When click customer type 
        And select TFS from customer dropdown menu
        And select Dealer from Request Type dropdown menu
        And enter account number
        And click find
        And Dealer Request form is rendered 
        And fill up all the mandatory form fields with 
        required data 
        And click submit 
        And schedule appointment window is shown       # check
        And fill up mandatory fields in schedule appointment form
        And click submit
        Then newly created inspection request detail page is shown


    Scenario: Inspection Request form not submitted without mandatory fields 

        Given Browser is opened
        And logged in to AIM Inspect site
        And current page is Inspection Request page
        When click customer type 
        And select TFS from customer dropdown menu
        And select Dealer from Request Type dropdown menu
        And enter account number
        And click find
        And Dealer Request form is rendered 
        And leave mandatory fields empty 
        And click submit 
        Then form is not accepted and error message is shown


    Scenario: Schedule Appointment form not submitted without mandatory fields 

        Given Browser is opened
        And logged in to AIM Inspect site
        And current page is Inspection Request page
        When click customer type 
        And select TFS from customer dropdown menu
        And select Dealer from Request Type dropdown menu
        And enter account number
        And click find
        And Dealer Request form is rendered 
        And fill up all the mandatory form fields with 
        required data 
        And click submit 
        And schedule appointment window is shown       # check
        And leave mandatory fields empty 
        And click submit
        Then form is not accepted and error message is shown

    

        