Feature: SLA date

	Scenario: Verify that sla date is calculated in business days
		When a dealer request is imported
		Then the SLA date for the request should be in two business days
