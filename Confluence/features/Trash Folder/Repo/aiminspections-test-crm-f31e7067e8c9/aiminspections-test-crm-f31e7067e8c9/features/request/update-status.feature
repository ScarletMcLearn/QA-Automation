Feature: Update request status

	Background:
		Given there is an existing "<customer>" "<inspectionType>" request

	Scenario Outline:
		When I update the request status to "<status>"
		Then the request status should be "<status>"

	Examples:
		| customer | inspectionType | status     |
		| MANHEIM  | Auction        | Scheduled  |
		| MANHEIM  | Auction        | ATL Review |
		| MANHEIM  | Auction        | On Hold    |
		| MANHEIM  | Auction        | Cancel     |
		| NISSAN   | Dealer         | Scheduled  |
		| NISSAN   | Dealer         | On Hold    |
		| NISSAN   | Dealer         | Cancel     |
