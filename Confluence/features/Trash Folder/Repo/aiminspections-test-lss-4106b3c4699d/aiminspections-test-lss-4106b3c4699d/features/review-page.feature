Feature: Review appointment page

	Background:
		Given I am logged in
		And I am on review page

	Scenario: Check for progress status bar
		Then the progress status bar is highlighting "REVIEW"

	Scenario: Click on confirm button to schedule an appointment
		When I click the continue button
		Then I am taken to confirmation page
		And I can see appointment confirmation number