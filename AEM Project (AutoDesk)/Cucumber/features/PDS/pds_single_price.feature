# PDS SLE2: https://web-sle-engineering-svc.awsism.autodesk.com/products/ACDIST?country=US&app=SRP&language=en
# PDS PT: https://web-pt-engineering-svc.autodesk.com/products/ACDIST?country=US&app=SRP&language=en
# PDS PROD: https://web-engineering-svc.autodesk.com/products/ACDIST?country=FR&app=ONLINE&language=fr
#***********************************************************************

@PDS
@PL-4888

Feature: pds_single_price_api


  ######################## SCENARIO 1 #########################

  Scenario Outline: 1. Internal User validates that PDS response has only the pricing details for the support level specified.

    Given the user is on a PDS URL for  product "<product>", appkey "<appKey>", country "<country>" and Support level "<supportLevel>"
    And the PDS response code is equal to 200
    Then the pricing details for the support Level "<supportLevel>" are only returned in the PDS json

  @SRP
  @REGRESSION
  @PROD
    Examples:
      | product | appKey | country | supportLevel |
      | ACDIST  | ONLINE | US      | ADVANCED     |
      | ACDIST  | SRP    | CA      | ADVANCED     |



   ######################## SCENARIO 2 #########################

  Scenario Outline: 2. Internal User validates that PDS response has only the pricing details for the TERM specified.

    Given the user is on a PDS URL for  product "<product>", appkey "<appKey>", country "<country>" and term "<term>"
    And the PDS response code is equal to 200
    Then the pricing details for the term "<term>" are only returned in the PDS json

  @SRP
  @REGRESSION
  @PROD
    Examples:
      | product | appKey | country | term   |
      | ACDIST  | ONLINE | US      | 1-YEAR |
      | ACDIST  | SRP    | CA      | 3-YEAR |




    ######################## SCENARIO 3 #########################

  Scenario Outline: 3. Internal User validates that PDS response has only the pricing details for the Support Level and TERM specified.

    Given the user is on a PDS URL for  product "<product>", appkey "<appKey>", country "<country>", support level "<supportLevel>" and term "<term>"
    And the PDS response code is equal to 200
    Then the pricing details for the support Level "<supportLevel>" and term "<term>" are only returned in the PDS json

  @SRP
  @REGRESSION
  @PROD
    Examples:
      | product | appKey | country | supportLevel | term   |
      | ACDIST  | ONLINE | US      | ADVANCED     | 1-YEAR |
      | ACDIST  | SRP    | CA      | ADVANCED     | 3-YEAR |




   ######################## SCENARIO 4 #########################

  Scenario Outline: 4. Internal User validates that PDS response has only the pricing details for the Support level, Term and Promotion code specified.

    Given the user is on a PDS URL for  product "<product>", appkey "<appKey>", country "<country>", support level "<supportLevel>", term "<term>" and promotion "<promotioncode>"
    And the PDS response code is equal to 200
    Then the pricing details for the support Level "<supportLevel>" , term "<term>" and promotion "<promotioncode>" are only returned in the PDS json

  @REGRESSION
  @PROD
    Examples:
      | product | appKey | country | supportLevel | term   | promotioncode |
      | ACDIST  | ONLINE | US      | ADVANCED     | 1-YEAR | 4ig2qfw5GQhNz |




   ######################## SCENARIO 5 #########################

  Scenario Outline: 5. Internal User validates that PDS response has only the pricing details for the Support level and Promotion code specified.

    Given the user is on a PDS URL for  product "<product>", appkey "<appKey>", country "<country>", support level "<supportLevel>" and promotion "<promotioncode>"
    And the PDS response code is equal to 200
    Then the pricing details for the support Level "<supportLevel>" and promotion "<promotioncode>" are only returned in the PDS json

  @REGRESSION
  @PROD
    Examples:
      | product | appKey | country | supportLevel | promotioncode |
      | ACDIST  | ONLINE | US      | ADVANCED     | 4ig2qfw5GQhNz |




  ######################## SCENARIO 6 #########################

  Scenario Outline: 6. Internal User validates that PDS response has only the pricing details for the Term and Promotion code specified.

    Given the user is on a PDS URL for  product "<product>", appkey "<appKey>", country "<country>", term "<term>" and promotion "<promotioncode>"
    And the PDS response code is equal to 200
    Then the pricing details for the term "<term>" and promotion "<promotioncode>" are only returned in the PDS json

  @REGRESSION
  @PROD
    Examples:
      | product | appKey | country | term   | promotioncode |
      | ACDIST  | ONLINE | US      | 1-YEAR | 4ig2qfw5GQhNz |




 ######################## SCENARIO 7 #########################

  Scenario Outline: 7. Internal User validates that PDS response has only the pricing details for the Promotion code specified.

    Given the user is on a PDS URL for  product "<product>", appkey "<appKey>", country "<country>" and promotion "<promotioncode>"
    And the PDS response code is equal to 200
    Then the pricing details for the promotion "<promotioncode>" are only returned in the PDS json

  @REGRESSION
  @PROD
    Examples:
      | product | appKey | country | promotioncode |
      | ACDIST  | ONLINE | US      | 4ig2qfw5GQhNz |
