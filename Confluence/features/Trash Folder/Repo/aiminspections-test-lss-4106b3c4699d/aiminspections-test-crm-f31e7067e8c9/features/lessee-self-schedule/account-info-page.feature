Feature: Account info page
	Display Account Info
	Have a 'Looks Good' button that will take me to the 'Contact' page
	Have a 'Something Looks Wrong' buuton that will take me to the 'Helpdesk' page

	Background:
		Given there is an existing "NISSAN" "Home" request
		And I am on the LSS site
		And I am logged in to lss site
		And I am on the account info page

	Scenario Outline: Confirm that the progress bar indicates that I am on the 'account info' page
		Then I should see progress bar indicating I am on the 'account info' page

	Scenario Outline: Able to view account information
		Then I should see "<firstName> <lastName>" and "<accountNo>" in 'My profile' section
		And I should see "<year>", "<make>", "<model>", "<trim>", and "<vin>" in 'My Vehicle' section

	Scenario Outline: When I click on the 'Looks Good' button I should be taken to the 'Contact' page
		When I click on 'looks good' button
		Then I should be taken to 'contact info' page

	Scenario Outline: When I click on the 'Something Looks Wrong' button I should be taken to the 'Helpdesk' page
		When I click on 'Something Looks Wrong' button
		Then I should be taken to 'Helpdesk' page

	Examples:
		| firstName | lastName| year | make   | model      | trim      |
		| John      | Thomas  | 2014 | Nissan | Maxima     | 3.5 SE    |
		| Bob       |         | 2013 | Nissan | Altima     | 2.5 SV    |
		|           | Cruz    | 2012 | Nissan | Sentra 	   | 2.5 SE    |
		| Tom       | Baker   | 2011 |        | Pathfinder |           |
		| Charles   | Almson  | 2012 | Nissan | Maxima     | 3.5 SVL   |
		| Mike      | Jones   | 2013 | Nissan | Sentra     | 2.5 S     |
		| Rob	    | Carl    |      | Nissan | Altima     | 2.0 S     |
