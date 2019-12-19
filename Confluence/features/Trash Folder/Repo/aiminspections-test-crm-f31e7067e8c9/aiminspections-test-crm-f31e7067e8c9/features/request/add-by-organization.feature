Feature: Add Inspection Request by Organization

	Background:
		Given there is an existing organization with location "123 Main ST, Woodside, NY 11109" and inspection location "34405 12 Mile RD, Farmington Hills, MI 48331"
		And there is an existing "NISSAN" "Home" request"

	Scenario:
		Given the request was created using the organization
		Then the request inspection location should be the same as the organization inspection location

