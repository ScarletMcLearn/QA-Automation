#**********************************************************************
#***** Stack, Feature, Project Tags *****
@DC
@GEO
@UTILITYBAR
@PL-4965

#---- Stacks:
@SLE2
@PT
@REGRESSION
@SLE1


Feature: Utility_Bar - Site Label

    - DOCUMENTATION: https://wiki.autodesk.com/pages/viewpage.action?pageId=336988806

    Required files to run:
     - \Cucumber\features\DC-Geopopup-Redirects\
     - \Cucumber\features\support\common\xpath\xpath.yml
     - \Cucumber\features\support\world_extensions.rb

#--------------------------- Scenario 1 --------------------------#
# note: used https://convertcase.net/ to convert to uppercase

Scenario Outline: 1. Utility bar country label is the correct one
  Given the user navigates to "<site>" "<page>"
  Then the site displays the appropriate Country "<label>"

@SMOKE
Examples:
  | site    | page                                    | label         |
  | .com    | /qa-automation/new-utility-bar/home-new | UNITED STATES |
  | .ca/fr  | /qa-automation/new-utility-bar/home-new | CANADA - FR   |
  | .mx     | /qa-automation/new-utility-bar/home-new | MÉXICO        |


#---------

@REGRESSION
Examples:
  | site    | page                                     | label        |
  | .com.tr | /qa-automation/new-utility-bar/home-new  | TÜRKIYE      |
  | .ru     | /qa-automation/new-utility-bar/home-new  | РОССИЯ       |
  | .com.cn | /qa-automation/new-utility-bar/home-new  | 中国         |
  | .co.jp  | /qa-automation/new-utility-bar/home-new  | 日本         |



#--------------------------- Scenario 2 --------------------------#

Scenario Outline: 2. Utility bar country label is the correct one
  Given the user navigates to LatinoAmerica site page "<page>"
  Then the site displays the appropriate Country "LATINOAMÉRICA"

@REGRESSION
Examples:
  | page                                    |
  | /qa-automation/new-utility-bar/home-new |


#--------------------------- Scenario END --------------------------#
