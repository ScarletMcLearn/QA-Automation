@DC
@FSBSUPPORT
@flyout
@SLE2
@PT
@REGRESSION
@SLE1

Feature: FSB flyout_tab

The focus of testing flyout are the following:
1) Flyout can open
2) Flyout can close
3) Flyout text when flyout is in close state
4) Feedback text when flyout is in close state
5) Flyout text when flyout is open
6) Flyout page last visited becomes default page when flyout openend again
7) Back button functions from FAQ page
8) Back button functions from Q&A page
9) Select Comparison in drop-down to check particular question
10) Select Product Use in drop-down to check particular question
11) Select Subscription Use in drop-down to check particular question
12) Select Compatibility in drop-down to check particular question


@SMOKE
Scenario: 1- Validate that Flyout can open

Given the user is on the fsb support buy page "/qa-automation/fsb-buy/buy-container/demo-buy"
And the flyout is close
When the user clicks on the flyout tab
Then the flyout tab should open

@SMOKE
Scenario: 2- Validate that Flyout can close

Given the user is on the fsb support buy page "/qa-automation/fsb-buy/buy-container/demo-buy"
And the flyout is open
When the user clicks on the flyout tab
Then the flyout tab should close

@SMOKE
Scenario: 3- Validate the text on flyout when tab is closed

Given the user is on the fsb support buy page "/qa-automation/fsb-buy/buy-container/demo-buy"
Then the flyout text should be "NEED HELP?"

@SMOKE
Scenario: 4- Validate the text on feedback when tab is closed

Given the user is on the fsb support buy page "/qa-automation/fsb-buy/buy-container/demo-buy"
Then the feedback text should be "FEEDBACK"


Scenario: 5- Validate the text when the tab is opened

Given the user is on the fsb support buy page "/qa-automation/fsb-buy/buy-container/demo-buy"
When the user clicks on the flyout tab
Then the closed flyout text should be "CLOSE"

#Deprecated as FAQ is being replaced by UHM
#Scenario: 6- Validate the last page when Flyout closed becomes default page when opened again

#Given the user is on the fsb support buy page "/qa-automation/fsb-buy/buy-container/demo-buy"
#And the flyout is open
#And the user selects Frequently asked questions link
#And the user selects the browse by item "Subscription"
#And the user should see the question "What are my options for subscribing to AutoCAD or AutoCAD LT?"
#And the user closes the flyout tab
#When the user reopens the flyout tab
#Then the user should see the question "What are my options for subscribing to AutoCAD or AutoCAD LT?"

#Deprecated as FAQ is being replaced by UHM
#Scenario: 7- Validate that you can click on the back button from FAQ page

#Given the user is on the fsb support buy page "/qa-automation/fsb-buy/buy-container/demo-buy"
#And the flyout is open
#And the user selects Frequently asked questions link
#When the user clicks on back button from the FAQ page
#Then the user should see the Frequently asked questions link from the index page

#Deprecated as FAQ is being replaced by UHM
#Scenario: 8- Validate that you can click on the back button from the Q&A page

#Given the user is on the fsb support buy page "/qa-automation/fsb-buy/buy-container/demo-buy"
#And the flyout is open
#And the user selects Frequently asked questions link
#And the user clicks on the question 'What is the difference between AutoCAD and AutoCAD LT?'
#When the user clicks on the back button from the Q&A page
#Then the user is back the the FAQ page and can see the question "What is the difference between AutoCAD and AutoCAD LT?"

#Deprecated as FAQ is being replaced by UHM
#Scenario: 9 - Validate that when you select "COMPARISON" in Browse by drop-down, user will be shown a related question #3

#Given the user is on the fsb support buy page "/qa-automation/fsb-buy/buy-container/demo-buy"
#And the flyout is open
#And the user selects Frequently asked questions link
#When the user selects the second browse by item "Comparison"
#Then the user should be shown the comparison related question "Can I use AutoCAD on Mac and Windows with a single license?"

#Deprecated as FAQ is being replaced by UHM
#Scenario: 10 - Validate that when you select "PRODUCT USE" in Browse by drop-down, user will be shown a related question #3

#Given the user is on the fsb support buy page "/qa-automation/fsb-buy/buy-container/demo-buy"
#And the flyout is open
#And the user selects Frequently asked questions link
#When the user selects the third browse by item "Product Use"
#Then the user should be shown the product use related question "Which file formats can AutoCAD export for use by other software?"

#Deprecated as FAQ is being replaced by UHM
#Scenario: 11 - Validate that when you select "COMPATIBILITY" in Browse by drop-down, user will be shown a related question #1

#Given the user is on the fsb support buy page "/qa-automation/fsb-buy/buy-container/demo-buy"
#And the flyout is open
#And the user selects Frequently asked questions link
#When the user selects the fifth browse by item "Compatibility"
#Then the user should be shown the compatibility related question "Which older version file formats are compatible with AutoCAD 2018?"

#Deprecated as FAQ is being replaced by UHM
#Scenario: 12 - Validate that when clicking on the page 2 footer, you can find the specific question

#Given the user is on the fsb support buy page "/qa-automation/fsb-buy/buy-container/demo-buy"
#And the flyout is open
#And the user selects Frequently asked questions link
#When the user selects page two from the footer
#Then the user will be able to see on page two the question  "Do you have a guide for getting started in AutoCAD?"