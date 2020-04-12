# PDS SLE2: https://web-sle-engineering-svc.awsism.autodesk.com/products/ACDIST?country=US&app=SRP&language=en
# PDS PT: https://web-pt-engineering-svc.autodesk.com/products/ACDIST?country=US&app=SRP&language=en
# PDS PROD: https://web-engineering-svc.autodesk.com/products/ACDIST?country=FR&app=ONLINE&language=fr
#***********************************************************************

@PDS
@Quantity
@PL-4737
@PL-4568

Feature: pds_quantity

  Validate the Quantity in PDS JSON for all countries

  For DR, the prices from DR json is compared to pds json when qty is greater than 1.
  For Pelican, the prices in PDS json for qty 1 is calculated and multiplied with the specified qty .
  Then PDS json prices for the specified qty are checked to see if they are approximately equal (+-2 dollars) to the calculated prices.


 ######################## SCENARIO 1 #########################

  Scenario Outline: 1. ONLINE: Internal User validates the Quantity received in the PDS Json file.

    Given the user is on a PDS URL for "<product>" and "<appKey>" and "<country>"
    When the PDS response code is equal to 200
    Then validate the default Quantity is 1

  @REGRESSION
  @PROD
    Examples:
      | product | appKey | country | quantity |
      | ACDIST  | ONLINE | US      | 1        |



    Examples:
      | product | appKey | country | quantity |
      | ACDIST  | ONLINE | AT      | 1        |
      | ACDIST  | ONLINE | BE      | 1        |
      | ACDIST  | ONLINE | BG      | 1        |
      | ACDIST  | ONLINE | BR      | 1        |
      | ACDIST  | ONLINE | CA      | 1        |
      | ACDIST  | ONLINE | CH      | 1        |
      | ACDIST  | ONLINE | CY      | 1        |
      | ACDIST  | ONLINE | CZ      | 1        |
      | ACDIST  | ONLINE | DE      | 1        |
      | ACDIST  | ONLINE | DK      | 1        |
      | ACDIST  | ONLINE | EE      | 1        |
      | ACDIST  | ONLINE | ES      | 1        |
      | ACDIST  | ONLINE | FI      | 1        |
      | ACDIST  | ONLINE | FR      | 1        |
      | ACDIST  | ONLINE | GB      | 1        |
      | ACDIST  | ONLINE | GR      | 1        |
      | ACDIST  | ONLINE | HR      | 1        |
      | ACDIST  | ONLINE | HU      | 1        |
      | ACDIST  | ONLINE | IE      | 1        |
      | ACDLT   | ONLINE | IN      | 1        |
      | ACDIST  | ONLINE | IS      | 1        |
      | ACDIST  | ONLINE | IT      | 1        |
      | MAYA    | ONLINE | JP      | 1        |
      | MAYA    | ONLINE | KR      | 1        |
      | ACDIST  | ONLINE | LI      | 1        |
      | ACDIST  | ONLINE | LT      | 1        |
      | ACDIST  | ONLINE | LU      | 1        |
      | ACDIST  | ONLINE | LV      | 1        |
      | ACDIST  | ONLINE | MT      | 1        |
      | ACDIST  | ONLINE | NL      | 1        |
      | ACDIST  | ONLINE | NO      | 1        |
      | ACDIST  | ONLINE | PL      | 1        |
      | ACDIST  | ONLINE | PT      | 1        |
      | ACDIST  | ONLINE | RO      | 1        |
      | ACDIST  | ONLINE | SE      | 1        |
      | MAYA    | ONLINE | SG      | 1        |
      | ACDIST  | ONLINE | SI      | 1        |
      | ACDIST  | ONLINE | SK      | 1        |




 ######################## SCENARIO 2 #########################
  @SRP
  Scenario Outline: 2. SRP: Internal User validates the Quantity received in the PDS Json file.

    Given the user is on a PDS URL for "<product>" and "<appKey>" and "<country>"
    When the PDS response code is equal to 200
    Then validate the default Quantity is 1

  @REGRESSION
  @PROD
    Examples:
      | product | appKey | country | quantity |
      | MAYA    | SRP    | US      | 1        |

    Examples:
      | product | appKey | country | quantity |
      | ACDIST  | SRP    | AT      | 1        |
      | ACDIST  | SRP    | BE      | 1        |
      | ACDIST  | SRP    | CA      | 1        |
      | ACDIST  | SRP    | CH      | 1        |
      | ACDIST  | SRP    | CZ      | 1        |
      | ACDIST  | SRP    | DE      | 1        |
      | ACDIST  | SRP    | DK      | 1        |
      | ACDIST  | SRP    | ES      | 1        |
      | ACDIST  | SRP    | FI      | 1        |
      | ACDIST  | SRP    | FR      | 1        |
      | MAYA    | SRP    | GB      | 1        |
      | ACDIST  | SRP    | GR      | 1        |
      | ACDIST  | SRP    | HU      | 1        |
      | ACDIST  | SRP    | IE      | 1        |
      | MAYA    | SRP    | IN      | 1        |
      | ACDIST  | SRP    | IT      | 1        |
      | ACDIST  | SRP    | JP      | 1        |
      | ACDIST  | SRP    | MX      | 1        |
      | ACDIST  | SRP    | MY      | 1        |
      | ACDIST  | SRP    | NL      | 1        |
      | ACDIST  | SRP    | NO      | 1        |
      | ACDIST  | SRP    | PE      | 1        |
      | ACDIST  | SRP    | PH      | 1        |
      | ACDIST  | SRP    | PK      | 1        |
      | ACDIST  | SRP    | PL      | 1        |
      | ACDIST  | SRP    | PT      | 1        |
      | ACDIST  | SRP    | RO      | 1        |
      | ACDIST  | SRP    | SE      | 1        |
      | ACDIST  | SRP    | SG      | 1        |
      | ACDIST  | SRP    | SI      | 1        |
      | ACDIST  | SRP    | SK      | 1        |
      | ACDIST  | SRP    | TH      | 1        |
      | ACDIST  | SRP    | TR      | 1        |
      | ACDIST  | SRP    | TW      | 1        |
      | ACDIST  | SRP    | VN      | 1        |


  ######################## SCENARIO 3 #########################

  Scenario Outline: 3. Pelican ONLINE: Internal User validates the Quantity and price received in the PDS Json file from Pelican.

    Given the user is on a PDS URL for "<product>" and "<appKey>" and "<country>" and Quantity "<quantity>"
    When the PDS response code is equal to 200
    Then validate that the Quantity is equal to "<quantity>"
    And validate the price is reflected correctly for the  "<billingPeriod>" , "<billingPeriodCount>" and "<supportLevel>"

  @REGRESSION
  @PROD
    Examples:
      | product | appKey | country | quantity | supportLevel | billingPeriod | billingPeriodCount |
      | ACDIST  | ONLINE | US      | 2        | ADVANCED     | YEAR          | 1                  |
      | ACDIST  | ONLINE | GB      | 2        | ADVANCED     | YEAR          | 1                  |



    Examples:
      | product | appKey | country | quantity | supportLevel | billingPeriod | billingPeriodCount |
      | ACDIST  | ONLINE | GB      | 2        | ADVANCED     | YEAR          | 1                  |
      | ACDIST  | ONLINE | SE      | 3        | ADVANCED     | YEAR          | 1                  |
      | ACDIST  | ONLINE | ES      | 5        | ADVANCED     | YEAR          | 1                  |
      | ACDIST  | ONLINE | CA      | 3        | ADVANCED     | YEAR          | 1                  |
      | ACDIST  | ONLINE | US      | 3        | ADVANCED     | YEAR          | 1                  |
      | ACDIST  | ONLINE | SE      | 3        | ADVANCED     | MONTH         | 1                  |
      | ACDIST  | ONLINE | ES      | 2        | ADVANCED     | MONTH         | 1                  |
      | ACDIST  | ONLINE | SI      | 3        | ADVANCED     | MONTH         | 1                  |
      | ACDIST  | ONLINE | SK      | 3        | ADVANCED     | MONTH         | 1                  |
      | ACDIST  | ONLINE | RO      | 3        | ADVANCED     | YEAR          | 1                  |
      | ACDIST  | ONLINE | PT      | 2        | ADVANCED     | MONTH         | 1                  |
      | ACDIST  | ONLINE | PL      | 2        | ADVANCED     | YEAR          | 1                  |
      | ACDIST  | ONLINE | NL      | 2        | ADVANCED     | MONTH         | 1                  |
      | ACDIST  | ONLINE | MT      | 3        | ADVANCED     | YEAR          | 1                  |
      | ACDIST  | ONLINE | LV      | 3        | ADVANCED     | YEAR          | 2                  |
      | ACDIST  | ONLINE | LT      | 3        | ADVANCED     | YEAR          | 1                  |
      | ACDIST  | ONLINE | LU      | 2        | ADVANCED     | YEAR          | 2                  |
      | ACDIST  | ONLINE | IT      | 2        | ADVANCED     | MONTH         | 1                  |
      | ACDIST  | ONLINE | IE      | 2        | ADVANCED     | MONTH         | 1                  |
      | ACDIST  | ONLINE | HU      | 3        | ADVANCED     | YEAR          | 2                  |
      | ACDIST  | ONLINE | GR      | 3        | ADVANCED     | YEAR          | 1                  |
      | ACDIST  | ONLINE | DE      | 2        | ADVANCED     | YEAR          | 1                  |
      | ACDIST  | ONLINE | FR      | 2        | ADVANCED     | YEAR          | 1                  |
      | ACDIST  | ONLINE | FI      | 3        | ADVANCED     | MONTH         | 1                  |
      | ACDIST  | ONLINE | EE      | 3        | ADVANCED     | YEAR          | 1                  |
      | ACDIST  | ONLINE | CZ      | 2        | ADVANCED     | YEAR          | 1                  |
      | ACDIST  | ONLINE | CY      | 3        | ADVANCED     | MONTH         | 1                  |
      | ACDIST  | ONLINE | DK      | 3        | ADVANCED     | YEAR          | 1                  |
      | ACDIST  | ONLINE | HR      | 2        | ADVANCED     | YEAR          | 2                  |
      | ACDIST  | ONLINE | BG      | 3        | ADVANCED     | YEAR          | 1                  |
      | ACDIST  | ONLINE | BE      | 2        | ADVANCED     | YEAR          | 1                  |
      | ACDIST  | ONLINE | AT      | 3        | ADVANCED     | YEAR          | 2                  |
      | ACDIST  | ONLINE | IS      | 2        | ADVANCED     | YEAR          | 1                  |
      | ACDIST  | ONLINE | LI      | 2        | ADVANCED     | YEAR          | 1                  |
      | ACDIST  | ONLINE | NO      | 2        | ADVANCED     | YEAR          | 1                  |
      | ACDIST  | ONLINE | CH      | 3        | ADVANCED     | MONTH         | 1                  |




   ######################## SCENARIO 4 #########################

  Scenario Outline: 4. DR ONLINE: Internal User validates the Quantity  and price received in the PDS Json file from Digital River.

    Given the user is on a PDS URL for "<plc>" and "<appKey>" and "<country>" and "<language>" and Quantity "<qty>"
    And the user is on a DR URL for "<dr_plc>" and "<locale>" and "<apikey>" and Quantity "<qty>"
    When the DR response code is equal to 200
    And the PDS response code is equal to 200
    And the "<billPeriod>" and "<billCnt>" and "<s_Level>" with quantity for PDS are provided
    And the "<dr_duration>" and "<s_Level>" for DR are provided
    Then the user compares the values in the DR pricing fields specified "<field>"

  @REGRESSION
  @PROD
    Examples:
      | plc   | appKey | country | language | dr_plc      | locale | apikey                           | qty | s_Level  | billPeriod | billCnt | dr_duration | field  |
      | MAYA  | ONLINE | JP      | ja       |MAYA-ADSKJP | ja_JP  | 3563c230c22945f1826644bdb9534d95 | 3   | ADVANCED | MONTH      | 1       | MONTHLY     | amount |
      | ACDLT | ONLINE | IN      | en       | ACDLT-ADSK  | en_IN  | 014d336197b94414910b7317b5d019d1 | 3   | ADVANCED | YEAR       | 1       | YEARLY      | amount |
      | ACDLT | ONLINE | MX      | es       |ACDLT-ADSK  | es_MX  | 014d336197b94414910b7317b5d019d1 | 2   | ADVANCED | YEAR       | 2       | TWO_YEAR    | amount |
      #| ACDIST    | ONLINE | BR    | pt     | ACDIST-ADSKBR    | pt_BR  | 2c84e84bb902457aad6cb73206db923f   | 8   | ADVANCED | MONTH    | 1     | MONTHLY     | amount |
      | MAYA  | ONLINE | KR      | ko       |MAYA-ADSKKR | ko_KR  | fbe2a04cb5144f4cb8ec2a13f326398c | 2   | ADVANCED | YEAR       | 1       | YEARLY      | amount |



    Examples:
      | plc    | appKey | country | language | dr_plc       | locale | apikey                           | qty | s_Level  | billPeriod | billCnt | dr_duration | field                       |
      | MAYA   | ONLINE | JP      | ja       |MAYA-ADSKJP   | ja_JP  | 3563c230c22945f1826644bdb9534d95 | 3   | ADVANCED | MONTH      | 1       | MONTHLY     | amountBeforeDiscount        |
      | ACDLT  | ONLINE | IN      | en       |ACDLT-ADSK    | en_IN  | 014d336197b94414910b7317b5d019d1 | 3   | ADVANCED | YEAR       | 1       | YEARLY      | amountBeforeDiscount        |
      | ACDLT  | ONLINE | MX      | es       |ACDLT-ADSK    | es_MX  | 014d336197b94414910b7317b5d019d1 | 2   | ADVANCED | YEAR       | 2       | TWO_YEAR    | amountBeforeDiscount        |
      | ACDIST | ONLINE | BR      | pt       |CDIST-ADSKBR  | pt_BR  | 2c84e84bb902457aad6cb73206db923f | 4   | ADVANCED | MONTH      | 1       | MONTHLY     | amountBeforeDiscount        |
      | MAYA   | ONLINE | KR      | ko       |MAYA-ADSKKR   | ko_KR  | fbe2a04cb5144f4cb8ec2a13f326398c | 2   | ADVANCED | YEAR       | 1       | YEARLY      | amountBeforeDiscount        |
      | MAYA   | ONLINE | SG      | en       |MAYA-ADSK-SG  | en_SG  | 014d336197b94414910b7317b5d019d1 | 5   | ADVANCED | YEAR       | 2       | TWO_YEAR    | amountBeforeDiscount        |

      | MAYA   | ONLINE | JP      | ja       |MAYA-ADSKJP   | ja_JP  | 3563c230c22945f1826644bdb9534d95 | 3   | ADVANCED | MONTH      | 1       | MONTHLY     | amountAfterDiscountWithVat  |
      | ACDLT  | ONLINE | IN      | en       |ACDLT-ADSK    | en_IN  | 014d336197b94414910b7317b5d019d1 | 3   | ADVANCED | YEAR       | 1       | YEARLY      | amountAfterDiscountWithVat  |
      | ACDLT  | ONLINE | MX      | es       |ACDLT-ADSK    | es_MX  | 014d336197b94414910b7317b5d019d1 | 2   | ADVANCED | YEAR       | 2       | TWO_YEAR    | amountAfterDiscountWithVat  |
      | ACDIST | ONLINE | BR      | pt       |ACDIST-ADSKBR | pt_BR  | 2c84e84bb902457aad6cb73206db923f | 4   | ADVANCED | MONTH      | 1       | MONTHLY     | amountAfterDiscountWithVat  |
      | MAYA   | ONLINE | KR      | ko       |MAYA-ADSKKR   | ko_KR  | fbe2a04cb5144f4cb8ec2a13f326398c | 2   | ADVANCED | YEAR       | 1       | YEARLY      | amountAfterDiscountWithVat  |
      | MAYA   | ONLINE | SG      | en       |MAYA-ADSK-SG  | en_SG  | 014d336197b94414910b7317b5d019d1 | 5   | ADVANCED | YEAR       | 2       | TWO_YEAR    | amountAfterDiscountWithVat  |

      | MAYA   | ONLINE | JP      | ja       | MAYA-ADSKJP  | ja_JP  | 3563c230c22945f1826644bdb9534d95 | 3   | ADVANCED | MONTH      | 1       | MONTHLY     | amountBeforeDiscountWithVat |
      | ACDLT  | ONLINE | IN      | en       |ACDLT-ADSK    | en_IN  | 014d336197b94414910b7317b5d019d1 | 3   | ADVANCED | YEAR       | 1       | YEARLY      | amountBeforeDiscountWithVat |
      | ACDLT  | ONLINE | MX      | es       |ACDLT-ADSK    | es_MX  | 014d336197b94414910b7317b5d019d1 | 2   | ADVANCED | YEAR       | 2       | TWO_YEAR    | amountBeforeDiscountWithVat |
      | ACDIST | ONLINE | BR      | pt       |ACDIST-ADSKBR | pt_BR  | 2c84e84bb902457aad6cb73206db923f | 4   | ADVANCED | MONTH      | 1       | MONTHLY     | amountBeforeDiscountWithVat |
      | MAYA   | ONLINE | KR      | ko       |MAYA-ADSKKR   | ko_KR  | fbe2a04cb5144f4cb8ec2a13f326398c | 2   | ADVANCED | YEAR       | 1       | YEARLY      | amountBeforeDiscountWithVat |
      | MAYA   | ONLINE | SG      | en       |MAYA-ADSK-SG  | en_SG  | 014d336197b94414910b7317b5d019d1 | 5   | ADVANCED | YEAR       | 2       | TWO_YEAR    | amountBeforeDiscountWithVat |




   ######################## SCENARIO 5 #########################
  @SRP
  Scenario Outline: 5. SRP: Internal User validates the Quantity  and price received in the PDS Json file.

    Given the user is on a PDS URL for "<product>" and "<appKey>" and "<country>" and Quantity "<quantity>"
    When the PDS response code is equal to 200
    Then validate that the Quantity is equal to "<quantity>"
    And validate the price is reflected correctly for the  "<billingPeriod>" , "<billingPeriodCount>" and "<supportLevel>"

  @REGRESSION
  @PROD
    Examples:
      | product | appKey | country | quantity | supportLevel | billingPeriod | billingPeriodCount |
      | MAYA    | SRP    | US      | 2        | ADVANCED     | MONTH         | 1                  |
      | MAYA    | SRP    | GB      | 4        | ADVANCED     | YEAR          | 3                  |



    Examples:
      | product | appKey | country | quantity | supportLevel | billingPeriod | billingPeriodCount |
      | MAYA    | SRP    | IT      | 3        | ADVANCED     | YEAR          | 2                  |
      | ACDIST  | SRP    | ES      | 3        | ADVANCED     | YEAR          | 1                  |
      | ACDIST  | SRP    | CA      | 2        | ADVANCED     | YEAR          | 2                  |
      | ACDIST  | SRP    | JP      | 3        | ADVANCED     | YEAR          | 1                  |
      | MAYA    | SRP    | IN      | 3        | ADVANCED     | MONTH         | 1                  |
      | ACDIST  | SRP    | SG      | 3        | ADVANCED     | YEAR          | 1                  |
      | ACDIST  | SRP    | SE      | 2        | ADVANCED     | YEAR          | 1                  |
      | ACDIST  | SRP    | ES      | 3        | ADVANCED     | YEAR          | 1                  |
      | ACDIST  | SRP    | SI      | 2        | ADVANCED     | YEAR          | 2                  |
      | ACDIST  | SRP    | SK      | 3        | ADVANCED     | YEAR          | 1                  |
      | ACDIST  | SRP    | RO      | 2        | ADVANCED     | YEAR          | 2                  |
      | ACDIST  | SRP    | PT      | 3        | ADVANCED     | YEAR          | 1                  |
      | ACDIST  | SRP    | PL      | 3        | ADVANCED     | YEAR          | 1                  |
      | ACDIST  | SRP    | NL      | 2        | ADVANCED     | YEAR          | 1                  |
      | ACDIST  | SRP    | IT      | 3        | ADVANCED     | YEAR          | 1                  |
      | ACDIST  | SRP    | IE      | 2        | ADVANCED     | YEAR          | 1                  |
      | ACDIST  | SRP    | HU      | 3        | ADVANCED     | MONTH         | 1                  |
      | ACDIST  | SRP    | GR      | 2        | ADVANCED     | YEAR          | 1                  |
      | ACDIST  | SRP    | DE      | 3        | ADVANCED     | YEAR          | 1                  |
      | ACDIST  | SRP    | FR      | 2        | ADVANCED     | MONTH         | 1                  |
      | ACDIST  | SRP    | FI      | 3        | ADVANCED     | MONTH         | 1                  |
      | ACDIST  | SRP    | CZ      | 3        | ADVANCED     | MONTH         | 1                  |
      | ACDIST  | SRP    | DK      | 2        | ADVANCED     | MONTH         | 1                  |
      | ACDIST  | SRP    | BE      | 3        | ADVANCED     | MONTH         | 1                  |
      | ACDIST  | SRP    | AT      | 2        | ADVANCED     | YEAR          | 1                  |
      | ACDIST  | SRP    | NO      | 3        | ADVANCED     | MONTH         | 1                  |
      | ACDIST  | SRP    | CH      | 2        | ADVANCED     | MONTH         | 1                  |
      | ACDIST  | SRP    | JP      | 2        | ADVANCED     | YEAR          | 1                  |
      | MAYA    | SRP    | IN      | 3        | ADVANCED     | MONTH         | 1                  |
      | ACDIST  | SRP    | SG      | 2        | ADVANCED     | YEAR          | 1                  |
      | ACDIST  | SRP    | TR      | 3        | ADVANCED     | QUARTER       | 1                  |
      | ACDIST  | SRP    | TH      | 2        | ADVANCED     | MONTH         | 1                  |
      | ACDIST  | SRP    | ZA      | 3        | ADVANCED     | YEAR          | 2                  |
      | ACDIST  | SRP    | TW      | 3        | ADVANCED     | MONTH         | 1                  |
      | ACDIST  | SRP    | UA      | 3        | ADVANCED     | YEAR          | 1                  |
      | ACDIST  | SRP    | PE      | 3        | ADVANCED     | MONTH         | 1                  |
      | ACDIST  | SRP    | MX      | 2        | ADVANCED     | YEAR          | 1                  |
      | ACDIST  | SRP    | MY      | 2        | ADVANCED     | MONTH         | 1                  |
      | ACDIST  | SRP    | PH      | 3        | ADVANCED     | MONTH         | 1                  |
      | ACDIST  | SRP    | PK      | 2        | ADVANCED     | YEAR          | 3                  |
      | ACDIST  | SRP    | VN      | 3        | ADVANCED     | MONTH         | 1                  |
