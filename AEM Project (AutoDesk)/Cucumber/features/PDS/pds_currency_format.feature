# PDS SLE2: https://web-sle-engineering-svc.awsism.autodesk.com/products/ACDIST?country=US&app=SRP&language=en
# PDS PT: https://web-pt-engineering-svc.autodesk.com/products/ACDIST?country=US&app=SRP&language=en
# PDS PROD: https://web-engineering-svc.autodesk.com/products/ACDIST?country=FR&app=ONLINE&language=fr

# PELICAN URL:
#***********************************************************************

@PDS
@Currency

Feature: pds_currency_format

  Validate the Currency and format in PDS JSON for all countries


  ######################## SCENARIO 1 #########################
  @ONLINE
  Scenario Outline: 1. ONLINE: Internal User validates the Currency received in the PDS Json file.

    Given the user is on a PDS URL for "<product>" and "<appKey>" and "<country>"
    When the PDS response code is equal to 200
    And the "<billingPeriod>" and "<billingPeriodCount>" and "<supportLevel>" for PDS are provided
    Then validate that the correct Currency "<currency>" for the Local Country is displayed
    And the correct amount is formatted as expected: "<currencyformat>"


    @REGRESSION
    Examples:
      | product | appKey | country | currency | currencyformat | supportLevel | billingPeriod | billingPeriodCount |
      | ACDIST  | ONLINE | CA      | CAD      | ¤#,##0.00      | ADVANCED     | YEAR          | 2                  |
      | ACDIST  | ONLINE | FR      | EUR      | #,##0.00 ¤     | ADVANCED     | YEAR          | 2                  |
      | ACDIST  | ONLINE | GB      | GBP      | ¤#,##0.00      | ADVANCED     | YEAR          | 2                  |
      | MAYA    | ONLINE | JP      | JPY      | ¤#,##0         | ADVANCED     | YEAR          | 2                  |
      | ACDIST  | ONLINE | US      | USD      | ¤#,##0.00      | ADVANCED     | YEAR          | 2                  |
      | ACDIST  | ONLINE | DK      | DKK      | ¤ #,##0.00     | ADVANCED     | YEAR          | 2                  |
      | ACDIST  | ONLINE | CN      | CNY      | ¤#0.00         | ADVANCED     | YEAR          | 2                  |

    Examples:
      | product | appKey | country | currency | currencyformat | supportLevel | billingPeriod | billingPeriodCount |
      | ACDIST  | ONLINE | AT      | EUR      | 2.940,00 €     | ADVANCED     | YEAR          | 2                  |
      | MAYA    | ONLINE | AU      | AUD      | A$4,130.00     | ADVANCED     | YEAR          | 2                  |
      | ACDIST  | ONLINE | BE      | EUR      | 2.940,00 €     | ADVANCED     | YEAR          | 2                  |
      | ACDIST  | ONLINE | BG      | EUR      | 2 940,00 €     | ADVANCED     | YEAR          | 2                  |
      | ACDIST  | ONLINE | BR      | BRL      | R$8.072,40     | ADVANCED     | YEAR          | 2                  |
      | ACDIST  | ONLINE | CH      | EUR      | € 2 940.00     | ADVANCED     | YEAR          | 2                  |
      | ACDIST  | ONLINE | CY      | EUR      | 2.940,00 €     | ADVANCED     | YEAR          | 2                  |
      | ACDIST  | ONLINE | CZ      | EUR      | 2 940,00 €     | ADVANCED     | YEAR          | 2                  |
      | ACDIST  | ONLINE | DE      | EUR      | 2.940,00 €     | ADVANCED     | YEAR          | 2                  |
      | ACDIST  | ONLINE | EE      | EUR      | 2 940,00 €     | ADVANCED     | YEAR          | 2                  |
      | ACDIST  | ONLINE | ES      | EUR      | 2.940,00 €     | ADVANCED     | YEAR          | 2                  |
      | ACDIST  | ONLINE | FI      | EUR      | 2 940,00 €     | ADVANCED     | YEAR          | 2                  |
      | ACDIST  | ONLINE | GR      | EUR      | 2.940,00 €     | ADVANCED     | YEAR          | 2                  |
      | ACDIST  | ONLINE | HR      | EUR      | 2.940,00 EUR   | ADVANCED     | YEAR          | 2                  |
      | ACDIST  | ONLINE | HU      | EUR      | 2 940,00 €     | ADVANCED     | YEAR          | 2                  |
    # | ACDIST      |   ONLINE    | HK       | USD      |US$2,660.00    |ADVANCED     | YEAR          | 2                  | # Country not available for the application key.
      | ACDIST  | ONLINE | IE      | EUR      | €2,940.00      | ADVANCED     | YEAR          | 2                  |
    # | ACDIST      |   ONLINE    | IN       | INR      |₹1,25,900      |ADVANCED     | YEAR          | 2                  | => No products available for Pelican
      | ACDIST  | ONLINE | IT      | EUR      | € 2.940,00     | ADVANCED     | YEAR          | 2                  |
      | ACDIST  | ONLINE | IS      | EUR      | 2.940,00 EUR   | ADVANCED     | YEAR          | 2                  |
      | MAYA    | ONLINE | KR      | KRW      | ₩3,500,000     | ADVANCED     | YEAR          | 2                  |
      | ACDIST  | ONLINE | LI      | EUR      | €2,940.00      | ADVANCED     | YEAR          | 2                  |
      | ACDIST  | ONLINE | LT      | EUR      | 2 940,00 €     | ADVANCED     | YEAR          | 2                  |
      | ACDIST  | ONLINE | LU      | EUR      | 2.940,00 €     | ADVANCED     | YEAR          | 2                  |
      | ACDIST  | ONLINE | LV      | EUR      | 2940,00 €      | ADVANCED     | YEAR          | 2                  |
      | ACDIST  | ONLINE | MT      | EUR      | €2,940.00      | ADVANCED     | YEAR          | 2                  |
      | ACDIST  | ONLINE | NL      | EUR      | € 2.940,00     | ADVANCED     | YEAR          | 2                  |
      | ACDIST  | ONLINE | NO      | EUR      | € 2 940,00     | ADVANCED     | YEAR          | 2                  |
      | MAYA    | ONLINE | NZ      | AUD      | A$4,130.00     | ADVANCED     | YEAR          | 2                  |
      | ACDIST  | ONLINE | PL      | EUR      | 2 940,00 €     | ADVANCED     | YEAR          | 2                  |
      | ACDIST  | ONLINE | PT      | EUR      | 2 940,00 €     | ADVANCED     | YEAR          | 2                  |
      | ACDIST  | ONLINE | RO      | EUR      | 2.940,00 EUR   | ADVANCED     | YEAR          | 2                  |
    # | ACDIST      |   ONLINE    | RU       | RUB      |1 395.00 руб   |ADVANCED     | YEAR          | 2                  | => No products available for Pelican. need DR?
      | ACDIST  | ONLINE | SE      | EUR      | 2 940,00 €     | ADVANCED     | YEAR          | 2                  |
      | MAYA    | ONLINE | SG      | USD      | US$2,800.00    | ADVANCED     | YEAR          | 2                  |
      | ACDIST  | ONLINE | SI      | EUR      | 2.940,00 €     | ADVANCED     | YEAR          | 2                  |
      | ACDIST  | ONLINE | SK      | EUR      | 2 940,00 €     | ADVANCED     | YEAR          | 2                  |


    @PROD
    Examples:
      | product | appKey | country | currency | currencyformat | supportLevel | billingPeriod | billingPeriodCount |
      | ACDIST  | ONLINE | CA      | CAD      | ¤#,##0.00      | ADVANCED     | YEAR          | 2                  |
      | ACDIST  | ONLINE | FR      | EUR      | #,##0.00 ¤     | ADVANCED     | YEAR          | 2                  |
      | ACDIST  | ONLINE | GB      | GBP      | ¤#,##0.00      | ADVANCED     | YEAR          | 2                  |
      | MAYALT  | ONLINE | JP      | JPY      | ¤#,##0         | ADVANCED     | YEAR          | 2                  |
      | ACDIST  | ONLINE | US      | USD      | ¤#,##0.00      | ADVANCED     | YEAR          | 2                  |


  ######################## SCENARIO 2 #########################
  @SRP
  Scenario Outline: 2. SRP: Internal User validates the Currency received in the PDS Json file.

    Given the user is on a PDS URL for "<product>" and "<appKey>" and "<country>"
    When the PDS response code is equal to 200
    And the "<billingPeriod>" and "<billingPeriodCount>" and "<supportLevel>" for PDS are provided
    Then validate that the correct Currency "<currency>" for the Local Country is displayed
    And the correct amount is formatted as expected: "<currencyformat>"

    @REGRESSION
    Examples:
      | product | appKey | country | currency | currencyformat | supportLevel | billingPeriod | billingPeriodCount |
      | ACDIST  | SRP    | CA      | CAD      | ¤#,##0.00      | ADVANCED     | YEAR          | 2                  |
      | ACDIST  | SRP    | FR      | EUR      | #,##0.00 ¤     | ADVANCED     | YEAR          | 2                  |
      | MAYA    | SRP    | GB      | GBP      | ¤#,##0.00      | ADVANCED     | YEAR          | 2                  |
      | ACDIST  | SRP    | JP      | JPY      | ¤#,##0         | ADVANCED     | YEAR          | 2                  |
      | MAYA    | SRP    | US      | USD      | ¤#,##0.00      | ADVANCED     | YEAR          | 2                  |
      | ACDIST  | SRP    | DK      | DKK      | ¤ #,##0.00     | ADVANCED     | YEAR          | 2                  |


    Examples:
      | product | appKey | country | currency | currencyformat | supportLevel | billingPeriod | billingPeriodCount |
     #| ACDIST      |   SRP       | AE       | USD      |US$2,775.00     |ADVANCED     | YEAR          | 2                  | #=> Products not available on Prod
      | ACDIST  | SRP    | AT      | EUR      | 2.940,00 €     | ADVANCED     | YEAR          | 2                  |
      | ACDIST  | SRP    | AU      | AUD      | A$4,960.00     | ADVANCED     | YEAR          | 2                  |
      | ACDIST  | SRP    | BE      | EUR      | 2.940,00 €     | ADVANCED     | YEAR          | 2                  |
      | ACDIST  | SRP    | BR      | BRL      | R$2.100,00     | ADVANCED     | YEAR          | 2                  |
      | ACDIST  | SRP    | CH      | EUR      | € 2 940.00     | ADVANCED     | YEAR          | 2                  |
      | ACDIST  | SRP    | CZ      | EUR      | 2 940,00 €     | ADVANCED     | YEAR          | 2                  |
    #  | ACDIST      |   SRP       | CN       | CNY      |￥1,680.00      |ADVANCED     | YEAR          | 2                  | #=> Products not available on Prod
      | ACDIST  | SRP    | DE      | EUR      | 2.940,00 €     | ADVANCED     | YEAR          | 2                  |
      | ACDIST  | SRP    | ES      | EUR      | 2.940,00 €     | ADVANCED     | YEAR          | 2                  |
      | ACDIST  | SRP    | FI      | EUR      | 2 940,00 €     | ADVANCED     | YEAR          | 2                  |
      | ACDIST  | SRP    | GR      | EUR      | 2.940,00 €     | ADVANCED     | YEAR          | 2                  |
      | ACDIST  | SRP    | HU      | EUR      | 2 940,00 €     | ADVANCED     | YEAR          | 2                  |
      | ACDIST  | SRP    | HK      | USD      | US$2,690.00    | ADVANCED     | YEAR          | 2                  |
      | ACDIST  | SRP    | IE      | EUR      | €2,940.00      | ADVANCED     | YEAR          | 2                  |
      | MAYA    | SRP    | IN      | INR      | ₹1,960         | ADVANCED     | YEAR          | 2                  |
      | ACDIST  | SRP    | IT      | EUR      | € 2.940,00     | ADVANCED     | YEAR          | 2                  |
      | ACDIST  | SRP    | MX      | MXN      | MXN$2,350.00   | ADVANCED     | YEAR          | 2                  |
      | ACDIST  | SRP    | MY      | MYR      | RM2,350.00     | ADVANCED     | YEAR          | 2                  |
      | ACDIST  | SRP    | NL      | EUR      | € 2.940,00     | ADVANCED     | YEAR          | 2                  |
      | ACDIST  | SRP    | NO      | EUR      | € 2 940,00     | ADVANCED     | YEAR          | 2                  |
      | ACDIST  | SRP    | NZ      | AUD      | A$4,960.00     | ADVANCED     | YEAR          | 2                  |
      | ACDIST  | SRP    | PE      | PEN      | S/.2,230.00    | ADVANCED     | YEAR          | 2                  |
      | ACDIST  | SRP    | PH      | PHP      | ₱2,350.00      | ADVANCED     | YEAR          | 2                  |
      | ACDIST  | SRP    | PK      | PKR      | Rs2,190        | ADVANCED     | YEAR          | 2                  |
      | ACDIST  | SRP    | PL      | EUR      | 2 940,00 €     | ADVANCED     | YEAR          | 2                  |
      | ACDIST  | SRP    | PT      | EUR      | 2 940,00 €     | ADVANCED     | YEAR          | 2                  |
      | ACDIST  | SRP    | RO      | EUR      | 2.940,00 EUR   | ADVANCED     | YEAR          | 2                  |
    #  | ACDIST      |   SRP       | RU       | RUB      |1 540.00 руб    |ADVANCED     | YEAR          | 2                  | # => Products not available on Prod
    #  | ACDIST      |   SRP       | SA       | USD      |US$2,940.00     |ADVANCED     | YEAR          | 2                  | # => Products not available on Prod
      | ACDIST  | SRP    | SE      | EUR      | 2 940,00 €     | ADVANCED     | YEAR          | 2                  |
      | ACDIST  | SRP    | SG      | USD      | US$3,360.00    | ADVANCED     | YEAR          | 2                  |
      | ACDIST  | SRP    | SI      | EUR      | 2.940,00 €     | ADVANCED     | YEAR          | 2                  |
      | ACDIST  | SRP    | SK      | EUR      | 2 940,00 €     | ADVANCED     | YEAR          | 2                  |
      | ACDIST  | SRP    | TH      | THB      | THB2,350.00    | ADVANCED     | YEAR          | 2                  |
      | ACDIST  | SRP    | TR      | TRY      | 2.800,00 TL    | ADVANCED     | YEAR          | 2                  |
      | ACDIST  | SRP    | TW      | TWD      | $2,690.00      | ADVANCED     | YEAR          | 2                  |
      | ACDIST  | SRP    | UA      | UAH      | 1 540,00 ₴     | ADVANCED     | YEAR          | 2                  |
      | ACDIST  | SRP    | VN      | VND      | ₫ 2.350        | ADVANCED     | YEAR          | 2                  |
      | ACDIST  | SRP    | ZA      | USD      | US$2 240.00    | ADVANCED     | YEAR          | 2                  |

    @PROD
    Examples:
      | product | appKey | country | currency | currencyformat | supportLevel | billingPeriod | billingPeriodCount |
      | ACDIST  | SRP    | CA      | CAD      | ¤#,##0.00      | ADVANCED     | YEAR          | 2                  |
      | ACDIST  | SRP    | FR      | EUR      | #,##0.00 ¤     | ADVANCED     | YEAR          | 2                  |
      | MAYA    | SRP    | GB      | GBP      | ¤#,##0.00      | ADVANCED     | YEAR          | 2                  |
      | ACDIST  | SRP    | JP      | JPY      | ¤#,##0         | ADVANCED     | YEAR          | 2                  |
      | MAYA    | SRP    | US      | USD      | ¤#,##0.00      | ADVANCED     | YEAR          | 2                  |
      | ACDIST  | SRP    | DK      | DKK      | ¤ #,##0.00     | ADVANCED     | YEAR          | 2                  |


