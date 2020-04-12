
@DC
@FSBBUY
@SLE2
@PT
@REGRESSION
@SLE1


Feature: FSB Online buy container DR Cart E2E flow validation.




#------------------------------     Scenario 1  - Cart  DR  -----------------------------------------#

Scenario Outline: 1. DR Online - Verify the Cart Page has the correct product details and prices.

  Given the user navigates to the DC Subscription page "<published_page>" for the "<site>"
  When a quantity "<quantity>" is entered in the Quantity selector in UI
  And user selects the Term "<term>"
  And the total price is displayed in the summary drawer
  And ADD to CART ( CTA ) button is clicked
  Then user is taken to the DR cart page for the "<site>"
  And the correct subscription details for the selected "<subscriptionterm>" is displayed in the DR cart page
  And the quantity in DR cart page is "<quantity>"
  And the price of the DR product for the displayed quantity is identical to the total price displayed in the subscribe page


@SMOKE
Examples:
|site   |term   |quantity | product | appKey | country| slevel    | published_page                                  |subscriptionterm                        |
|.co.jp |1-YEAR | 2       | ACD     | ONLINE | JP     | ADVANCED  | /qa-automation/fsb-buy/buy-container-online/acd |1年間のサブスクリプション - (自動更新)|



#------------------------------     Scenario 2  - Cart  DR  -----------------------------------------#

Scenario Outline: 2. DR Online - Verify the currency toggle for Latin America.

  Given the user navigates to LatinoAmerica site page "<page>"
  Then user should be able to see default currency and switch to "<dropdown_currency>"
  Then buy container should have according pricing data and "<dropdown_currency>"
  And ADD to CART ( CTA ) button is clicked
  Then system should redirect to DR cart with correct quantity and "<dropdown_currency>"

@SMOKE
Examples:
  | page                                    |dropdown_currency|
  | /products/autocad/subscribe             |       ARS       |