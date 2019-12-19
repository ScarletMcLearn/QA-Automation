Feature: Edit lessee info
	Background:
		Given there is an existing "NISSAN" "Home" request
		And I am on the request's details page

	Scenario: Edit lessee info
		When I edit the request's lessee info
		When I enter lessee name "John" "Doe"
		And I enter lessee address "34405 12 Mile Rd, Farmington Hills, MI, 48331, US"
		And I enter lessee phone number "1231231234"
		And I enter business phone number "2342342345"
		And I enter lessee email "jdoe@aiminspections.com"
		And I save the lessee info
		Then the

