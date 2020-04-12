@DC
@FSBBUY
@SLE2
@PT
@REGRESSION
@SLE1

Feature: FSB Online buy container SRP Scenarios validation.




 #----------------------------      Scenario 1 - SRP  --------------------------#


@StorageClear
 Scenario Outline: 1.  SRP -The Quantity is 1 by default and the Payment options and Norton seal are not displayed in the UI.

  Given the user navigates to the DC Subscription page "<published_page>" for the "<site>"
  Then Support Level selector is not displayed
  And Quantity selector is not displayed
  And validate the display of the Qty in Summary Drawer is "1" for SRP
  And the total price in the UI is identical to the amount formatted price from PDS json for the specified "<qty>" , "<term>" , "<product>" , "<appKey>" , "<country>" , "<slevel>"
  And Payment options are not displayed
  And Norton Security logo is not displayed

@SMOKE
Examples:
|site | published_page                                                            |term   |qty | product | appKey | country| slevel   |
|.com | /qa-automation/fsb-buy/buy-container-srp/single-plc-with-default-quantity |3-YEAR | 1  | ACDIST  | SRP    | US     | ADVANCED |


#----------------------------      Scenario 2 - Find a Reseller  --------------------------#


@StorageClear
Scenario Outline: 2.  SRP - Find a Reseller Link points to correct location

 Given the user navigates to the DC Subscription page "<page>" for the "<site>"
 When user clicks on "Find a Reseller"
 Then the user is navigated correctly to the reseller page for the "<site>".

@SMOKE
Examples:
|site | page                                                                      |
|.com | /qa-automation/fsb-buy/buy-container-srp/single-plc-with-default-quantity |

Examples:
|site | page                                                                      |
|.de  | /qa-automation/fsb-buy/buy-container-srp/single-plc-with-default-quantity |
