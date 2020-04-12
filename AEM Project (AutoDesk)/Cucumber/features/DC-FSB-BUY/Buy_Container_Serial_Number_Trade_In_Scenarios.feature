@DC
@FSBBUY
@SLE2
@PT
@REGRESSION
@SLE1

Feature: Serial Number trade-in Scenarios validation.

#-------------------Scenario Outline: 1.  Validate for invalid email and valid serial number

@StorageClear
Scenario Outline: 1.  Validate for invalid email and valid serial number
Given the user navigates to the DC Subscription page "<published_page>" for the "<site>"
And the user clicks on the serial number trade-in banner
When the user enters email "<email>" and serial_number "<serial_number>"
When the user moves the focus away
Then user should see the email error message "<email_error_msg>"

Examples:
| site| published_page| email | serial_number |email_error_msg |
| .com| /qa-automation/fsb-buy/sn-trade-in/serial-number-trade-in| abc@test| 123-12345678 |Entered email is invalid.|

#---------------------------Scenario Outline: 2.  Validate both fields with Invalid data

@StorageClear
Scenario Outline: 2.  Validate both fields with Invalid data
Given the user navigates to the DC Subscription page "<published_page>" for the "<site>"
And the user clicks on the serial number trade-in banner
When the user enters email "<email>" and serial_number "<serial_number>"
When the user moves the focus away
Then user should see the error messages "<email_error_msg>" and "<serial_number_error_msg>"

Examples:
| site| published_page| email | serial_number | email_error_msg |serial_number_error_msg|
| .com| /qa-automation/fsb-buy/sn-trade-in/serial-number-trade-in|abc@ | 123-1234567 |Entered email is invalid.|Please enter valid Serial Number|

#------------------------Scenario Outline: 3.  Validate both fields with no data

@StorageClear
Scenario Outline: 3.  Validate both fields with no data
Given the user navigates to the DC Subscription page "<published_page>" for the "<site>"
And the user clicks on the serial number trade-in banner
And the user clicks on the Continue button
Then user should see the error messages "<email_error_msg>" and "<serial_number_error_msg>"

Examples:
| site| published_page| email_error_msg |serial_number_error_msg|
| .com| /qa-automation/fsb-buy/sn-trade-in/serial-number-trade-in|Email is required|Serial Number is required|

#------------------------Scenario Outline: 4.  Validate both fields with valid data

@StorageClear
Scenario Outline: 4.  Validate both fields with valid data
Given the user navigates to the DC Subscription page "<published_page>" for the "<site>"
And the user clicks on the serial number trade-in banner
When the user enters email "<email>" and serial_number "<serial_number>"
And the user clicks on the Continue button
Then the user should see the form closed

Examples:
| site| published_page| email | serial_number |
| .com| /qa-automation/fsb-buy/sn-trade-in/serial-number-trade-in|abc@test.com | 123-12345678 |

#------------------------Scenario Outline: 5.  Validate Serial number trade in form Data

@StorageClear
Scenario Outline: 5. Validate Serial number trade in form data
Given the user navigates to the DC Subscription page "<published_page>" for the "<site>"
And the user clicks on the serial number trade-in banner
And user sees autodesk logo "autodesk_header_logo_140x23.png" in header bar of the form
And header text is "<promo_header>"
And header description is "<promo_Description>"
And email field label is "<user_Email_label>"
And SN trade-in label is "<sn_label>"
And user sees SN trade-in description text "<sn_description>"
When user clicks on close button
Then user sees the link "<sn_banner_link>"

Examples:
  | site|                            published_page                |        promo_header      |                                                               promo_Description                                                           | user_Email_label |       sn_label                   |       sn_banner_link  | sn_description                                     |
  | .com| /qa-automation/fsb-buy/sn-trade-in/serial-number-trade-in|  Special upgrade offer   | Submit your perpetual non-maintenance license and save 20% on a new 1-year or 3-year subscription—just provide the following information. |     Email        | Enter your product serial number |  Upgrade and save 20% | A perpetual license, non-maintenance serial number |

#------------------------Scenario Outline: 6.  Validate that banner headline link becomes static text, after promotion is applied


