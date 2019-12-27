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



