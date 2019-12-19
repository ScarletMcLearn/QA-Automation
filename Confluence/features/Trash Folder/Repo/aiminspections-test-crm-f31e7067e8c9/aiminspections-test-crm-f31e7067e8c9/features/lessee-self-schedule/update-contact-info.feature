Feature: Update contact info

	Background:
		Given There is an existing "<customer>" "<requestType>" request
		And I am on the LSS site
		And I am logged in to the LSS site
		And I am on contact info page in LSS site

	Scenario Outline: Able to update contact info
		When I enter "<phone>" number
		And I enter "<email>"
		And I select "<phoneType>"
		And I select "<preferredContactMethod>"
		Then the continue button should be enabled

		Examples:
			| customer | requestType | phone | email | phoneType | preferredContactMethod |
			| NISSAN | HOME | 1112223344 | mail@mail.com | mobile | Phone |
			| NISSAN | HOME | 1112223344 | mail@mail.com | work | Email |
			| NISSAN | HOME | 1112223344 | mail@mail.com | other | Phone |

	Scenario Outline: Unable to update contact info
		When I enter "<phone>" number
		And I don't enter an email
		And I select "<preferredContactMethod>"
		Then I should see an error message

		Examples:
			| customer | requestType | phone | preferredContactMethod |
			| NISSAN | HOME | 1112223344 | Phone |
			| NISSAN | HOME | 1112223344 | SMS Text |
			| NISSAN | HOME | 1112223344 | Email |

	Scenario Outline: Unable to update contact info
		When I focus and blur the email field
		Then I should see an error message

	Scenario Outline: Unable continue update contact info form until form is valid
		When I enter phone number "<phone>"
		And I skip the email field
		And I select preferred contact method "<preferredContactMethod>"
		Then I should not be able to click continue

		Examples:
			| phone | preferredContactMethod |
			| 2483443434 | Phone |
			| 2483443434 | SMS Text |

	Scenario Outline: SMS disabled for Home phones
		When I select phone number type "Home"
		Then I should not be able to select 'SMS Text' as preferred contact method

	Scenario Outline: SMS disabled for Work phones
		When I select phone number type "Work"
		Then I should not be able to select 'SMS Text' as preferred contact method SMS

	Scenario Outline: SMS disabled for Work phones
		When I select phone number type "Other"
		Then I should not be able to select 'SMS Text' as preferred contact method SMS
