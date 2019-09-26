Feature: Scenarios for testing the LSS Site.

    Scenario: Launch LSS Site

        Given Browser is opened
        And navigated to AIM Inspect Site
        Then Lessee selfschedule site is displayed


    
    Scenario: Go to LSS Log in Site

        Given current page is Home Page
        And clicked on 'Schedule Appointment' button
        Then LSS Log in site is displayed



    Scenario: Log in to LSS site with invalid vin and valid account number

        Given current page is LSS Log in site
        And entered an invalid vin 
        And entered a valid account
        And submit the form
        Then Validation Error page case 1 is displayed



    Scenario: Log in to LSS site with valid vin and invalid account number

        Given current page is LSS Log in site
        And entered an valid vin 
        And entered a invalid account
        And submit the form
        Then Validation Error page case 2 is displayed


        


    Scenario: Log in to LSS without entering vin 

        Given current page is LSS Log in site
        And entered an valid vin 
        And no account number is entered
        And submit the form
        Then Account Number required page is displayed



    Scenario: Log in to LSS without entering vin and account number 

        Given current page is LSS Log in site
        And no vin is entered 
        And no account number is entered
        And submit the form
        Then both fields required page is displayed



    Scenario: Log in to LSS site with invalid vin and valid account number

        Given current page is LSS Log in site
        And entered an invalid vin 
        And entered a valid account
        And submit the form
        Then Account info page is displayed



    Scenario: Confirm Account information is correct in order to go to contact info page

        Given current page is Account info page
        And entered correct information
        And confirm button is clicked
        Then Contact info page is displayed


    Scenario: Clicking 'something is wrong' page will take user to get-assistance page (help page)

        Given current page is Account info page
        And 'something is wrong' button is clicked
        Then get-assistance page is displayed



    Scenario: Update Lessee contact info

        Given user is logged in to LSS
        And user is on Contact Info page
        And the 'continue' button is disabled
        When phone number "234567890" is entered
        And "(mobile/work/home/other)" is selected as phone type 
        And email entered is "r@p.com"
        And continue button is enabled
        And continue button is clicked
        Then nspection location page is displayed


        