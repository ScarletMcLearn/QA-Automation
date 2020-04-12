
@DC
@FSBBUY
@SLE2
@PT
@REGRESSION
@SLE1


Feature: FSB Online buy container Promotions validation.



#----------------------------      Scenario 1,2,3 - Promotions - Discount Prices (PDS Impostor)  --------------------------#
@StorageClear


Scenario Outline: 1. STORE WIDE Promotions: Term box promotion price discounted

  Given the user navigates to the DC Subscription page "/qa-automation/fsb-buy/buy-container/pds-impostor/acd-promo?plc=ACD&support=ADVANCED" for the "<site>"
  And user selects the Term "<term>"
  Then the term box display a "<regular>" price with a strike-through
  And a "<promotion>" price appear on top

  Examples:
   | site | term   | promotion  | regular   |
   | .com | 1-YEAR | $1,100.00  | $1,470.00 |



@StorageClear
Scenario Outline: 2. STORE WIDE Promotions: Total box promotion price discounted
  Given the user navigates to the DC Subscription page "/qa-automation/fsb-buy/buy-container/pds-impostor/acd-promo?plc=ACD&support=ADVANCED" for the "<site>"
  And user selects the Term "<term>"
  Then the total price in summary drawer display a "<regular>" price with a strike-through
  And a "<promotion>" price appear on summary drawer

  Examples:
    | site | term   | promotion  | regular   |
   | .com | 1-YEAR | $1,100.00  | $1,470.00 |



@StorageClear
Scenario: 3. STORE WIDE Promotions: Promotion text returned in the PDS response is displayed in the 1-Year term box
  Given the user navigates to the DC Subscription page "/qa-automation/fsb-buy/buy-container/pds-impostor/acd-promo?plc=ACD&support=ADVANCED" for the ".com"
  Then the promoHeadline "25% OFF" and promoSubheadline "Buy now and save on ACAD 1YR and 3YR" provided by the publisher are displayed in the "1-YEAR" term box



#----------------------------      Scenario 4 - Trade-In Promo  --------------------------#

#@StorageClear
#Scenario Outline: 4. TRADE_IN_PROMO -Cart page is loaded when valid details are filled in the Trade in Promo form and Add to Cart button is clicked.

#Given the user navigates to the DC Subscription page "<published_page>" for the "<site>"
#And the serial number trade in option is selected
#And the Trade-in-Offer Form is displayed
#When "First_name" is entered in the first name field
#And "Last_name" is entered in the last name field
#And "ab@test.com" is entered in the email field
#And "123-12345678" is entered in the serial number field
#And CTA button is clicked
#Then user is taken to the cart page

#@SMOKE
#Examples:
#| site| published_page                                                   |
#| .com| /qa-automation/fsb-buy/buy-container/pds-impostor/trade-in-promo |

