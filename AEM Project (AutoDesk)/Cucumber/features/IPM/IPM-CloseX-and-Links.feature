@IPM
@PROD
@PT
@SLE2
@REGRESSION

Feature: IPM: Close X and Links

  Scenario Outline: 1- Validate whether close button present or not
    Given I resize the browser to "<window_size>"
    When I am on IPM_Links page as "<access_url>" and "<parameter>"
    Then I am redirected to given "<result_url>"
    And I should <view_or_hide> close button
    Examples:
      | window_size | access_url                | parameter            | result_url                      | view_or_hide |
      | small       | qa-QA/product-1/trl.html? |                      | qa-QA/global-default/trl/3.html | hide         |
      | micro       | qa-QA/product-1/trl.html? | &closeX=true         | qa-QA/global-default/trl/3.html | view         |
      | micro       | qa-QA/product-1/trl.html? | &closeX=false        | qa-QA/global-default/trl/3.html | hide         |
      | small       | qa-QA/product-1/trl.html? | &closeX=INVALIDVALUE | qa-QA/global-default/trl/3.html | hide         |
      | small       | qa-QA/product-1/trl.html? | &closex=true         | qa-QA/global-default/trl/3.html | hide         |
      | large       | qa-QA/product-1/rtl.html? |                      | qa-QA/global-default/rtl/3.html | hide         |


  Scenario Outline: 2- Validate whether close button present or not for custom large
    Given I resize the browser to "<window_size>"
    When I am on IPM_Links page as "<access_url>" and "<parameter>"
    Then I am redirected to given custom large "<result_url>"
    And I should <view_or_hide> close button
    Examples:
      | window_size | access_url                | parameter | result_url                                            | view_or_hide |
      | large       | qa-QA/product-1/trl.html? |           | qa-QA/global-default/trl/3/custom-large-template.html | hide         |