@StorageClear
Scenario Outline: 6.  Validate that banner headline link becomes static text, after promotion is applied
Given the user navigates to the DC Subscription page "<published_page>" for the "<site>"
And the user clicks on the serial number trade-in banner
When the user enters email "<email>" and serial_number "<serial_number>"
And the user clicks on the Continue button
Then the user should see the banner link as static text

Examples:
| site| published_page| email | serial_number |
| .com| /qa-automation/fsb-buy/sn-trade-in/serial-number-trade-in|abc@test.com| 123-12345678 |


#------------------------Scenario Outline: 7. Validate that banner icon is not a link after the promotion is applied

@StorageClear
Scenario Outline: 7.  Validate that banner icon is not a link after the promotion is applied
Given the user navigates to the DC Subscription page "<published_page>" for the "<site>"
And the user clicks on the serial number trade-in banner icon
When the user enters email "<email>" and serial_number "<serial_number>"
And the user clicks on the Continue button
Then the user should see the banner icon not as a link

Examples:
| site| published_page| email | serial_number |
| .com| /qa-automation/fsb-buy/sn-trade-in/serial-number-trade-in|abc@test.com | 123-12345678 |

#------------------------Scenario Outline: 8.  Validate the banner headline,description and "terms and conditions" link text

@StorageClear
Scenario Outline: 8.  Validate the banner headline,description text and "terms and conditions" link text
Given the user navigates to the DC Subscription page "<published_page>" for the "<site>"
Then the user should see the banner headline text as "<banner_headline_text>"
And the user should see the banner description text as "<banner_description_text>"
And the user should see the terms and conditions link text as "<terms_and_conditions_link_text>"


Examples:
| site|                         published_page                   | banner_headline_text |                                                   banner_description_text                                                      |    terms_and_conditions_link_text  |
| .com| /qa-automation/fsb-buy/sn-trade-in/serial-number-trade-in| Upgrade and save 20% | Submit your perpetual license serial number now and save 20% on a 1-year or 3-year subscription. Upgrade to subscription today |     Terms and conditions.          |


#------------------------Scenario 9------------------------#

@StorageClear
Scenario: 9. Buy Container refresh when there is no promotion available for Pelican
Given the user navigates to the DC Subscription page "/qa-automation/fsb-buy/sn-trade-in/gsw" for the ".com"
And the monthly term has no discount
And the 1-YEAR term has no discount
And the 2-YEAR term has no discount
And the 3-YEAR term has no discount
When the user clicks on the serial number trade-in banner
And the user enters email "a@b.com" and serial_number "123-45678901"
And the user clicks on the Continue button
Then the monthly term has no discount
And the 1-YEAR term has no discount
And the 2-YEAR term has no discount
And the 3-YEAR term has no discount


#------------------------Scenario 10------------------------#

@StorageClear
Scenario: 10. Buy Container refresh when there is a storewide promotion available but no Trade-In promotion for Pelican
Given the user navigates to the DC Subscription page "/qa-automation/fsb-buy/sn-trade-in/gsw" for the ".co.uk"
And the monthly term has no discount
And the 1-YEAR term has a discount and a promotion description ""
And the 2-YEAR term has a discount and a promotion description ""
And the 3-YEAR term has a discount and a promotion description ""
When the user clicks on the serial number trade-in banner
And the user enters email "a@b.com" and serial_number "123-45678901"
And the user clicks on the Continue button
Then the monthly term has no discount
And the 1-YEAR term has a discount and a promotion description ""
And the 2-YEAR term has a discount and a promotion description ""
And the 3-YEAR term has a discount and a promotion description ""

#------------------------Scenario 11------------------------#

@StorageClear @WIP
Scenario: 11. Buy Container refresh when there is a Trade-In promotion available but no storewide promotion for Pelican
Given the user navigates to the DC Subscription page "/qa-automation/fsb-buy/sn-trade-in/gsw" for the ".fr"
And the monthly term has no discount
And the 1-YEAR term has no discount
And the 2-YEAR term has no discount
And the 3-YEAR term has no discount
When the user clicks on the serial number trade-in banner
And the user enters email "a@b.com" and serial_number "123-45678901"
And the user clicks on the Continue button
And user waits for 3 seconds
Then the monthly term has no discount
And the 1-YEAR term has a discount and a promotion description "FR - SN - 15%"
And the 2-YEAR term has no discount
And the 3-YEAR term has a discount and a promotion description "FR - SN - 15%"


