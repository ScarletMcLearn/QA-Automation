#Prod: http://www.autodesk.org

@DOTORG
@SMOKE
@SLE2
@PT
@PROD


Feature: Basic functional validation of Dotorg
  Scenario: 1. Verify Page Title
    Given user is on page dotorg site
    Then user see page title "Corporate Philanthropy For Impact Design | Autodesk"


  Scenario: 2. Access Subscribe page
    Given user is on page dotorg site
    When user clicks on "Who we are" link
    Then user is directed to this url "/who-we-are"

  Scenario: 3. Access links from Context Nav
    Given user is on page dotorg site
    When user clicks on "What we do" link
    And user clicks on "Disaster response" link
    Then user is directed to this url "/what-we-do/disaster-response"
