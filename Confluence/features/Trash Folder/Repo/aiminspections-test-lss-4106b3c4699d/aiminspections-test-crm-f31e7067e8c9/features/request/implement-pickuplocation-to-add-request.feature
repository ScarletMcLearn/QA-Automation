Feature: Implement pickup location in add request page

	Background:
		Given there is an existing organization with pickup location "<pickupLocation>"

	Scenario Outline: Able to view pickup location
		When I create a "MANHEIM" "Auction" request
		And I select the existing organization
		Then I should see pickup location populated in the request

	Scenario Outline: Able to edit pickup location
		When I create a "MANHEIM" "Auction" request
		And I select the existing organization
		And the pickup location is displayed
		Then I should be able to edit the pickup location to "<pickupLocationB>"

		Examples:
			| pickupLocation | pickupLocationB |
			| 4568 Main ST, Astoria, NY 11102 | 34403 12 Mile RD, Farmington Hills, MI 48331 |
