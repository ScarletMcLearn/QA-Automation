Feature: Go to LSS log in page

	Background:
		Given There is an existing request with "<AccountNo>" "<Vin>"
		And I am on the LSS site

	Scenario Outline: able to log in to LSS site
		When I enter my "<Vin>" and "<AccountNo>"
		Then I should be able to log in to LSS site
		And I should see the account info page

	Scenario Outline: Unable to log in to LSS site with incorrect vin and correct account number
		When I enter an incorrect vin and correct account number
		Then I should not be able to log in to LSS site

	Scenario Outline: Unable to log in to LSS site with correct vin and incorrect account number
		When I enter a correct vin and incorrect account number
		Then I should not be able to log in to LSS site

	Examples:
		| AccountNo | Vin |
		| 890967567 | 1N4AA5AP4DC810297 |
