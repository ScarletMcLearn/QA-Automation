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
        Then inspection location page is displayed




    Scenario: Unable to move to inspection location page until form is valid

        Given user is on Contact Info page
        When phone number entered is '5867765566'
        And phone type 'work' is selected
        And  email is left empty
        Then continue button is disabled

   


   Scenario: Leaving required phone field blank will display error message

        Given user is on Contact Info page
        When focus phone field 
        And click away from the phone field
        Then error message 1 is displayed



    Scenario: Leaving required email field blank will display error message

        Given user is on Contact Info page
        When email field is kept empty
        Then error message 2 is displayed



    Scenario: Click on back button to go back to account info page

        Given user is on Contact Info page
        When back button is clicked 
        Then Account Info page is displayed




    Scenario:  Able to move to 'Schedule' page after entering in location type, address,            availability information

        Given user is on Inspection location page
        And user is logged in to the LSS site
        And continue button is disabled
        When select location type "Home".
        And select presence "I will be there".
        And enter address "34405 12 Mile RD, Warren, MI 48331"
        Then continue button is enabled.
        And Schedule Appointment page is displayed


    Scenario:  Unable to move to 'schedule' page if any required fields in inspection               location page are missing
       

        Given user is on Inspection location page
        And user is logged in to the LSS site
        And continue button is disabled
        AWhen select location type "Home"
        And select presence "I will be there"
        And enter no address
        Then continue button is disabled



    Scenario:  Entering information for when someone else will be there and able to                 continue to 'schedule' page

        Given user is on Inspection location page
        And user is logged in to the LSS site
        And continue button is disabled
        And location type filled
        And address filled
        When select presence "I will not be there"
        And enter first name "Tom".
        And enter last name "Cruz".
        And enter phone number "2487765433".
        And select phone type "Mobile".
        And enter email "Cruz@mail.com".
        And select preferred contact method "Email".
        And continue button is enabled. 
        And I click on continue button.
        Then Schedule Appointment page is displayed
        


    Scenario:  Click on back button to go back to contact info page

        Given user is on Inspection location page
        And user is logged in to the LSS site
        And continue button is disabled
        When back button is clicked
        Then Contact Info page is displayed


    Scenario:  Move to 'review appointment' page after selecting date and time when                 click is available

        Given user is on Appointment Schedule page
        And user is logged in to the LSS site
        And appointment dates are available
        And continue button is disabled
        When select date
        And select time slot
        And continue button is enabled 
        And click continue button
        Then Review Appointment page is displayed



    Scenario:  Move to confirmation page after appointment scheduled and get                        confirmation ID

        Given user is on Review Appointment page
        And user is logged in to the LSS site
        And all information are correct
        When click on 'Confirm appointment' button
        Then 'confirmation' page is displayed



    Scenario:  Verify that the appointment is scheduled in CRM

        TO DO


    Scenario:  Display alternative message when invalid location adddres is entered

        Given user is on Inspection Location page
        And user is logged in to the LSS site
        When enter location type as 'home'
        And enter Street: '1', City: '1', State: 'Alabama', Zip: '11111'
        And click on continue button
        Then 'schedule' page' is displayed


    Scenario:  Display alternative message when system is down

        Given user is on Review page
        And there is no internet connection
        When click on confirm appointment button
        Then 'Server Down page' is displayed


    Scenario:  Take user to 'Existing appointment' page when trying schedule appointment            when one already existsDisplay alternative message when system is down

        //Given user is on Review page
        //And there is no internet connection
       // When click on confirm appointment button
        //Then 'Server Down page' is displayed




