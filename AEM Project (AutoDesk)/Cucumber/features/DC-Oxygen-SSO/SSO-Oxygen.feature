@DC
@Oxygen-SSO
@SLE2
@PT
@REGRESSION
@ClearCookies
@SessionStorageClear
@StorageClear
@SLE1

Feature: DC Oxygen new-SSO validation - Part 1

#------------------------------ Scenario 1  ------------------------------#

  Scenario Outline: 'Sign IN' icon displayed in the utility bar when the user is not logged in
    Given the user navigates to the DC page "<published_page>" for the "<site>"
    Then the user should see a SIGN IN icon on the utility bar

    Examples:
      | site | published_page          |
      | .com | /qa-automation/home-sso |
      | .it  | /qa-automation/home-sso |

#------------------------------ Scenario 2  ------------------------------#

  Scenario Outline: user redirected to oxygen logon page on clicking "Sign In" icon
    Given the user navigates to the DC page "<published_page>" for the "<site>"
    When user clicks on SIGN IN link from dropdown of utility bar
    Then user should be redirected to oxygen "<logon_page>"

    Examples:
      | site | published_page          | logon_page            |
      | .com | /qa-automation/home-sso | /Authentication/LogOn |
      | .de  | /qa-automation/home-sso | /Authentication/LogOn |

#------------------------------ Scenario 3  ------------------------------#

  Scenario Outline: 'Signed IN' icon displayed in the utility bar when the user is logged in
    Given user clears cookies for domain "<site>"
    And the user navigates to the DC page "<published_page>" for the "<site>"
    When user clicks on SIGN IN link from dropdown of utility bar
    And user signs in with username "students@mailinator.com" and password "test1234"
    Then the user should see a SIGNED IN icon on the utility bar

    Examples:
      | site | published_page          |
      | .com | /qa-automation/home-sso |
      | .de  | /qa-automation/home-sso |

#------------------------------ Scenario 4  ------------------------------#

  Scenario Outline: Panel with correct links displayed in the utility bar when Signed In
    Given user clears cookies for domain "<site>"
    And the user navigates to the DC page "<published_page>" for the "<site>"
    When user clicks on SIGN IN link from dropdown of utility bar
    And user signs in with username "students@mailinator.com" and password "test1234"
    And user clicks on SIGNED IN icon on the utility bar
    Then the signed in panel should open with the correct links as "<manage_products>","<account_settings>" and "<sign_out>" when signed in

    Examples:
      | site | published_page          | manage_products             |account_settings       |sign_out    |
      | .com | /qa-automation/home-sso |Manage products & downloads  |   Account settings    |  Sign out  |
      | .it  | /qa-automation/home-sso |Gestisci prodotti e download |  Impostazioni account |  Esci      |

#------------------------------ Scenario 5  ------------------------------#

  Scenario Outline: Panel with correct links displayed in the utility bar when NOT Signed in
    Given the user navigates to the DC page "<published_page>" for the "<site>"
    When user clicks on SIGN IN icon on the utility bar
    Then the signed in panel should open with the correct links as "<manage_products>","<account_settings>" and "<sign_in>" when not signed in
    And correct url should be listed for the links 'Manage Products','Account Settings' and 'Sign In'

    Examples:
      | site | published_page          |manage_products    |account_settings              |sign_in              |
      | .com | /qa-automation/home-sso | Autodesk Account  | Manage products & downloads  |Account settings     |     
      | .it  | /qa-automation/home-sso |Autodesk Account   |Gestisci prodotti e download  |Impostazioni account |


#------------------------------ Scenario 6  ------------------------------#

  Scenario Outline: user signs out when the 'Sign OUT' link is clicked on the Panel displayed in the utility bar
    Given user clears cookies for domain "<site>"
    And the user navigates to the DC page "<published_page>" for the "<site>"
    When user clicks on SIGN IN link from dropdown of utility bar
    And user signs in with username "students@mailinator.com" and password "test1234"
    And user clicks on SIGNED IN icon on the utility bar
    And user clicks on SIGN OUT link
    Then the user should see a SIGN IN icon on the utility bar

    Examples:
      | site | published_page          |
      | .com | /qa-automation/home-sso |
      | .it  | /qa-automation/home-sso |
  

