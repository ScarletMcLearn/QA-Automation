Feature: Completion of an inspection

	Background:
		Given there is an existing "NISSAN" "Home" request
		And I schedule the request
		And the inspection is completed

	Scenario: Able to view CR link and see request is completed
		Given I am on the request's details page
		Then the status of the request should be "Complete"
		And the re-inspection button should be enabled
		And the vehicle should have a complete check mark
		And the vehicle's view CR button should be enabled
		And clicking on the view CR button should open the CR PDF
