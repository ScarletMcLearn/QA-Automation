# PDS SLE2: https://web-sle-engineering-svc.awsism.autodesk.com/products/ACDIST?country=US&app=SRP&language=en
# PDS PT: https://web-pt-engineering-svc.autodesk.com/products/ACDIST?country=US&app=SRP&language=en
# PDS PROD: https://web-engineering-svc.autodesk.com/products/ACDIST?country=FR&app=ONLINE&language=fr
#***********************************************************************

@PDS
@Supportlevel
@PL-4795

Feature: pds_supportlevel

  To validate PDS json filters the Invalid Support (anything other than ADVANCED OR BASIC)


######################## SCENARIO 1 #########################

#Note: Scenario 1 will be covered as part of Unit or Integration tests as the data will need to be mocked.

  Scenario: 1. ONLINE: Internal User validates the Support Level received in the PDS Json file.

    Given the PELICAN json with support level as Null
    Then PDS processes the PELICAN json and filters the Support level with null values


 ######################## SCENARIO 2 #########################

  Scenario Outline: 2. ONLINE: Internal User validates the Support Level received in the PDS Json file.

    Given the user is on a PDS URL for "<product>" and "<appKey>" and "<country>"
    When the PDS response code is equal to 200
    Then validate the Support Level has only Advanced and/or Basic as the value.

  @REGRESSION
    Examples:
      | product | appKey | country |
      | ACDIST  | ONLINE | US      |
      | MAYA    | ONLINE | GB      |
      | F360B   | ONLINE | DE      |
      | ACDLT   | ONLINE | CA      |
      | F360B   | ONLINE | FR      |
      | ACDLT   | ONLINE | BE      |
      # | ACDLT    |   ONLINE    | US         |
      # | MAYA     |   ONLINE    | US         |
      # | MAYALT   |   ONLINE    | US         |

  @PROD
    Examples:
      | product | appKey | country |
      | ACDIST  | ONLINE | US      |
      # | ACDLT    |   ONLINE    | US         |
      # | MAYA     |   ONLINE    | US         |
      # | MAYALT   |   ONLINE    | US         |
