
@DC
@FSBBUY
@SLE2
@PT
@REGRESSION
@SLE1


Feature: FSB Online buy container Term price and total Price validation.


#------------------------------     Scenario 1 - Term Price  -----------------------------------------#
@StorageClear
Scenario Outline: 1. Online - Verify the correct term prices are displayed in the subscription terms in the Buy container for Countries without VAT.

  Given the user navigates to the DC Subscription page "<published_page>" for the "<site>"
  Then the Subscription Terms are displayed in the Publisher defined sequence "<term_sequence>"
  And the term "<default_term>" is selected by default
  And the price for the selected term is identical to the amount formatted price from PDS json for the specified "<qty>" , "<term>" , "<product>" , "<appKey>" , "<country>" , "<slevel>"


@SMOKE
Examples:
  |site   | product | appKey | country| slevel    |term   | default_term | qty | published_page                                 | term_sequence                |
  |.com   | RVT     | ONLINE | US     | ADVANCED  |1-YEAR | 2 YEAR      | 1   |/qa-automation/fsb-buy/buy-container-online/maya | 3 YEAR,MONTHLY,2 YEAR,1 YEAR |


Examples:
  |site   | product | appKey | country| slevel    |term   | default_term |qty | published_page                                  | term_sequence          |
# Digital River
  |.mx    | ACDIST  | ONLINE | MX     | ADVANCED  |1-YEAR | 3 AÑOS       | 1  | /qa-automation/fsb-buy/buy-container-online/acd | 3 YEAR,MONTHLY,1 YEAR  |



#------------------------------     Scenario 2 - Term Price with VAT  -----------------------------------------#
@StorageClear
Scenario Outline: 1b. Online - Verify the correct term prices are displayed in the subscription terms in the Buy container for Countries with VAT.

  Given the user navigates to the DC Subscription page "<published_page>" for the "<site>"
  Then the Subscription Terms are displayed in the Publisher defined sequence "<term_sequence>"
  And the term "<default_term>" is selected by default
  And the price for the selected term is identical to the amount with VAT formatted price from PDS json for the specified "<qty>" , "<term>" , "<product>" , "<appKey>" , "<country>" , "<slevel>"



Examples:
  |site   | product | appKey | country| slevel    |term   | default_term |qty | published_page                                  | term_sequence                  |
# Digital River
  |.co.jp | ACDIST   | ONLINE | JP     | ADVANCED  |1-YEAR | 3 年         | 1  |  /qa-automation/fsb-buy/buy-container-online/acd | 3 YEAR,MONTHLY,1 YEAR        |
# PELICAN
  |.fr    | MAYA     | ONLINE | FR     | ADVANCED  |1-YEAR | 2 ANS        | 1  | /qa-automation/fsb-buy/buy-container-online/maya | 3 YEAR,MONTHLY,2 YEAR,1 YEAR |


# SRPDB only
 # |.co.za | ACD     | ONLINE | ZA     | ADVANCED  |1-YEAR | 2 YEAR       | 1  | /qa-automation/fsb-buy/buy-container-online/acd | 3 YEAR,MONTHLY,2 YEAR,1 YEAR  |


#------------------------------     Scenario 3 - Total Price  -----------------------------------------#

@StorageClear
Scenario Outline: 2. Online - Verify the correct total prices are displayed in the summary drawer in the Buy container.

  Given the user navigates to the DC Subscription page "<published_page>" for the "<site>"
  And the Quantity selector is displayed in the UI
  And Support Level selector is not displayed
  When a quantity "<quantity>" is entered in the Quantity selector in UI
  Then validate the display of the Qty in Summary Drawer is "<quantity>"
  And the total price in the UI is identical to the amount formatted price from PDS json for the specified "<quantity>" , "<term>" , "<product>" , "<appKey>" , "<country>" , "<slevel>"
  ## And the Total Price Toolip text appears (Legal)

@SMOKE
Examples:
  |site   | product | appKey | country| slevel    |term   |quantity | published_page                                 |
  |.com   | RVT     | ONLINE | US     | ADVANCED  |2-YEAR | 4       |/qa-automation/fsb-buy/buy-container-online/maya |
  |.mx    | ACDIST   | ONLINE | MX     | ADVANCED  |3-YEAR | 4       | /qa-automation/fsb-buy/buy-container-online/acd |



#------------------------------     Scenario 4 - Total Price with VAT  -----------------------------------------#

@StorageClear
Scenario Outline: 2b. Online - Verify the correct total prices are displayed in the summary drawer in the Buy container.

  Given the user navigates to the DC Subscription page "<published_page>" for the "<site>"
  And the Quantity selector is displayed in the UI
  And Support Level selector is not displayed
  When a quantity "<quantity>" is entered in the Quantity selector in UI
  Then validate the display of the Qty in Summary Drawer is "<quantity>"
  And the total price in the UI is identical to the amount formatted with VAT price from PDS json for the specified "<quantity>" , "<term>" , "<product>" , "<appKey>" , "<country>" , "<slevel>"
  ## And the Total Price Toolip text appears (Legal)


Examples:
  |site   | product | appKey | country| slevel    |term   |quantity | published_page                                  |
  |.co.jp | ACDIST   | ONLINE | JP     | ADVANCED  |3-YEAR | 4       | /qa-automation/fsb-buy/buy-container-online/acd |
  |.fr    | MAYA     | ONLINE | FR     | ADVANCED  |2-YEAR | 4       | /qa-automation/fsb-buy/buy-container-online/maya |


  #------------------------------Scenario 5 - Display the payment method icons based on the year term selected by the user  ----------------------------------------------------------#


Scenario Outline: 3. Display the payment method icons based on the term selected by the user


Given the user navigates to the DC Subscription page "<published_page>" for the "<site>"
And user selects the Term "<term>"
Then validate that the correct icon url is displayed for "<term>"


Examples:
  |site   | published_page   | term  |
  |.in    | /qa-automation/fsb-buy/autorenewable | 1-YEAR |
  |.in    | /qa-automation/fsb-buy/autorenewable | 1-MONTH |
