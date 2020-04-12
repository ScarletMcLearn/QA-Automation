@DC
@Oxygen
@Trial
@TrialOxygenFlow
@SLE2
@PT
@REGRESSION
@SMOKE
@SLE1


Feature: Trial Oxygen Flow: Download Trial

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
    Then user should have downloaded file "2017_English_Win"


  @ClearCookies
  Scenario: 2- Validate screen for option 'Individual User'
    Given User visits trial page "/qa-automation/oxygen-trial-download/privacy-author"
    When User clicks on Download button
    And clicks on prodinfo 'Next' button
    When user selects usertype option as "A business user"
    Then finds operating system heading as "Choose your operating system:"
    And finds language heading as "Choose your language:"

  @ClearCookies
  Scenario: 3- Validate screen for option 'Student'
    Given User visits trial page "/qa-automation/oxygen-trial-download/privacy-author"
    When User clicks on Download button
    And clicks on prodinfo 'Next' button
    When user selects usertype option as "A student or teacher"
    Then finds education heading as "Get free access to Autodesk software"
    And finds education text as "Students, teachers, and academic institutions worldwide are eligible for free access to Autodesk software. Yes, free. We genuinely believe in education"

