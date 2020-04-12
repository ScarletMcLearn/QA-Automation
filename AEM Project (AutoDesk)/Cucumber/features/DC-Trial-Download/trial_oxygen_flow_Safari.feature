@DC
@Oxygen
@Trial
@TrialOxygenFlow
#@SLE2
#@PT
@REGRESSION
@SMOKE
@SAFARI



Feature: Trial Oxygen Flow: Download Trial (On Safari)

  Validating complete flow of trial download

  Scenario: 1- Validate complete flow to successful download
    Given User visits trial page "/qa-automation/oxygen-trial-download/privacy-author"
    When User clicks on Download button
    And clicks on prodinfo 'Next' button
    And user selects usertype option as "A business user"
    And clicks on usertype 'Next' button
    When user signs in to his account
    And user fills Marketo form
    And selects country as "United States"
    Then finds 'Begin Download' button is enabled
    When user begins the download
    Then 2 On IFrame "Your download has started." text appears