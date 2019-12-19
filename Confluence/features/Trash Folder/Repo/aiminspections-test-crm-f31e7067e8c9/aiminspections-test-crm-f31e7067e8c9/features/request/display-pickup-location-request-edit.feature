Feature: Display pickup location on request edit dealer

	Background:
		Given there an existing organization that has a pickup location
		And I create a "<customer>" "<inspectionType>" request
		And I select the existing organization

	Scenario: Able to view pickup location on request edit dealer
		When I edit dealer's info
		Then I should see the pickup location displayed

	Scenario: Able to edit pickup location in request edit dealer
		When I edit dealer's info
		And I edit the pickup location
		Then I should see the updated pickup location displayed

		Examples:
			| customer | inspectionType |
			| MANHEIM | Long Term Order |
			| MANHEIM | Third Party Inspection |
