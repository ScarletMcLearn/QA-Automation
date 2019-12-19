Feature: Lease Import Handling Adjusted Maturity Date

	Scenario Outline: Handle Adjusted Maturity Date
		Given a lease import file is uploaded with maturity date "<MD>" and adjusted maturity date "00000000"
		When I view the lease import
		Then I should see maturity date as adjusted maturity date

	Scenario Outline: Handle missing Adjusted maturity date
		Given a lease import file is uploaded with maturity date "<MD>" and adjusted maturity date "00000000"
		And adjusted maturity date is missing
		When I view the lease import
		Then I should see maturity date as maturity date

	Scenario Outline: Handle invalid Adjusted maturity date
		Given a lease import file is uploaded with maturity date "<MD>" and the adjusted maturity date is invalid
		When I view the lease import
		Then I should see maturity date as maturity date

	Examples:
		| AMD | MD |
		| 20170225 | 20180225 |
