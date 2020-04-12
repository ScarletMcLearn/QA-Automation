@BRAND
@SMOKE
@SLE2
@PT
@PROD

Feature: Basic functional validation of brand site
  
  Scenario: 1. Validate Page Title
    Given user is on brandsite page "/our-brand"
    Then user see the page title


  Scenario: 2. Access links from Context Nav
    Given user is on brandsite page "/our-brand"
    When user select Brand Elements tab from Context Nav
    And user click on Get Started link
    Then user is redirected to this url "/brand-elements/get-started"


  Scenario: 3. Access links from Left Nav
    Given user is on brandsite page "/brand-elements/get-started"
    When user click Typography from left Nav
    And user click on Artifakt in applications link
    Then user is redirected to this path "/brand-elements/typography#how-to-use-artifakt"