# NEED A TEST FOR WHEN LANGUAGE PARAM is added to PDS URL such as for CAFR:
# Format should be: 1 234,56 $ CDN

######################## SCENARIO 3 #########################
  @ONLINE
  Scenario Outline: 3. ONLINE: Internal User validates the Currency received in the PDS Json file when language parameter is specified.

    Given the user is on a PDS URL for "<product>" and "<appKey>" and "<country>" and "<language>"
    When the PDS response code is equal to 200
    And the "<billingPeriod>" and "<billingPeriodCount>" and "<supportLevel>" for PDS are provided
    Then validate that the correct Currency "<currency>" for the Local Country is displayed
    #And the correct amount is formatted as expected: "<currencyformat>"

    @REGRESSION
    Examples:
      | product | appKey | country | language | currency | currencyformat | supportLevel | billingPeriod | billingPeriodCount |
      | ACDIST  | ONLINE | CA      | en       | CAD      | CDN$3,830.00   | ADVANCED     | YEAR          | 2                  |
      | ACDIST  | ONLINE | CA      | fr       | CAD      | 3 830,00 $ CDN | ADVANCED     | YEAR          | 2                  |
      | ACDIST  | ONLINE | BE      | fr       | EUR      | 1.470,00 €     | ADVANCED     | YEAR          | 1                  |
      | ACDIST  | ONLINE | BE      | nl       | EUR      | 1.470,00 €     | ADVANCED     | YEAR          | 1                  |

    @PROD
    Examples:
      | product | appKey | country | language | currency | currencyformat | supportLevel | billingPeriod | billingPeriodCount |
      | ACDIST  | ONLINE | CA      | en       | CAD      | CDN$3,830.00   | ADVANCED     | YEAR          | 2                  |
      #| ACDIST      |   ONLINE    | CA       | fr      | CAD      |3 830,00 $ CDN |ADVANCED     | YEAR          | 2                  |
      | ACDIST  | ONLINE | BE      | fr       | EUR      | 1.470,00 €     | ADVANCED     | YEAR          | 1                  |
      | ACDIST  | ONLINE | BE      | nl       | EUR      | 1.470,00 €     | ADVANCED     | YEAR          | 1                  |

