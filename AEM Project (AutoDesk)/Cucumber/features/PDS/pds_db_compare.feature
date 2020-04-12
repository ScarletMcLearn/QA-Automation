# PDS SLE2: https://web-sle-engineering-svc.awsism.autodesk.com/products/ACDIST?country=US&app=SRP&language=en
# PDS PT: https://web-pt-engineering-svc.autodesk.com/products/ACDIST?country=US&app=SRP&language=en
# PDS PROD: https://web-engineering-svc.autodesk.com/products/ACDIST?country=FR&app=ONLINE&language=fr
#***********************************************************************

@PDS
@Database

Feature: pds_db_compare

  validate the data received from DB is not null

  ######################## SCENARIO 1 #########################

@SRP
Scenario Outline: 1. SRP: Internal User validates the fields received from the DB in the PDS Json file .

   Given the user is on a PDS URL for "<product>" and "<appKey>" and "<country>"
   When the PDS response code is equal to 200
   And the "<billingPeriod>" and "<billingPeriodCount>" and "<supportLevel>" for PDS are provided
   Then the user makes sure the "<field>" values received from the DB are not NULL.

  @REGRESSION
  @PROD
   Examples:
   | product  | appKey   | country  | supportLevel| billingPeriod | billingPeriodCount | field        |
   | ACDIST   |   SRP    | US       | ADVANCED    | YEAR          | 1                  | amount       |
   | ACDIST   |   SRP    | US       | ADVANCED    | YEAR          | 1                  | discount     |
   | ACDIST   |   SRP    | US       | ADVANCED    | MONTH         | 1                  | priceId      |
   | ACDIST   |   SRP    | GB       | ADVANCED    | YEAR          | 1                  | amount       |
   | ACDIST   |   SRP    | GB       | ADVANCED    | YEAR          | 1                  | discount     |
   | ACDIST   |   SRP    | GB       | ADVANCED    | MONTH         | 1                  | priceId      |
