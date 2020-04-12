@IPM
@PROD
@PT
@SLE2
@REGRESSION

Feature: IPM: Date Ranges

Scenario Outline: 404 if page days are out of range. Validate Product 5 - complete custom content.
  Given I resize the browser to "<window_size>"
  When I am on IPM page "<access_url>"
  Then I am redirected to given "qa-QA/404.html"
  Examples:
    | window_size | access_url                           |
    | small       | qa-QA/product-5/trl.html?daysLeft=99&|
    | large       | qa-QA/product-5/trl.html?daysLeft=99&|
    | small       | qa-QA/product-5/trl.html?daysLeft=51&|
   	| large       | qa-QA/product-5/trl.html?daysLeft=51&|
    | mirco       | qa-QA/product-5/trl.html?daysLeft=31&|
    | large       | qa-QA/product-5/trl.html?daysLeft=31&|
    | micro       | qa-QA/product-5/trl.html?daysLeft=exist&|
    | large       | qa-QA/product-5/trl.html?daysLeft=exist&|


Scenario Outline: Display content when within the date range for standard page. Validate Product 5 - complete custom content.
  Given I resize the browser to "<window_size>"
  When I am on IPM page "<access_url>"
  Then I am redirected to given "<result_url>"
  And I see days left "<days_left>"
  Examples:
    | window_size | access_url                           | result_url                      | days_left |
    | small       | qa-QA/product-5/trl.html?daysLeft=50&| qa-QA/product-5/trl/50-45.html  | 50        |
    | large       | qa-QA/product-5/trl.html?daysLeft=50&| qa-QA/product-5/trl/50-45.html  | 50        |
    | small       | qa-QA/product-5/trl.html?daysLeft=46&| qa-QA/product-5/trl/50-45.html  | 46        |
    | large       | qa-QA/product-5/trl.html?daysLeft=46&| qa-QA/product-5/trl/50-45.html  | 46        |
    | small       | qa-QA/product-5/trl.html?daysLeft=45&| qa-QA/product-5/trl/50-45.html  | 45        |
    | large       | qa-QA/product-5/trl.html?daysLeft=45&| qa-QA/product-5/trl/50-45.html  | 45        |
    | micro       | qa-QA/product-5/trl.html?daysLeft=40&| qa-QA/product-5/trl/40.html     | 40        |
    | large       | qa-QA/product-5/trl.html?daysLeft=40&| qa-QA/product-5/trl/40.html     | 40        |
    | micro       | qa-QA/product-5/trl.html?daysLeft=30&| qa-QA/product-5/trl/30-4.html   | 30        |
    | micro       | qa-QA/product-5/trl.html?daysLeft=29&| qa-QA/product-5/trl/30-4.html   | 29        |
    | micro       | qa-QA/product-5/trl.html?daysLeft=4& | qa-QA/product-5/trl/30-4.html   | 4         |
    | small       | qa-QA/product-5/trl.html?daysLeft=3& | qa-QA/product-5/trl/3.html      | 3         |
    | small       | qa-QA/product-5/trl.html?daysLeft=2& | qa-QA/product-5/trl/2.html      | 2         |
    | small       | qa-QA/product-5/trl.html?daysLeft=1& | qa-QA/product-5/trl/1.html      | 1         |
    | small       | qa-QA/product-5/trl.html?daysLeft=0& | qa-QA/product-5/trl/0.html      | 0         |
    | small       | qa-QA/product-5/trl.html?preTrial=yes&firstDay=yes&daysLeft=1& | qa-QA/product-5/trl/pt.html | 1 |
    | small       | qa-QA/product-5/trl.html?daysLeft=99&preTrial=yes&  | qa-QA/product-5/trl/pt.html                       | 99 |
    | micro       | qa-QA/product-5/trl.html?daysLeft=1&preTrial=no&    | qa-QA/product-5/trl/1.html                        | 1  |
    | small       | qa-QA/product-5/trl.html?firstDay=yes&daysLeft=29&  | qa-QA/product-5/trl/fd.html | 29 |
    | small       | qa-QA/product-5/trl.html?firstDay=no&daysLeft=29&   | qa-QA/product-5/trl/30-4.html | 29 |


Scenario Outline: Display content when within the date range for custom large page. Validate Product 5 - complete custom content.
  Given I resize the browser to "large"
  When I am on IPM page "<access_url>"
  Then I am redirected to given custom large "<result_url>"
  And I see days left "<days_left>"
  Examples:
    | access_url                           | result_url                                           | days_left |
    | qa-QA/product-5/trl.html?daysLeft=30&| qa-QA/product-5/trl/30-4/custom-large-template.html  | 30        |
    | qa-QA/product-5/trl.html?daysLeft=29&| qa-QA/product-5/trl/30-4/custom-large-template.html  | 29        |
    | qa-QA/product-5/trl.html?daysLeft=4& | qa-QA/product-5/trl/30-4/custom-large-template.html  | 4         |
    | qa-QA/product-5/trl.html?daysLeft=3& | qa-QA/product-5/trl/3/custom-large-template.html     | 3 |
    | qa-QA/product-5/trl.html?daysLeft=2& | qa-QA/product-5/trl/2/custom-large-template.html     | 2 |
    | qa-QA/product-5/trl.html?daysLeft=1& | qa-QA/product-5/trl/1/custom-large-template.html     | 1 |
    | qa-QA/product-5/trl.html?daysLeft=0& | qa-QA/product-5/trl/0/custom-large-template.html     | 0 |
    | qa-QA/product-5/trl.html?preTrial=yes&firstDay=yes&daysLeft=1& | qa-QA/product-5/trl/pt/custom-large-template.html | 1 |
    | qa-QA/product-5/trl.html?daysLeft=99&preTrial=yes&  | qa-QA/product-5/trl/pt/custom-large-template.html | 99 |
    | qa-QA/product-5/trl.html?firstDay=yes&daysLeft=pt&  | qa-QA/product-5/trl/fd/custom-large-template.html | pt |