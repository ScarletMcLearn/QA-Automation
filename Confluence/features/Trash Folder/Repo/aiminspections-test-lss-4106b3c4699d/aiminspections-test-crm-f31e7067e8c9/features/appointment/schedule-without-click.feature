Feature: Schedule an appointment

	Background:
		Given there is an existing "MANHEIM" "Long Term Order" request

	Scenario: Schedule an appointment
		Given the request has no active appointment
		When I schedule an appointment for next "Wednesday" at "12:00 PM - 1:00 PM"
		Then the appointment should be scheduled for "Wednesday" at "12:00 PM - 1:00 PM"

	Scenario: Reschedule an appointment
		Given the request has an active appointment for next "Wednesday" at "12:00 PM - 5:00 PM"
		When I schedule an appointment for next "Thursday" at "8:00 AM - 9:00 AM"
		Then the appointment should be scheduled for next "Thursday" at "8:00 AM - 9:00 AM"


