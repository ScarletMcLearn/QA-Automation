# PDS SLE2: https://web-sle-engineering-svc.awsism.autodesk.com/products/ACDIST?country=US&app=SRP&language=en
# PDS PT: https://web-pt-engineering-svc.autodesk.com/products/ACDIST?country=US&app=SRP&language=en
# PDS PROD: https://web-engineering-svc.autodesk.com/products/ACDIST?country=FR&app=ONLINE&language=fr
#***********************************************************************

@PDS

Feature: pds_amountformatted

  Validate the amount formatted field in the PDS json.

  ######################## SCENARIO 1 #########################

  Scenario Outline: 1. ONLINE: User validates the amount formatted field in the PDS Json file.

    Given the user is on a PDS URL for "<product>" and "<appKey>" and "<country>"
    When the PDS response code is equal to 200
    And the "<billingPeriod>" and "<billingPeriodCount>" and "<supportLevel>" for PDS are provided
    Then the user validates the amount formated is as per expected.


    @REGRESSION
    Examples:
      | product | appKey | country | supportLevel | billingPeriod | billingPeriodCount |
      | ACDIST  | ONLINE | US      | ADVANCED     | YEAR          | 1                  |
      | MAYA    | ONLINE | JP      | ADVANCED     | MONTH         | 1                  |
      | MAYA    | ONLINE | FR      | ADVANCED     | YEAR          | 2                  |

    @PROD
    Examples:
      | product | appKey | country | supportLevel | billingPeriod | billingPeriodCount |
      | ACDIST  | ONLINE | US      | ADVANCED     | YEAR          | 3                  |
      | MAYA    | ONLINE | JP      | ADVANCED     | MONTH         | 1                  |
      | MAYA    | ONLINE | FR      | ADVANCED     | YEAR          | 1                  |

    Examples:
      | product | appKey | country | supportLevel | billingPeriod | billingPeriodCount |
      | MAYA    | ONLINE | KR      | ADVANCED     | MONTH         | 1                  |
      | ACDIST  | ONLINE | GB      | ADVANCED     | YEAR          | 3                  |
      | MAYALT  | ONLINE | ES      | ADVANCED     | YEAR          | 1                  |
      | ACDIST  | ONLINE | RO      | ADVANCED     | MONTH         | 1                  |
      | MAYA    | ONLINE | PT      | ADVANCED     | YEAR          | 1                  |
      | ACDIST  | ONLINE | GR      | ADVANCED     | YEAR          | 1                  |
      # | ACDIST  | ONLINE | PL      | ADVANCED     | YEAR          | 1                  |
      | ACDIST  | ONLINE | IT      | ADVANCED     | MONTH         | 1                  |
      | MAYA    | ONLINE | FR      | ADVANCED     | YEAR          | 1                  |
      | ACDIST  | ONLINE | HU      | ADVANCED     | YEAR          | 1                  |
      | MAYA    | ONLINE | DE      | ADVANCED     | YEAR          | 1                  |
      | ACDIST  | ONLINE | FI      | ADVANCED     | MONTH         | 1                  |
      # | MAYA    | ONLINE | IN      | BASIC        | MONTH         | 1                  | ==> Product Line data not found


 ######################## SCENARIO 2 #########################

  @SRP
  Scenario Outline: 2. SRP: User validates the amount formatted field in the PDS Json file.

    Given the user is on a PDS URL for "<product>" and "<appKey>" and "<country>"
    When the PDS response code is equal to 200
    And the "<billingPeriod>" and "<billingPeriodCount>" and "<supportLevel>" for PDS are provided
    Then the user validates the amount formated is as per expected.

    @REGRESSION
    Examples:
      | product | appKey | country | supportLevel | billingPeriod | billingPeriodCount |
      | ACDIST  | SRP    | US      | ADVANCED     | YEAR          | 1                  |
      | MAYA    | SRP    | FR      | ADVANCED     | YEAR          | 1                  |

    @PROD
    Examples:
      | product | appKey | country | supportLevel | billingPeriod | billingPeriodCount |
      | ACDIST  | SRP    | US      | ADVANCED     | YEAR          | 3                  |
      | MAYA    | SRP    | FR      | ADVANCED     | YEAR          | 1                  |

    Examples:
      | product | appKey | country | supportLevel | billingPeriod | billingPeriodCount |
      | ACDIST  | SRP    | SG      | ADVANCED     | YEAR          | 1                  |
      | ACDIST  | SRP    | SG      | ADVANCED     | YEAR          | 1                  |
      | MAYA    | SRP    | AU      | ADVANCED     | MONTH         | 1                  |
      | MAYA    | SRP    | NZ      | ADVANCED     | MONTH         | 1                  |
      | ACDIST  | SRP    | GB      | ADVANCED     | YEAR          | 3                  |
      | MAYALT  | SRP    | ES      | ADVANCED     | YEAR          | 1                  |
      | ACDIST  | SRP    | RO      | ADVANCED     | MONTH         | 1                  |
      | MAYA    | SRP    | PT      | ADVANCED     | YEAR          | 1                  |
      | ACDIST  | SRP    | GR      | ADVANCED     | YEAR          | 1                  |
      #| ACDIST  | SRP    | PL      | ADVANCED     | YEAR          | 1                  |
      | ACDIST  | SRP    | IT      | ADVANCED     | MONTH         | 1                  |
      | ACDIST  | SRP    | HU      | ADVANCED     | YEAR          | 1                  |
      | RECAP   | SRP    | DE      | ADVANCED     | YEAR          | 1                  |
      | ACDIST  | SRP    | FI      | ADVANCED     | MONTH         | 1                  |
      | MAYA    | SRP    | IN      | ADVANCED     | MONTH         | 1                  |