#------------------------------ Scenario 7  ------------------------------#

  Scenario Outline: user redirected to user profile page when the 'MY ACCOUNT' link is clicked in Panel displayed in the utility bar
    Given user clears cookies for domain "<site>"
    And the user navigates to the DC page "<published_page>" for the "<site>"
    When user clicks on SIGN IN link from dropdown of utility bar
    And user signs in with username "students@mailinator.com" and password "test1234"
    And user clicks on SIGNED IN icon on the utility bar
    And user clicks on ACCOUNT SETTINGS link
    Then user should be redirected to oxygen "<profile_page>"
    And user is still signed on when navigating back to the Dotcom page with "<site>"

    Examples:
      | site   | published_page          | profile_page              |
      | .com   | /qa-automation/home-sso | /users/studentsTQDBW/view |
      | .co.uk | /qa-automation/home-sso | /users/studentsTQDBW/view |


#------------------------------ Scenario 8  ------------------------------#

  Scenario Outline: user login persists on visiting a different page and navigating back to the Dotcom page
    Given user clears cookies for domain "<site>"
    And the user navigates to the DC page "<published_page>" for the "<site>"
    When user clicks on SIGN IN link from dropdown of utility bar
    And user signs in with username "students@mailinator.com" and password "test1234"
    And navigates to an external site and returns back to the Dotcom page "<published_page>" for the "<site>"
    Then the user should see a SIGNED IN icon on the utility bar

    Examples:
      | site   | published_page          |
      | .com   | /qa-automation/home-sso |
      | .co.uk | /qa-automation/home-sso |


#------------------------------ Scenario 9  ------------------------------#

  Scenario Outline: User login persists when user lands on a new tab of the dotcom page.
    Given user clears cookies for domain "<site>"
    And the user navigates to the DC page "<published_page>" for the "<site>"
    When user clicks on SIGN IN link from dropdown of utility bar
    And user signs in with username "students@mailinator.com" and password "test1234"
    And user clicks on the link in the context nav, which opens link in new tab
    Then the user should see a SIGNED IN icon on the utility bar

    Examples:
      | site | published_page                                    |
      | .com | /qa-automation/home-sso/products/autocad/overview |
      | .it  | /qa-automation/home-sso/products/autocad/overview |

#------------------------------ Scenario 10  ------------------------------#

  @StorageClear
  Scenario: SSO nav and Trial component should be in sync
    Given the user navigates to the DC page "/qa-automation/oxygen-trial-download/new-oxygen-trial-download-start-screen1" for the ".com"
    When user clicks on SIGN IN link from dropdown of utility bar
    And user signs in with username "students@mailinator.com" and password "test1234"
    And User clicks on Download button
    And clicks on prodinfo 'Next' button
    And user selects usertype option as "A business user"
    And clicks on usertype 'Next' button
    Then user sees the Marketo form

#------------------------------ Scenario 11  ------------------------------#

  @WIP
  Scenario: SSO nav and EDU component should be in sync
    Given the user navigates to the DC page "/qa-automation/education/free-software/product-design-suite-personal" for the ".com"
    When user clicks on SIGN IN link from dropdown of utility bar
    And user signs in with username "facultyis@mailinator.com" and password "test1234"
    And user clicks on SIGNED IN icon on the utility bar
    Then user should see his EDU "Faculty I S" on the page

#------------------------------ Scenario 12  ------------------------------#

  @WIP @StorageClear
  Scenario: Trial and EDU components should be in sync
    Given the user navigates to the DC page "/qa-automation/oxygen-trial-download/new-oxygen-trial-download-start-screen1" for the ".com"
    And User clicks on Download button
    And clicks on prodinfo 'Next' button
    And user selects usertype option as "A business user"
    And clicks on usertype 'Next' button
    And user signs in to his account
    When the user navigates to the DC page "/qa-automation/education/free-software/product-design-suite-personal" for the ".com"
    And user clicks on SIGNED IN icon on the utility bar
    Then user should see his EDU "Faculty I S" on the page


#------------------------------ Scenario 13  ------------------------------#

  @StorageClear
  Scenario: Trial Oxygen Flow and nav should be in sync
    Given the user navigates to the DC page "/qa-automation/oxygen-trial-download/new-oxygen-trial-download-start-screen1" for the ".com"
    And User clicks on Download button
    And clicks on prodinfo 'Next' button
    And user selects usertype option as "A business user"
    And clicks on usertype 'Next' button
    And user signs in to his account
    When the user navigates to the DC page "/qa-automation/oxygen-trial-download/new-oxygen-trial-download-start-screen1" for the ".com"
    Then the user should see a SIGNED IN icon on the utility bar


#------------------------------ Scenario 14  ------------------------------#

  Scenario: EDU component and nav should be in sync
    Given the user navigates to the DC page "/qa-automation/education/free-software/product-design-suite-personal" for the ".com"
    When user click on EDU sign in button
    And user add his EDU credential username "facultyis@mailinator.com" and password "test1234"
    Then the user should see a SIGNED IN icon on the utility bar