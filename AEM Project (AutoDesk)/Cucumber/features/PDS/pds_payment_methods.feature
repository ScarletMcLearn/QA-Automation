# PDS SLE2: https://web-sle-engineering-svc.awsism.autodesk.com/products/ACDIST?country=US&app=SRP&language=en
# PDS PT: https://web-pt-engineering-svc.autodesk.com/products/ACDIST?country=US&app=SRP&language=en
# PDS PROD: https://web-engineering-svc.autodesk.com/products/ACDIST?country=FR&app=ONLINE&language=fr
#***********************************************************************

@PDS
@PL-3927

Feature: pds_payment_methods

  Validate the payment methods

# For the list of payment methods supported by the countries pls refer the pds_payment_methods_validation.rb file.
# Available in the step definitions folder.

  ######################## SCENARIO 1 #########################

  Scenario Outline: 1. ONLINE: Internal User validates the payment methods received in the PDS Json file when app key is Online

    Given the user is on a PDS URL for "<product>" and "<appKey>" and "<country>"
    When the PDS response code is equal to 200
    Then validate that the correct payment methods "<pay_methods>" are displayed in the correct sequence order
    And the correct number "<numOfPaymentOptions>" of payment options are displayed.


  @PROD
    Examples:
      | product | appKey | country | numOfPaymentOptions | pay_methods                                                     |
      #| ACDIST      |   ONLINE    | CA       |         5           |visa,mastercard,americanexpress,discover,paypal                            |
      | ACDIST  | ONLINE | US      | 5                   | visa,mastercard,americanexpress,discover,paypal                 |
      | ACDIST  | ONLINE | SG      | 5                   | visa,mastercard,americanexpress,paypal,wiretransfer             |
      | MAYA    | ONLINE | JP      | 7                   | visa,mastercard,americanexpress,jcb,paypal,Bank Transfer,Kobini |


  @REGRESSION
    Examples:
      | product | appKey | country | numOfPaymentOptions | pay_methods                                     |
      | ACDIST  | ONLINE | CA      | 5                   | visa,mastercard,americanexpress,discover,paypal |

  @WIP
    Examples:
      | product | appKey | country | numOfPaymentOptions | pay_methods                                                                |
      | MAYA    | ONLINE | AU      | 5                   | visa,mastercard,americanexpress,jcb,paypal                                 |
      | MAYA    | ONLINE | NZ      | 5                   | visa,mastercard,americanexpress,jcb,paypal                                 |
      | MAYA    | ONLINE | IN      | 2                   | visa,mastercard                                                            |
      | MAYA    | ONLINE | KR      | 2                   | visa,mastercard                                                            |
     #| ACDLT    |   ONLINE    | TR       |         2           |visa,mastercard                                                            |
      | ACDIST  | ONLINE | BR      | 2                   | visa,paypal                                                                |
      | MAYA    | ONLINE | MX      | 3                   | visa,mastercard,paypal                                                     |
      | MAYA    | ONLINE | RU      | 3                   | visa,mastercard,paypal                                                     |
      | ACDIST  | ONLINE | AT      | 8                   | visa,mastercard,americanexpress,discover,cartebleue,cartasi,dankort,paypal |
      | ACDIST  | ONLINE | BE      | 8                   | visa,mastercard,americanexpress,discover,cartebleue,cartasi,dankort,paypal |
      | ACDIST  | ONLINE | BG      | 8                   | visa,mastercard,americanexpress,discover,cartebleue,cartasi,dankort,paypal |
      | ACDIST  | ONLINE | CH      | 8                   | visa,mastercard,americanexpress,discover,cartebleue,cartasi,dankort,paypal |
      | ACDIST  | ONLINE | CY      | 8                   | visa,mastercard,americanexpress,discover,cartebleue,cartasi,dankort,paypal |
      | ACDIST  | ONLINE | CZ      | 8                   | visa,mastercard,americanexpress,discover,cartebleue,cartasi,dankort,paypal |
      | ACDIST  | ONLINE | DE      | 8                   | visa,mastercard,americanexpress,discover,cartebleue,cartasi,dankort,paypal |
      | ACDIST  | ONLINE | DK      | 8                   | visa,mastercard,americanexpress,discover,cartebleue,cartasi,dankort,paypal |
      | ACDIST  | ONLINE | EE      | 8                   | visa,mastercard,americanexpress,discover,cartebleue,cartasi,dankort,paypal |
      | ACDIST  | ONLINE | ES      | 8                   | visa,mastercard,americanexpress,discover,cartebleue,cartasi,dankort,paypal |
      | ACDIST  | ONLINE | FI      | 8                   | visa,mastercard,americanexpress,discover,cartebleue,cartasi,dankort,paypal |
      | ACDIST  | ONLINE | FR      | 8                   | visa,mastercard,americanexpress,discover,cartebleue,cartasi,dankort,paypal |
      | ACDIST  | ONLINE | GB      | 8                   | visa,mastercard,americanexpress,discover,cartebleue,cartasi,dankort,paypal |
      | ACDIST  | ONLINE | GR      | 8                   | visa,mastercard,americanexpress,discover,cartebleue,cartasi,dankort,paypal |
      | ACDIST  | ONLINE | HR      | 8                   | visa,mastercard,americanexpress,discover,cartebleue,cartasi,dankort,paypal |
      | ACDIST  | ONLINE | HU      | 8                   | visa,mastercard,americanexpress,discover,cartebleue,cartasi,dankort,paypal |
      | ACDIST  | ONLINE | IE      | 8                   | visa,mastercard,americanexpress,discover,cartebleue,cartasi,dankort,paypal |
      | ACDIST  | ONLINE | IS      | 8                   | visa,mastercard,americanexpress,discover,cartebleue,cartasi,dankort,paypal |
      | ACDIST  | ONLINE | IT      | 8                   | visa,mastercard,americanexpress,discover,cartebleue,cartasi,dankort,paypal |
      | ACDIST  | ONLINE | LI      | 8                   | visa,mastercard,americanexpress,discover,cartebleue,cartasi,dankort,paypal |
      | ACDIST  | ONLINE | LT      | 8                   | visa,mastercard,americanexpress,discover,cartebleue,cartasi,dankort,paypal |
      | ACDIST  | ONLINE | LU      | 8                   | visa,mastercard,americanexpress,discover,cartebleue,cartasi,dankort,paypal |
      | ACDIST  | ONLINE | LV      | 8                   | visa,mastercard,americanexpress,discover,cartebleue,cartasi,dankort,paypal |
      | ACDIST  | ONLINE | MT      | 8                   | visa,mastercard,americanexpress,discover,cartebleue,cartasi,dankort,paypal |
      | ACDIST  | ONLINE | NL      | 8                   | visa,mastercard,americanexpress,discover,cartebleue,cartasi,dankort,paypal |
      | ACDIST  | ONLINE | NO      | 8                   | visa,mastercard,americanexpress,discover,cartebleue,cartasi,dankort,paypal |
      | ACDIST  | ONLINE | PL      | 8                   | visa,mastercard,americanexpress,discover,cartebleue,cartasi,dankort,paypal |
      | ACDIST  | ONLINE | PT      | 8                   | visa,mastercard,americanexpress,discover,cartebleue,cartasi,dankort,paypal |
      | ACDIST  | ONLINE | RO      | 8                   | visa,mastercard,americanexpress,discover,cartebleue,cartasi,dankort,paypal |
      | ACDIST  | ONLINE | SE      | 8                   | visa,mastercard,americanexpress,discover,cartebleue,cartasi,dankort,paypal |
      | ACDIST  | ONLINE | SI      | 8                   | visa,mastercard,americanexpress,discover,cartebleue,cartasi,dankort,paypal |
      | ACDIST  | ONLINE | SK      | 8                   | visa,mastercard,americanexpress,discover,cartebleue,cartasi,dankort,paypal |



