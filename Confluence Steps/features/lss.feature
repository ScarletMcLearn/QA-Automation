Feature: showing off behave

#   Scenario: run a simple test
#      Given we have behave installed
#       When we implement a test
#     #   And another
#       Then behave will test it for us!
#     #   And another another


# Home Page
Scenario: Launch LSS Site

    Given navigated to AIM Inspect Site   
    # //https://qa.aiminspect.com/
    Then body heading is shown
    And schedule button shown
    And login button shown
    And navbar shown
    And footer shown
    And site logo shown 
    And about AIM button shown 
    # And get schedule appointment button shown 
    # Then Lessee selfschedule site is displayed
    # And Home page has 3 sections: Header, Body and Footer



# Footer
Scenario: Footer section working

    Given navigated to AIM Inspect Site
    Then footer is shown 
    # And footer text is correct


Scenario: Clicking on "Privacy Policy" in footer

    Given navigated to AIM Inspect Site
    When click on 'Privacy Policy'
    Then navigated to 'Privacy Policy' page 


Scenario: Clicking on "Terms of Service" in footer

    Given navigated to AIM Inspect Site
    When click on "Terms of Service"
    Then navigated to "Terms of Service" page 


Scenario: Clicking on "Contact Us" in footer

    Given navigated to AIM Inspect Site
    When click on "Contact Us"
    Then navigated to "Contact Us" page 

# And clicking on "Privacy Policy" link navigates to: "https://selfschedule-qa.aiminspect.com/privacy"
#         And clicking on "Terms of Service" link navigates to: "https://selfschedule-qa.aiminspect.com/terms"
#         And clicking on "Contact Us" link navigates to: "https://selfschedule-qa.aiminspect.com/contact-us"
#         And Footer Text: "© 2019 Alliance Inspection Management"


Scenario: Navigate to about Login Page by Clicking Schedule Appointment button

    Given navigated to AIM Inspect Site
    And click schedule appointment button 
    Then navigated to login page
    
Scenario: Login Page displayed 

    Given navigated to AIM Inspect Site
    And click schedule appointment button 
    Then navigated to login page
    And welcome heading displayed 
    And need help link displayed
    And get started button displayed
    And account number field displayed
    And vin field displayed


Scenario: Log in to LSS without entering vin and account number 

        Given current page is LSS Log in 
        And no VIN is entered
        And no Account number is entered
        And Get Started is clicked
        Then error-message (2) displays "Enter a Valid VIN" 
        And (2) "Enter a valid account number"


Scenario: Log in to LSS entering VIN but account number 
   
         Given current page is LSS Log in
         And VIN is entered
         And no Account number is entered
         And Get Started is clicked
         Then error-message displays "Enter a valid account number"



Scenario: Log in to LSS without entering VIN but Account number 
   
         Given current page is LSS Log in
         And no VIN is entered
         And Account number is entered
         And Get Started is clicked
         Then error-message displays "Enter a valid VIN"


Scenario: Log in to LSS site with invalid vin and invalid account number

        Given current page is LSS Log in 
        And entered an invalid vin 
        And entered an invalid account
        And Get Started is clicked
        Then error-message displayed "We were unable to match the VIN and account number you entered. Please check your entries and try again." 



Scenario: Login to LSS site with valid vin and invalid account number

    Given current page is LSS Log in 
    And entered a valid vin 
    And entered an invalid account
    And Get Started is clicked
    Then error-message displayed "We were unable to match the VIN and account number you entered. Please check your entries and try again." 




Scenario: Login to LSS site with invalid vin and valid account number

    Given current page is LSS Log in 
    And entered an invalid vin 
    And entered an invalid account
    And Get Started is clicked
    Then error-message displayed "We were unable to match the VIN and account number you entered. Please check your entries and try again."



Scenario: Login to LSS site with valid VIN and valid account number

    Given current page is LSS Log in 
    And entered a valid VIN
    And entered a valid account
    And Get Started is clicked
    Then Account Info page displays 


Scenario:  Take user to 'Existing appointment' page when trying schedule appointment when one already exists

    Given current page is LSS Log in 
    And entered a Existing Appointment valid VIN
    And entered a Existing Appointment valid account
    And Get Started is clicked
    Then 'Existing appointment' page is displayed

    # Given user is on LSS log in page
    #     And uses vin and account number that is associated with a request that already has been 
    #     When  vin field is inputted with '1N4AA5AP3DC805530'
    #     And account field is inputted with '346568967967'
    #     And clicks on 'Get started' button.
    #     Then 'Existing appointment' page is displayed

	
