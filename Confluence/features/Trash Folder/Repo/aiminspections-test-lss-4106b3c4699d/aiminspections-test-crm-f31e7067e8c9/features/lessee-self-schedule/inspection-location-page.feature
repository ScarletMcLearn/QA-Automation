Feature: Add inspection location page

	Background:
		Given There is an existing "<customer>" "<requestType>" request
		And I am on the LSS site
		And I am logged in to the LSS site
		And I am on inspection location page in LSS site

	Scenario Outline: Enter on site contact when "I will be there"
		when I select "<locationType>"
		And I select "<presence>"
		And I enter "<locationAddress>"
		Then I should be able to continue

		Examples:
			| locationType | | presence | locationAdress |
			| Home | I will be there | 34405 12 Mile Rd, Farmington Fills, MI 48331 |
			| Workplace | I will be there | 30665 Northwestern Hwy, Farmington Fills, MI 48331 |
			| Dealership | I will be there |  34405 12 Mile Rd, Farmington Fills, MI 48331 |
			| Other | I will be there | 37555 W 12 Mile Rd, Farmington Hills, MI 48331 |

	Scenario Outline: Enter on site contact when "I will not be there"
		when I select "<locationType>"
		And I select "<presence>"
		And I enter "<locationAddress>"
		And I enter "<contactName>"
		And I select "<phoneType>"
		And I enter "<email>"
		Then I should be able to continue

		Examples:
			| locationType | presence | locationAddress | contactName | phoneType | email |
			| Home | I will not be there | 34405 12 Mile Rd, Farmington Fills, MI 48331 | Jim | Mobile | Jim@mail.com |
			| Workplace | I will not be there | 30665 Northwestern Hwy, Farmington Fills, MI 48331 | Bill | Home | Bill@mail.com |
			| Dealership | I will not be there | 34405 12 Mile Rd, Farmington Fills, MI 48331 | Sam | Work | Sam@mail.com |
			| Other | I will not be there | 37555 W 12 Mile Rd, Farmington Hills, MI 48331 | Greg | Other | Greg@mail.com |

	Scenario Outline: SMS disabled for 'Home' phone type
		When I select phone number type "Home"
		Then I should not be able to select 'SMS text' as preferred contact method

	Scenario Outline: SMS disabled for 'Work' phone type
		When I select phone number type "Work"
		Then I should not be able to select 'SMS text' as preferred contact method

	Scenario Outline: SMS disabled for 'Other' phone type
		When I select phone number type "Other"
		Then I should not be able to select 'SMS text' as preferred contact method

	Scenario Outline: Unable to continue if any required fields in inspection location page are missing
		When I enter the location type
		And I select 'I will be there'
		And I don't enter address
		Then I should not be able to continue
