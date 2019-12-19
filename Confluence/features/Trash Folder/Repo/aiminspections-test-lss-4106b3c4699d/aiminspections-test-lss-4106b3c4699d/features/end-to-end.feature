Feature: End to end

	Scenario: e2e
		Given I log in
		And my account info is correct
		And I enter my contact info
		And I enter my inspection location
		And I schedule my inspection
		And I confirm my appointment
		Then I can see the appointment confirmed
		And I can see appointment confirmation number