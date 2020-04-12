@DC
@Oxygen-SSO
@SLE2
@PT
@REGRESSION
@FFUA
@SLE1

Feature: DC Oxygen new-SSO validation - On Firefox
  Scenario Outline: 'Signed IN' icon displayed in the utility bar when the user is logged in
    Given the user navigates to the DC page "<published_page>" for the "<site>"
    When user clicks on SIGN IN link from dropdown of utility bar
    And user signs in with username "students@mailinator.com" and password "test1234"
    Then the user should see a SIGNED IN icon on the utility bar

    Examples:
      | site | published_page          |
      | .com | /qa-automation/home-sso |