#------------------------Scenario 12------------------------#

@StorageClear
Scenario: 12. Buy Container refresh when there are both storewide and Trade-In promotions available for Pelican
Given the user navigates to the DC Subscription page "/qa-automation/fsb-buy/sn-trade-in/gsw" for the ".ca/fr"
And the monthly term has no discount
And the 1-YEAR term has no discount
And the 2-YEAR term has no discount
And the 3-YEAR term has no discount
When the user clicks on the serial number trade-in banner
And the user enters email "a@b.com" and serial_number "123-45678901"
And the user clicks on the Continue button
And user waits for 3 seconds
Then the monthly term has no discount
And the 1-YEAR term has a discount and a promotion description ""
And the 2-YEAR term has no discount
And the 3-YEAR term has a discount and a promotion description ""


#------------------------Scenario 13------------------------#

@StorageClear
Scenario: 13. Buy Container refresh when there is no promotion available for DR
Given the user navigates to the DC Subscription page "/qa-automation/fsb-buy/sn-trade-in/gsw" for the ".co.jp"
And the monthly term has no discount
And the 1-YEAR term has no discount
And the 2-YEAR term has no discount
And the 3-YEAR term has no discount
When the user clicks on the serial number trade-in banner
And the user enters email "a@b.com" and serial_number "123-45678901"
And the user clicks on the Continue button
Then the monthly term has no discount
And the 1-YEAR term has no discount
And the 2-YEAR term has no discount
And the 3-YEAR term has no discount


#------------------------Scenario 14------------------------#

@StorageClear
Scenario: 14. Buy Container refresh when there is a storewide promotion available but no Trade-In promotion for DR
Given the user navigates to the DC Subscription page "/qa-automation/fsb-buy/sn-trade-in/gsw" for the ".co.kr"
And the monthly term has no discount
And the 1-YEAR term has a discount and a promotion description "KR - 10%"
And the 2-YEAR term has no discount
And the 3-YEAR term has no discount
When the user clicks on the serial number trade-in banner
And the user enters email "a@b.com" and serial_number "123-45678901"
And the user clicks on the Continue button
Then the monthly term has no discount
And the 1-YEAR term has a discount and a promotion description "KR - 10%"
And the 2-YEAR term has no discount
And the 3-YEAR term has no discount


#------------------------Scenario 15------------------------#

@StorageClear @WIP
Scenario: 15. Buy Container refresh when there is a Trade-In promotion available but no storewide promotion for DR
Given the user navigates to the DC Subscription page "/qa-automation/fsb-buy/sn-trade-in/gsw" for the ".ch/it"
And the monthly term has no discount
And the 1-YEAR term has no discount
And the 2-YEAR term has no discount
And the 3-YEAR term has no discount
When the user clicks on the serial number trade-in banner
And the user enters email "a@b.com" and serial_number "123-45678901"
And the user clicks on the Continue button
And user waits for 3 seconds
Then the monthly term has no discount
And the 1-YEAR term has a discount and a promotion description "OFFERTA SPECIALE! 15% DI SCONTO PER UN PERIODO LIMITATO."
And the 2-YEAR term has no discount
And the 3-YEAR term has a discount and a promotion description "OFFERTA SPECIALE! 15% DI SCONTO PER UN PERIODO LIMITATO."


#------------------------Scenario 16------------------------#

