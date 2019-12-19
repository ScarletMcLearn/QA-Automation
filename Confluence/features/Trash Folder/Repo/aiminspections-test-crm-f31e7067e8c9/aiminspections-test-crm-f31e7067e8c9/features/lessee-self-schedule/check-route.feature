Feature: Check routes when logged in & when not logged in

	Scenario: Able to go to routes when logged in to LSS site
		Given I am logged in to the LSS site
		And I am on 'Account info' page
		When I click on 'looks good' button
		Then I should be taken to 'Contact info' page

	Scenario: Unable to go to routes when logged in to LSS site
		Given I am not logged in to the LSS site
		And I go to the 'Account info' page
		Then I should be taken to LSS log in page
