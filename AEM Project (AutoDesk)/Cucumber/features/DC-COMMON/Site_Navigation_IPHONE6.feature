@DC
@NAVIGATION
#@SLE2
@PT
@REGRESSION
@SMOKE
@IPHONE6

# If running with Sauce Connect, remember to have Sauce Connect Options set to: -B all 
Feature: NAVIGATION: Site Navigation - iPhone


Scenario: 1 - Validate links under menu
  Given the user navigates to the site 1 ".com"
  When user clicks on Humburger link
  And user clicks on Humburger Products link
  And user clicks on Humburger AutoCAD
  Then I am redirected to page "/products/autocad/overview"

