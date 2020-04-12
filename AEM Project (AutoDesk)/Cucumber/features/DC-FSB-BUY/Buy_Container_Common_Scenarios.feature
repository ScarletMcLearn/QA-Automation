@DC
@FSBBUY
@SLE2
@PT
@REGRESSION
@SLE1


Feature: FSB Online buy container Functional Scenarios validation.




#----------------------------      Scenario 1 - PDS Alert   --------------------------#

### ADD TO SPLUNK DASHBOARD: PDS ERRORs, INVALID PLC, NO BUY CONTAINER LOADING, etc...


@StorageClear
Scenario Outline: 1. ALERT - Alert displayed when pricing information is not available from PDS- .com site

Given the userCountry cookie is set for "<countrycode>" on "<site>"
When the user navigates to the DC Subscription page "<published_page_for_which_pricing_info_do_not_exist>" for the "<site>"
Then the alert message container is displayed
And the alert message "There seems to be a problem with your internet connection, please try again later." is displayed
And the product name "Invalid-PLC" is displayed in the buy container header
And the product logo "Bears.jpg" is displayed in buy container header
And Summary Drawer is not displayed
And Subscription Terms are not displayed
And Support Level selector is not displayed
And Payment options are not displayed
And Norton Security logo is not displayed

@SMOKE
Examples:
 | site   | countrycode | published_page_for_which_pricing_info_do_not_exist               |
 | .com   | US          | /qa-automation/fsb-buy/buy-container-online/single-plc-not-exist |

Examples:
 | site   | countrycode | published_page_for_which_pricing_info_do_not_exist               |
 | .com   | US          | /qa-automation/fsb-buy/buy-container-srp/single-plc-not-exist    |



#----------------------------      Scenario 2  - Payment Options  --------------------------#

@StorageClear
Scenario Outline:  2. ONLINE - Internal User validates the display of payment options when the appkey is ONLINE.

Given the user navigates to the DC Subscription page "<published_page>" for the "<site>"
Then Payment options "<payment_options>" are displayed and are in the correct order

@SMOKE
 Examples:
 | site   | published_page                                          | payment_options                                 |
 | .com   | /qa-automation/fsb-buy/buy-container-with-online-values | visa,mastercard,americanexpress,discover,paypal |




#----------------------------      Scenario 3 - Persistence   --------------------------#


@StorageClear
Scenario Outline: 3. PERSISTENCE - PLC, Quantity user selections persistence.

    Given the user navigates to the DC Subscription page "<published_page>" for the "<site>"
    And user selects a PLC "Maya"
    And a quantity "6" is entered in the Quantity selector in UI
    And user selects the Term "2-YEAR"
    And user navigates to a different page
    When user returns to the "<published_page>" for the "<site>"
    Then the PLC field should have the value "Maya"
    And the Quantity "6" should be displayed in the Quantity field
    And the term "2 YEAR" is selected

Examples:
| site      | published_page                                                                |
| .com      | /qa-automation/fsb-buy/buy-container-online/multiple-plc-with-default-quantity|



 #----------------------------  Scenario 4 - Legal Disclaimer   --------------------------#

Scenario Outline: 4.  Validate the 5 use cases types of Legal disclaimer per specific country

 Given the user navigates to the DC Subscription page "<page>" for the "<site>"
 Then the appropriate Disclaimer is displayed "<legaldisclaimer>"


# ----- BIC - No VAT (US, Canada)
@SMOKE
Examples:
  | site | page                                                          | legaldisclaimer                                                    |
  | .com | /qa-automation/fsb-buy/buy-container/labels/online-dictionary | Pricing for stand-alone single-user license. See legal disclosures |
#  | .com | /qa-automation/fsb-buy/buy-container/labels/online-custom     | BIC - No VAT (US, Canada)                                           |


Examples:
  | site    | page                                                      | legaldisclaimer            |
  | .ca/en  | /qa-automation/fsb-buy/buy-container/labels/online-custom | BIC - No VAT (US, Canada)  |
  | .ca/fr  | /qa-automation/fsb-buy/buy-container/labels/online-custom | BIC - No VAT (US, Canada)  |



# ----- BIC - VAT included (EMEA)
@SMOKE
Examples:
  | site | page                                                      | legaldisclaimer           |
  | .de  | /qa-automation/fsb-buy/buy-container/labels/online-custom | BIC - VAT included (EMEA) |


Examples:
  | site | page                                                          | legaldisclaimer                                                                                                                                                     |
  | .de  | /qa-automation/fsb-buy/buy-container/labels/online-dictionary | Der Preis versteht sich inklusive der geschätzten Mehrwertsteuer für eine Einzellizenz mit Single-User-Zugriff. Weitere Informationen in den rechtlichen Hinweisen. |



# ----- DR - No VAT (Mexico, Russia, Turkey, India, Australia)
@SMOKE
Examples:
  | site | page                                                       | legaldisclaimer                                        |
  | .mx  | /qa-automation/fsb-buy/buy-container/labels/online-custom  | DR - No VAT (Mexico, Russia, Turkey, India, Australia) |



# ----- DR - VAT included (Singapore, Japan, Korea, Brazil)
### NEED A NEW PRODUCT. BELOW RETURNS SRP INSTEAD OF DR
@SMOKE
Examples:
  | site    |  page                                                      | legaldisclaimer                                        |
#  | .co.jp  | /qa-automation/fsb-buy/buy-container/labels/online-custom  | DR - VAT included (Singapore, Japan, Korea, Brazil)  |


Examples:
  | site    | page                                                           | legaldisclaimer                                                                      |
#  | .co.jp  | /qa-automation/fsb-buy/buy-container/labels/online-dictionary  | (DR-VAT) Suggested retail prices, including tax, and other Legal Disclosures (JA)    |



# ----- SRP (Reseller) - No VAT
@SMOKE
Examples:
  | site | page                                                       | legaldisclaimer                                                                            |
  | .com | /qa-automation/fsb-buy/buy-container/labels/srp-dictionary | For pricing and purchase of this product, please contact a reseller. See legal disclosures |
  | .com | /qa-automation/fsb-buy/buy-container/labels/srp-custom     | SRP (Reseller) - No VAT                                                                    |



 #----------------------------  Scenario 14 - PDS Replacer   --------------------------#

Scenario Outline: 14. PDS Replacer

 Given the user navigates to the DC Subscription page "<page>" for the "<site>"
 Then the correct values for appear for country, currency, value

#@SMOKE
#@WIP
#Examples:
 # | site   | page                                               | elements     |
 # | .com   | /qa-automation/fsb-buy/buy-container/pds-replacer  | placeholder  |

#@WIP
#Examples:
  #| site   | page                                               | elements     |
  #| .com   | /qa-automation/fsb-buy/buy-container/pds-replacer  | placeholder  |
  #| .de    | /qa-automation/fsb-buy/buy-container/pds-replacer  | placeholder  |
  #| .co.jp | /qa-automation/fsb-buy/buy-container/pds-replacer  | placeholder  |


#------------------------------     Scenario 16 - Product Description  -----------------------------------------#

Scenario: 15. Product Description

  Given the user navigates to the DC Subscription page "/qa-automation/fsb-buy/multiple-product-attributes" for the ".com"
  And user selects a PLC "AutoCAD"
  And user should see the product description "AutoCAD Windows Product description"
  When user selects a PLC "Revit"
  Then user should see the product description "Revit Product description"

# ############ END ##################
