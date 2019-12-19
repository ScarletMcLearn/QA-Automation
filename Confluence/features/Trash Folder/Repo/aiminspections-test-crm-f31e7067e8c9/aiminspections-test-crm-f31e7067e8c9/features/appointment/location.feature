Feature: Edit Appointment location

	Scenario Outline: Create an appointment with a location different from its request inspection location
		Given there is an existing "<customer>" "<inspectionType>" request
		And the request has inspection location "<addressA>"
		And the request has no active appointment
		When I create an appointment at the location "<addressB>"
		Then the appointment location should be "<addressB>"

	Scenario Outline: Change an appointment's location after it was scheduled
		Given there is an existing "<customer>" "<inspectionType>" request
		And the request has inspection location "<addressA>"
		And an apppointment is scheduled
		When I update the appointment location to "<addressB>"
		Then the appointment location should be "<addressB>

	Examples:
		| customer | inspectionType | addressA                                      | addressB                                            |
		| NISSAN   | Home           | 34405 12 Mile Rd, Farmington Hills, MI, 48331 | 30665 Northwestern Hwy, Farmington Hills, MI, 48334 |
		| NISSAN   | Home           | 34405 12 Mile Rd, Farmington Hills, MI, 48331 | 30665 Northwestern Hwy, Farmington Hills, MI, 48334 |
