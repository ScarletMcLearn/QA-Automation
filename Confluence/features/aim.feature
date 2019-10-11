

    Scenario: Launch AIM Inspect site
    
        Given Browser is opened
        And logged in to AIM Inspect site
        When navigated to AIM Inspect site   // https://crm-qa.aiminspect.com/
        Then AIM Inspect site is displayed


    Scenario: Incorrect credentials do not allow login

        Given Browser is opened
        When navigated to AIM Inspect site   // https://crm-qa.aiminspect.com/
        And enter incorrect Username and Password
        And click Log In
        Then Invalid Login message is displayed


    Scenario: Correct credentials allow succesful login

        Given Browser is opened
        When navigated to AIM Inspect site   // https://crm-qa.aiminspect.com/
        And enter correct Username and Password
        And click Log In
        Then AIM Inspection page is displayed

    

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

