@DC
@NAVIGATION
@SLE2
@PT
@REGRESSION
@SMOKE
@MaximizeBrowser

# If running with Sauce Connect, remember to have Sauce Connect Options set to: -B all 
Feature: NAVIGATION: Site Navigation - new product center pages


Scenario Outline: 1. - Validate sublinks and main links in leftnav component
  When the user navigates to ".com" "<page>"
  When user click on left mainlink "<main_link>"
  Then I am redirected to page "<path>"
  Examples:
  | site   | page                                                                  |  main_link | path      |
  | .com   | /wp-resources/templates/premade/autocad/overview                      | Subscribe  | subscribe |


Scenario Outline: 2. - Validate subscribe in topnav component
  When the user navigates to ".com" "<page>"
  When user click on top mainlink subscribe
  Then I am redirected to page "<path>" and subscribe text is changed to "<text>"
  Examples:
  | site   | page                                                                  |  main_link | path      |text          |
  | .com   | /wp-resources/templates/premade/autocad/overview                      | Subscribe  | subscribe |  ADD TO CART |

Scenario Outline: 3. - Validate download free trial in topnav component
  When the user navigates to ".com" "<page>"
  When user click on top mainlink Download
  Then Trial download overlay should displayed
  Examples:
  | site   | page                                                                  |  main_link | path      |
  | .com   | /wp-resources/templates/premade/autocad/overview                      | Subscribe  | subscribe | 

Scenario Outline: 4. - Validate buy container theme on new pc page
  When the user navigates to ".com" "<page>"
  Then buy container color should be consistent with "<color_code>"
  Examples:
  | site   | page                                                                  |  color_code       | 
  | .com   | /wp-resources/templates/premade/autocad/subscribe                     | rgb(221, 34, 34)  | 