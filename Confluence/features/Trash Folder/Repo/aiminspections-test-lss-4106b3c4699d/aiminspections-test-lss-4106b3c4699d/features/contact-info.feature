Feature: Contact info

	Background:
		Given I am logged in
		And I am on the account info page
		And I click the continue button
		And I am on the contact info page

	Scenario: Check for progress status bar
		Then the progress status bar is highlighted

	Scenario: Continue button is disabled
		Then the continue button is disabled

	Scenario: Continue button is enabled
		When I enter my phone number "2345678902"
		And I select my phone type "mobile"
		And I enter my email "r@p.com"
		Then the continue button is enabled

	Scenario: Clicking continue button will take user to inspection location page
		Given the contact info required fields are populated
		When I click the continue button
		Then I am taken to the inspection location page

	Scenario: Unable to continue with empty email field
		When I enter my phone number "5867765566"
		Then the continue button is disabled

	Scenario: Unable to continue with empty phone field
		When I enter my email "r@p.com"
		Then the continue button is disabled

	Scenario: Leaving required phone field blank will display error message
		When I focus and blur the phone field
		Then I can see an error message

	Scenario: Leaving required email field blank will display error message
		When I focus and blur the email field
		Then I can see an error message

	Scenario: Click on back button to go back to account info page
		When I click on back button
		Then I am taken to the account info page