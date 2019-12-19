Feature: Appointment details display

	Background:
		Given there is an existing "NISSAN" "Home" request
		And I am on the request's details page

	Scenario: Schedule button and menu item enabled when there is no active appointment
		Given the request has no active appointment
		Then the appointment schedule button should be enabled
		And the appointment "Schedule" menu button should be enabled

	Scenario: Edit and cancel menu items enabled when there is an active appointment
		Given the request has an active appointment
		Then the appointment "Edit" menu button should be enabled
		Then the appointment "Cancel" menu button should be enabled

	Scenario: Appointment status displayed in appointment history
		Given the request has an "Open" appointment
		Then the latest appointment in the history should have status "O"

