# PDS SLE2: https://web-sle-engineering-svc.awsism.autodesk.com/products/ACDIST?country=US&app=SRP&language=en
# PDS PT: https://web-pt-engineering-svc.autodesk.com/products/ACDIST?country=US&app=SRP&language=en
# PDS PROD: https://web-engineering-svc.autodesk.com/products/ACDIST?country=FR&app=ONLINE&language=fr
#***********************************************************************

@PDS
@PRICING_SOURCE
@PL-4130

Feature: pds_pricing_source_key

  Validate the Pricing source key in PDS json


  ######################## SCENARIO 1 #########################
  @SRP
  Scenario Outline: 1. SRP: Internal User validates the Pricing source key received in the PDS Json file when app key is SRP

    Given the user is on a PDS URL for "<product>" and "<appKey>" and "<country>"
    When the PDS response code is equal to 200
    Then the pricing source key should be "<pricing_source_key>"


  @REGRESSION
  @PROD
    Examples:
      | product | appKey | country | pricing_source_key |
      | ACDIST  | SRP    | US      | SRPDB              |



    Examples:
      | product | appKey | country | pricing_source_key |
      | ACDIST  | SRP    | CA      | SRPDB              |
      | ACDIST  | SRP    | AE      | SRPDB              |
      | ACDIST  | SRP    | AR      | SRPDB              |
      | ACDIST  | SRP    | AT      | SRPDB              |
      | ACDIST  | SRP    | AU      | SRPDB              |
      | ACDIST  | SRP    | BE      | SRPDB              |
      | ACDIST  | SRP    | BR      | SRPDB              |
      | ACDIST  | SRP    | CH      | SRPDB              |
      | ACDIST  | SRP    | CL      | SRPDB              |
      | ACDIST  | SRP    | CN      | SRPDB              |
      | ACDIST  | SRP    | CO      | SRPDB              |
      | ACDIST  | SRP    | CZ      | SRPDB              |
      | ACDIST  | SRP    | DE      | SRPDB              |
      | ACDIST  | SRP    | DK      | SRPDB              |
      | ACDIST  | SRP    | ES      | SRPDB              |
      | ACDIST  | SRP    | FI      | SRPDB              |
      | ACDIST  | SRP    | FR      | SRPDB              |
      | ACDIST  | SRP    | GB      | SRPDB              |
      | ACDIST  | SRP    | GR      | SRPDB              |
      | ACDIST  | SRP    | HK      | SRPDB              |
      | ACDIST  | SRP    | HR      | SRPDB              |
      | ACDIST  | SRP    | HU      | SRPDB              |
      | ACDIST  | SRP    | ID      | SRPDB              |
      | ACDIST  | SRP    | IE      | SRPDB              |
      | ACDIST  | SRP    | IL      | SRPDB              |
      | ACDIST  | SRP    | IN      | SRPDB              |
      | ACDIST  | SRP    | IT      | SRPDB              |
      | MAYA    | SRP    | JP      | SRPDB              |
      | MAYA    | SRP    | KR      | SRPDB              |
      | ACDIST  | SRP    | MY      | SRPDB              |
      | ACDIST  | SRP    | MX      | SRPDB              |
      | ACDIST  | SRP    | NL      | SRPDB              |
      | ACDIST  | SRP    | NO      | SRPDB              |
      | ACDIST  | SRP    | NZ      | SRPDB              |
      | ACDIST  | SRP    | PE      | SRPDB              |
      | ACDIST  | SRP    | PH      | SRPDB              |
      | ACDIST  | SRP    | PK      | SRPDB              |
      | ACDIST  | SRP    | PL      | SRPDB              |
      | ACDIST  | SRP    | PT      | SRPDB              |
      | ACDIST  | SRP    | RO      | SRPDB              |
      | ACDIST  | SRP    | RU      | SRPDB              |
      | ACDIST  | SRP    | SA      | SRPDB              |
      | ACDIST  | SRP    | SE      | SRPDB              |
      | ACDIST  | SRP    | SI      | SRPDB              |
      | ACDIST  | SRP    | SG      | SRPDB              |
      | ACDIST  | SRP    | SK      | SRPDB              |
      | ACDIST  | SRP    | SK      | SRPDB              |
      | ACDLT   | SRP    | TH      | SRPDB              |
      | ACDIST  | SRP    | TW      | SRPDB              |
      | ACDIST  | SRP    | UA      | SRPDB              |
      | ACDIST  | SRP    | US      | SRPDB              |
      | ACDIST  | SRP    | UY      | SRPDB              |
      | ACDIST  | SRP    | VN      | SRPDB              |
      | ACDLT   | SRP    | ZA      | SRPDB              |




  ######################## SCENARIO 2 #########################
  @ONLINE
  Scenario Outline: 2. ONLINE: Internal User validates the Pricing source key received in the PDS Json file when app key is ONLINE

    Given the user is on a PDS URL for "<product>" and "<appKey>" and "<country>"
    When the PDS response code is equal to 200
    Then the pricing source key should be "<pricing_source_key>"


  @REGRESSION
  @PROD
    Examples:
      | product | appKey | country | pricing_source_key |
      | ACDIST  | ONLINE | US      | PELICAN            |
      | MAYA    | ONLINE | AU      | DR                 |



    Examples:
      | product | appKey | country | pricing_source_key |
      | ACDIST  | ONLINE | BR      | DR                 |
      | MAYA    | ONLINE | IN      | DR                 |
      | MAYA    | ONLINE | JP      | DR                 |
      | MAYA    | ONLINE | KR      | DR                 |
      | MAYA    | ONLINE | MX      | DR                 |
      | MAYA    | ONLINE | NZ      | DR                 |
      | MAYA    | ONLINE | RU      | DR                 |
      | MAYA    | ONLINE | SG      | DR                 |
     #| ACDLT    |   ONLINE    | TR       | DR                 |
      | ACDIST  | ONLINE | AT      | PELICAN            |
      | ACDIST  | ONLINE | BE      | PELICAN            |
      | ACDIST  | ONLINE | BG      | PELICAN            |
      | ACDIST  | ONLINE | CA      | PELICAN            |
      | ACDIST  | ONLINE | CH      | PELICAN            |
      | ACDIST  | ONLINE | CZ      | PELICAN            |
      | ACDIST  | ONLINE | CY      | PELICAN            |
      | ACDIST  | ONLINE | DE      | PELICAN            |
      | ACDIST  | ONLINE | DK      | PELICAN            |
      | ACDIST  | ONLINE | EE      | PELICAN            |
      | ACDIST  | ONLINE | ES      | PELICAN            |
      | ACDIST  | ONLINE | FI      | PELICAN            |
      | ACDIST  | ONLINE | FR      | PELICAN            |
      | ACDIST  | ONLINE | GB      | PELICAN            |
      | ACDIST  | ONLINE | GR      | PELICAN            |
      | ACDIST  | ONLINE | HR      | PELICAN            |
      | ACDIST  | ONLINE | HU      | PELICAN            |
      | ACDIST  | ONLINE | IE      | PELICAN            |
      | ACDIST  | ONLINE | IS      | PELICAN            |
      | ACDIST  | ONLINE | IT      | PELICAN            |
      | ACDIST  | ONLINE | LI      | PELICAN            |
      | ACDIST  | ONLINE | LT      | PELICAN            |
      | ACDIST  | ONLINE | LU      | PELICAN            |
      | ACDIST  | ONLINE | LV      | PELICAN            |
      | ACDIST  | ONLINE | MT      | PELICAN            |
      | ACDIST  | ONLINE | NL      | PELICAN            |
      | ACDIST  | ONLINE | NO      | PELICAN            |
      | ACDIST  | ONLINE | PL      | PELICAN            |
      | ACDIST  | ONLINE | PT      | PELICAN            |
      | ACDIST  | ONLINE | RO      | PELICAN            |
      | ACDIST  | ONLINE | SE      | PELICAN            |
      | ACDIST  | ONLINE | SI      | PELICAN            |
      | ACDIST  | ONLINE | SK      | PELICAN            |


   ######################## SCENARIO 3 #########################

  Scenario Outline: 3. ONLINE: Internal User validates the Pricing source key received in the PDS Json file for countries that do not exist in ONLINE and when app key is NOT specified

    Given the user is on a PDS URL for "<product>" and "<appKey>" and "<country>"
    When the PDS response code is equal to 404
    And the user is on a PDS URL for "<product>" and "<country>"
    Then the PDS response code is equal to 200
    And the pricing source key should be "<pricing_source_key>"
    And the applicationKey is blank


    Examples:
      | product | appKey | country | pricing_source_key |
      | ACDIST  | ONLINE | AE      | SRPDB              |
      | ACDIST  | ONLINE | CL      | SRPDB              |
      | ACDIST  | ONLINE | CN      | SRPDB              |
      | ACDIST  | ONLINE | CO      | SRPDB              |
      | ACDIST  | ONLINE | HK      | SRPDB              |
      | ACDIST  | ONLINE | ID      | SRPDB              |
      | ACDIST  | ONLINE | IL      | SRPDB              |
      | ACDIST  | ONLINE | MY      | SRPDB              |
      | ACDIST  | ONLINE | PE      | SRPDB              |
      | ACDIST  | ONLINE | PH      | SRPDB              |
      | ACDIST  | ONLINE | PK      | SRPDB              |
      | ACDIST  | ONLINE | SA      | SRPDB              |
      | ACDIST  | ONLINE | TH      | SRPDB              |
      | ACDIST  | ONLINE | TW      | SRPDB              |
      | ACDIST  | ONLINE | UA      | SRPDB              |
      | ACDIST  | ONLINE | UY      | SRPDB              |
      | ACDIST  | ONLINE | VN      | SRPDB              |
      | ACDIST  | ONLINE | ZA      | SRPDB              |



