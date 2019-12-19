Feature: Edit Dealer Info
	Background:
		Given there is a dealer "<dealerA>" at "<addresA>"
		And there is a dealer "<dealerB>" at "<addressB>"
		And I create a request for "<dealerA>"

	Scenario Outline: Changing a dealer address updates their requests' inspection location if they have no current appointment
		When I change the location of "<dealerA>" to "<addressA2>"
		Then the inspection location of their request should be updated to "<addressA2>"

	Scenario Outline: Changing the dealer of an inspection request when it has an open appointment should update the appointment location
		Given the request has an open appointment at "<addressA>"
		When I update the request to dealer "<dealerB>"
		Then the appointment location should be "<addressB>"

	Scenario Outline: Changing the dealer of an inspection request when it has a canceled appointment should not update the appointment location
		Given the request has a canceled appointment at "<addressA>"
		When I update the request to dealer "<dealerB>"
		Then the appointment location should be "<addressA>"

	Scenario Outline: Changing the dealer of an inspection request when it has a completed appointment should not update the appointment location
		Given the request has a completed appointment at "<addressA>"
		When I update the request to dealer "<dealerB>"
		Then the appointment location should be "<addressA>"

	Examples:
		| dealerA         | dealerB         | addressA                                        | addressA2                                       | addressB                                            | addressB2                                           |
		| Nissan Dealer 1 | Nissan Dealer 2 | 34405 12 Mile Road, Farmington Hills, MI, 48331 | 35405 12 Mile Road, Farmington Hills, MI, 48331 | 30665 Northwestern Hwy, Farmington Hills, MI, 48334 | 31665 Northwestern Hwy, Farmington Hills, MI, 48334 |
