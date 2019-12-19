Feature: Contact info

  Background:
    Given I am on the Contact Info page

  @desktop @tablet
  Scenario: Check for the progress status bar
    Then the progress status bar is highlighting "CONTACT"

  @mobile
  Scenario: Check for the mobile progress status bar
    Then the mobile progress status bar is at step "2"

  @desktop @tablet @mobile
  Scenario: Continue button is disabled
    Then the Continue button is disabled

  @desktop @tablet @mobile
  Scenario: Continue button is enabled
    When I enter my phone number "2485551234"
    And I enter my email "someone@example.com"
    Then the Continue button is enabled

  @desktop @tablet @mobile
  Scenario: Clicking continue button will take user to inspection location page
    When I enter my phone number "2485551234"
    And I enter my email "someone@example.com"
    And I click the Continue button
    Then I am taken to the inspection location page

  @desktop @tablet @mobile
  Scenario: Unable to continue with empty email field
    When I enter my phone number "2485551234"
    Then the continue button is disabled

  @desktop @tablet @mobile
  Scenario: Unable to continue with empty phone field
    When I enter my email "someone@example.com"
    Then the continue button is disabled

  @desktop @tablet @mobile
  Scenario: Leaving required phone field blank will display error message
    When I enter my email "someone@example.com"
    And I focus and blur the phone field
    Then I can see an error message

  @desktop @tablet @mobile
  Scenario: Leaving required email field blank will display error message
    When I enter my phone number "2485551234"
    And I focus and blur the email field
    Then I can see an error message

  @desktop @tablet @mobile
  Scenario: Click on back button to go back to account info page
    When I click on the Back button
    Then I am taken to the account info page
