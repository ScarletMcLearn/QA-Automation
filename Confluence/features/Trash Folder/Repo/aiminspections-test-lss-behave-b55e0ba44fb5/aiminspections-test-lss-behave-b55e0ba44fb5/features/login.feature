@desktop @tablet @mobile
Feature: login page

  Background:
    Given I am on the log in screen

  Scenario: Log in with valid account number and valid vin
    When I submit my vin and my account number
    Then I am taken to the Account Info page

  Scenario: Log in with valid account number and invalid vin
    When I submit an incorrect vin and my account number
    Then I see an error message

  Scenario: Log in with invalid account number and valid vin
    When I submit my vin and an incorrect account number
    Then I see an error message

  Scenario: Log in with invalid account number and invalid vin
    When I submit an invalid vin and an invalid account number
    Then I see an error message

  Scenario: Log in without entering vin and account number
    When I submit an empty login form
    Then I can see the error messages

  Scenario: Click on need help link
    When I click on the need help link
    Then I am taken to the Get Assistance page
