@IPM
@PROD
@PT
@SLE2
@REGRESSION

Feature: IPM: Non-Custom Products


  Scenario Outline: Validate Product 1 - standard (based on default-1) non custom product
    Given I resize the browser to "<window_size>"
    When I am on IPM page as "<access_url>"
    Then I am redirected to given "<result_url>"
    And I see days left "<days_left>"
    And page vertical breakpoint text as "<page_breakpoint>"
    And I should <view_or_hide> close button
    Examples:
      | window_size | access_url                                                     | result_url                         | days_left | page_breakpoint           | view_or_hide |
      | small       | qa-QA/product-1/trl.html?daysLeft=99&firstDay=yes&closeX=true& | qa-QA/global-default/trl/fd.html   | 99        | Small vertical breakpoint | view         |
      | large       | qa-QA/product-1/trl.html?daysLeft=30&firstDay=yes&             | qa-QA/global-default/trl/fd.html   | 30        | Large vertical breakpoint | hide         |
      | micro       | qa-QA/product-1/trl.html?daysLeft=0&                           | qa-QA/global-default/trl/0.html    | 0         | Micro vertical breakpoint | hide         |
      | small       | qa-QA/product-1/trl.html?daysLeft=0&preTrial=yes&              | qa-QA/global-default/trl/pt.html   | 0         | Small vertical breakpoint | hide         |
      | small       | qa-QA/product-1/std.html?daysLeft=15&closeX=true&              | qa-QA/global-default/std/29-4.html | 15        | Small vertical breakpoint | view         |
      | large       | qa-QA/product-1/std.html?daysLeft=5&                           | qa-QA/global-default/std/29-4.html | 5         | Large vertical breakpoint | hide         |
      | micro       | qa-QA/product-1/rtl.html?daysLeft=3&closeX=true&               | qa-QA/global-default/rtl/3.html    | 3         | Micro vertical breakpoint | view         |
      | large       | qa-QA/product-1/rtl.html?daysLeft=2&                           | qa-QA/global-default/rtl/2.html    | 2         | Large vertical breakpoint | hide         |


  Scenario Outline: Validate Product 1 - standard (based on default-1) non custom product for custom large
    Given I resize the browser to "<window_size>"
    When I am on IPM page as "<access_url>"
    Then I am redirected to given custom large "<result_url>"
    And I see days left "<days_left>"
    And page vertical breakpoint text as "<page_breakpoint>"
    And I should <view_or_hide> close button
    Examples:
      | window_size | access_url                                         | result_url                                             | days_left | page_breakpoint           | view_or_hide |
      | large       | qa-QA/product-1/trl.html?daysLeft=0&               | qa-QA/global-default/trl/0/custom-large-template.html  | 0         | Large vertical breakpoint | hide         |
      | large       | qa-QA/product-1/trl.html?daysLeft=10&preTrial=yes& | qa-QA/global-default/trl/pt/custom-large-template.html | 10        | Large vertical breakpoint | hide         |