# This scenario is tested for the list of countries available in the csv file provided by business. (application-countries-updated-v5.csv)
# csv file available in the path "https://wiki.autodesk.com/pages/viewpage.action?spaceKey=webteam&title=Pricing+Data+file"

  ######################## SCENARIO 2 #########################
  @SRP
  Scenario Outline: 2.SRP: Internal User validates the payment methods are not received in the PDS Json file when app key is SRP

    Given the user is on a PDS URL for "<product>" and "<appKey>" and "<country>"
    When the PDS response code is equal to 200
    Then validate that the payment methods are not displayed.

  @REGRESSION
    Examples:
      | product | appKey | country |
      | ACDIST  | SRP    | CA      |
      | ACDIST  | SRP    | US      |


    Examples:
      | product | appKey | country |
      | ACDIST  | SRP    | AE      |
      | ACDIST  | SRP    | AR      |
      | ACDIST  | SRP    | AT      |
      | ACDIST  | SRP    | AU      |
      | ACDIST  | SRP    | BE      |
      | ACDIST  | SRP    | BR      |
      | ACDIST  | SRP    | CH      |
      | ACDIST  | SRP    | CL      |
      | ACDIST  | SRP    | CN      |
      | ACDIST  | SRP    | CO      |
      | ACDIST  | SRP    | CZ      |
      | ACDIST  | SRP    | DE      |
      | ACDIST  | SRP    | DK      |
      | ACDIST  | SRP    | ES      |
      | ACDIST  | SRP    | FI      |
      | ACDIST  | SRP    | FR      |
      | ACDIST  | SRP    | GB      |
      | ACDIST  | SRP    | GR      |
      | ACDIST  | SRP    | HK      |
      | ACDIST  | SRP    | HR      |
      | ACDIST  | SRP    | HU      |
      | ACDIST  | SRP    | ID      |
      | ACDIST  | SRP    | IE      |
      | ACDIST  | SRP    | IL      |
      | ACDIST  | SRP    | IN      |
      | ACDIST  | SRP    | IT      |
      | MAYA    | SRP    | JP      |
      | MAYA    | SRP    | KR      |
      | ACDIST  | SRP    | MY      |
      | ACDIST  | SRP    | MX      |
      | ACDIST  | SRP    | NL      |
      | ACDIST  | SRP    | NO      |
      | ACDIST  | SRP    | NZ      |
      | ACDIST  | SRP    | PE      |
      | ACDIST  | SRP    | PH      |
      | ACDIST  | SRP    | PK      |
      | ACDIST  | SRP    | PL      |
      | ACDIST  | SRP    | PT      |
      | ACDIST  | SRP    | RO      |
      | ACDIST  | SRP    | RU      |
      | ACDIST  | SRP    | SA      |
      | ACDIST  | SRP    | SE      |
      | ACDIST  | SRP    | SI      |
      | ACDIST  | SRP    | SG      |
      | ACDIST  | SRP    | SK      |
      | ACDIST  | SRP    | SK      |
      | ACDLT   | SRP    | TH      |
      | ACDIST  | SRP    | TW      |
      | ACDIST  | SRP    | UA      |
      | ACDIST  | SRP    | US      |
      | ACDIST  | SRP    | UY      |
      | ACDIST  | SRP    | VN      |
      | ACDLT   | SRP    | ZA      |



     ######################## SCENARIO 3 #########################

  Scenario Outline: 3. ONLINE: Internal User validates the correct payment methods icon urls are received in the PDS Json file when app key is ONLINE

    Given the user is on a PDS URL for "<product>" and "<appKey>" and "<country>"
    When the PDS response code is equal to 200
    Then validate that the correct "<icon_URL>" is displayed for the "<paymentMethod>" are displayed.


  @REGRESSION
  @PROD
    Examples:
      | product | appKey | country | paymentMethod   | icon_URL                                                                                                  |
      #| ACDIST      |   ONLINE    | CA       | visa		      	| https://damassets.autodesk.net/content/dam/autodesk/payment-method-logos/visa-logo-100x60.jpg 		        |
      | ACDIST  | ONLINE | US      | mastercard      | https://damassets.autodesk.net/content/dam/autodesk/payment-method-logos/mastercard-logo-100x60.jpg       |
      | ACDIST  | ONLINE | SG      | americanexpress | https://damassets.autodesk.net/content/dam/autodesk/payment-method-logos/american-express-logo-100x60.jpg |


    Examples:
      | product | appKey | country | paymentMethod   | icon_URL                                                                                                  |
      | MAYA    | ONLINE | AU      | jcb             | https://damassets.autodesk.net/content/dam/autodesk/payment-method-logos/jcb-logo-100x60.jpg              |
      | MAYA    | ONLINE | NZ      | paypal          | https://damassets.autodesk.net/content/dam/autodesk/payment-method-logos/paypal-logo-100x60.jpg           |
      | MAYA    | ONLINE | JP      | visa            | https://damassets.autodesk.net/content/dam/autodesk/payment-method-logos/visa-logo-100x60.jpg             |
      | MAYA    | ONLINE | IN      | mastercard      | https://damassets.autodesk.net/content/dam/autodesk/payment-method-logos/mastercard-logo-100x60.jpg       |
      | MAYA    | ONLINE | KR      | visa            | https://damassets.autodesk.net/content/dam/autodesk/payment-method-logos/visa-logo-100x60.jpg             |
      | ACDIST  | ONLINE | DE      | americanexpress | https://damassets.autodesk.net/content/dam/autodesk/payment-method-logos/american-express-logo-100x60.jpg |
      | ACDIST  | ONLINE | DK      | discover        | https://damassets.autodesk.net/content/dam/autodesk/payment-method-logos/discover-logo-100x60.jpg         |
      | ACDIST  | ONLINE | ES      | paypal          | https://damassets.autodesk.net/content/dam/autodesk/payment-method-logos/paypal-logo-100x60.jpg           |
      | ACDIST  | ONLINE | FI      | dankort         | https://damassets.autodesk.net/content/dam/autodesk/payment-method-logos/dankort-logo-100x600.jpg         |
      | ACDIST  | ONLINE | FR      | cartasi         | https://damassets.autodesk.net/content/dam/autodesk/payment-method-logos/cartisi-logo-100x600.jpg         |
      | ACDIST  | ONLINE | GB      | cartebleue      | https://damassets.autodesk.net/content/dam/autodesk/payment-method-logos/cartes-bancaires-logo-100x60.jpg |
