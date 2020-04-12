@ROLLING

Feature: Basic page validation on instances

Scenario Outline: 1. US Homepage loads correctly

Given the user navigates to the instance "<page>"
Then there are no errors or exceptions

Examples:
|                  page                 |
#| /content/autodesk/global/en/home.html |


Scenario Outline: 2. AutoCAD US Subscribe page loads correctly

Given the user navigates to the instance "<page>"
Then there are no errors or exceptions
And prices appear
And ADD to CART ( CTA ) button is clicked

Examples:
|                              page                           |
#| /content/autodesk/global/en/products/autocad/subscribe.html |


#Scenario Outline: 3. AutoCAD US  Free Trial page loads correctly

#Given the user navigates to the instance "<page>"
#And there are no errors or exceptions
#And user accepts cookies on "<site>"
#When user clicks on Download Free Trial button
#And clicks on the prod select 'Next' button
#And clicks on prodinfo 'Next' button
#And user selects usertype option as "A business user"
#And clicks on usertype 'Next' button

#Examples:
#|                              page                            | site |
#| /content/autodesk/global/en/products/autocad/free-trial.html |  us  |



Scenario Outline: 4. Verify sample pages load with curl

When curl to "<page>" with credentials then page should not contain errors

Examples:
|                              page    |
|/content/autodesk/global/en/home.html|
|/content/autodesk/global/en/products/autocad/subscribe.html |
|/content/autodesk/asia-pacific/ja_JP/products/maya/overview.html|
|/content/autodesk/global/en/education/free-software/autocad.html|