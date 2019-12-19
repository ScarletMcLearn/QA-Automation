Feature: Update organization using import service

	Background:
		Given there is an existing "<customer>" organization
		And I create a "<customer>" "<inspectionType>" request with the organization

	Scenario Outline: Update org name using import service
		When I send an import where the organization name is updated
		Then the request's dealer name should be updated

		Examples:
			| customer | inspectionType |
			| NISSAN | Dealer |
