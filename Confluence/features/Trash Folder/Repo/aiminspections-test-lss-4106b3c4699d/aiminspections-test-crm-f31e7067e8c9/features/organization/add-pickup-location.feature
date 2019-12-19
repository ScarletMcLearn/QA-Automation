Feature: Add pick up location

	Scenario: Add pick up location to an organization using the inspection location
		Given I create a "<customer>" "<orgType>" organization
		When I add pickup location that is the same as the inspection location
		Then the pickup location should be the same as the inspection location

	Scenario: Add a custom pickup location
		Given I create a "<customer>" "<orgType>" organization
		When I add the pickup location "34405 12 Mile Road, Farmington Hills, MI, 48331"
		Then the pickup location should be "34405 12 Mile Road, Farmington Hills, MI, 48331"

		Examples:
			| customer | orgType |
			| MANHEIM | Dealer |
			| MANHEIM | Auction |

