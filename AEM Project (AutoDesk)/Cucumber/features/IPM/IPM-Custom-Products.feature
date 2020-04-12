@IPM
@PROD
@PT
@SLE2
@REGRESSION

Feature: IPM: Custom Products

  Scenario Outline: 1- Validate Product 4 - complete custom content
    Given I resize the browser to "<window_size>"
    When I am on IPM page as "<access_url>"
    Then I am redirected to given "<result_url>"
    And I see days left "<days_left>"
    And page vertical breakpoint text as "<page_breakpoint>"
    And I should <view_or_hide> close button
    Examples:
      | window_size | access_url                                                     | result_url                    | days_left | page_breakpoint           | view_or_hide |
      | small       | qa-QA/product-4/trl.html?daysLeft=99&firstDay=yes&closeX=true& | qa-QA/product-4/trl/fd.html   | 99        | Small vertical breakpoint | view         |
      | large       | qa-QA/product-4/trl.html?daysLeft=20&firstDay=yes&             | qa-QA/product-4/trl/fd.html   | 20        | Large vertical breakpoint | hide         |
      | large       | qa-QA/product-4/trl.html?daysLeft=28&closeX=true&              | qa-QA/product-4/trl/29-4.html | 28        | Large vertical breakpoint | hide         |
      | micro       | qa-QA/product-4/std.html?daysLeft=30&firstDay=yes&closeX=true& | qa-QA/product-4/std/fd.html   | 30        | Micro vertical breakpoint | view         |
      | micro       | qa-QA/product-4/rtl.html?daysLeft=1&closeX=true&               | qa-QA/product-4/rtl/1.html    | 1         | Micro vertical breakpoint | view         |
      | small       | qa-QA/product-4/rtl.html?daysLeft=0&closeX=false&              | qa-QA/product-4/rtl/0.html    | 0         | Small vertical breakpoint | hide         |


  Scenario Outline: 2- Validate Product 4 - complete custom large content
    Given I resize the browser to "<window_size>"
    When I am on IPM page as "<access_url>"
    Then I am redirected to given custom large "<result_url>"
    And I see days left "<days_left>"
    And page vertical breakpoint text as "<page_breakpoint>"
    And I should <view_or_hide> close button
    Examples:
      | window_size | access_url                                         | result_url                                        | days_left | page_breakpoint           | view_or_hide |
      | large       | qa-QA/product-4/std.html?daysLeft=20&firstDay=yes& | qa-QA/product-4/std/fd/custom-large-template.html | 20        | Large vertical breakpoint | hide         |



