Feature: Modify UTC reschedule to use earliest reschedule date

	Background:
		Given there is "<customer>" "<inspectionType>" request
		And the appointment is active

	Scenario: Reschedule date is before the SLA data on the request
		When I utc the appointment
		And I select "<Reason>" "<Sub-Reason>"
		And I select the reschedule date before the SLA date
		Then I should see the earlyStart date as beginning of the day on the reschedule date
		And I should see dueDate as end of the day on the original sla date

	Scenario: Reschedule date is after the SLA date
		When I utc the appointment
		And I select "<Reason>" "<Sub-Reason>"
		And I select the reschedule date After the SLA date
		Then I should see the earlyStart date as beginning of the day on the reschedule date
		And I should see dueDate as 2 business days after the reschedule date

	Scenario: Reschedule without a date
		When I utc the appointment
		And I select "<Reason>" "<Sub-Reason>"
		And I don't select the reschedule date
		Then I should see the earlyStart as the original earlyStart date
		And I should see dueDate as 2 business days from the original earlyStart date

	Scenario: UTC Reschedule with Date
		When I utc the appointment
		And I select "<Reason>" "<Sub-Reason>"
		And I select a reschedule date
		Then I should see the earlyStart as the original earlyStart date
		And I should see dueDate as 2 business days from the original earlyStart date

	Examples:
		| customer | inspectionType | Reason | Sub-Reason |
		| NISSAN | Dealer | Vehicle Unavailable | In body |