Scenario: If User logs in and there is already an inspection Completed

    Given current page is LSS Log in 
    And entered a inspection Completed valid VIN
    And entered a inspection Completed valid account
    And Get Started is clicked
	Then navigated to inspection completed page 
    # To Do
	# And page title display: Hello, and Lessee's 1st Name
	And header-text display: Overview
	And main-photo displays
    # To Do
	# And Vehicle's Year / Make / Model displays
	And VIN Displays
    And Inspection Date and Status: "Completed" displays
	And Button: "View CR" displays
	And nav-tabs: "STANDARD PHOTOS" selected by default displays
	And all the photos taken by the inspector dispalys
	And nav-tabs: "DAMAGE PHOTOS" displays
	And User can view the PDF file


Scenario: Main photo and photo gallery of standard and damage photo
	
    Given current page is LSS Log in 
    And entered a inspection Completed valid VIN
    And entered a inspection Completed valid account
    And Get Started is clicked
	And navigated to inspection completed page 
    # And the the main-photo or the photos in Standard and damage photos are clickable
	When click main-photo/vehicle-photo 
    Then an Overlay Modal Portal displays
	And Overlay Modal Portal image title dispalys 
	And Image displays
	And Zoom in, Zoom out and Close button displays
	And "Zoom in" and "Close" button are active on initial load
	And Zoom in button is clicked it Zooms the Photo * 1x
	And Zoom out button gets active
	And Zoom in can be 3x times		
	And Close button is clicked the "Overlay Modal Portal" closes


Scenario: If User Logs in but there is no appointment scheduled
		
    Given current page is LSS Log in 
    And entered a no appointment scheduled valid VIN
    And entered a no appointment scheduled valid account
    And Get Started is clicked
	Then User can schedule an appointment


# To Run
# behave -n 'Clicking something is wrong page '
Scenario: Clicking something is wrong page will take user to get-assistance page (help page)

    Given current page is LSS Log in 
    And entered a no appointment scheduled valid VIN
    And entered a no appointment scheduled valid account
    And Get Started is clicked
    And 'something is wrong' button is clicked
    Then get-assistance page is displayed



Scenario: Confirm Account information is correct in order to go to contact info page

    Given current page is LSS Log in 
    And entered a no appointment scheduled valid VIN
    And entered a no appointment scheduled valid account
    And Get Started is clicked
    # And entered correct information
    And confirm button is clicked
    Then Contact info page is displayed


Scenario: Update Lessee contact info

    Given current page is LSS Log in 
    And entered a no appointment scheduled valid VIN
    And entered a no appointment scheduled valid account
    And Get Started is clicked
    # And entered correct information
    And confirm button is clicked
    And user is on Contact Info page
    And the 'continue' button is disabled
    When phone number "1234567890" is entered
    And phone type work is selected 
    And email entered is "r@p.com"
    And continue button is enabled
    And continue button is clicked
    Then inspection location page is displayed



Scenario: Unable to move to inspection location page until Contact Info form is valid

    Given current page is LSS Log in 
    And entered a no appointment scheduled valid VIN
    And entered a no appointment scheduled valid account
    And Get Started is clicked
    # And entered correct information
    And confirm button is clicked
    And user is on Contact Info page
        
    When phone number entered is '5867765566'
    And phone type work is selected
    And  email is left empty
    Then continue button is disabled

		
Scenario: Leaving required phone field blank will display error message

    Given current page is LSS Log in 
    And entered a no appointment scheduled valid VIN
    And entered a no appointment scheduled valid account
    And Get Started is clicked
    And confirm button is clicked
    And user is on Contact Info page
    
    When focus phone field 
    And click away from the phone field
    Then phone field required error message is displayed


Scenario: Leaving required email field blank will display error message

    Given current page is LSS Log in 
    And entered a no appointment scheduled valid VIN
    And entered a no appointment scheduled valid account
    And Get Started is clicked
    And confirm button is clicked
    And user is on Contact Info page
    
    When focus email field 
    And click away from the email field
    Then email field required error message is displayed


Scenario: Click on back button to go back to account info page

    Given current page is LSS Log in 
    And entered a no appointment scheduled valid VIN
    And entered a no appointment scheduled valid account
    And Get Started is clicked
    And confirm button is clicked
    And user is on Contact Info page
    When back button is clicked 
    Then Account Info page is displayed


Scenario:  Able to move to Schedule page after entering in location type, address, availability information

