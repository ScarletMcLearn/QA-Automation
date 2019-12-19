Feature: Geolocation

	Background:
		Given there is an existing "<customer>" "<inspectionType>" request
		And the request is enabled for click
		And the reschedule distance is set to 5 miles

	Scenario Outline: Edit appointment location within geolocation distance range
		When I edit the appointment location "<apptLocationA>" to "<apptlocationB>"
		And the "<apptlocationB>" is within the distance range
		Then the appointment location should be updated
		And the appointment not rescheduled

		Examples:
			| customer | inspectionType | apptLocationA | apptLocationB |
			| NISSAN | Home | 34405 12 Mile RD, Farmington Hills, MI 48331 | 37611 Twelve Mile Rd, Farmington Hills, MI 48331 |
			| NISSAN | Home | 34405 12 Mile RD, Farmington Hills, MI 48331 | 30665 Northwestern Hwy, Farmington Hills, MI 48334 |

	Scenario Outline: Edit appointment location outside of geolocation distance range
		When I edit the appointment location "<apptLocationA>" to "<apptlocationB>"
		And the "<apptlocationB>" is outside of the distance range
		Then the appointment should be re-scheduled
		And the appointment location should be updated

		Examples:
			| customer | inspectionType | apptLocationA | apptLocationB |
			| NISSAN | Home | 34405 12 Mile RD, Farmington Hills, MI 48331 | 28939 Woodward Ave, Berkley, MI 48072 |
			| NISSAN | Home | 34405 12 Mile RD, Farmington Hills, MI 48331 | 39940 Ford Rd, Canton, MI 48187 |
