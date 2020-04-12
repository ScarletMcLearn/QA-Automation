@DC
@Oxygen-SSO
@SLE2
@PT
@REGRESSION
@ssotest
@ClearCookies
@SLE1

Feature: DC Seamless Oxygen login validation

#------------------------------ Scenario 1  ------------------------------#

Scenario: Sign in on .com should be in sync with subdomains

Given the user navigates to the DC page "/qa-automation/home-sso" for the ".com"
And user clicks on SIGN IN link from dropdown of utility bar
And user signs in with username "facultyis@mailinator.com" and password "test1234"
When user navigates to an external page "https://accounts-staging.autodesk.com/"
Then user should be signed in on Accounts


#------------------------------ Scenario 2  ------------------------------#
@WIP
Scenario: Sign in on .com should be in sync with local sites

Given user clears cookies for domain ".com"
And the user navigates to the DC page "" for the ".com
And user clicks on SIGN IN link from dropdown of utility bar
And user signs in with username "facultyis@mailinator.com" and password "test1234"
When the user navigates to the DC page "" for the ".de"
Then the user should see a SIGNED IN icon on the utility bar


#------------------------------ Scenario 3  ------------------------------#

Scenario: Sign in on local sites should be in sync with .com

Given the user navigates to the DC page "/qa-automation/home-sso" for the ".it"
And user clicks on SIGN IN link from dropdown of utility bar
And user signs in with username "facultyis@mailinator.com" and password "test1234"
When the user navigates to the DC page "/qa-automation/home-sso" for the ".com"
Then the user should see a SIGNED IN icon on the utility bar


#------------------------------ Scenario 4  ------------------------------#

Scenario: Sign in on local sites should be in sync with subdomains

Given user clears cookies for domain ".it"
And the user navigates to the DC page "/qa-automation/home-sso" for the ".it"
And user clicks on SIGN IN link from dropdown of utility bar
And user signs in with username "facultyis@mailinator.com" and password "test1234"
When user navigates to an external page "https://accounts-staging.autodesk.com/"
Then user should be signed in on Accounts


#------------------------------ Scenario 5  ------------------------------#

Scenario: Sign in on subdomains should be in sync with .com

Given user clears cookies for site "https://accounts-staging.autodesk.com/"
And user navigates to an external page "https://accounts-staging.autodesk.com/"
And user signs in on Accounts
When the user navigates to the DC page "/qa-automation/home-sso" for the ".com"
Then the user should see a SIGNED IN icon on the utility bar


#------------------------------ Scenario 6  ------------------------------#

Scenario: Sign in on subdomains should be in sync with local sites

Given user clears cookies for site "https://accounts-staging.autodesk.com/"
And user navigates to an external page "https://accounts-staging.autodesk.com/"
And user signs in on Accounts
When the user navigates to the DC page "/qa-automation/home-sso" for the ".it"
Then the user should see a SIGNED IN icon on the utility bar


#------------------------------ Scenario 7  ------------------------------#

Scenario: Sign out on .com should be in sync with subdomains

Given user clears cookies for site "https://accounts-staging.autodesk.com/"
And user navigates to an external page "https://accounts-staging.autodesk.com/"
And user signs in on Accounts
And user opens a new tab
And the user navigates to the DC page "/qa-automation/home-sso" for the ".com"
And user clicks on SIGNED IN icon on the utility bar
And user clicks on SIGN OUT link
When user goes back to previous tab
And user navigates to an external page "https://accounts-staging.autodesk.com/"
Then user should see the Sign In form on Accounts


#------------------------------ Scenario 8  ------------------------------#
@WIP
Scenario: Sign out on .com should be in sync with local sites

Given the user navigates to the DC page "" for the ".it"
And user clicks on SIGN IN link from dropdown of utility bar
And user signs in with username "facultyis@mailinator.com" and password "test1234"
And user opens a new tab
And the user navigates to the DC page "" for the ".com"
And user clicks on SIGNED IN icon on the utility bar
And user clicks on SIGN OUT link
When user goes back to previous tab
And the user navigates to the DC page "" for the ".it"
Then the user should see a SIGN IN icon on the utility bar


#------------------------------ Scenario 9  ------------------------------#
@WIP
Scenario: Sign out on subdomains should be in sync with .com

Given the user navigates to the DC page "" for the ".com"
And user signs in with username "facultyis@mailinator.com" and password "test1234" by clicking on the Sign In on the utility bar
And user opens a new tab
And user navigates to an external page "https://accounts-staging.autodesk.com/"
And user signs out on Accounts
When user goes back to previous tab
And the user navigates to the DC page "" for the ".com"
Then the user should see a SIGN IN icon on the utility bar


#------------------------------ Scenario 10  ------------------------------#
@WIP
Scenario: Sign out on subdomains should be in sync with local sites

Given the user navigates to the DC page "" for the ".it"
And user clicks on SIGN IN link from dropdown of utility bar
And user signs in with username "facultyis@mailinator.com" and password "test1234"
And user opens a new tab
And user navigates to an external page "https://accounts-staging.autodesk.com/"
And user signs out on Accounts
When user goes back to previous tab
And the user navigates to the DC page "" for the ".it"
Then the user should see a SIGN IN icon on the utility bar


#------------------------------ Scenario 11  ------------------------------#
@WIP
Scenario: Sign out on local sites should be in sync with .com

Given the user navigates to the DC page "" for the ".com"
And user clicks on SIGN IN link from dropdown of utility bar
And user signs in with username "facultyis@mailinator.com" and password "test1234"
And user opens a new tab
And the user navigates to the DC page "" for the ".it"
And user clicks on SIGNED IN icon on the utility bar
And user clicks on SIGN OUT link
When user goes back to previous tab
And the user navigates to the DC page "" for the ".com"
Then the user should see a SIGN IN icon on the utility bar


#------------------------------ Scenario 12  ------------------------------#
@WIP
Scenario: Sign out on local sites should be in sync with subdomains

Given user navigates to an external page "https://accounts-staging.autodesk.com/"
And user signs in on Accounts
And user opens a new tab
And the user navigates to the DC page "" for the ".it"
And user clicks on SIGNED IN icon on the utility bar
And user clicks on SIGN OUT link
When user goes back to previous tab
And user navigates to an external page "https://accounts-staging.autodesk.com/"
Then user should see the Sign In form on Accounts