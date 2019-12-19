Feature: Appointment schedule page

	Background:
		Given I am logged in
		And I am on appointment schedule page

	Scenario: Click on back button
		When I click on the back button
		Then I will be taken to inspection location page

	Scenario: Continue button is disabled
		Then the continue button is disabled

	Scenario: Check for progress status bar
		Then the progress status bar is highlighting "SCHEDULE"

	Scenario: Display calendar and verify current month
		Then I see the calendar
		And the calendar month is the current month

	Scenario: Select selectable dates from current month
		Given a selectable date is displayed
		When I select a date from the calendar
		Then I can see the correct date is displayed

	Scenario: Select a time from the time slot
		Given I select a date from the calendar
		And the time slot is displayed
		And I select a time from the time slot
		Then the time is selected
		And the continue button is enabled

	Scenario: Expected correct text is displayed when date and time is selected
		Then the expected correct text is displayed

	Scenario: Click on continue button in order to move to review page
		When I see the calendar
		And a selectable date is displayed
		And I select a date from the calendar
		And the time slot is displayed
		And I select a time from the time slot
		And the continue button is enabled
		And I click the continue button
		Then I am taken to review page

	Scenario: Click on back button
		When I click on the back button
		Then I will be taken to inspection location page