@StorageClear @WIP
Scenario: 16. Buy Container refresh when there are both storewide and Trade-In promotions available for DR
Given the user navigates to the DC Subscription page "/qa-automation/fsb-buy/sn-trade-in/gsw" for the ".ru"
And the monthly term has no discount
And the 1-YEAR term has a discount and a promotion description "СКИДКА 25 % ПРИ ОБМЕНЕ С ДОПЛАТОЙ"
And the 2-YEAR term has a discount and a promotion description "СКИДКА 25 % ПРИ ОБМЕНЕ С ДОПЛАТОЙ"
And the 3-YEAR term has a discount and a promotion description "СКИДКА 25 % ПРИ ОБМЕНЕ С ДОПЛАТОЙ"
When the user clicks on the serial number trade-in banner
And the user enters email "a@b.com" and serial_number "123-45678901"
And the user clicks on the Continue button
And user waits for 3 seconds
Then the monthly term has no discount
And the 1-YEAR term has a discount and a promotion description "СПЕЦПРЕДЛОЖЕНИЕ! СКИДКА 15 %. СРОК ПРЕДЛОЖЕНИЯ ОГРАНИЧЕН"
And the 2-YEAR term has a discount and a promotion description "СКИДКА 25 % ПРИ ОБМЕНЕ С ДОПЛАТОЙ"
And the 3-YEAR term has a discount and a promotion description "СПЕЦПРЕДЛОЖЕНИЕ! СКИДКА 15 %. СРОК ПРЕДЛОЖЕНИЯ ОГРАНИЧЕН"


#------------------------Scenario 17------------------------#

@StorageClear
Scenario: 17. Data persistence works once the user enter their Serial Number for DR
Given the user navigates to the DC Subscription page "/qa-automation/fsb-buy/sn-trade-in/gsw" for the ".ch/fr"
And the user clicks on the serial number trade-in banner
And the user enters email "a@b.com" and serial_number "123-45678901"
And the user clicks on the Continue button
And user waits for 3 seconds
And the 1-YEAR term has a discount and a promotion description "OFFRE SPÉCIALE ! OBTENEZ 15% DE REMISE (PÉRIODE LIMITÉE)."
When the user navigates to ".ch/de" "/qa-automation/fsb-buy/sn-trade-in/gsw"
Then the 1-YEAR term has a discount and a promotion description "SONDERANGEBOT! 15% RABATT – NUR FÜR BEGRENZTE ZEIT!"
And the user clicks on the Undo applied offer button
And user waits for 3 seconds
And the 1-YEAR term has no discount


#------------------------Scenario 18------------------------#

@StorageClear
Scenario: 18. Buy Container refresh when there are both storewide and Trade-In promotions available for Pelican and promotions are different per term
Given the user navigates to the DC Subscription page "/qa-automation/fsb-buy/sn-trade-in/gsw2" for the ".ca/fr"
And the monthly term has a discount and a promotion description ""
And the 1-YEAR term has a discount and a promotion description ""
And the 2-YEAR term has a discount and a promotion description ""
And the 3-YEAR term has a discount and a promotion description ""
When the user clicks on the serial number trade-in banner
And the user enters email "a@b.com" and serial_number "123-45678901"
And the user clicks on the Continue button
And user waits for 3 seconds
Then the monthly term has a discount and a promotion description ""
And the 1-YEAR term has a discount and a promotion description ""
And the 2-YEAR term has a discount and a promotion description ""
And the 3-YEAR term has a discount and a promotion description "CA -SN - 25%"


#------------------------Scenario 19------------------------#

@StorageClear
Scenario: 19. Buy Container refresh when there is a Trade-In promotion available but no storewide promotion for DR and promotions are different per term
Given the user navigates to the DC Subscription page "/qa-automation/fsb-buy/sn-trade-in/gsw2" for the ".ch/it"
And the monthly term has no discount
And the 1-YEAR term has no discount
And the 2-YEAR term has no discount
And the 3-YEAR term has no discount
When the user clicks on the serial number trade-in banner
And the user enters email "a@b.com" and serial_number "123-45678901"
And the user clicks on the Continue button
And user waits for 3 seconds
Then the monthly term has no discount
And the 1-YEAR term has a discount and a promotion description "OFFERTA SPECIALE! 15% DI SCONTO PER UN PERIODO LIMITATO."
And the 2-YEAR term has no discount
And the 3-YEAR term has a discount and a promotion description "OFFERTA SPECIALE! 25% DI SCONTO PER UN PERIODO LIMITATO."


