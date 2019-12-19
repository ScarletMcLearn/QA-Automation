Feature: Schedule an appointment with click

	Background:
		Given there is an existing "NISSAN" "Home" request

	Scenario: Schedule an appointment
		Given the request has no active appointment
		When I schedule an appointment for next "Wednesday" at "12:00 PM - 5:00 PM"
		Then the appointment should be scheduled for "Wednesday" at "12:00 PM - 5:00 PM"
		And the appointment early start should be "Wednesday" at "12:00 PM"
		And the appointment due date should be "Wednesday" at "5:00 PM"


	Scenario: Reschedule an appointment
		Given the request has an active appointment for next "Wednesday" at "12:00 PM - 5:00 PM"
		When I schedule an appointment for next "Thursday" at "8:00 AM - 12:00 PM"
		Then the appointment should be scheduled for next "Thursday" at "8:00 AM - 12:00 PM"
		And the appointment early start should be "Thursday" at "8:00 AM"
		And the appointment due date should be "Thursday" at "12:00 PM"
