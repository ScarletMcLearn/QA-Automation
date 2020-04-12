@IPM
@PROD
@PT
@SLE2
@REGRESSION

Feature: IPM: Partially Custom Products


  Scenario Outline: Validate Product 2 - partially custom product based on Industry Template
    Given I resize the browser to "<window_size>"
    When I am on IPM page as "<access_url>"
    Then I am redirected to given "<result_url>"
    And I see days left "<days_left>"
    And page vertical breakpoint text as "<page_breakpoint>"
    And I should <view_or_hide> close button
    Examples:
      | window_size | access_url                                                    | result_url                           | days_left | page_breakpoint           | view_or_hide |
      | small       | qa-QA/product-2/trl.html?daysLeft=20&firstDay=yes&            | qa-QA/industry-default/trl/fd.html   | 20        | Small vertical breakpoint | hide         |
      | large       | qa-QA/product-2/trl.html?daysLeft=7&firstDay=no&              | qa-QA/industry-default/trl/29-4.html | 7         | Large vertical breakpoint | hide         |
      | micro       | qa-QA/product-2/std.html?daysLeft=0&firstDay=yes&closeX=true& | qa-QA/product-2/std/fd.html          | 0         | Micro vertical breakpoint | view         |
      | small       | qa-QA/product-2/std.html?daysLeft=3&                          | qa-QA/product-2/std/3.html           | 3         | Small vertical breakpoint | hide         |
      | large       | qa-QA/product-2/rtl.html?daysLeft=2&firstDay=no&              | qa-QA/product-2/rtl/2.html           | 2         | Large vertical breakpoint | hide         |

  Scenario Outline: Validate Product 2 - partially custom product based on Industry Template for custom large
    Given I resize the browser to "<window_size>"
    When I am on IPM page as "<access_url>"
    Then I am redirected to given custom large "<result_url>"
    And I see days left "<days_left>"
    And page vertical breakpoint text as "<page_breakpoint>"
    And I should <view_or_hide> close button
    Examples:
      | window_size | access_url                                                    | result_url                                               | days_left | page_breakpoint           | view_or_hide |
      | large       | qa-QA/product-2/trl.html?daysLeft=0&preTrial=yes&closeX=true& | qa-QA/industry-default/trl/pt/custom-large-template.html | 0         | Large vertical breakpoint | hide         |
      | large       | qa-QA/product-2/trl.html?daysLeft=0&                          | qa-QA/industry-default/trl/0/custom-large-template.html  | 0         | Large vertical breakpoint | hide         |
      | large       | qa-QA/product-2/std.html?daysLeft=0&                          | qa-QA/product-2/std/0/custom-large-template.html         | 0         | Large vertical breakpoint | hide         |
