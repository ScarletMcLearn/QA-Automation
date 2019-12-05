Feature: LSS Logins / Schedule Appointment

    Scenario: Launch LSS Site

        Given Browser is opened
        And navigated to AIM Inspect Site   #https:#selfschedule.aiminspect.com/
        Then Lessee selfschedule site is displayed
        And Home page has 3 sections: Header, Body and Footer

    Scenario: Verify LSS Home page and various sections and Section's elements
    
        Given I am on LSS Home page Header section
        And I see site Logo
        And I see the link "About AiM"
        And clicking on the link goes to #http:#homepage.aiminspections.com/about-us/

        Given I am on LSS Home page Body section
        And Body section has the followings:Title, Paragraph, Button and Link
        # Title: "Trusted inspectors. Honest evaluation. Timely service."
        # Paragraph 1: "Welcome to Alliance Inspection Management, the most trusted inspection company in North America."
        # Paragraph 2: "Please proceed to select the most convenient date and time for your complimentary pre-inspection."
        # Button: "Schedule Appointment"
        # Link: "Log in"

        Given I am on LSS Home page Footer section
        And Footer section contains 3 links and Text
        And clicking on "Privacy Policy" link navigates to: "https:#selfschedule-qa.aiminspect.com/privacy"
        And clicking on "Terms of Service" link navigates to: "https:#selfschedule-qa.aiminspect.com/terms"
        And clicking on "Contact Us" link navigates to: "https:#selfschedule-qa.aiminspect.com/contact-us"
        And Footer Text: "© 2019 Alliance Inspection Management"

    Scenario: Go to LSS Login 

        Given current page is Home Page     #https:#selfschedule-qa.aiminspect.com/log-in   
        And clicked on 'Schedule Appointment' button  | And login link is clicked
        Then LSS Log in site is displayed             | Then LSS Login page displays 
		
	Scenario: Login page elements
		
		Given I am on Login page
		And I see Two text fields: VIN and Account number
		And a button: "Get started"
		And a link: "Need help?"
		
    Scenario: Log in to LSS without entering vin and account number 

        Given current page is LSS Log in 
        And no VIN is entered
        And no Account number is entered
        And Get Started is clicked
        Then error-message displays "Enter a Valid VIN" 
        And "Enter a valid account number"

    Scenario: Log in to LSS entering VIN but account number 
   
         Given current page is LSS Log in
         And VIN is entered
         And no Account number is entered
         And Get Started button is clicked
         Then error-message displays "Enter a valid account number"

    Scenario: Log in to LSS without entering VIN but Account number 
   
         Given current page is LSS Log in
         And no VIN is entered
         And Account number is entered
         And Get Started button is clicked
         Then error-message displays "Enter a valid VIN"

    Scenario: Log in to LSS site with invalid vin and invalid account number

        Given current page is LSS Login 
        And entered an invalid vin 
        And entered an invalid account
        And Get Started button is clicked
        Then error-message displayed "We were unable to match the VIN and account number you entered. Please check your entries and try again."  

    Scenario: Login to LSS site with valid vin and invalid account number

        Given current page is LSS Login 
        And entered a valid vin 
        And entered an invalid account
        And Get Started button is clicked
        Then error-message displayed "We were unable to match the VIN and account number you entered. Please check your entries and try again."  

    Scenario: Login to LSS site with invalid vin and valid account number

        Given current page is LSS Login 
        And entered an invalid vin 
        And entered an invalid account
        And Get Started button is clicked
        Then error-message displayed "We were unable to match the VIN and account number you entered. Please check your entries and try again." 

    Scenario: Login to LSS site with valid VIN and valid account number

        Given current page is LSS Login 
        And entered a valid VIN
        And entered a valid account
        And Get Started button is clicked
        Then Account Info page dispalys 
		
	Scenario: If User logs in and there is already an inspection Completed

		Given User logged in 
		And the inspection is already completed
		Then page loads
		And page title display: Hello, and Lessee's 1st Name
		And header-text display: Overview
		And main-photo displays
		And Vehicle's Year / Make / Model displays
		And VIN Displays
		And Inspection Date displays
		And Status: "Completed" displays
		And Button: "View CR" displays
		And nav-tabs: "STANDARD PHOTOS" selected by default displays
		And all the photos taken by the inspector dispalys
		And nav-tabs: "DAMAGE PHOTOS" displays
		And User can view the PDF file
		
	Scenario: Main photo and photo gallery of standard and damage photo 
	
		Given the the main-photo or the photos in Standard and damage photos are clickable
		And main-photo/vehicle-photo is clicked a Overlay Modal Portal displays
		And Overlay Modal Portal image title dispalys 
		And Image displays
		And Zoom in, Zoom out and Close button displays
		And "Zoom in" and "Close" button are active on initial load
		When Zoom in button is clicked it Zooms the Photo * 1x
		And Zoom out button gets active
		And Zoom in can be 3x times		
		When Close button is clicked the "Overlay Modal Portal" closes
	
    Scenario: If User Logs in but there is no appointment scheduled
		
		Given User logged in 
		And there is no appointment scheduled
		Then User can schedule an appointment	

    Scenario: Clicking 'something is wrong' page will take user to get-assistance page (help page)

        Given current page is Account info page
        And 'something is wrong' button is clicked
        Then get-assistance page is displayed
		
    Scenario: Confirm Account information is correct in order to go to contact info page

        Given current page is Account info page
        And entered correct information
        And confirm button is clicked
        Then Contact info page is displayed

    Scenario: Update Lessee contact info

        Given user is logged in to LSS
        And user is on Contact Info page
        And the 'continue' button is disabled
        When phone number "1234567890" is entered
        And "(mobile/work/home/other)" is selected as phone type 
        And email entered is "r@p.com"
        And continue button is enabled
        And continue button is clicked
        Then inspection location page is displayed

    Scenario: Unable to move to inspection location page until Contact Info form is valid

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

    Scenario:  Able to move to 'Schedule' page after entering in location type, address, availability information

        Given user is on Inspection location page
        And user is logged in to the LSS site
        And continue button is disabled
        When select location type "Home".
        And select presence "I will be there".
        And enter address "34405 12 Mile RD, Warren, MI 48331"
        Then continue button is enabled.
        And Schedule Appointment page is displayed

    Scenario:  Unable to move to 'schedule' page if any required fields in inspection location page are missing
       
        Given user is on Inspection location page
        And user is logged in to the LSS site
        And continue button is disabled
        And select location type "Home"
        And select presence "I will be there"
        And enter no address
        Then continue button is disabled
		
    Scenario:  Entering information for when someone else will be there and able to continue to 'schedule' page

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

    Scenario:  Move to 'review appointment' page after selecting date and time when click is available

        Given user is on Appointment Schedule page
        And user is logged in to the LSS site
        And appointment dates are available
        And continue button is disabled
        When select date
        And select time slot
        And continue button is enabled 
        And click continue button
        Then Review Appointment page is displayed

    Scenario:  Move to confirmation page after appointment scheduled and get confirmation ID

        Given user is on Review Appointment page
        And user is logged in to the LSS site
        And all information are correct
        When click on 'Confirm appointment' button
        Then 'confirmation' page is displayed

# CHECK
    Scenario:  Verify that the appointment is scheduled in CRM

        Given scheduled an appointment through LSS
        And the appointment is tied to a request and request is scheduled in CRM
        When logs in to https:#crm-qa.aiminspect.com 
        And uses 'CSR/DISPATCH' as the user
        And the password is 'crmisnice'
        And search for the request using the confirmation # displayed in LSS
        And the request is displayed
        And view the request
        Then will see the request status as on 'H'old -awaiting dispatch   
		And Appointment status shows as Open

    Scenario:  Display alternative message when invalid location address is entered

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

    Scenario:  Take user to 'Existing appointment' page when trying schedule appointment when one already exists

        Given user is on LSS log in page
        And uses vin and account number that is associated with a request that already has been 
        When  vin field is inputted with '1N4AA5AP3DC805530'
        And account field is inputted with '346568967967'
        And clicks on 'Get started' button.
        Then 'Existing appointment' page is displayed

# CHECK
    Scenario: Display alternative message when invalid location     address is entered and  schedule a request

        Given user is logged on to LSS site.
        And enters invalid address in 'inspection location' page.
        And is on on 'Review request' page.
        When click on 'send request'
        Then confirmation message "Appointment Requested" displayed

