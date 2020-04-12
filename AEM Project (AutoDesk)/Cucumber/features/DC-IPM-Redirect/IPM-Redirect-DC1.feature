@DC
@IPMRedirectDC
@SLE2
@PT
@REGRESSION
@SLE1

# WIKI DOC: https://wiki.autodesk.com/display/webteam/IPM+Redirect+from+Product+Trials+%28IPM%29+to+eStore
# INFO: COUNTRY and LANGUAGE params do not persist once on the store product page. --> as Expected

# LOGIC: if 2 products within one store has the same IPM redirect PLC, the first one to be created should take priority.

### URL:
# PROD: http://www.autodesk.com/services/ecommerce/redirect?productLine=RDRT&country=US&language=en
# STG: https://www-pt.awsism.autodesk.com/services/ecommerce/redirect?productLine=RDRT&country=US&language=en
# QA: https://www-sle2.awsism.autodesk.com/services/ecommerce/redirect?productLine=RDRT&country=US&language=en


Feature: IPM redirect to local site DC product page or Reseller page part 2


######################## SCENARIO 3 #########################
# EX URL: http://www-sle2.awsism.autodesk.com/services/ecommerce/redirect?productLine=BLA&country=CA&language=en
# EX URL: http://www.autodesk.com/services/ecommerce/redirect?productLine=BLA&country=DE&language=de

  Scenario Outline: 3- Validate Redirects to Reseller page when Product Page is not available
    Given the user visits an IPM URL to DC with an existing "<product>" and "<country>" and "<lang>"
    Then the correct reseller page is loaded

@SMOKE
  Examples:
    | product | country | lang |
    #| BLA     | US      | en   |
    | BLA     | CA      | en   |
    | BLA     | DE      | de   |
    | BLA     | ES      | es   |
    | BLA     | FR      | fr   |
    | BLA     | BE      | fr   |
    | BLA     | DK      | da   |
    | BLA     | SE      | sv   |
    | BLA     | CN      | zh   |
    | BLA     | HK      | zh   |
    | BLA     | NZ      | en   |
    | BLA     | AR      | es   |
    | BLA     | CL      | es   |
    | BLA     | PE      | es   |
    | BLA     | TR      | tr   |
    | BLA     | AE      | en   |

######################## SCENARIO 4 #########################
#### EDGE CASE 1 ####
# https://www-sle2.awsism.autodesk.com/services/ecommerce/redirect?productLine=RDRT&country=US&language=en&test1=t1&test2=t2
# Points to reseller if page does not exist: http://www-sle2.awsism.autodesk.com/services/ecommerce/redirect?productLine=BLA&country=US&language=en

 Scenario Outline: 4- Validate parameters are passed to the product page - Edge case1
    Given the user visits an IPM URL to DC with additional params "<product>" and "<country>" and "<lang>" and "<param1>" and "<param2>"
    Then the correct site page is loaded: "<site>" and "<destination_page>"

@SMOKE
  Examples:
    | product | country | lang | param1    | param2    | site | destination_page                                       |
    | RDRT    | US      | en   | &test1=t1 | &test2=t2 | .com | /qa-automation/fsb-buy/buy-container/ipm-redirect?productLine=RDRT&test1=t1&test2=t2 |


######################## SCENARIO 5 #########################
#### EDGE CASE 2 ####
# PROD: https://www.autodesk.com/services/ecommerce/redirect?test1=t1&productLine=RDRT&country=US&language=en&test2=t2
# PT: https://www-pt.awsism.autodesk.com/services/ecommerce/redirect?test1=t1&productLine=RDRT&country=US&language=en&test2=t2
# SLE2: https://www-sle2.awsism.autodesk.com/services/ecommerce/redirect?test1=t1&productLine=RDRT&country=US&language=en&test2=t24

  Scenario Outline: 5- Validate parameters are passed to the product page - Edge case2
    Given the user visits an IPM URL to DC with a param before the PLC "<param1>" and "<product>" and "<country>" and "<lang>" and "<param2>"
    Then the correct site page is loaded: "<site>" and "<destination_page>"

@SMOKE
  Examples:
    | product | country | lang | param1    | param2    | site | destination_page                                       |
    | RDRT    | US      | en   | &test1=t1 | &test2=t2 | .com | /qa-automation/fsb-buy/buy-container/ipm-redirect?test1=t1&productLine=RDRT&test2=t2 |


######################## SCENARIO 6 #########################
# EX URL: https://www-sle2.awsism.autodesk.com/services/ecommerce/redirect?productLine=RDRT&country=CA
  Scenario Outline: 6- Validate countries that redirect to the right site when language is not specified.
    Given the user visits an IPM URL to DC with an existing "<product>" and "<country>"
    Then the correct site page is loaded: "<site>" and "<destination_page>"

@SMOKE
  Examples:
    | product | country | site   | destination_page                                                   |
    | RDRT    | CA      | .ca/en | |
    | RDRT    | NL      | .nl    | |
    | RDRT    | BE      | .be/nl | |
    #| RDRT    | CH      | .de    | |

######################## SCENARIO 7 #########################
# Example: https://www-sle2.awsism.autodesk.com/services/ecommerce/redirect?productLine=RDRT&country=CA&appKey=online
  Scenario Outline: 7- Validate countries that redirect to the reseller page if product is not specified.
  Given the user access an IPM URL to DC with the given "<product>" and "<country>" and "<appKey>"
  Then the correct reseller page is loaded

# Examples without a Product
  Examples:
    | product | country | lang | appKey |
    |         | US      | en   | online |
    |         | CA      | en   | online |
    |         | DE      | de   | online |
    |         | ES      | es   | online |
    |         | FR      | fr   | online |
    |         | BE      | fr   | online |
    |         | DK      | da   | online |
    |         | SE      | sv   | online |
    |         | CN      | zh   | online |
    |         | HK      | zh   | online |
    |         | NZ      | en   | online |
    |         | AR      | es   | online |
    |         | CL      | es   | online |
    |         | PE      | es   | online |
    |         | TR      | tr   | online |
    |         | AE      | en   | online |


######################## SCENARIO 8 #########################
# Example: https://www-sle2.awsism.autodesk.com/services/ecommerce/redirect?country=CA&language=fr&appKey=online
  Scenario Outline: 8- Validate countries that redirect to the reseller page if product is not specified but language is.
    Given the user access an IPM URL to DC with the given "<country>" and "<appKey>" and "<language>" but no Product
    Then the correct site page is loaded: "<site>" and "<destination_page>"
@testripm
  Examples:
  | country | language | appKey | site   | destination_page                                     |
  | CA      | fr       | online | .ca/en | /resellers/locate-a-reseller?appKey=online           |
  | CA      | en       | online | .ca/fr | /resellers/locate-a-reseller?appKey=online           |
  | BE      | nl       | online | .be/nl | /resellers/locate-a-reseller?appKey=online           |
  | BE      | fr       | online | .be/fr | /resellers/locate-a-reseller?appKey=online           |

    ######################## SCENARIO END #########################
