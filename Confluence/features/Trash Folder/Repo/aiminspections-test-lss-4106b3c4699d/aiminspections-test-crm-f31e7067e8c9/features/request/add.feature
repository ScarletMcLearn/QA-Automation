Feature: Create an inspection request

	Background:
		Given I am on the new inspection request page

	Scenario: Create a home request
		When I select customer "NISSAN"
		And I select request type "Home"
		And I enter a unique account number
		And I enter lessee first name "John"
		And I enter lessee last name "Doe"
		And I select country "US"
		And I enter address "34405 12 Mile Rd"
		And I enter city "Farmington Hills"
		And I select state "MI"
		And I enter the zip code "48331"
		And I enter lessee phone "1231231234"
		And I select a maturity date for next "month"
		And I select state of origin "MI"
		And I enter VIN "KMHTC6AE1EU203685"
		And I submit the request
		Then I should be redirected to the request's detail page
		And the schedule appointment modal should open

	Scenario: Create a long term order request
		Given there is a "Manheim" organization named "AiM Manheim"
		When I select customer "MANHEIM"
		And I select request type "Long Term Order"
		And I add by organization name "AiM Manheim"
		And I enter the number of vehicles as "3"
		And I submit the form
		Then a toast should display with the request confirmation number

