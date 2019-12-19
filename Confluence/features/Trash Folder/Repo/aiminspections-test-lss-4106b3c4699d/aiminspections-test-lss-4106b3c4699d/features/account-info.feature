Feature: Account info page

	Background:
		Given I am logged in
		And I am on the account info page

	Scenario: Check for progress status bar
		Then the progress status bar is highlighting "ACCOUNT"

	@mobile @tablet @desktop
	Scenario: My profile info is correct
		Then my profile info is correct

	Scenario: My vehicle info is correct
		Then my vehicle info is correct

	Scenario: Able to continue to contact info page
		When I click the continue button
		Then I am taken to contact info page

	Scenario: Click on 'Something is Wrong' button
		When I click on the 'Something is Wrong' button
		Then I am taken to the get assistance page