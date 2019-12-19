Feature: Home page

	Background:
		Given I am on the homepage

	Scenario: I can see AIM logo
		Then I can see the Aim logo

	Scenario: I can see the schedule button
		Then I can see the schedule button

	Scenario: I can click the schedule button
		When I click the schedule button
		Then I am taken to the login page

	Scenario: I can see the login link
		Then I can see the login link

	Scenario: I can click the login link
		When I click the login link
		Then I am taken to the login page