Feature: Enable customer for self-schedule

	Background:
		Given "<user>" is a "<customer>" user
		When "<user>" is logged in to CRM
		Then user should be able to see only "<customer>" related data

	Scenario Outline: Customer searches their own results in basic search
		Given there is an existing "<requestType>" request
		And there is an existing "<requestType>" request that is not mine
		And I basic search for "123"
		Then I should the request that is mine
		And I should not see the request that is not mine

	Scenario Outline: Customer searches their own results in advanced search
		Given there is an existing "<requestType>" request
		And there is an existing "<requestType>" request that is not mine
		And I advanced search for "<status>", "<inspectionType>", "<appointmentStatus>" from the drop down field
		Then I should the request that is mine
		And I should not see the request that is not mine

	Scenario Outline: Customer creates their own requests
		Given I create a "<requestType>" request
		Then the request should exist

	Scenario Outline: Customer edits their own requests' lessee info
		Given there is an existing "<requestType>" request
		And I edit the request's lessee info "<LesseeFName>", "<LesseeLName>", "<LesseeAddress>", "<LesseePhone>", "<LesseeEmail>", "<MaturityDate>", "<StateOriginallyLessedIn>"
		Then I should see my changes being updated
		And I should see a log of record in request history section

	Scenario Outline: Customer edits Vehicle info
		Given there is an existing "<requestType>" request
		And I edit vehicle info for the request "<Stock#>", "<Color>", "<Year>", "<Make>", "<Model>", "<Trim>"
		Then I should see my changes being updated
		And I should see a log of record in request history section

	Scenario Outline: Customer adds a comment
		Given there is an existing "<requestType>" request
		And I add a comment
		Then the comment should be created

	Scenario Outline: Customer schedules their own appointment
		Given there is an existing "<requestType>" request
		And the request does not have an active appointment
		And I schedule an appointment for "<TimeLength>" from now, in the "<TimeWindow>"
		Then the appointment should be scheduled

	Scenario outline: customer edits their own appointment
		Given there is an existing "<requestType>" request
		And the request has an active appointment
		And I reschedule an appointment for "<TimeLength>" from now, in the "<TimeWindow>"
		Then the appointment should be rescheduled

	Scenario Outline: Customer cancels an appointment
		Given there is an existing "<requestType>" request
		And the request has an active appointment
		And I cancel an appointment
		Then the appointment should be canceled

		Examples:
			| user | customer | status | inspectionType | appointmentStatus | LesseeFName | LesseeLName | LesseeAddress | LesseePhone | LesseeEmail | MaturityDate | StateOriginallyLessedIn | Stock# | Color | Year | Make | Model | Trim |
			| customerSelfSchedule | NISSAN | Scheduled | Home | Scheduled | Bob | Jones | 34405 12 Mile RD, Farmington Hills, MI 48331 | 5867895645 | Bob@mail.com | 02/15/2017 | New York - NY | 567345 | Black | 2012 | Honda | Accord | SE - Sports pacage Trim |
