@DC
@FSBBUY
@SLE2
@PT
@REGRESSION
@SLE1

Feature: Reseller Affiliate Program scenarios

#-------------------Scenario Outline: 1.  Validate that the correct elements appears on Reseller Affiliate popup

@StorageClear
Scenario Outline: 1.  Validate that the correct elements appears on Reseller Affiliate popup
Given the user navigates to the DC Subscription page "<published_page>" for the "<site>"
Then the user should see the reseller logo
And the user should see the popup welcome header text as "<header>"
And the user should see the popup description text as "<description>"
And the user should see the popup No Thanks text as "<no_thanks>"

Examples:
| site   | published_page                                                          | header                        | description                                                                                                                                                                                                                                                                    | no_thanks                                         |
| .com   | /qa-automation/fsb-buy/reseller-affiliate-program/subscribe?PID=123qa12 | Welcome QA Reseller Customers | I agree that Autodesk may share my name and email address with QA Reseller so that QA Reseller may provide installation support and send me marketing communications. I understand that the Reseller will be the party responsible for how this data will be used and managed. | No, thanks, I don't want support from QA Reseller |
| .co.nz | /qa-automation/fsb-buy/reseller-affiliate-program/trade-in?pid=123QA12  | Welcome QA Reseller Customers | I agree that Autodesk may share my name and email address with QA Reseller so that QA Reseller may provide installation support and send me marketing communications. I understand that this information will be governed by the terms of the QA Reseller Privacy Statement.   | No, thanks, I don't want support from QA Reseller |


#-------------------Scenario Outline: 2.  Validate that the user can close the popup by clicking on the Close button

@StorageClear
Scenario Outline: 2.  Validate that the user can close the popup by clicking on the Close button
Given the user navigates to the DC Subscription page "<published_page>" for the "<site>"
When the user clicks on the Close button
Then the user clicks on the serial number trade-in banner

Examples:
| site | published_page                                                          |
| .com | /qa-automation/fsb-buy/reseller-affiliate-program/subscribe?pid=7803497 |


#-------------------Scenario Outline: 3.  Validate that the user can close the popup by clicking on the No Thanks button

@StorageClear
Scenario Outline: 3.  Validate that the user can close the popup by clicking on the No Thanks button
Given the user navigates to the DC Subscription page "<published_page>" for the "<site>"
When the user clicks on the No Thanks button
Then the user clicks on the serial number trade-in banner

Examples:
| site | published_page                                                          |
| .com | /qa-automation/fsb-buy/reseller-affiliate-program/subscribe?PID=7803497 |


#-------------------Scenario Outline: 4.  Validate that the user can close the popup by clicking on the Agree button

@StorageClear
Scenario Outline: 4.  Validate that the user can close the popup by clicking on the Agree button
Given the user navigates to the DC Subscription page "<published_page>" for the "<site>"
When the user enters email "<email>" in reseller affiliate popup
And the user clicks on the Agree button
Then the user clicks on the serial number trade-in banner

Examples:
| site | published_page                                                          | email        |
| .com | /qa-automation/fsb-buy/reseller-affiliate-program/subscribe?PID=7803497 | abc@test.com |


#-------------------Scenario Outline: 5.  Validate that invalid email makes an error appear on Reseller Affiliate popup

@StorageClear
Scenario Outline: 5.  Validate that invalid email makes an error appear on Reseller Affiliate popup
Given the user navigates to the DC Subscription page "<published_page>" for the "<site>"
When the user enters email "<email>" in reseller affiliate popup
And the user clicks on the Agree button
Then the invalid email error "<message>" appears

Examples:
| site   | published_page                                                           | email       |   message                         |
| .com   | /qa-automation/fsb-buy/reseller-affiliate-program/subscribe?PID=7803497  | abc@testcom | Entered email is invalid.         |
| .co.jp | /qa-automation/fsb-buy/reseller-affiliate-program/promotions?PID=123QA12 | abc@testcom | 入力された電子メール アドレスが無効です |

#-------------------Scenario Outline: 6.  Validate that empty email makes an error appear on Reseller Affiliate popup

@StorageClear
Scenario Outline: 6.  Validate that empty email makes an error appear on Reseller Affiliate popup
Given the user navigates to the DC Subscription page "<published_page>" for the "<site>"
And the user clicks on the Agree button
Then the required email error "<message>" appears

Examples:
| site | published_page                                                          |   message          |
| .com | /qa-automation/fsb-buy/reseller-affiliate-program/subscribe?PID=7803497 |  Email is required |
