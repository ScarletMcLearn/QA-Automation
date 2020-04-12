@DC-PROD
@PROD

Feature: PROD DC: Basic funcitonal validation on FSB Buy-PROD - WPE


Scenario Outline: 1. Online - Verify the correct total prices are displayed in the summary drawer in the Buy container.

  Given user clears cookies for domain "<site>"
  And the user navigates to the DC Subscription page "<published_page>" for the "<site>"
  And the Quantity selector is displayed in the UI
  And Support Level selector is not displayed
  When a quantity "<quantity>" is entered in the Quantity selector in UI
  Then validate the display of the Qty in Summary Drawer is "<quantity>"
  And the total price in the UI is identical to the amount formatted price from PDS json for the specified "<quantity>" , "<term>" , "<product>" , "<appKey>" , "<country>" , "<slevel>"
  


Examples:
  |site   | product | appKey | country| slevel    |term   |quantity | published_page             |
  |.com   | 3DSMAX     | ONLINE | US     | ADVANCED  |1-YEAR | 4       |/products/3ds-max/subscribe |
  |.mx    | 3DSMAX | ONLINE | MX     | ADVANCED  |1-YEAR | 4       |/products/3ds-max/subscribe |


#------------    Scenario 2 - Total Price with VAT  ---------------------#


Scenario Outline: 2b. Online - Verify the correct total prices are displayed in the summary drawer in the Buy container.

  Given user clears cookies for domain "<site>"
  And the user navigates to the DC Subscription page "<published_page>" for the "<site>"
  And the Quantity selector is displayed in the UI
  And Support Level selector is not displayed
  When a quantity "<quantity>" is entered in the Quantity selector in UI
  Then validate the display of the Qty in Summary Drawer is "<quantity>"
  And the total price in the UI is identical to the amount formatted with VAT price from PDS json for the specified "<quantity>" , "<term>" , "<product>" , "<appKey>" , "<country>" , "<slevel>"
 

Examples:
  |site   | product | appKey | country| slevel    |term   |quantity | published_page              |
  |.co.jp | maya     | ONLINE | JP     | ADVANCED  |1-YEAR | 4       | /products/maya/subscribe | 
#  |.fr    | maya     | ONLINE | FR     | ADVANCED  |1-YEAR | 4       | /products/maya/subscribe | 


#------------------------------     Scenario 3  - Pelican Cart  -----------------------------------------#


Scenario Outline: 3. Pelican Online - Verify the Cart Page has the correct product details and prices.

  Given user clears cookies for domain "<site>"
  And the user navigates to the DC Subscription page "<published_page>" for the "<site>"
  When a quantity "<quantity>" is entered in the Quantity selector in UI
  And user selects the Term "<term>"
  And the total price is displayed in the summary drawer
  And ADD to CART ( CTA ) button is clicked
  Then user is taken to the guac cart page
  
Examples:
|site   |term   |quantity | product | appKey | country| slevel    | published_page                    |subscriptionterm     |
|.com   |1-YEAR | 2       | maya     | ONLINE | US     | ADVANCED  | /products/maya/subscribe       |1 year subscription  |


#------------------------------     Scenario 4  - Cart  DR  -----------------------------------------#

Scenario Outline: 4. DR Online - Verify the Cart Page has the correct product details and prices.

  Given user clears cookies for domain "<site>"
  And the user navigates to the DC Subscription page "<published_page>" for the "<site>"
  When a quantity "<quantity>" is entered in the Quantity selector in UI
  And user selects the Term "<term>"
  And the total price is displayed in the summary drawer
  And ADD to CART ( CTA ) button is clicked
  Then user is taken to the DR cart page for the "<site>"
  And the correct subscription details for the selected "<subscriptionterm>" is displayed in the DR cart page
  And the quantity in DR cart page is "<quantity>"
  And the price of the DR product for the displayed quantity is identical to the total price displayed in the subscribe page

Examples:
|site   |term   |quantity | product | appKey | country| slevel    | published_page              |subscriptionterm              |
|.co.jp |1-YEAR | 2       | ACD     | ONLINE | JP     | ADVANCED  | /products/autocad/subscribe |1年間のサブスクリプション - (自動更新)|


 #----------------------------      Scenario 5 - SRP Prices  --------------------------#

# TO DO -: Currently FSB BUY is not rolled out to ZA . it still uses the old component to display prices

@StorageClear
 Scenario Outline: 5.  SRP -The Quantity is 1 by default and the Payment options and Norton seal are not displayed in the UI.

  Given user clears cookies for domain "<site>"
  And the user navigates to the DC Subscription page "<published_page>" for the "<site>"
  Then Quantity selector is not displayed
  And Support Level selector is not displayed
  And validate the display of the Qty in Summary Drawer is "1"
  And the total price in the UI is identical to the amount formatted price from PDS json for the specified "<qty>" , "<term>" , "<product>" , "<appKey>" , "<country>" , "<slevel>"
  And Payment options are not displayed
  And Norton Security logo is not displayed


Examples:
 |site   | published_page                                                            |term   |qty | product | appKey | country| slevel   |
#|.co.za | To do                                                                       |2-YEAR | 1  | ACD     | SRP    | ZA     | ADVANCED |


#----------------------------      Scenario 6 - Find a Reseller  --------------------------#

# TO DO -: Currently FSB BUY is not rolled out to ZA . it still uses the old component to display prices

@StorageClear
Scenario Outline: 6.  SRP - Find a Reseller Link points to correct location

 Given user clears cookies for domain "<site>"
 And the user navigates to the DC Subscription page "<page>" for the "<site>"
 When user clicks on "Find a Reseller"
 Then the user is navigated correctly to the reseller page for the "<site>".


 Examples:
 |site | page                          |
#|.com | To Do                           |
