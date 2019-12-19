Feature: Display lessee's name in search results

	Background:
		Given there is an existing "<customer>" "<inspectionType>" request

	Scenario: Display lessee's name when searching for dealer's request
		When I search for the request
		Then I should see lessee's name in the search result in name column

	Scenario: Display blank field if lessee's name is not in the dealer's request
		Given the request's lessee name is empty
		When I search for the request
		Then I should see nothing in the name column

		Examples:
			| customer | inspectionType |
			| NISSAN | Dealer |
