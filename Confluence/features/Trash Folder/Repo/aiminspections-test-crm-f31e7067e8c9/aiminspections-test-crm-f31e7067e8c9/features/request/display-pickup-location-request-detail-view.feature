Feature: Display pickup location on request detail view

	Background:
		Given there an existing organization that has a pickup location
		And I create a "<customer>" "<inspectionType>" request
		And I select the existing organization

	Scenario: Able to view pickup location on request detail view
		When I view the request
		Then I should see the pickup location displayed

		Examples:
			| customer | inspectionType |
			| MANHEIM | Long term order |
			| MANHEIM | Third party inspection |
