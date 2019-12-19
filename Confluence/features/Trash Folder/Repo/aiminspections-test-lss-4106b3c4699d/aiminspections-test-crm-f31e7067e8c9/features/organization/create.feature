Feature: Organization creation

	Scenario Outline: Create an active organization
		When I create a new organization "<customer>" "<orgType>" "<name>" "<billingAddress>" "<inspectionLocation>"
		Then the organization should be created
		And the organization should be active

	Scenario Outline: Create an inactive organization
		When I create a new organization "<customer>" "<orgType>" "<name>" "<billingAddress>" "<inspectionLocation>"
		And I enable the inactive option
		Then the organization should be created
		And the organization should be inactive

	Scenario Outline: Create an organization with inspection location address same as billing address
		When I create an active "<customer>" "<orgType>" "<name>"
		And the organization billing address is "<billingAddress>"
		And the organization inspection location is "<billingAddress>"
		Then the organization should be created
		And the organization should be active
		And the organization inspection location should be same as the organization billing address

	Scenario Outline: Create an organization where inspection location address is different than billing address
		When I create an active "<customer>" "<orgType>" "<name>"
		And the organization billing address is "<billingAddress>"
		And the organization inspection location is "<inspectionLocation>"
		Then the organization should be created
		And the organization should be active
		And the organization inspection location should be different than organization billing address

		Examples:
			| customer | orgType | name | billingAddress | inspectionLocation |
			| NISSAN | Dealer | Nissan Dealer on 12 Mile RD | 5678 12 Mile RD, Farmington Hills, MI 48331 | 34405 12 Mile RD, Farmingtion Hills, MI 48331 |
			| NISSAN | Auction | Nissan Auction House on 12 Mile RD | 5678 12 Mile RD, Farmington Hills, MI 48331 | 34405 12 Mile RD, Farmingtion Hills, MI 48331 |
			| MANHEIM | Dealer | Ford Dealer on 12 Mile RD | 5678 12 Mile RD, Farmington Hills, MI 48331 | 34405 12 Mile RD, Farmingtion Hills, MI 48331 |
			| MANHEIM | Auction | Manheim Auction House on 12 Mile RD | 5678 12 Mile RD, Farmington Hills, MI 48331 | 34405 12 Mile RD, Farmingtion Hills, MI 48331 |
