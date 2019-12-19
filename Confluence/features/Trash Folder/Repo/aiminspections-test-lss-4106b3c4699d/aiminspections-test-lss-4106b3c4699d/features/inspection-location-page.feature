Feature: Inspection location page

	Background:
		Given I am logged in
		And I am on inspection location page

	Scenario: Continue button is disabled
		Then the continue button is disabled

	Scenario: Check for progress status bar
		Then the progress status bar is highlighting "LOCATION"

	Scenario: Continue button is enabled when required fields are filled in
		Given the location required fields are populated
		Then the continue button is enabled

	Scenario: Complete all the required fields with on-site contact info
		Given the location required fields are populated
		And the on-site contact info required fields are populated
		Then the continue button is enabled

	Scenario: Complete all the required fields and move to schedule page
		Given the location required fields are populated
		When I click the continue button
		Then I am taken to the schedule page

	Scenario: Complete all the required fields with on-site contact info and move to schedule page
		Given the location required fields are populated
		And the on-site contact info required fields are populated
		When I click the continue button
		Then I am taken to the schedule page

	Scenario: Leaving required location type field blank will display error message
		When I focus and blur the location type field
		Then I can see an error message

	Scenario: Leaving required address field blank will display error message
		When I focus and blur the address field
		Then I can see an error message

	Scenario: Leaving required city field blank will display error message
		When I focus and blur the city field
		Then I can see an error message

	Scenario: Leaving required state field blank will display error message
		When I focus and blur the state field
		Then I can see an error message

	Scenario: Leaving required zip field blank will display error message
		When I focus and blur the zip field
		Then I can see an error message

	Scenario: Select I will not be there
		When I select I will not be there but someone else will be
		Then the on-site contact form displays

	Scenario: Select I will be there
		When I select I will be there
		Then the on-site contact form disappears

	Scenario: Leaving on-site contact first name field blank
		Given I select I will not be there but someone else will be
		And the on-site contact form displays
		When I focus and blur the on-site contact first name field
		Then I can see an error message

	Scenario: Leaving on-site contact last name field blank
		Given I select I will not be there but someone else will be
		And the on-site contact form displays
		When I focus and blur the on-site contact last name field
		Then I can see an error message

	Scenario: Leaving on-site contact phone field blank
		Given I select I will not be there but someone else will be
		And the on-site contact form displays
		When I focus and blur the on-site contact phone field
		Then I can see an error message

	Scenario: Leaving on-site contact email field blank
		Given I select I will not be there but someone else will be
		And the on-site contact form displays
		When I focus and blur the on-site contact email field
		Then I can see an error message

	Scenario: Click on back button
		When I click on the back button
		Then I am taken to contact info page