######################## SCENARIO 4 #########################
  Scenario Outline: 4. ONLINE: Internal User validates the Pricing source key received in the PDS Json file for countries that exist in ONLINE and when app key is NOT specified

    Given the user is on a PDS URL for "<product>" and "<appKey>" and "<country>"
    When the PDS response code is equal to 200
    And the user is on a PDS URL for "<product>" and "<country>"
    Then the PDS response code is equal to 200
    And the pricing source key should be "<pricing_source_key>"
    And the applicationKey is blank


  @REGRESSION
  @PROD
    Examples:
      | product | appKey | country | pricing_source_key |
      | MAYA    | ONLINE | AU      | DR                 |
      | ACDIST  | ONLINE | US      | PELICAN            |



    Examples:
      | product | appKey | country | pricing_source_key |
      | ACDIST  | ONLINE | BR      | DR                 |
      | MAYA    | ONLINE | IN      | DR                 |
      | MAYA    | ONLINE | JP      | DR                 |
      | MAYA    | ONLINE | KR      | DR                 |
      | MAYA    | ONLINE | MX      | DR                 |
      | MAYA    | ONLINE | NZ      | DR                 |
      | MAYA    | ONLINE | RU      | DR                 |
      | MAYA    | ONLINE | SG      | DR                 |
     #| ACDLT    |   ONLINE    | TR       | DR                 |
      | ACDIST  | ONLINE | AT      | PELICAN            |
      | ACDIST  | ONLINE | BE      | PELICAN            |
      | ACDIST  | ONLINE | BG      | PELICAN            |
      | ACDIST  | ONLINE | CA      | PELICAN            |
      | ACDIST  | ONLINE | CH      | PELICAN            |
      | ACDIST  | ONLINE | CZ      | PELICAN            |
      | ACDIST  | ONLINE | CY      | PELICAN            |
      | ACDIST  | ONLINE | DE      | PELICAN            |
      | ACDIST  | ONLINE | DK      | PELICAN            |
      | ACDIST  | ONLINE | EE      | PELICAN            |
      | ACDIST  | ONLINE | ES      | PELICAN            |
      | ACDIST  | ONLINE | FI      | PELICAN            |
      | ACDIST  | ONLINE | FR      | PELICAN            |
      | ACDIST  | ONLINE | GB      | PELICAN            |
      | ACDIST  | ONLINE | GR      | PELICAN            |
      | ACDIST  | ONLINE | HR      | PELICAN            |
      | ACDIST  | ONLINE | HU      | PELICAN            |
      | ACDIST  | ONLINE | IE      | PELICAN            |
      | ACDIST  | ONLINE | IS      | PELICAN            |
      | ACDIST  | ONLINE | IT      | PELICAN            |
      | ACDIST  | ONLINE | LI      | PELICAN            |
      | ACDIST  | ONLINE | LT      | PELICAN            |
      | ACDIST  | ONLINE | LU      | PELICAN            |
      | ACDIST  | ONLINE | LV      | PELICAN            |
      | ACDIST  | ONLINE | MT      | PELICAN            |
      | ACDIST  | ONLINE | NL      | PELICAN            |
      | ACDIST  | ONLINE | NO      | PELICAN            |
      | ACDIST  | ONLINE | PL      | PELICAN            |
      | ACDIST  | ONLINE | PT      | PELICAN            |
      | ACDIST  | ONLINE | RO      | PELICAN            |
      | ACDIST  | ONLINE | SE      | PELICAN            |
      | ACDIST  | ONLINE | SI      | PELICAN            |
      | ACDIST  | ONLINE | SK      | PELICAN            |
