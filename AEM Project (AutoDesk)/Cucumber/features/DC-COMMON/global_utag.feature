@DC
@TELIUM
@SLE2
@PT
@REGRESSION
@SLE1

Feature: Validating telium tag in dot com site




  Scenario Outline: 1. Validate dotcom home page has utag/telium tag

    Given the user navigates to the site "<local_site>"
    Then the page load with telium tag "<global-utag>"


    Examples:
      | local_site |  global-utag |
      | .com       |  //tags.tiqcdn.com/utag/autodesk/global-sites-qa/qa/utag.js | 
      | .ca/fr     |  //tags.tiqcdn.com/utag/autodesk/global-sites-qa/qa/utag.js |


### Prod telium tag verification is in DC-PROD folder > Basic-Functional-Validation-FSB-Support.feature