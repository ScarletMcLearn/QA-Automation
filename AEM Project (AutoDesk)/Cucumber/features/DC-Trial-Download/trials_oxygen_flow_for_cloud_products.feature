@DC
@TrialOxygenFlow
@SLE2
@PT
@REGRESSION
@SLE1

@ClearCookies

Feature: Trials Oxygen Flow: Cloud Products

  Validating successful download free trials flow for product BIM-360

#------------------------ Scenario 1 ----------------------------------#


  Scenario Outline: Validate complete flow to successful download for cloud product BIM-360
    Given User visits trial page "/qa-automation/oxygen-trial-download/cloud-product-bim360"
    When User click on Download button
    And User selects "<bim_product>"
    And clicks on next button
    And user selects usertype option as "A business user"
    And clicks on usertype 'Next' button
    And user signs in to his account
    And required field has "<label>"
    And user fills Marketo form
    And user clicks on Begin Trial button
    When User redirect to the new tab
    Then the correct page is loaded: "<page>"

    Examples:
       | bim_product  | label                      | page                                                |
       | BIM 360 Docs | Zip/Postal Code            | https://docs.b360.autodesk.com/session?redirect=%2F |
       | Bim 360 Glue | Zip/Postal Code (optional) | https://www.autodesk.com/                           |

#------------------------ Scenario 2 ----------------------------------#

@StorageClear
 Scenario: Validate complete Flow to successful download for another user type option
     Given User visits trial page "/qa-automation/oxygen-trial-download/cloud-product-bim360"
     When User click on Download button
     And clicks on next button
     When user selects usertype option as "A student or teacher"
     Then finds education heading as "Get free access to Autodesk software"
     And finds education text as "Students, teachers, and academic institutions worldwide are eligible for free access to Autodesk software. Yes, free. We genuinely believe in education"
     And User click on go to educatin community button
     Then User sees the page title


#------------------------ Scenario 3 ----------------------------------#

  @StorageClear
  Scenario Outline: Validate trials download flow if user visits diffrent browser and come back
    Given User visits trial page "/qa-automation/oxygen-trial-download/cloud-product-bim360"
    And User click on Download button
    And User selects "<bim_product>"
    And clicks on next button
    And user selects usertype option as "A business user"
    And clicks on usertype 'Next' button
    And user navigates to a different page
    When user returns to the "<local_site>" for "<cloud_product_publish_page>"
    And User click on Download button
    And user signs in to his account

    Examples:
      | cloud_product_publish_page                                | local_site | bim_product   |
      | /qa-automation/oxygen-trial-download/cloud-product-bim360 | .com       | Bim 360 Field |


#------------------------ Scenario 4 ----------------------------------#

  @StorageClear
  Scenario Outline: Trials download flow if user is already login and visits diffrent browser and come back
    Given User visits trial page "/qa-automation/oxygen-trial-download/cloud-product-bim360"
    And User click on Download button
    And User selects "<bim_product>"
    And clicks on next button
    And user selects usertype option as "A business user"
    And clicks on usertype 'Next' button
    And user signs in to his account
    And user navigates to a different page
    When user returns to the "<local_site>" for "<cloud_product_publish_page>"
    And User click on Download button
    Then user sees the Marketo form

    Examples:
      | cloud_product_publish_page                                | local_site | bim_product   |
      | /qa-automation/oxygen-trial-download/cloud-product-bim360 | .com       | Bim 360 Field |
