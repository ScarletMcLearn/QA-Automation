Feature: Display date picker to reschedule utc inspection

	Background:
		Given there is an existing "NISSAN" "Dealer" request
		And I am on the request's details page

	Scenario Outline: Select date from date picker based on reason & sub category selected
		When I select utc inspection
		And I select "<reason>" "<sub category>"
		Then I should see date picker option available
		And I Should be able to select the earliest resehedule date from the calendar

		Examples:
			| reason | sub category |
			| Vehicle Unavailable | In body |
