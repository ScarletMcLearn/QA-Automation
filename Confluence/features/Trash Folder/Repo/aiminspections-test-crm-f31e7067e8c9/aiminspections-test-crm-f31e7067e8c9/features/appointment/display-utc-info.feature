Feature: Display UTC information in an appointment box

	Background:
		Given there is an existing "NISSAN" "Home" request
		And the request has been scheduled

	Scenario: Display UTC information
		When I mark the appointment as UTC
		And there is no active appointment
		Then I should see UTC information displayed in an appointment section
