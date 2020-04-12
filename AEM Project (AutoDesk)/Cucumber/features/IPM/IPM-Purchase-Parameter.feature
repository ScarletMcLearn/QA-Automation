@IPM
#@PROD -- Do not run on PROD
#@PT -- Do not run on PROD
@SLE2
@REGRESSION

Feature: IPM: Purchase Parameter

  Scenario Outline: Purchase base on the QueryParam (NO)
    Given I am on IPM_Url1 "<access_url>"
    Then I see days left header as "<days_left>"
    And purchase text yes as "<purchase_text>"
    And can see renewal button
    Examples:
    | access_url | days_left | purchase_text |
    | qa-QA/QAAP/rtl.html?daysLeft=0&purchase=yes | 0 DAYS LEFT | Text displayed when purchase parameter is set as YES or purchase parameter is not provided |
    | qa-QA/QAAP/rtl.html?daysLeft=2&purchase=yes | 2 DAYS LEFT | Text displayed when purchase parameter is set as YES or purchase parameter is not provided |

  Scenario Outline: Purchase base on the QueryParam (YES)
    Given I am on IPM_Url1 "<access_url>"
    Then I see days left header as "<days_left>"
    And purchase text no as "<purchase_text>"
    And cannot see renewal button
    Examples:
    | access_url | days_left | purchase_text |
    | qa-QA/QAAP/rtl.html?daysLeft=0&purchase=no | 0 DAYS LEFT | Text displayed when purchase parameter is set as NO |
    | qa-QA/QAAP/rtl.html?daysLeft=2&purchase=no | 2 DAYS LEFT | Text displayed when purchase parameter is set as NO |