Feature: Account info page

  Background:
    Given I am logged in
    Then I am taken to the Account Info page

  @desktop @tablet
  Scenario: Check for the progress status bar
    Then the progress status bar is highlighting "ACCOUNT"

  @mobile
  Scenario: Check for the mobile progress status bar
    Then the mobile progress status bar is at step "1"

  @desktop @tablet @mobile
  Scenario: My profile info is correct
    Then my profile info is correct

  @desktop @tablet @mobile
  Scenario: My vehicle info is correct
    Then my vehicle info is correct

  @desktop @tablet @mobile
  Scenario: Able to continue to contact info page
    When I click the Confirm button
    Then I am taken to the Contact Info page

  @desktop @tablet @mobile
  Scenario: Click on Something is Wrong button
    When I click on the Something is Wrong button
    Then I am taken to the Get Assistance page
