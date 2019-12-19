Feature: Read only role for CRM

	Background:
		Given I am signed in as a read only user

	Scenario: Read-only user is able to search for requests
		Given I am on basic search page
		When I search for requests
		Then I should be able to see all active requests

	Scenario: Read-only user should not be able to create requests
		When I go to "Request" tab
		Then I shouldn't be able to see "Add request" link

	Scenario: Read-only user should not be able to create organization
		When I go to "Request" tab
		And I shouldn't be able to see "Add organization" link

	Scenario: Read-only user should not be able to edit lessee's info
		When I view a lessee's request in request details page
		Then I shouldn't be allowed to delete or update lessee's info

	Scenario: Read-only user should not be able to edit Dealer's info
		When I view a dealer's request in request details page
		Then I shouldn't be allowed to delete or update dealer's info

	Scenario: Read-only user should not be able to edit vehicle info
		When I view a request in request details page
		Then I shouldn't be allowed to delete or update vehicle's info

	Scenario: Read-only user should not be able to schedule an inspection
		When I view 'Current Appointment detail' section
		And I try to schedule an inspection
		Then I shouldn't see 'Schedule' button
		And I shouldn't see three dotted icon

	Scenario: Read-only user should not be able to edit organization
		When I search for organization
		And I view the organization
		Then I should only be able to read only
		And I should not be able to view edit icon

	Scenario: Read-only user should not be able to change request's status
		When I view a request in request details page
		And I try to update request status
		Then I shouldn't be allowed to update request's status

	Scenario: Read-only user should not be able to copy requests
		When I search for "Long Term Order" inspection type requests
		Then I shouldn't see 'copy requests' link

	Scenario: Read-only user should not be able to add inspector comment from edit inspector comment
		When I view request in request details page
		And I try to add comment for inspector
		Then I shouldn't be able to view the pencil icon to add comments

	Scenario: Read-only user should not be able to add internal comment
		When I view request in request details page
		Then I shouldn't be able to see 'Add comment' button displayed

	Scenario: Read-only user should not be able to edit internal comment
		When I view request in request details page
		And there is a comment being displayed
		Then I shouldn't be able to see edit 'Pencil' icon displayed
