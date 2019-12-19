Feature: Edit Appointment Location

	Background:
		Given there is an inspector "<inspectorA>" who can work at "<addressA>"
		And there is an inspector "<inspectorB>" who can work at "<addressB>"

	Scenario Outline: Edit appointment inspection location
		Given there is a request with an active appointment at "<addressA>" assigned to "<inspectorA>"
		When I change the location for the appointment to "<addressB>"
		Then the appointment should be rescheduled and assigned to "<inspectorB>"

	Examples:
		| addressA                                      | addressB                                   | inspectorA      | inspectorB      |
		| 34405 12 Mile Rd, Farmington Hills, MI, 48331 | 9580 Sunset Blvd, Beverly Hills, CA, 90210 | 1 - MI Engineer | 1 - CA Engineer |
