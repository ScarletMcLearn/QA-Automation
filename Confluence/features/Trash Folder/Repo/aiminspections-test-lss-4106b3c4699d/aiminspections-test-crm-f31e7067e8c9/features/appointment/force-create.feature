Feature: Force create an appointment

	Background:
		Given there is an existing "<customer>" "<inspectionType>" request
		And there is an inspector "<inspector>"

	Scenario Outline:
		When I force create an appointment for next "<day>" at "<timeWindow>" and assign "<inspector>"
		Then the appointment should be scheduled for next "<day>" at "<timeWindow>"
		And the appointment should be assigned to "<inspector>"
		And the appointment status should be at scheduled

	Examples:
		| customer | inspectionType | day       | timeWindow         | inspector       |
		| NISSAN   | Home           | Wednesday | 8:00 AM - 12:00 PM | 1 - MI Engineer |

