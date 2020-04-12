@AU
@WD
@AU-DASHBOARD
@PROD
Feature: PROD AU: Basic functionaly validation on PROD for Dashboard - Publishers


#########  Scenario 1  ##########
Scenario: 1- SIGN IN: As a user I would like to verify the state of AU page after signing in from AU Dashboard (Top link > Sign in or sign up )
Given I am on AU dashboard page "/au-online/dashboard"
And I click on the 'Sign in or sign up' link
Then I should land on AU dashboard page "/au-online/dashboard"
And I see myself logged in with my AU username "Trial User" in the utility bar


#########  Scenario 2  ##########
Scenario: 2- Overview Tab Content (Sign in State): As a user I would to verify that Dashboard content under Saved classes are seen for a logged in user.
Given I am on AU dashboard page "/au-online/dashboard"
And I click on the 'Sign in or sign up' link
Then I should land on AU dashboard page "/au-online/dashboard"
And I see myself logged in with my AU username "Trial User" in the utility bar
And I click on the 'Saved Classes' tab
And I should see "Browse online classes" for the logged in user
