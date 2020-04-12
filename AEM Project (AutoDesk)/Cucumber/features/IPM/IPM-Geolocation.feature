@IPM
@PROD
@PT
@SLE2
@REGRESSION

Feature: IPM: Geolocation

  Scenario Outline: Validate geolocation with prices
    Given I resize the browser to "<window_size>"
    When I am on IPM_Links page with "<access_url>" and "<parameter>"
    Then I am redirected to given "<result_url>"
    And I should see the price text as "<price_text>"
    Examples:
      | window_size | access_url                | parameter              | result_url                      | price_text                    |
      #| large       | qa-QA/product-1/trl.html?| &country=QAAUTOMATION  | qa-QA/global-default/trl/3/custom-large-template.html | QAAUTOMATION Product 1 Price |
      | small       | qa-QA/product-1/trl.html? | &country=QAAUTOMATION2 | qa-QA/global-default/trl/3.html | QAAUTOMATION2 Product 1 Price |
      | large       | qa-QA/product-4/trl.html? | &country=QAAUTOMATION  | qa-QA/product-4/trl/3.html      | US Product 4 Price            |
      | small       | qa-QA/product-4/trl.html? | &country=QAAUTOMATION2 | qa-QA/product-4/trl/3.html      | US Product 4 Price            |
      | micro       | qa-QA/product-1/trl.html? |                        | qa-QA/global-default/trl/3.html | US Product 1 Price            |

  Scenario Outline: Validate geolocation with prices for custom large
    Given I resize the browser to "<window_size>"
    When I am on IPM_Links page with "<access_url>" and "<parameter>"
    Then I am redirected to given custom large "<result_url>"
    And I should see the price text as "<price_text>"
    Examples:
      | window_size | access_url                | parameter             | result_url                                            | price_text                   |
      | large       | qa-QA/product-1/trl.html? | &country=QAAUTOMATION | qa-QA/global-default/trl/3/custom-large-template.html | QAAUTOMATION Product 1 Price |


  Scenario Outline: Validate geolocation without prices
    Given I resize the browser to "<window_size>"
    When I am on IPM_Links page with "<access_url>" and "<parameter>"
    Then I am redirected to given "<result_url>"
    Examples:
      | window_size | access_url                | parameter | result_url                        |
      | small       | qa-QA/product-2/trl.html? |           | qa-QA/industry-default/trl/3.html |

  Scenario Outline: Validate geolocation without prices for custom large
    Given I resize the browser to "<window_size>"
    When I am on IPM_Links page with "<access_url>" and "<parameter>"
    Then I am redirected to given custom large "<result_url>"
    Examples:
      | window_size | access_url                | parameter              | result_url                                       |
      | large       | qa-QA/product-5/trl.html? | &country=QAAUTOMATION2 | qa-QA/product-5/trl/3/custom-large-template.html |