######################## SCENARIO 4 #########################

  @SRP
  Scenario Outline: 4. SRP: Internal User validates the Currency received in the PDS Json file when language parameter is specified.

    Given the user is on a PDS URL for "<product>" and "<appKey>" and "<country>" and "<language>"
    When the PDS response code is equal to 200
    And the "<billingPeriod>" and "<billingPeriodCount>" and "<supportLevel>" for PDS are provided
    Then validate that the correct Currency "<currency>" for the Local Country is displayed
    #And the correct amount is formatted as expected: "<currencyformat>"


    @REGRESSION
    Examples:
      | product | appKey | country | language | currency | currencyformat | supportLevel | billingPeriod | billingPeriodCount |
      | ACDIST  | SRP    | CA      | en       | CAD      | CDN$3,650.00   | ADVANCED     | YEAR          | 2                  |
      | ACDIST  | SRP    | CA      | fr       | CAD      | 3 650,00 $ CDN | ADVANCED     | YEAR          | 2                  |
      | ACDIST  | SRP    | BE      | nl       | EUR      | 1.470,00 €     | ADVANCED     | YEAR          | 1                  |
      | ACDIST  | SRP    | BE      | fr       | EUR      | 1.470,00 €     | ADVANCED     | YEAR          | 1                  |


    @PROD
    Examples:
      | product | appKey | country | language | currency | currencyformat | supportLevel | billingPeriod | billingPeriodCount |
      | ACDIST  | SRP    | CA      | en       | CAD      | CDN$3,830.00   | ADVANCED     | YEAR          | 2                  |
      | ACDIST  | SRP    | CA      | fr       | CAD      | 3 830,00 $ CDN | ADVANCED     | YEAR          | 2                  |
# | ACDIST      |   SRP       | BE       | nl      | EUR      |185,00 €       |ADVANCED     | YEAR          | 1                  | #=> Products not available on Prod
# | ACDIST      |   SRP       | BE       | fr      | EUR      |185,00 €       |ADVANCED     | YEAR          | 1                  | #=> Products not available on Prod
