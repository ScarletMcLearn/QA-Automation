Feature: User viewing functionality

	Background:
		Given I sign into the CRM as the user "<Me>"
		And there is an existing "NISSAN" "Home" request

	Scenario Outline: Able to search for a request and see if other users are viewing the same request
		When the user "<UserA>" is viewing the request
		And the user "<UserB>" is viewing the request
		When I search for the request
		Then the request there should have an eye icon
		And hovering over the icon should display the usernames "<UserA>, <UserB>"

	Scenario Outline: Display eye icon for request that is being viewed by other user in view request detail page
		When the user "<UserA>" is viewing the request
		And the user "<UserB>" is viewing the request
		And I am on the request's details page
		Then there should be eye icon
		And hovering over the icon should display the usernames "<UserA>, <UserB>"

	Scenario Outline: Eye icon will NOT be visible if no action is taken within 5 mins of viewing the request
		When the request has not been viewed or edited by other users for "5 minutes"
		And I am on the request's details page
		Then the eye icon will NOT be visible

	Scenario Outline: Eye icon will NOT visible in search result page
		When the request has not been viewed or edited by other users for "5 minutes"
		And I search for the request
		Then the eye icon will NOT be visible

		Examples:
			| Me | UserA | UserB |
			| sample | dispatch | callcenter |