#   | MAYA     |   SRP    | US       | ADVANCED    | YEAR          | 1                  | amount       |
#   | MAYA     |   SRP    | US       | ADVANCED    | YEAR          | 1                  | discount     |
#   | MAYA     |   SRP    | US       | ADVANCED    | MONTH         | 1                  | priceId      |
#   | MAYA     |   SRP    | GB       | ADVANCED    | YEAR          | 1                  | amount       |
#   | MAYA     |   SRP    | GB       | ADVANCED    | YEAR          | 1                  | discount     |
#   | MAYA     |   SRP    | GB       | ADVANCED    | MONTH         | 1                  | priceId      |


  Examples:
  | product  |  appKey     | country  | supportLevel| billingPeriod | billingPeriodCount | field        |
  | ACDIST   |   SRP       | AE       | ADVANCED    | YEAR          | 1                  | amount       |
  | ACDIST   |   SRP       | AR       | ADVANCED    | YEAR          | 1                  | discount     |
  | ACDIST   |   SRP       | AT       | ADVANCED    | MONTH         | 1                  | priceId      |
  | ACDIST   |   SRP       | AU       | ADVANCED    | YEAR          | 1                  | discount     |
  | ACDIST   |   SRP       | BE       | ADVANCED    | MONTH         | 1                  | amountFormatted |
  | ACDIST   |   SRP       | BR       | ADVANCED    | YEAR          | 1                  | amount       |
  | ACDIST   |   SRP       | CH       | ADVANCED    | YEAR          | 1                  | discount     |
  | ACDIST   |   SRP       | CL       | ADVANCED    | MONTH         | 1                  | priceId      |
  | ACDIST   |   SRP       | CN       | ADVANCED    | MONTH         | 1                  | amountFormatted |
  | ACDIST   |   SRP       | CO       | ADVANCED    | YEAR          | 2                  | amount       |
  | ACDIST   |   SRP       | CZ       | ADVANCED    | YEAR          | 1                  | discount     |
  | ACDIST   |   SRP       | DE       | ADVANCED    | MONTH         | 1                  | priceId      |
  | ACDIST   |   SRP       | DK       | ADVANCED    | YEAR          | 2                  | amount       |
  | ACDIST   |   SRP       | ES       | ADVANCED    | YEAR          | 1                  | amount       |
  | ACDIST   |   SRP       | FI       | ADVANCED    | YEAR          | 1                  | discount     |
  | ACDIST   |   SRP       | FR       | ADVANCED    | MONTH         | 1                  | priceId      |
  | ACDIST   |   SRP       | GB       | ADVANCED    | MONTH         | 1                  | amountFormatted |
  | ACDIST   |   SRP       | GR       | ADVANCED    | YEAR          | 2                  | amount       |
  | ACDIST   |   SRP       | HK       | ADVANCED    | YEAR          | 2                  | amount       |
  | ACDIST   |   SRP       | HR       | ADVANCED    | YEAR          | 2                  | amount       |
  | ACDIST   |   SRP       | HU       | ADVANCED    | YEAR          | 1                  | discount     |
  | ACDIST   |   SRP       | ID       | ADVANCED    | MONTH         | 1                  | priceId      |
  | ACDIST   |   SRP       | IE       | ADVANCED    | MONTH         | 1                  | amountFormatted |
  | ACDIST   |   SRP       | IL       | ADVANCED    | YEAR          | 2                  | amount       |
  | ACDIST   |   SRP       | IN       | ADVANCED    | YEAR          | 1                  | amount       |
  | ACDIST   |   SRP       | IT       | ADVANCED    | YEAR          | 1                  | discount     |
  | MAYA     |   SRP       | JP       | ADVANCED    | MONTH         | 1                  | priceId      |
  | MAYA     |   SRP       | KR       | ADVANCED    | YEAR          | 2                  | amount       |
  | ACDIST   |   SRP       | MY       | ADVANCED    | YEAR          | 1                  | amount       |
  | ACDIST   |   SRP       | MX       | ADVANCED    | YEAR          | 1                  | amount       |
  | ACDIST   |   SRP       | NL       | ADVANCED    | YEAR          | 1                  | amount       |
  | ACDIST   |   SRP       | NO       | ADVANCED    | YEAR          | 1                  | discount     |
  | ACDIST   |   SRP       | NZ       | ADVANCED    | MONTH         | 1                  | priceId      |
  | ACDIST   |   SRP       | PE       | ADVANCED    | YEAR          | 1                  | amount       |
  | ACDIST   |   SRP       | PH       | ADVANCED    | YEAR          | 1                  | amount       |
  | ACDIST   |   SRP       | PK       | ADVANCED    | YEAR          | 2                  | amount       |
  | ACDIST   |   SRP       | PL       | ADVANCED    | YEAR          | 1                  | discount     |
  | ACDIST   |   SRP       | PT       | ADVANCED    | MONTH         | 1                  | priceId      |
  | ACDIST   |   SRP       | RO       | ADVANCED    | MONTH         | 1                  | amountFormatted |
  | ACDIST   |   SRP       | RU       | ADVANCED    | YEAR          | 1                  | amount       |
  | ACDIST   |   SRP       | SA       | ADVANCED    | YEAR          | 1                  | amount       |
  | ACDIST   |   SRP       | SE       | ADVANCED    | MONTH         | 1                  | amount      |
  | ACDIST   |   SRP       | SI       | ADVANCED    | YEAR          | 1                  | discount     |
  | ACDIST   |   SRP       | SG       | ADVANCED    | MONTH         | 1                  | priceId      |
  | ACDIST   |   SRP       | SK       | ADVANCED    | MONTH         | 1                  | amountFormatted |
  | ACDIST   |   SRP       | SK       | ADVANCED    | YEAR          | 1                  | amount       |
  | MAYA     |   SRP       | TH       | ADVANCED    | YEAR          | 1                  | amount       |
  | ACDIST   |   SRP       | TW       | ADVANCED    | MONTH         | 1                  | amountFormatted |
  | ACDIST   |   SRP       | UA       | ADVANCED    | YEAR          | 1                  | amount       |
  | ACDIST   |   SRP       | US       | ADVANCED    | MONTH         | 1                  | amount       |
  | ACDIST   |   SRP       | UY       | ADVANCED    | YEAR          | 1                  | discount      |
  | ACDIST   |   SRP       | VN       | ADVANCED    | MONTH         | 1                  | priceId       |
  | MAYA     |   SRP       | ZA       | ADVANCED    | YEAR          | 1                  | amountFormatted |