#------------------------Scenario 20------------------------#

@StorageClear @WIP
Scenario: 20. Buy Container refresh when there are both storewide and Trade-In promotions available for DR and promotions are different per term
Given the user navigates to the DC Subscription page "/qa-automation/fsb-buy/sn-trade-in/gsw2" for the ".ru"
And the monthly term has a discount and a promotion description ""
And the 1-YEAR term has a discount and a promotion description "СКИДКА 25 % ПРИ ОБМЕНЕ С ДОПЛАТОЙ"
And the 2-YEAR term has a discount and a promotion description "СКИДКА 25 % ПРИ ОБМЕНЕ С ДОПЛАТОЙ"
And the 3-YEAR term has a discount and a promotion description "СКИДКА 25 % ПРИ ОБМЕНЕ С ДОПЛАТОЙ"
When the user clicks on the serial number trade-in banner
And the user enters email "a@b.com" and serial_number "123-45678901"
And the user clicks on the Continue button
And user waits for 3 seconds
Then the monthly term has a discount and a promotion description ""
And the 1-YEAR term has a discount and a promotion description "СПЕЦПРЕДЛОЖЕНИЕ! СКИДКА 15 %. СРОК ПРЕДЛОЖЕНИЯ ОГРАНИЧЕН"
And the 2-YEAR term has a discount and a promotion description "СКИДКА 25 % ПРИ ОБМЕНЕ С ДОПЛАТОЙ"
And the 3-YEAR term has a discount and a promotion description "СПЕЦПРЕДЛОЖЕНИЕ! СКИДКА 25 %. СРОК ПРЕДЛОЖЕНИЯ ОГРАНИЧЕН"


#------------------------Scenario Outline: 21.  Validate the banner headline,description and "terms and conditions" link text

# @StorageClear
# Scenario Outline: 21.  Validate the banner appears only if it is active (within start/end dates, or no dates)
# Given the user navigates to the DC Subscription page "<published_page>" for the "<site>"
# Then the user should see the banner headline text as "<banner_headline_text>"


# Examples:
# | site| published_page                                           | banner_headline_text                    |
# | .com| /qa-automation/fsb-buy/sn-trade-in/trade-in-promo-dates-1| Perpetual license special trade-in offer|
# | .com| /qa-automation/fsb-buy/sn-trade-in/trade-in-promo-dates-2| Perpetual license special trade-in offer|
# | .com| /qa-automation/fsb-buy/sn-trade-in/trade-in-promo-dates-3|                                         |
# | .com| /qa-automation/fsb-buy/sn-trade-in/trade-in-promo-dates-4| Perpetual license special trade-in offer|




#-------------------Scenario Outline: 21.  Validate SN-Trade works properly on collection page

@StorageClear
Scenario Outline: 21.  Validate for SN-Trade works properly on collection page
Given the user navigates to the DC Subscription page "<published_page>" for the "<site>"
When the user enters email "<email>" and serial_number "<serial_number>"
And the user clicks on the Continue button
Then the user should see the form closed

Examples:
| site| published_page| email | serial_number |email_text|sn_text|
| .co.jp|/collections/product-design-manufacturing/subscribe?plc=PDCOLL&term=3-YEAR&support=ADVANCED&quantity=1&sntradein=true| abc@test.com| 123-12345678 |電子|番号|
#| .co.kr|/collections/product-design-manufacturing/subscribe?plc=PDCOLL&term=3-YEAR&support=ADVANCED&quantity=1&sntradein=true| abc@test.com| 123-12345678 |電子|番号|
#| .ca|/fr/collections/product-design-manufacturing/subscribe?plc=PDCOLL&term=3-YEAR&support=ADVANCED&quantity=1&sntradein=true| abc@test.com| 123-12345678 |Email|Entrez le numéro de série de votre produit|
#| .br|/collections/product-design-manufacturing/subscribe?plc=PDCOLL&term=3-YEAR&support=ADVANCED&quantity=1&sntradein=true| abc@test.com| 123-12345678 |Email|Introduza o número de série do produto|