# FrED

    Given current page is LSS Log in 
    And entered a no appointment scheduled valid VIN
    And entered a no appointment scheduled valid account
    And Get Started is clicked
    And confirm button is clicked
    And user is on Contact Info page
    And the 'continue' button is disabled
    When phone number "1234567890" is entered
    And phone type work is selected 
    And email entered is "r@p.com"
    And continue button is enabled
    And continue button is clicked
    And user is on Inspection location page
    # Fred
    # And the 'continue' button is disabled
    When select location type "Home".
    And select presence "I will be there".
    And enter address "34405 12 Mile RD, Warren, MI 48331"
    Then continue button is enabled.
    And continue button is clicked
    And Schedule Appointment page is displayed


Scenario: Click on back button to go back to contact info page

    Given current page is LSS Log in 
    And entered a no appointment scheduled valid VIN
    And entered a no appointment scheduled valid account
    And Get Started is clicked
    And confirm button is clicked
    And user is on Contact Info page
    And the 'continue' button is disabled
    When phone number "1234567890" is entered
    And phone type work is selected 
    And email entered is "r@p.com"
    And continue button is enabled
    And continue button is clicked
    And user is on Inspection location page
    And back button is clicked
    Then Contact info page is displayed



Scenario:  Move to 'review appointment' page after selecting date and time when click is available

    Given current page is LSS Log in 
    And entered a no appointment scheduled valid VIN
    And entered a no appointment scheduled valid account
    And Get Started is clicked
    And confirm button is clicked
    And user is on Contact Info page
    And continue button is disabled
    When phone number "1234567890" is entered
    And phone type work is selected 
    And email entered is "r@p.com"
    And continue button is enabled
    And continue button is clicked
    And user is on Inspection location page
    # Fred
    # And the 'continue' button is disabled
    And select location type "Home".
    And select presence "I will be there".
    And enter address "34405 12 Mile RD, Warren, MI 48331"
    And continue button is enabled.
    And continue button is clicked
    And Schedule Appointment page is displayed
    # Fred
    # And continue button is disabled
    And select date
    And select time slot
    And continue button is enabled 
    And continue button is clicked
    Then Review Appointment page is displayed




Scenario: Move to confirmation page after appointment scheduled and get confirmation ID

    Given current page is LSS Log in 
    And entered a no appointment scheduled valid VIN
    And entered a no appointment scheduled valid account
    And Get Started is clicked
    And confirm button is clicked
    And user is on Contact Info page
    And continue button is disabled
    When phone number "1234567890" is entered
    And phone type work is selected 
    And email entered is "r@p.com"
    And continue button is enabled
    And continue button is clicked
    And user is on Inspection location page
    # Fred
    # And the 'continue' button is disabled
    And select location type "Home".
    And select presence "I will be there".
    And enter address "34405 12 Mile RD, Warren, MI 48331"
    And continue button is enabled.
    And continue button is clicked
    And Schedule Appointment page is displayed
    # Fred
    # And continue button is disabled
    And select date
    And select time slot
    And continue button is enabled 
    And continue button is clicked
    And Review Appointment page is displayed
    And all information are correct
    And click on Send request button
    Then 'confirmation' page is displayed



Scenario: Verify that the appointment is scheduled in CRM

    Given current page is LSS Log in 
    And entered a no appointment scheduled valid VIN
    And entered a no appointment scheduled valid account
    And Get Started is clicked
    And confirm button is clicked
    And user is on Contact Info page
    And continue button is disabled
    When phone number "1234567890" is entered
    And phone type work is selected 
    And email entered is "r@p.com"
    And continue button is enabled
    And continue button is clicked
    And user is on Inspection location page
    # Fred
    # And the 'continue' button is disabled
    And select location type "Home".
    And select presence "I will be there".
    And enter address "34405 12 Mile RD, Warren, MI 48331"
    And continue button is enabled.
    And continue button is clicked
    And Schedule Appointment page is displayed
    # Fred
    # And continue button is disabled
    And select date
    And select time slot
    And continue button is enabled 
    And continue button is clicked
    And Review Appointment page is displayed
    And all information are correct
    And click on Send request button
    Then 'confirmation' page is displayed
    And navigate to https://crm-qa.aiminspect.com 
    And use 'sample' as the user
    And the password is 'Ok8crmlogin!'
    And search for the request using the confirmation # displayed in LSS
    And the request is displayed
    And view the request
    Then will see the request status as on Hold -awaiting dispatch   
	And Appointment status shows as Open


Scenario: Testy

    Then navigate to https://crm-qa.aiminspect.com 
    And use 'sample' as the user
    And the password is 'Ok8crmlogin!'
    And search for the request using the confirmation # displayed in LSS
    And the request is displayed
    And view the request
    Then will see the request status as on Hold -awaiting dispatch   
	And Appointment status shows as Open