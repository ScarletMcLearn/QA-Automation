@DC
@Trial
@TrialCollection
#@SLE2
#@PT
#@REGRESSION
#@SLE1

#Disable obsolete tests below
Feature: Trial Collection: Download From Collection Page

  @SMOKE
  Scenario: 1. Verify user can download product from first card widget
    Given I am on the collection page "/qa-automation/autodeskwdtrialdownload/collections-trial/cards-large-page"
    When I click on download free trial button for first card widget
    Then I should see Download trial lightbox for first card widget
   And I click on continue button for first card widget
    And I agree for the terms and conditions for first card widget
    Then Continue button should be enabled for first card widget

  @SMOKE
  Scenario: 2. Verify user can download product from second card widget
   Given I am on the collection page "/qa-automation/autodeskwdtrialdownload/collections-trial/cards-large-page"
   When I click on download free trial button for second card widget
   Then I should see Download trial lightbox for second card widget
   And I enter valid email id inside lightbox for second card widget
   And I click on continue button for second card widget
   And I agree for the terms and conditions for second card widget
   Then Continue button should be enabled for second card widget

  @SMOKE
  Scenario: 3. Verify user can download product from first card widget with new trial download component
   Given I am on the collection page "/qa-automation/autodeskwdtrialdownload/collections-trial/included-software"
   When I click on DOWNLOAD FREE TRIAL for first card widget
   And click on NEXT button for first card widget
   And select user type as "A business user" and click on NEXT button for first card widget
   And user signs in to his account
   And fills Marketo form for first card widget
   Then BEGIN DOWNLOAD button should be enabled for first card widget

  @SMOKE
  Scenario: 4. Verify user can download product from second card widget with new trial download component
    Given I am on the collection page "/qa-automation/autodeskwdtrialdownload/collections-trial/included-software"
    When I click on DOWNLOAD FREE TRIAL for second card widget
    And click on NEXT button for second card widget
    And select user type as "A business user" and click on NEXT button for second card widget
    And user signs in to his account
    And fills Marketo form for second card widget
    Then BEGIN DOWNLOAD button should be enabled for second card widget
