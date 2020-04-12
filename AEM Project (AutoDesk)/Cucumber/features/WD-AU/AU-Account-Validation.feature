@AU
@WD
@AU-ACCOUNT-VALIDATION
@SLE2
@PT
@REGRESSION

Feature: AU Account validation


#########  Scenario 1  ##########
@WIP @MANUAL
Scenario: 1- ACCOUNT CREATION: As a user I would like to verify that it is possible to create a new account and be able to sign in with it
Given I am on AU dashboard page "/qa-automation/au-online/dashboard-new"
And I click on the 'Create Account' link the utility bar to create a new account
And I fill in a random account
# ----Note: Need to check with others on this for above random generator
#Then I should land on AU dashboard page "/qa-automation/au-online/dashboard-new"
#And I see myself logged in with my AU username "Trial User" in the utility bar
# ----For now test the steps above MANUALLY
# -----#Note: Since no future support for AU.--------------------
# -----This TEST will remain as Manual and work on---------------------------
#-------ONLY if we continue to support in a future sprint----------------------


#########  Scenario 2  ##########
Scenario: 2- SIGN IN: As a user I would like to verify the state of AU page when I have signed in
Given I am on AU dashboard page "/qa-automation/au-online/dashboard-new"
And I click on the 'Sign In' link the utility bar to signin
And I fill in the AU signin form with an existing user account
Then I should land on AU dashboard page "/qa-automation/au-online/dashboard-new"
And I see myself logged in with my AU username "Trial User" in the utility bar
And I click on my username in the utility bar
And I click on the 'Sign Out' in the dropdown to signout

#########  Scenario 3  ##########
Scenario: 3- Log Out: As a user I would like to verify that both the Sign In and Create Account buttons will be displayed and enabled once I log out
Given I am on AU dashboard page "/qa-automation/au-online/dashboard-new"
And I click on the 'Sign In' link the utility bar to signin
And I fill in the AU signin form with an existing user account
Then I should land on AU dashboard page "/qa-automation/au-online/dashboard-new"
And I see myself logged in with my AU username "Trial User" in the utility bar
And I click on my username in the utility bar
And I click on the 'Sign Out' in the dropdown to signout
And I see "Create Account" and "Sign In" in the utility bar for signed out user

#########  Scenario 4  ##########
@WIP @DONTTEST
Scenario: 4- My Account link: As a user I would like to verify that when I click on "Done" from "My Account" I am still signed in to my account
Given I am on AU dashboard page "/qa-automation/au-online/dashboard-new"
And I click on the 'Sign In' link the utility bar to signin
And I fill in the AU signin form with an existing user account
Then I should land on AU dashboard page "/qa-automation/au-online/dashboard-new"
And I click on my username in the utility bar
And I click on the 'Account Settings' in the dropdown
And I should land on the account settings page "https://accounts.autodesk.com/"
# ----For now DO NOT test the steps above MANUALLY and leave it as is
#----- This is content issue, we should have stage accounts url
# -----#Note: Since no future support for AU.--------------------
# -----This TEST will remain as Manual and work on---------------------------
#-------ONLY if we continue to support in a future sprint----------------------
