Feature: Unable to UTC appointments for call center and self schedule users

	Background:
		Given there is an existing "<customer>" "<inspectionType>" request
		And there is an active appointment

	Scenario Outline: Unable to UTC appointment as call center user
		Given I am signed in as the "call center" user
		When I try to UTC the appointment
		Then I shouldn't see UTC option enabled

	Scenario Outline: Unable to UTC appointment as self schedule user
		Given I am signed in as the "self schedule" user
		When I try to UTC the appointment
		Then I shouldn't see UTC option enabled

	Scenario Outline: Able to view UTC appointment audit history for call center user
		Given I am signed in as the "call center" user
		And an appointment has been UTC'd
		When I try to view the details about UTC'd appointment
		Then I should be able to view appointment audit history

	Scenario Outline: Unable to view UTC appointment audit history for self schedule user
		Given I am signed in as the "self schedule" user
		And an appointment has been UTC'd
		When I try to view the details about UTC'd appointment
		Then I shouldn't be able to view appointment audit history

	Examples:
		| customer | inspectionType |
		| NISSAN | Dealer |
		| NISSAN | Home |

