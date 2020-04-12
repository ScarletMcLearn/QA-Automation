@DC
@Oxygen-SSO
@SLE2
@PT
@REGRESSION
@SLE1

Feature: DC Oxygen new-SSO validation - Part 2

#------------------------------ Scenario 14  ------------------------------#

  Scenario: EDU and Trial components should be in sync
    Given the user navigates to the DC page "/qa-automation/education/free-software/product-design-suite-personal" for the ".com"
    And user click on EDU sign in button
    And user add his EDU credential username "facultyis@mailinator.com" and password "test1234"
    When the user navigates to the DC page "/qa-automation/oxygen-trial-download/new-oxygen-trial-download-start-screen1" for the ".com"
    When User clicks on Download button
    And clicks on prodinfo 'Next' button
    And user selects usertype option as "A business user"
    And clicks on usertype 'Next' button
    Then user sees the Marketo form

#------------------------------ Scenario 15  ------------------------------#

  Scenario: Sign in form should appear in the correct local language
    Given the user navigates to the DC page "/qa-automation/home-sso" for the ".it"
    When user clicks on SIGN IN link from dropdown of utility bar
    Then the Sign In form should read header as "Accedi"

#------------------------------ Scenario 16  ------------------------------#

  Scenario Outline: Validating data-wat-val value when user is SIGNED OUT
    Given the user navigates to the DC page "/qa-automation/home-sso/sso-custom#" for the ".com"
    When user clicks on SIGN IN icon on the utility bar
    Then the data-wat-val for unauth "<link>" should be "<value>"
    Examples:
      | link                   | value                                    |
      | Manage products        | sso:manage products and downloads:unauth |
      | Account settings       | sso:account settings:unauth              |
      | Sign In                | sso:sign in:unauth                       |
      | Custom Link for Google | sso:qa custom:unauth                     |
      | QA TEST MSN            | sso:qa custom2:unauth                    |
      | Create Account         | sso:create acc:unauth                    |

#------------------------------ Scenario 17  ------------------------------#

  Scenario Outline: Validating data-wat-val value when user is SIGNED IN
    Given user clears cookies for domain ".com"
    And the user navigates to the DC page "/qa-automation/home-sso/sso-custom#" for the ".com"
    When user clicks on SIGN IN link from dropdown of utility bar
    And user signs in with username "students@mailinator.com" and password "test1234"
    When user clicks on SIGNED IN icon on the utility bar
    Then the data-wat-val for "<link>" should be "<value>"

    Examples:
      | link                  | value                             |
      | Manage products       | sso:manage products and downloads |
      | Account settings      | sso:account settings              |
      | Sign out              | sso:sign out                      |
      | Custom link for Yahoo | sso:custom yahoo                  |
      | QA TEST AMAZON        | sso:qa custom2b:unauth            |


#------------------------------ Scenario 18  ------------------------------#

  Scenario Outline: Validating custom link redirection when user is SIGNED OUT
    Given the user navigates to the DC page "/qa-automation/home-sso/sso-custom#" for the ".com"
    When user clicks on SIGN IN icon on the utility bar
    And user clicks on unauth link "<link>"
    Then user is redirected to "<redirect_url>" page

    Examples:
      | link                   | redirect_url                                    |
      | Custom Link for Google | https://www.google.com                          |
      | QA TEST MSN            | https://www.msn.com                             |
      | Create Account         | https://accounts-staging.autodesk.com/register? |

#------------------------------ Scenario 19  ------------------------------#

  Scenario Outline: Validating custom link redirection when user is SIGNED IN
    Given user clears cookies for domain ".com"
    And the user navigates to the DC page "/qa-automation/home-sso/sso-custom#" for the ".com"
    When user clicks on SIGN IN link from dropdown of utility bar
    And user signs in with username "students@mailinator.com" and password "test1234"
    When user clicks on SIGNED IN icon on the utility bar
    And user clicks on link "<link>"
    Then user is redirected to "<redirect_url>" page

    Examples:
      | link                  | redirect_url           |
      | Custom link for Yahoo | https://www.yahoo.com  |
      | QA TEST AMAZON        | https://www.amazon.com |