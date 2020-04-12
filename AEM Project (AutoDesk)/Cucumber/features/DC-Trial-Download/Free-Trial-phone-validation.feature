@DC
@SLE2
@PT
@PROD
@Trial
@REGRESSION
@SMOKE
@MaximizeBrowser

Feature: FreeTrial Phone Number Validation


Scenario Outline: - Validate error message is displayed when phone number format validation fails

Given I test on page "<url>"
And I enter "<username>" and "<password>"
And I use "<phone_number>" with incorrect format
Then error message should be displayed

Examples:
  | username                 | password | phone_number    | url                             |
  | facultyis@mailinator.com | test1234 | 123123123123123 | /products/fusion-360/free-trial |
  | facultyis@mailinator.com | test1234 | $@%#^^@123      | /products/fusion-360/free-trial |

