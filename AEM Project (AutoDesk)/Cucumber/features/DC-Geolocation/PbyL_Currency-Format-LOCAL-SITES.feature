@DC
@GEOLOCATION
@Currency
@LocalSites

Feature: PbyL_Currency-Format-LOCAL-SITES

  GEOLOCATION: Currency format on Local sites
  Local Country site of user is displaying correct currency, format and Disclaimer.

######################## SCENARIO 1 #########################

Scenario Outline: 1. Local site of User is displaying correct currency
  Given the user is on a "<LocalSite>" Product page "/qa-automation/geolocation/product-data-component-1-2014_responsive-general-page"
  When using the correct "<CurrencyCode>"
  Then the "<Currency>" Price format for my local country is displayed

@SMOKE
  Examples:
    | LocalSite | Currency    | CurrencyCode |
    | .com      | $4,195      | USD |
    | .ca/en    | US$4,195    | USD |
    | .ca/fr    | 4 195 $US   | USD |
    | .fr       | 4 195 €     | EUR |
    | .co.jp    | ￥4,195     | JPY |
    | .mx       | $4,195      | MXN |
    | .co.uk    | £4,195      | GBP |
    | .com.au   | AU$4,195    | AUD |
    | .ru       | 4 195 руб.  | RUB |



######################## SCENARIO 2 ########################
@Disclaimer

Scenario Outline: 2. Local site of User is displaying correct Country Disclaimer
  Given the user is on a "<LocalSite>" Product page "/qa-automation/geolocation/product-data-component-1-2014_responsive-general-page"
  Then the Country "<Disclaimer>" is displayed next to the price

@SMOKE
  Examples:
    | LocalSite | Disclaimer					          |
    | .com      | SRP† -D-EN-US					        |
    | .ca/en    | SRP† -D-EN-CA					        |
    | .ca/fr    | PPC hors TVA† -CA (D-FR_CA)   |
    | .fr       | PPC hors TVA† -FR (D-FR)	  	|
    | .co.uk    | SRP excl. VAT† -GB (D-EN_GB)  |




######################## SCENARIO 3 #########################
@PriceDisclaimer

Scenario Outline: 3. Local site of User is displaying correct currency with the disclaimer
  Given the user is on a "<LocalSite>" Product page "/qa-automation/geolocation/product-data-component-1-2014_responsive-general-page"
  Then the Price and Disclaimer from my Local Country is displayed "<Price+Disclaimer>".

@SMOKE
  Examples:
    | LocalSite | Price+Disclaimer  					             		|
    | .com      | $4,195 SRP† -D-EN-US			   			          |
    | .ca/en    | US$4,195 SRP† -D-EN-CA						          |
    | .ca/fr    | 4 195 $US PPC hors TVA† -CA (D-FR_CA) 		  |
    | .de       | 4.195 € UVP inkl. 19 % MwSt.† -AD_DA (D-DE)	|
    | .co.uk    | £4,195 SRP excl. VAT† -GB (D-EN_GB)			    |

######################## Scenario END  #######################
