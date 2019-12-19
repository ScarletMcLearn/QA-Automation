Feature: Advanced Search

	Background:
		Given there is an existing "NISSAN" "Home" request
		And I am on the "advanced" search page

	Scenario: Search for requests by their appointment status
		Given the request has an "Open" appointment
		When I search for "Open" appointments
		Then I should see the request in the search results

