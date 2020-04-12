@DC
@FSBBUY
@SLE2
@PT
@REGRESSION
@ClearCookies
@StorageClear
@SLE1



Feature: FSB Online buy container Pelican Cart E2E flow validation.



#------------------------------     Scenario 1  - Cart  -----------------------------------------#

Scenario Outline: 3. Pelican Online - Verify the Cart Page has the correct product details and prices.

  Given the user navigates to the DC Subscription page "<published_page>" for the "<site>"
  When a quantity "<quantity>" is entered in the Quantity selector in UI
  And user selects the Term "<term>"
  And the total price is displayed in the summary drawer
  And ADD to CART ( CTA ) button is clicked
  Then user is taken to the guac cart page

@SMOKE
Examples:
|site   |term   |quantity | product | appKey | country| slevel    | published_page                                  |subscriptionterm     |
|.com   |1-YEAR | 2       | MAYA     | ONLINE | US     | ADVANCED  | /qa-automation/fsb-buy/buy-container-online/maya |1 year subscription  |




#------------------------------     Scenario 2  - Cart  -----------------------------------------#

Scenario Outline: 3b. Pelican Online - Verify the Cart Page has the correct product details and prices.

  Given the user navigates to the DC Subscription page "<published_page>" for the "<site>"
  When a quantity "<quantity>" is entered in the Quantity selector in UI
  And user selects the Term "<term>"
  And the total price is displayed in the summary drawer
  And ADD to CART ( CTA ) button is clicked
  Then user is taken to the cart page 
  And the correct subscription details for the selected "<subscriptionterm>" is displayed
  And the quantity in cart page for the line item "<item_id>" is "<quantity>"
  And the price of the product for the displayed quantity is identical to the total price displayed in the subscribe page


@SMOKE
Examples:
| site | term   | quantity | product | appKey | country | slevel   | published_page                                   | subscriptionterm      | item_id |
| .de  | 2-YEAR | 2        | MAYA    | ONLINE | DE      | ADVANCED | /qa-automation/fsb-buy/buy-container-online/maya | 2-jähriges Abonnement | 110244  |



#------------------------------     Scenario 3  - Cart Widget URL  -----------------------------------------#

Scenario Outline: 3c. PELICAN ONLINE - Validate Add to Cart URL has Visitor id.

Given the user navigates to the DC Subscription page "<published_page>" for the "<site>"
Then the Visitorid from the local storage is appended to the Add to Cart url in the CTA button
And the Visitorid in the Add to Cart URL is identical to the visitor id in the Cart widget for US

@SMOKE
Examples:
  | site | published_page                                          |
  | .com | /qa-automation/fsb-buy/buy-container-with-online-values |



#------------------------------     Scenario 3  - Cart Widget URL  -----------------------------------------#

Scenario Outline: 3d. PELICAN ONLINE - Validate Add to Cart URL has Visitor id.

Given the user navigates to the DC Subscription page "<published_page>" for the "<site>"
Then the Visitorid from the local storage is appended to the Add to Cart url in the CTA button
And the Visitorid in the Add to Cart URL is identical to the visitor id in the Cart widget

@SMOKE
Examples:
 | site | published_page                                          |
 | .de  | /qa-automation/fsb-buy/buy-container-with-online-values |



@SMOKE
Scenario: 4- Validate cart value

Given the user is on fsb support buy page "/qa-automation/fsb-buy/buy-container/demo-buy"
And user can see cart value as "0"
And user clicks on Add to Cart button
And navigates back to demo page
Then user can check cart value as "2"
