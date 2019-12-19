Feature: Basic Search

	Background:
		Given there is an existing "NISSAN" "Home" request

	Scenario: Search for requests by their ID
		Given I basic search for "requestId"
		Then I should see the "requestId" in the search results

