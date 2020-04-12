@DC
@Oxygen
@Trial
@TrialOxygenFlow
@SLE2
@PT
@REGRESSION
@SLE1

Feature: Trial Oxygen Flow: Retain Workflow

  Validation of workflow retainment in global

  @SMOKE
  Scenario: 1- Validate that the workflow before Sign In is retained
    Given User visits trial page "/qa-automation/oxygen-trial-download/tooltip-stories"
    And User clicks on Download button
    And clicks on prod select 'Next' button
    And clicks on prodinfo 'Next' button
    And user selects usertype option as "A business user"
    And clicks on usertype 'Next' button
    When user navigates to "https://www.google.com"
    And User visits trial page "/qa-automation/oxygen-trial-download/tooltip-stories"
    And User clicks on Download button
    Then user signs in to his account

  @StorageClear
  Scenario: 2- Validate that the workflow after Sign In is retained
    Given User visits trial page "/qa-automation/oxygen-trial-download/tooltip-stories"
    And User clicks on Download button
    And clicks on prod select 'Next' button
    And clicks on prodinfo 'Next' button
    And user selects usertype option as "A business user"
    And clicks on usertype 'Next' button
    And user signs in to his account
    When user navigates to "https://www.google.com"
    And User visits trial page "/qa-automation/oxygen-trial-download/tooltip-stories"
    And User clicks on Download button
    Then enters required information


  @StorageClear
  Scenario: 3. Verify user retains place in trial workflow when returning
    Given User visits trial page "/qa-automation/oxygen-trial-download/tooltip-stories"
    When User clicks on Download button
    And clicks on prod select 'Next' button
    And clicks on prodinfo 'Next' button
    And user selects usertype option as "A business user"
    And clicks on usertype 'Next' button
    And user clicks on X icon
    And User clicks on Download button
    Then create account screen is displayed