@DC
@Oxygen
@Trial
@TrialOxygenFlow
@SLE2
@PT
@REGRESSION
@SMOKE


Feature: Fusion-360 validation


Scenario Outline: - 1. Validate that download fusion 360 present and clickable when its appear

Given I test on page "<site>" and "<url>"
When I click on sign in link
And user sign in with "<email>" and "<password>"
Then fusion 360 download link should be display

Examples:
 | url                                     | site  | email            | password |
 | /campaigns/fusion-360-for-hobbyists-new | .com  | exu2@yopmail.com | test1234 |


Scenario Outline: - 2. Validate that download fusion 360 present and clickable when its appear

Given I test on page "<site>" and "<url>"
When I click on sign in link
And user sign in with "<email>" and "<password>"
Then Get started link should be display

Examples:
 | url                                     | site  | email                             | password |
 | /campaigns/fusion-360-for-hobbyists-new | .com  | lixinoentitlementuser2@yopmail.com| test1234 |
