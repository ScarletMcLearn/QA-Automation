@DC
@Oxygen
@Trial
@TrialOxygenFlow
#@SLE2
#@PT
#@REGRESSION
@SLE1

Feature: Trial Oxygen Flow: Multiple Products Workflow

    Validation of system requirement link and Marketo form respective to release selection

@SMOKE
Scenario: 1- Validate that system requirements and Marketo form appear for first release
  Given User visits trial page "/qa-automation/oxygen-trial-download/tooltip-stories"
  And User clicks on Download button
  And clicks on prod select 'Next' button
  And System Requirements link is "https://knowledge.autodesk.com/support/autocad/troubleshooting/caas/sfdcarticles/sfdcarticles/System-requirements-for-AutoCAD-2018.html"
  And clicks on prodinfo 'Next' button
  And user selects usertype option as "A business user"
  And clicks on usertype 'Next' button
  And user signs in to his account
  Then required field has label "Zip/Postal Code (optional) EN"
  And enters required information


@StorageClear
Scenario: 2- Validate that system requirements and Marketo form appear for second release
  Given User visits trial page "/qa-automation/oxygen-trial-download/tooltip-stories"
  And User clicks on Download button
  And user selects the second release
  And clicks on prod select 'Next' button
  And System Requirements link is "https://knowledge.autodesk.com/support/maya/learn-explore/caas/sfdcarticles/sfdcarticles/System-requirements-for-Autodesk-Maya.html"
  And clicks on prodinfo 'Next' button
  And user selects usertype option as "A business user"
  And clicks on usertype 'Next' button
  When user signs in to his account
  Then required field has label "Zip/Postal Code"


@SMOKE @StorageClear
Scenario: 3- Validate that Marketo required fields work
  Given User visits trial page "/qa-automation/oxygen-trial-download/tooltip-stories"
  And User clicks on Download button
  And clicks on prod select 'Next' button
  And clicks on prodinfo 'Next' button
  And user selects usertype option as "A business user"
  And clicks on usertype 'Next' button
  And user signs in to his account
  And enters required information
  When user empties required field
  And enters optional information
  Then the error message appears

