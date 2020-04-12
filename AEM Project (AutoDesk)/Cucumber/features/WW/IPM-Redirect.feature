# WIKI DOC: https://wiki.autodesk.com/display/webteam/IPM+Redirect+from+Product+Trials+%28IPM%29+to+eStore
# INFO: COUNTRY and LANGUAGE params do not persist once on the store product page. --> as Expected

# LOGIC: if 2 products within one store has the same IPM redirect PLC, the last one published (if both responsive) should take priority.
# this logic does not seem to work on PT
# Note if a static and responsive page both have a PLC, the responsive page takes priority
# Per Joe, Connie, this is ok as is. ticket is in backlog to investigate. publisher guideline is one PLC only per store!


### URL:
# PROD: https://www.autodesk.com/services/estore/redirect?productLine=MAYALT&country=US&language=en
# STG: https://www-pt.awsism.autodesk.com/services/estore/redirect?productLine=MAYALT&country=US&language=en
# QA: https://www-sle2.awsism.autodesk.com/services/estore/redirect?productLine=MAYALT&country=US&language=en

@IPMRedirect
@StorageClear

Feature: IPM redirect to Estore site or Reseller page or DC product page


#-------------------- SCENARIO for IPM redirect migrated to DC --------------------#

## HERE is list of all Countries/localsites configured for SUBSCRIBE PAGE REDIRECT and GEOPOPUP on DC
## PER the config file: /etc/static-content/geo-navigation-mapping/geo-navigation-mapping.html
## IDEA!! would be for IPM Redirect service to read from the Config file (?)

# Following to replace Scenarios 1 to 8 or 9

@wip
Scenario Outline: X- Validate countries that redirect to DC subscribe pages
  Given the user visits an IPM URL with an existing "<product>" and "<country>" and "<lang>"
  Then the correct DC Local site Subscribe page is loaded: "<site>" and "<destination_page>"

@NORTH-AMERICA
Examples:
  | product | country | lang | site   | destination_page                                                                                  |
  | MAYALT  | US      | en   | .com   | /products/maya-lt/subscribe?productLine=MAYALT&plc=MAYALT&term=1-YEAR&support=ADVANCED&quantity=1 |
  | MAYALT  | CA      | en   | .ca/en | /products/maya-lt/subscribe?productLine=MAYALT&plc=MAYALT&term=1-YEAR&support=ADVANCED&quantity=1 |
  | MAYALT  | CA      | fr   | .ca/fr | /products/maya-lt/subscribe?productLine=MAYALT&plc=MAYALT&term=1-YEAR&support=ADVANCED&quantity=1 |
  | MAYALT  | MX      | es   | .mx    | /products/maya-lt/subscribe?productLine=MAYALT&plc=MAYALT&term=1-YEAR&support=ADVANCED&quantity=1 |


@EUROPE
Examples:
  | product | country | lang | site     | destination_page                                                                                  |
  | MAYALT  | CZ      | cs   | .cz      | /products/maya-lt/subscribe?productLine=MAYALT&plc=MAYALT&term=1-YEAR&support=ADVANCED&quantity=1 |
  | MAYALT  | DK      | da   | .dk      | /products/maya-lt/subscribe?productLine=MAYALT&plc=MAYALT&term=1-YEAR&support=ADVANCED&quantity=1 |
  | MAYALT  | ES      | es   | .es      | /products/maya-lt/subscribe?productLine=MAYALT&plc=MAYALT&term=1-YEAR&support=ADVANCED&quantity=1 |
  | MAYALT  | FR      | fr   | .fr      | /products/maya-lt/subscribe?productLine=MAYALT&plc=MAYALT&term=1-YEAR&support=ADVANCED&quantity=1 |
  | MAYALT  | HU      | hu   | .hu      | /products/maya-lt/subscribe?productLine=MAYALT&plc=MAYALT&term=1-YEAR&support=ADVANCED&quantity=1 |
  | MAYALT  | IT      | it   | .it      | /products/maya-lt/subscribe?productLine=MAYALT&plc=MAYALT&term=1-YEAR&support=ADVANCED&quantity=1 |
  | MAYALT  | NO      | no   | .no      | /products/maya-lt/subscribe?productLine=MAYALT&plc=MAYALT&term=1-YEAR&support=ADVANCED&quantity=1 |
  | MAYALT  | PL      | pl   | .pl      | /products/maya-lt/subscribe?productLine=MAYALT&plc=MAYALT&term=1-YEAR&support=ADVANCED&quantity=1 |
  | MAYALT  | PT      | pt   | .pt      | /products/maya-lt/subscribe?productLine=MAYALT&plc=MAYALT&term=1-YEAR&support=ADVANCED&quantity=1 |
  | MAYALT  | RU      | ru   | .ru      | /products/maya-lt/subscribe?productLine=MAYALT&plc=MAYALT&term=1-YEAR&support=ADVANCED&quantity=1 |
  | MAYALT  | FI      | fi   | .fi      | /products/maya-lt/subscribe?productLine=MAYALT&plc=MAYALT&term=1-YEAR&support=ADVANCED&quantity=1 |
  | MAYALT  | SE      | sv   | .se      | /products/maya-lt/subscribe?productLine=MAYALT&plc=MAYALT&term=1-YEAR&support=ADVANCED&quantity=1 |
  | MAYALT  | TR      | tr   | .com.tr  | /products/maya-lt/subscribe?productLine=MAYALT&plc=MAYALT&term=1-YEAR&support=ADVANCED&quantity=1 |
  | MAYALT  | GB      | en   | .co.uk   | /products/maya-lt/subscribe?productLine=MAYALT&plc=MAYALT&term=1-YEAR&support=ADVANCED&quantity=1 |
  | MAYALT  | DE      | de   | .de      | /products/maya-lt/subscribe?productLine=MAYALT&plc=MAYALT&term=1-YEAR&support=ADVANCED&quantity=1 |
  | MAYALT  | AT      | de   | .de      | /products/maya-lt/subscribe?productLine=MAYALT&plc=MAYALT&term=1-YEAR&support=ADVANCED&quantity=1 |
  | MAYALT  | IT      | it   | .it      | /products/maya-lt/subscribe?productLine=MAYALT&plc=MAYALT&term=1-YEAR&support=ADVANCED&quantity=1 |
  | MAYALT  | LI      | de   | .de      | /products/maya-lt/subscribe?productLine=MAYALT&plc=MAYALT&term=1-YEAR&support=ADVANCED&quantity=1 |
  | MAYALT  | LU      | de   | .de      | /products/maya-lt/subscribe?productLine=MAYALT&plc=MAYALT&term=1-YEAR&support=ADVANCED&quantity=1 |
  | MAYALT  | NL      | nl   | .nl      | /products/maya-lt/subscribe?productLine=MAYALT&plc=MAYALT&term=1-YEAR&support=ADVANCED&quantity=1 |
# Countries + specific Languages:
  | MAYALT  | BE      | nl   | .be/nl   | /products/maya-lt/subscribe?productLine=MAYALT&plc=MAYALT&term=1-YEAR&support=ADVANCED&quantity=1 |
  | MAYALT  | BE      | fr   | .be/fr   | /products/maya-lt/subscribe?productLine=MAYALT&plc=MAYALT&term=1-YEAR&support=ADVANCED&quantity=1 |
  | MAYALT  | CH      | de   | .de      | /products/maya-lt/subscribe?productLine=MAYALT&plc=MAYALT&term=1-YEAR&support=ADVANCED&quantity=1 |
  | MAYALT  | CH      | fr   | .fr      | /products/maya-lt/subscribe?productLine=MAYALT&plc=MAYALT&term=1-YEAR&support=ADVANCED&quantity=1 |
  | MAYALT  | CH      | it   | .it      | /products/maya-lt/subscribe?productLine=MAYALT&plc=MAYALT&term=1-YEAR&support=ADVANCED&quantity=1 |
# OTHER EU COUNTRIES
  | MAYALT  | BG      | en   | .eu      | /products/maya-lt/subscribe?productLine=MAYALT&plc=MAYALT&term=1-YEAR&support=ADVANCED&quantity=1 |
  | MAYALT  | CY      | en   | .eu      | /products/maya-lt/subscribe?productLine=MAYALT&plc=MAYALT&term=1-YEAR&support=ADVANCED&quantity=1 |
  | MAYALT  | EE      | en   | .eu      | /products/maya-lt/subscribe?productLine=MAYALT&plc=MAYALT&term=1-YEAR&support=ADVANCED&quantity=1 |
  | MAYALT  | GR      | en   | .eu      | /products/maya-lt/subscribe?productLine=MAYALT&plc=MAYALT&term=1-YEAR&support=ADVANCED&quantity=1 |
  | MAYALT  | HR      | en   | .eu      | /products/maya-lt/subscribe?productLine=MAYALT&plc=MAYALT&term=1-YEAR&support=ADVANCED&quantity=1 |
  | MAYALT  | IE      | en   | .eu      | /products/maya-lt/subscribe?productLine=MAYALT&plc=MAYALT&term=1-YEAR&support=ADVANCED&quantity=1 |
  | MAYALT  | IS      | en   | .eu      | /products/maya-lt/subscribe?productLine=MAYALT&plc=MAYALT&term=1-YEAR&support=ADVANCED&quantity=1 |
  | MAYALT  | LI      | en   | .eu      | /products/maya-lt/subscribe?productLine=MAYALT&plc=MAYALT&term=1-YEAR&support=ADVANCED&quantity=1 |
  | MAYALT  | LT      | en   | .eu      | /products/maya-lt/subscribe?productLine=MAYALT&plc=MAYALT&term=1-YEAR&support=ADVANCED&quantity=1 |
  | MAYALT  | LU      | en   | .eu      | /products/maya-lt/subscribe?productLine=MAYALT&plc=MAYALT&term=1-YEAR&support=ADVANCED&quantity=1 |
  | MAYALT  | LV      | en   | .eu      | /products/maya-lt/subscribe?productLine=MAYALT&plc=MAYALT&term=1-YEAR&support=ADVANCED&quantity=1 |
  | MAYALT  | MT      | en   | .eu      | /products/maya-lt/subscribe?productLine=MAYALT&plc=MAYALT&term=1-YEAR&support=ADVANCED&quantity=1 |
  | MAYALT  | NL      | en   | .eu      | /products/maya-lt/subscribe?productLine=MAYALT&plc=MAYALT&term=1-YEAR&support=ADVANCED&quantity=1 |
  | MAYALT  | RO      | en   | .eu      | /products/maya-lt/subscribe?productLine=MAYALT&plc=MAYALT&term=1-YEAR&support=ADVANCED&quantity=1 |
  | MAYALT  | SI      | en   | .eu      | /products/maya-lt/subscribe?productLine=MAYALT&plc=MAYALT&term=1-YEAR&support=ADVANCED&quantity=1 |
  | MAYALT  | SK      | en   | .eu      | /products/maya-lt/subscribe?productLine=MAYALT&plc=MAYALT&term=1-YEAR&support=ADVANCED&quantity=1 |


@ASIAPACIFIC
Examples:
  | product | country | lang | site     | destination_page                                                                                  |
  | MAYALT  | AU      | en   | .com.au  | /products/maya-lt/subscribe?productLine=MAYALT&plc=MAYALT&term=1-YEAR&support=ADVANCED&quantity=1 |
  | MAYALT  | CK      | en   | .com.au  | /products/maya-lt/subscribe?productLine=MAYALT&plc=MAYALT&term=1-YEAR&support=ADVANCED&quantity=1 |
  | MAYALT  | MH      | en   | .com.au  | /products/maya-lt/subscribe?productLine=MAYALT&plc=MAYALT&term=1-YEAR&support=ADVANCED&quantity=1 |
  | MAYALT  | PG      | en   | .com.au  | /products/maya-lt/subscribe?productLine=MAYALT&plc=MAYALT&term=1-YEAR&support=ADVANCED&quantity=1 |
  | MAYALT  | TO      | en   | .com.au  | /products/maya-lt/subscribe?productLine=MAYALT&plc=MAYALT&term=1-YEAR&support=ADVANCED&quantity=1 |
  | MAYALT  | TV      | en   | .com.au  | /products/maya-lt/subscribe?productLine=MAYALT&plc=MAYALT&term=1-YEAR&support=ADVANCED&quantity=1 |
  | MAYALT  | WS      | en   | .com.au  | /products/maya-lt/subscribe?productLine=MAYALT&plc=MAYALT&term=1-YEAR&support=ADVANCED&quantity=1 |
  | MAYALT  | CN      | zh   | .com.cn  | /products/maya-lt/subscribe?productLine=MAYALT&plc=MAYALT&term=1-YEAR&support=ADVANCED&quantity=1 |
  | MAYALT  | JP      | ja   | .co.jp   | /products/maya-lt/subscribe?productLine=MAYALT&plc=MAYALT&term=1-YEAR&support=ADVANCED&quantity=1 |
  | MAYALT  | KR      | ko   | .co.kr   | /products/maya-lt/subscribe?productLine=MAYALT&plc=MAYALT&term=1-YEAR&support=ADVANCED&quantity=1 |
  | MAYALT  | TW      | zh   | .com.tw  | /products/maya-lt/subscribe?productLine=MAYALT&plc=MAYALT&term=1-YEAR&support=ADVANCED&quantity=1 |
  | MAYALT  | IN      | en   | .in      | /products/maya-lt/subscribe?productLine=MAYALT&plc=MAYALT&term=1-YEAR&support=ADVANCED&quantity=1 |
  | MAYALT  | NZ      | en   | .co.nz   | /products/maya-lt/subscribe?productLine=MAYALT&plc=MAYALT&term=1-YEAR&support=ADVANCED&quantity=1 |
  | MAYALT  | HK      | en   | .com.hk  | /products/maya-lt/subscribe?productLine=MAYALT&plc=MAYALT&term=1-YEAR&support=ADVANCED&quantity=1 |
# no config for MY or TH

@SOUTHAMERICA
Examples:
  | product | country | lang | site   | destination_page                                                                                  |
  | MAYALT  | US      | en   | .com   | /products/maya-lt/subscribe?productLine=MAYALT&plc=MAYALT&term=1-YEAR&support=ADVANCED&quantity=1 |
  | MAYALT  | CA      | en   | .ca/en | /products/maya-lt/subscribe?productLine=MAYALT&plc=MAYALT&term=1-YEAR&support=ADVANCED&quantity=1 |
  | MAYALT  | CA      | fr   | .ca/fr | /products/maya-lt/subscribe?productLine=MAYALT&plc=MAYALT&term=1-YEAR&support=ADVANCED&quantity=1 |
  | MAYALT  | MX      | es   | .mx    | /products/maya-lt/subscribe?productLine=MAYALT&plc=MAYALT&term=1-YEAR&support=ADVANCED&quantity=1 |

@MIDDLEEAST-AFRICA
Examples:
  | product | country | lang | site   | destination_page                                                                                  |
  | MAYALT  | ZA      | en   | .co.za | /products/maya-lt/subscribe?productLine=MAYALT&plc=MAYALT&term=1-YEAR&support=ADVANCED&quantity=1 |
  | MAYALT  | AE      | en   | .eu    | /products/maya-lt/subscribe?productLine=MAYALT&plc=MAYALT&term=1-YEAR&support=ADVANCED&quantity=1 |

@CENTRAL-SOUTHAMERICA
Examples:
  | product | country | lang | site    | destination_page                                                                                  |
  | MAYALT  | BR      | pt   | .com.br | /products/maya-lt/subscribe?productLine=MAYALT&plc=MAYALT&term=1-YEAR&support=ADVANCED&quantity=1 |

# SEPARATE SCENARIO FOR SINGAPORE:
# SG points to https://store.autodesk.com.sg

# NEED SEPERATE SCENARIO FOR LATINO AMERICA

# AR
# BO
# CL
# CO
# CR
# CU
# DO
# EC
# GT
# HN
# HT
# NI
# PA
# PE
# PY
# SV
# UY
# VE

#-------------------- SCENARIO 1 --------------------#
@STORE-NAMER

  Scenario Outline: 1- Validate countries that redirect to STORE-NAMER site
    Given the user visits an IPM URL with an existing "<product>" and "<country>" and "<lang>"
    Then the correct estore site page is loaded: "<site>" and "<destination_page>"
  #  Then the correct estore site page is loaded: "<store>"and "<product>" and "<lang>"

@SMOKE
  ##### Table #1 #####
  Examples:
    | product | country | lang | site       | destination_page                                                 |
    | MAYALT  | US      | en   | .com/store | /qa-automation/ipm-redirect/mayalt-responsive?productLine=MAYALT |
    | MAYALT  | CN      | en   | .com/store | ?productLine=MAYALT                                              |
    | MAYALT  | HK      | en   | .com/store | ?productLine=MAYALT                                              |
    | MAYALT  | MX      | en   | .com/store | ?productLine=MAYALT                                              |
    | MAYALT  | VE      | en   | .com/store | ?productLine=MAYALT                                              |
    | MAYALT  | ZA      | en   | .com/store | ?productLine=MAYALT                                              |


@PROD
  Examples:
    | product | country | lang | site       | destination_page                                              |
    | MAYALT  | US      | en   | .com       | /products/maya-lt/subscribe?productLine=MAYALT&plc=MAYALT&term=1-YEAR&support=ADVANCED&quantity=1 |
    | MAYALT  | CN      | en   | .com/store | ?productLine=MAYALT                                           |
    | MAYALT  | HK      | en   | .com/store | ?productLine=MAYALT                                           |
    | MAYALT  | MX      | en   | .com/store | ?productLine=MAYALT                                           |
    | MAYALT  | VE      | en   | .com/store | ?productLine=MAYALT                                           |
    | MAYALT  | ZA      | en   | .com/store | ?productLine=MAYALT                                           |


#-------------------- SCENARIO 2 --------------------#

# NEED TO FIX PATH IN RB FILE FOR SLE2

@STORE-CA
  Scenario Outline: 2- Validate countries that redirect to STORE-CA site
    Given the user visits an IPM URL with an existing "<product>" and "<country>" and "<lang>"
    Then the correct estore site page is loaded: "<site>" and "<destination_page>"
  #  Then the correct estore site page is loaded: "<store>"and "<product>" and "<lang>"

@SMOKE
  Examples:
    | product | country | lang | site         | destination_page                                                 |
    | MAYALT  | CA      | en   | .ca/en/store | /qa-automation/ipm-redirect/mayalt-responsive?productLine=MAYALT |
    | MAYALT  | CA      | fr   | .ca/fr/store | /qa-automation/ipm-redirect/mayalt-responsive?productLine=MAYALT |


@PROD
  Examples:
    | product | country | lang | site   | destination_page                                                                                  |
    | MAYALT  | CA      | en   | .ca/en | /products/maya-lt/subscribe?productLine=MAYALT&plc=MAYALT&term=1-YEAR&support=ADVANCED&quantity=1 |
    | MAYALT  | CA      | fr   | .ca/fr | /products/maya-lt/subscribe?productLine=MAYALT&plc=MAYALT&term=1-YEAR&support=ADVANCED&quantity=1 |


#-------------------- SCENARIO 3 --------------------#
@STORE-DE

  Scenario Outline: 3- Validate countries that redirect to STORE-DE site
    Given the user visits an IPM URL with an existing "<product>" and "<country>" and "<lang>"
    Then the correct estore site page is loaded: "<site>" and "<destination_page>"
  #  Then the correct estore site page is loaded: "<store>"and "<product>" and "<lang>"

@SMOKE
  Examples:
    | product | country | lang | site      | destination_page                                                 |
    | MAYALT  | DE      | de   | .de/store | /qa-automation/ipm-redirect/mayalt-responsive?productLine=MAYALT |
    | MAYALT  | AT      | de   | .de/store | /qa-automation/ipm-redirect/mayalt-responsive?productLine=MAYALT |

@REGRESSION
  Examples:
    | product | country | lang | site      | destination_page                                                 |
    | MAYALT  | CH      | de   | .de/store | /qa-automation/ipm-redirect/mayalt-responsive?productLine=MAYALT |
    | MAYALT  | LI      | en   | .de/store | /qa-automation/ipm-redirect/mayalt-responsive?productLine=MAYALT |
    | MAYALT  | LU      | en   | .de/store | /qa-automation/ipm-redirect/mayalt-responsive?productLine=MAYALT |

@PROD
  Examples:
    | product | country | lang | site | destination_page                                                                                  |
    | MAYALT  | DE      | de   | .de  | /products/maya-lt/subscribe?productLine=MAYALT&plc=MAYALT&term=1-YEAR&support=ADVANCED&quantity=1 |
    | MAYALT  | AT      | de   | .de  | /products/maya-lt/subscribe?productLine=MAYALT&plc=MAYALT&term=1-YEAR&support=ADVANCED&quantity=1 |

# Replace PROD URLS if different from SLE2/PT

#-------------------- SCENARIO 4 --------------------#
@STORE-ES

  Scenario Outline: 4- Validate countries that redirect to STORE-ES site
    Given the user visits an IPM URL with an existing "<product>" and "<country>" and "<lang>"
    Then the correct estore site page is loaded: "<site>" and "<destination_page>"
  #  Then the correct estore site page is loaded: "<store>" and "<product>" and "<lang>"

@SMOKE
  Examples:
    | product | country | lang | site      | destination_page                                                       |
    | MAYALT  | ES      | es   | .es/store | /qa-automation/ipm-redirect/mayalt-responsive?productLine=MAYALT |

@PROD
  Examples:
    | product | country | lang | site | destination_page                                                                                  |
    | MAYALT  | ES      | es   | .es  | /products/maya-lt/subscribe?productLine=MAYALT&plc=MAYALT&term=1-YEAR&support=ADVANCED&quantity=1 |


#-------------------- SCENARIO 5 --------------------#
@STORE-FR

  Scenario Outline: 5- Validate countries that redirect to STORE-FR site
    Given the user visits an IPM URL with an existing "<product>" and "<country>" and "<lang>"
    Then the correct estore site page is loaded: "<site>" and "<destination_page>"
  #  Then the correct estore site page is loaded: "<store>"and "<product>" and "<lang>"

@SMOKE
  Examples:
    | product | country | lang | site     | destination_page                                                       |
    | MAYALT  | FR      | fr   | .fr/store | /qa-automation/ipm-redirect/mayalt-responsive?productLine=MAYALT |
    | MAYALT  | BE      | fr   | .fr/store | /qa-automation/ipm-redirect/mayalt-responsive?productLine=MAYALT |

@PROD
  Examples:
    | product | country | lang | site | destination_page                                                    |
    | MAYALT  | FR      | fr   | .fr  | /products/maya-lt/subscribe?productLine=MAYALT&plc=MAYALT&term=1-YEAR&support=ADVANCED&quantity=1 |
    | MAYALT  | BE      | fr   | .fr  | /products/maya-lt/subscribe?productLine=MAYALT&plc=MAYALT&term=1-YEAR&support=ADVANCED&quantity=1 |


#-------------------- SCENARIO 6 --------------------#
@STORE-IT

  Scenario Outline: 6- Validate countries that redirect to STORE-IT site
    Given the user visits an IPM URL with an existing "<product>" and "<country>" and "<lang>"
    Then the correct estore site page is loaded: "<site>" and "<destination_page>"
  #  Then the correct estore site page is loaded: "<store>"and "<product>" and "<lang>"

@SMOKE
  Examples:
    | product | country | lang | site      | destination_page                                                 |
    | MAYALT  | IT      | it   | .it/store | /qa-automation/ipm-redirect/mayalt-responsive?productLine=MAYALT |


@PROD
  Examples:
    | product | country | lang | site | destination_page                                                                                  |
    | MAYALT  | IT      | it   | .it  | /products/maya-lt/subscribe?productLine=MAYALT&plc=MAYALT&term=1-YEAR&support=ADVANCED&quantity=1 |

# Replace PROD URLS if different from SLE2/PT

#-------------------- SCENARIO 7 --------------------#
@STORE-UK

  Scenario Outline: 7- Validate countries that redirect to STORE-UK site
    Given the user visits an IPM URL with an existing "<product>" and "<country>" and "<lang>"
    Then the correct estore site page is loaded: "<site>" and "<destination_page>"
  #  Then the correct estore site page is loaded: "<store>"and "<product>" and "<lang>"

@SMOKE
  Examples:
    | product | country | lang | site         | destination_page                                                       |
    | MAYALT  | GB      | en   | .co.uk/store | /qa-automation/ipm-redirect/mayalt-responsive?productLine=MAYALT |

@PROD
  Examples:
    | product | country | lang | site   | destination_page                                                                                  |
    | MAYALT  | GB      | en   | .co.uk | /products/maya-lt/subscribe?productLine=MAYALT&plc=MAYALT&term=1-YEAR&support=ADVANCED&quantity=1 |



#-------------------- SCENARIO 8 --------------------#

@STORE-EU
  Scenario Outline: 8- Validate countries that redirect to STORE-EU site
    Given the user visits an IPM URL with an existing "<product>" and "<country>" and "<lang>"
    Then the correct estore site page is loaded: "<site>" and "<destination_page>"
   # Then the correct estore site page is loaded: "<store>"and "<product>" and "<lang>"

@SMOKE
  Examples:
    | product | country | lang | site     | destination_page                                                  |
    | MAYALT  | IE      | en   | .eu/store | /qa-automation/ipm-redirect/mayalt-responsive?productLine=MAYALT |
    | MAYALT  | NL      | nl   | .eu/store | /qa-automation/ipm-redirect/mayalt-responsive?productLine=MAYALT |
    | MAYALT  | NL      | en   | .eu/store | /qa-automation/ipm-redirect/mayalt-responsive?productLine=MAYALT |
    | MAYALT  | PL      | pl   | .eu/store | /qa-automation/ipm-redirect/mayalt-responsive?productLine=MAYALT |


@REGRESSION
  Examples:
    | product | country | lang | site     | destination_page                                                  |
    | MAYALT  | BG      | en   | .eu/store | /qa-automation/ipm-redirect/mayalt-responsive?productLine=MAYALT |
    | MAYALT  | CY      | en   | .eu/store | /qa-automation/ipm-redirect/mayalt-responsive?productLine=MAYALT |
    | MAYALT  | CZ      | cs   | .eu/store | /qa-automation/ipm-redirect/mayalt-responsive?productLine=MAYALT |
    | MAYALT  | DK      | en   | .eu/store | /qa-automation/ipm-redirect/mayalt-responsive?productLine=MAYALT |
    | MAYALT  | EE      | en   | .eu/store | /qa-automation/ipm-redirect/mayalt-responsive?productLine=MAYALT |
    | MAYALT  | FI      | fi   | .eu/store | /qa-automation/ipm-redirect/mayalt-responsive?productLine=MAYALT |
    | MAYALT  | GR      | gr   | .eu/store | /qa-automation/ipm-redirect/mayalt-responsive?productLine=MAYALT |
    | MAYALT  | HR      | en   | .eu/store | /qa-automation/ipm-redirect/mayalt-responsive?productLine=MAYALT |
    | MAYALT  | HU      | hu   | .eu/store | /qa-automation/ipm-redirect/mayalt-responsive?productLine=MAYALT |
    | MAYALT  | IS      | en   | .eu/store | /qa-automation/ipm-redirect/mayalt-responsive?productLine=MAYALT |
    | MAYALT  | LV      | en   | .eu/store | /qa-automation/ipm-redirect/mayalt-responsive?productLine=MAYALT |
    | MAYALT  | LT      | en   | .eu/store | /qa-automation/ipm-redirect/mayalt-responsive?productLine=MAYALT |
    | MAYALT  | MT      | en   | .eu/store | /qa-automation/ipm-redirect/mayalt-responsive?productLine=MAYALT |
    | MAYALT  | NO      | no   | .eu/store | /qa-automation/ipm-redirect/mayalt-responsive?productLine=MAYALT |
    | MAYALT  | PT      | pt   | .eu/store | /qa-automation/ipm-redirect/mayalt-responsive?productLine=MAYALT |
    | MAYALT  | RO      | en   | .eu/store | /qa-automation/ipm-redirect/mayalt-responsive?productLine=MAYALT |
    | MAYALT  | SK      | en   | .eu/store | /qa-automation/ipm-redirect/mayalt-responsive?productLine=MAYALT |
    | MAYALT  | SI      | en   | .eu/store | /qa-automation/ipm-redirect/mayalt-responsive?productLine=MAYALT |
    | MAYALT  | SE      | sv   | .eu/store | /qa-automation/ipm-redirect/mayalt-responsive?productLine=MAYALT |


@PROD
  Examples:
    | product | country | lang | site   | destination_page                                                                                  |
    | MAYALT  | IE      | en   | .eu    | /products/maya-lt/subscribe?productLine=MAYALT&plc=MAYALT&term=1-YEAR&support=ADVANCED&quantity=1 |
    | MAYALT  | NL      | nl   | .eu    | /products/maya-lt/subscribe?productLine=MAYALT&plc=MAYALT&term=1-YEAR&support=ADVANCED&quantity=1 |
    | MAYALT  | NL      | en   | .eu    | /products/maya-lt/subscribe?productLine=MAYALT&plc=MAYALT&term=1-YEAR&support=ADVANCED&quantity=1 |
    | MAYALT  | PL      | pl   | .eu    | /products/maya-lt/subscribe?productLine=MAYALT&plc=MAYALT&term=1-YEAR&support=ADVANCED&quantity=1 |

######################## SCENARIO 9 #########################
# Note: only case where QA/STG also point to PROD env.
@APAC
  Scenario Outline: 9- Validate countries that redirect to APAC STORES
    Given the user visits an IPM URL with an existing "<product>" and "<country>" and "<lang>"
    Then the correct APAC Home page "<store>" is loaded

@SMOKE @PROD
  Examples:
    | product | country | lang | store                                                                              |
    | MAYALT  | AU      | en   | https://store.autodesk.com.au/store/adsk/en_AU/DisplayHomePage?productLine=MAYALT  |
    | MAYALT  | BR      | pt   | https://store.autodesk.com.br/store/adskbr/DisplayHomePage?productLine=MAYALT      |
    | MAYALT  | JP      | jp   | https://store.autodesk.co.jp/store/adskjp/ja_JP/DisplayHomePage?productLine=MAYALT |
    | MAYALT  | KR      | kr   | https://store.autodesk.co.kr/store/adskkr/ko_KR/DisplayHomePage?productLine=MAYALT |
    | MAYALT  | NZ      | en   | https://store.autodesk.com.au/store/adsk/en_AU/DisplayHomePage?productLine=MAYALT  |
    | MAYALT  | SG      | en   | https://store.autodesk.com.sg/store/adsk/en_SG/DisplayHomePage?productLine=MAYALT  |


######################## SCENARIO 10 #########################
# Note1: only case where QA/STG also point to PROD env.
# Note2: EU countries: Reseller page is from .co.uk since no .eu country exists on DC
# Note3: Prod adds the language param to url but now it appears SLE2 and PT no longer add it where it used to.
# Note4: CA on Prod will still redirect to .com/store or .com/resellers until the STORE-CA is live.

# EX URL: http://www-sle2.awsism.autodesk.com/services/estore/redirect?productLine=BLA&country=CA&language=en
# EX URL: http://www.autodesk.com/services/estore/redirect?productLine=BLA&country=DE&language=de

@RESELLERS
  Scenario Outline: 10- Validate Redirects to Reseller page when Product Page is not available
    Given the user visits an IPM URL with an existing "<product>" and "<country>" and "<lang>"
    Then the correct reseller page is loaded: "<reseller>"

@SMOKE @PROD
  Examples:
    | product | country | lang | reseller                                                               |
    | BLA     | US      | en   | https://www.autodesk.com/partners/locate-a-reseller?productLine=BLA    |
    | BLA     | CA      | en   | https://www.autodesk.ca/en/resellers/locate-a-reseller?productLine=BLA |
    | BLA     | CA      | fr   | https://www.autodesk.ca/fr/resellers/locate-a-reseller?productLine=BLA |
    | BLA     | GB      | en   | https://www.autodesk.co.uk/resellers/locate-a-reseller?productLine=BLA |
    | BLA     | DE      | de   | https://www.autodesk.de/resellers/locate-a-reseller?productLine=BLA    |
    | BLA     | ES      | es   | https://www.autodesk.es/resellers/locate-a-reseller?productLine=BLA    |
    | BLA     | FR      | fr   | https://www.autodesk.fr/resellers/locate-a-reseller?productLine=BLA    |
    | BLA     | IT      | it   | https://www.autodesk.it/resellers/locate-a-reseller?productLine=BLA    |

@REGRESSION
  Examples:
    | product | country | lang | reseller                                                               |
    | BLA     | SE      | sv   | https://www.autodesk.co.uk/resellers/locate-a-reseller?productLine=BLA |
    | BLA     | IE      | en   | https://www.autodesk.co.uk/resellers/locate-a-reseller?productLine=BLA |
    | BLA     | AT      | de   | https://www.autodesk.de/resellers/locate-a-reseller?productLine=BLA    |
    | BLA     | LI      | en   | https://www.autodesk.de/resellers/locate-a-reseller?productLine=BLA    |
    | BLA     | LU      | en   | https://www.autodesk.de/resellers/locate-a-reseller?productLine=BLA    |
    | BLA     | CH      | de   | https://www.autodesk.de/resellers/locate-a-reseller?productLine=BLA    |
    | BLA     | BE      | fr   | https://www.autodesk.fr/resellers/locate-a-reseller?productLine=BLA    |
    | BLA     | BE      | nl   | https://www.autodesk.fr/resellers/locate-a-reseller?productLine=BLA    |


######################## SCENARIO 11 #########################
#### EDGE CASE 1 ####
# https://www-sle2.awsism.autodesk.com/services/estore/redirect?productLine=MAYALT&country=US&language=en&test1=t1&test2=t2
# Points to reseller if page does not exist: http://www-sle2.awsism.autodesk.com/services/estore/redirect?productLine=BLA&country=US&language=en
@StorageClear
#@SessionStorageClear

  Scenario Outline: 11- Validate parameters are passed to the product page - Edge case1
    Given the user visits an IPM URL with additional params "<product>" and "<country>" and "<lang>" and "<param1>" and "<param2>"
    Then the correct estore site page is loaded: "<site>" and "<destination_page>"
  #  Then the correct estore site page is loaded: "<store>"and "<product>" and "<lang>"

@SMOKE
  Examples:
    | product | country | lang | param1    | param2    | site       | destination_page                                                                   |
    | MAYALT  | US      | en   | &test1=t1 | &test2=t2 | .com/store | /qa-automation/ipm-redirect/mayalt-responsive?productLine=MAYALT&test1=t1&test2=t2 |

#@PROD
# CURRENTLY FAILING, PARAMS NOT PASSED! commented out for now to investigate.
  Examples:
    | product | country | lang | param1    | param2    | site | destination_page                                                                                                   |
    | MAYALT  | US      | en   | test1=t1 | &test2=t2 | .com | /products/maya-lt/subscribe?productLine=MAYALT&test1=t1&test2=t2&plc=MAYALT&term=1-YEAR&support=ADVANCED&quantity=1 |


######################## SCENARIO 12 #########################
#### EDGE CASE 2 ####
# PROD: https://www.autodesk.com/services/estore/redirect?test1=t1&productLine=MAYALT&country=US&language=en&test2=t2
# PT: https://www-pt.awsism.autodesk.com/services/estore/redirect?test1=t1&productLine=MAYALT&country=US&language=en&test2=t2
# SLE2: https://www-sle2.awsism.autodesk.com/services/estore/redirect?test1=t1&productLine=MAYALT&country=US&language=en&test2=t2
@StorageClear
#@SessionStorageClear

  Scenario Outline: 12- Validate parameters are passed to the product page - Edge case2
    Given the user visits an IPM URL with a param before the PLC "<param1>" and "<product>" and "<country>" and "<lang>" and "<param2>"
    Then the correct estore site page is loaded: "<site>" and "<destination_page>"
  #  Then the correct estore site page is loaded: "<store>"and "<product>" and "<lang>"

@SMOKE
  Examples:
    | product | country | lang | param1   | param2    | site       | destination_page                                                                   |
    | MAYALT  | US      | en   | test1=t1 | &test2=t2 | .com/store | /qa-automation/ipm-redirect/mayalt-responsive?test1=t1&productLine=MAYALT&test2=t2 |

#@PROD
# CURRENTLY FAILING, PARAMS NOT PASSED! commented out for now to investigate.
  Examples:
    | product | country | lang | param1   | param2    | site | destination_page                                                                                                    |
    | MAYALT  | US      | en   | test1=t1 | &test2=t2 | .com | /products/maya-lt/subscribe?productLine=MAYALT&test1=t1&test2=t2&plc=MAYALT&term=1-YEAR&support=ADVANCED&quantity=1 |



######################## SCENARIO 13 #########################
# EX URL: https://www-sle2.awsism.autodesk.com/services/estore/redirect?productLine=MAYALT&country=CA
@STORE-CA
  Scenario Outline: 13- Validate countries that redirect to STORE-CA EN page when language is not specified.
    Given the user visits an IPM URL with an existing "<product>" and "<country>"
    Then the correct estore site page is loaded: "<site>" and "<destination_page>"
  #  Then the correct estore site page is loaded: "<store>"and "<product>" and "<lang>"

@SMOKE
  Examples:
    | product | country | site         | destination_page                                                       |
    | MAYALT  | CA      | .ca/en/store | /qa-automation/ipm-redirect/mayalt-responsive?productLine=MAYALT |

@PROD
  Examples:
    | product | country | site   | destination_page                                                                                  |
    | MAYALT  | CA      | .ca/en | /products/maya-lt/subscribe?productLine=MAYALT&plc=MAYALT&term=1-YEAR&support=ADVANCED&quantity=1 |


######################## SCENARIO 14 #########################
# Note1: only case where QA/STG also point to PROD env.
# Note2: EU countries: Reseller page is from .co.uk since no .eu country exists on DC
# Note3: Prod adds the language param to url but now it appears SLE2 and PT no longer add it where it used to.

# EX URL: https://www-sle2.awsism.autodesk.com/services/estore/redirect?productLine=BLA&country=CA
# EX URL: http://www.autodesk.com/services/estore/redirect?productLine=BLA&country=DE&language=de

@RESELLERS
@STORE-CA
  Scenario Outline: 14- Validate Redirects to Reseller page when Product Page is not available when language is not specified.
    Given the user visits an IPM URL with an existing "<product>" and "<country>"
    Then the correct reseller page is loaded: "<reseller>"

@SMOKE @PROD
  Examples:
    | product | country | reseller                                                               |
    | BLA     | CA      | https://www.autodesk.ca/en/resellers/locate-a-reseller?productLine=BLA |

#####################################################################################################

######################## SCENARIO 15 #########################
### REQUIRES THE PBL DISABLED PACKAGE INSTALLED to run these tests

@PBLDISABLED
# Example: https://www-sle2.awsism.autodesk.com/services/estore/redirect?productLine=MAYALT&country=CA&appKey=online
  Scenario Outline: 15- Validate countries that redirect to the Disabled PBL mapping without a product
  Given the user access an IPM URL with the given "<product>" and "<country>" and "<appKey>"
  Then the correct web site page is loaded: "<destination_page>"

#@SLE2
# Examples without a Product
  Examples:
    | product | country | appKey | destination_page                                                                               |
    |         | US      | online | https://www-sle2.awsism.autodesk.com/?appKey=online                                            |
    |         | AU      | online | https://www-au-sle2.awsism.autodesk.com/?appKey=online                                         |
    |         | AT      | online | https://www-de-sle2.awsism.autodesk.com/?appKey=online                                         |
    |         | BE      | online | https://www-sle2.awsism.autodesk.com/site-selector?country=BE&locale=nl_BE&appKey=online       |
    |         | BR      | online | https://www-br-sle2.awsism.autodesk.com/?appKey=online                                         |
    |         | BG      | online | https://www-eu-sle2.awsism.autodesk.com/store?appKey=online                                    |
    |         | CA      | online | https://www-ca-sle2.awsism.autodesk.com/en?appKey=online                                       |
    |         | CH      | online | https://www-de-sle2.awsism.autodesk.com/?appKey=online                                         |
    |         | CK      | online | https://www-au-sle2.awsism.autodesk.com/?appKey=online                                         |
    |         | HR      | online | https://www-eu-sle2.awsism.autodesk.com/store?appKey=online                                    |
    |         | CY      | online | https://www-eu-sle2.awsism.autodesk.com/store?appKey=online                                    |
    |         | DE      | online | https://www-de-sle2.awsism.autodesk.com/?appKey=online                                         |
    |         | DK      | online | https://www-dk-sle2.awsism.autodesk.com/?appKey=online                                         |
    |         | EE      | online | https://www-eu-sle2.awsism.autodesk.com/store?appKey=online                                    |
    |         | ES      | online | https://www-es-sle2.awsism.autodesk.com/?appKey=online                                         |
    |         | FI      | online | https://www-eu-sle2.awsism.autodesk.com/store?appKey=online                                    |
    |         | FR      | online | https://www-fr-sle2.awsism.autodesk.com/?appKey=online                                         |
    |         | GB      | online | https://www-uk-sle2.awsism.autodesk.com/?appKey=online                                         |
    |         | GR      | online | https://www-eu-sle2.awsism.autodesk.com/store?appKey=online                                    |
    |         | HU      | online | https://www-hu-sle2.awsism.autodesk.com/?appKey=online                                         |
    |         | IS      | online | https://www-eu-sle2.awsism.autodesk.com/store?appKey=online                                    |
    |         | IN      | online | https://www-in-sle2.awsism.autodesk.com/?appKey=online                                         |
    |         | IE      | online | https://www-eu-sle2.awsism.autodesk.com/store?appKey=online                                    |
    |         | IT      | online | https://www-it-sle2.awsism.autodesk.com/?appKey=online                                         |
    |         | JP      | online | https://www-jp-sle2.awsism.autodesk.com/?appKey=online                                         |
    |         | KR      | online | https://www-kr-sle2.awsism.autodesk.com/?appKey=online                                         |
    |         | LI      | online | https://www-eu-sle2.awsism.autodesk.com/store?appKey=online                                    |
    |         | LT      | online | https://www-eu-sle2.awsism.autodesk.com/store?appKey=online                                    |
    |         | LU      | online | https://www-eu-sle2.awsism.autodesk.com/store?appKey=online                                    |
    |         | LV      | online | https://www-eu-sle2.awsism.autodesk.com/store?appKey=online                                    |
    |         | MH      | online | https://www-au-sle2.awsism.autodesk.com/?appKey=online                                         |
    |         | MT      | online | https://www-eu-sle2.awsism.autodesk.com/store?appKey=online                                    |
    |         | MX      | online | https://www-mx-sle2.awsism.autodesk.com/?appKey=online                                         |
    |         | NL      | online | https://www-nl-sle2.awsism.autodesk.com/?appKey=online                                         |
    |         | NZ      | online | https://www-au-sle2.awsism.autodesk.com/?appKey=online                                         |
    |         | NO      | online | https://www-no-sle2.awsism.autodesk.com/?appKey=online                                         |
    |         | PG      | online | https://www-au-sle2.awsism.autodesk.com/?appKey=online                                         |
    |         | PL      | online | https://www-pl-sle2.awsism.autodesk.com/?appKey=online                                         |
    |         | PT      | online | https://www-pt-sle2.awsism.autodesk.com/?appKey=online                                         |
    |         | RO      | online | https://www-eu-sle2.awsism.autodesk.com/store?appKey=online                                    |
    |         | RU      | online | https://www-ru-sle2.awsism.autodesk.com/?appKey=online                                         |
    |         | SE      | online | https://www-se-sle2.awsism.autodesk.com/?appKey=online                                         |
# A second redirect break the following Singapore test in SLE2
#    |         | SG      | online | https://store.autodesk.com.sg/store/adsk/en_SG/DisplayHomePage?appKey=online                  |
    |         | SK      | online | https://www-eu-sle2.awsism.autodesk.com/store?appKey=online                                    |
    |         | SI      | online | https://www-eu-sle2.awsism.autodesk.com/store?appKey=online                                    |
    |         | TO      | online | https://www-au-sle2.awsism.autodesk.com/?appKey=online                                         |
    |         | TR      | online | https://www-tr-sle2.awsism.autodesk.com/?appKey=online                                         |
    |         | TV      | online | https://www-au-sle2.awsism.autodesk.com/?appKey=online                                         |
    |         | WS      | online | https://www-au-sle2.awsism.autodesk.com/?appKey=online                                         |

#@SLE2
# Examples with a Product
  Examples:
    | product | country | appKey | destination_page                                                                                                        |
    | MAYALT  | US      | online | https://www-sle2.awsism.autodesk.com/?appKey=online                                                                     |
    | MAYALT  | AU      | online | https://www-au-sle2.awsism.autodesk.com/?appKey=online                                                                  |
    | MAYALT  | AT      | online | https://www-de-sle2.awsism.autodesk.com/?appKey=online                                                                  |
    | MAYALT  | BE      | online | https://www-sle2.awsism.autodesk.com/site-selector?country=BE&locale=nl_BE&appKey=online                                |
    | MAYALT  | BR      | online | https://www-br-sle2.awsism.autodesk.com/?appKey=online                                                                  |
    | MAYALT  | BG      | online | https://www-sle2.awsism.autodesk.eu/store/qa-automation/ipm-redirect/mayalt-responsive?appKey=online&productLine=MAYALT |
    | MAYALT  | GB      | online | https://www-uk-sle2.awsism.autodesk.com/?appKey=online                                                                  |

@PT
  Examples:
    | product | country | appKey | destination_page                                                                                           |
    |         | US      | online | https://www-pt.autodesk.com/?appKey=online                                                                 |
    |         | BE      | online | https://www-pt.autodesk.com/site-selector?country=BE&locale=nl_BE&appKey=online                            |
    |         | DE      | online | https://www-pt.autodesk.de/?appKey=online                                                                  |
    |         | BG      | online | https://www-pt.autodesk.eu/store?appKey=online                                                             |
    | MAYALT  | BG      | online | https://www-pt.autodesk.eu/store/qa-automation/ipm-redirect/mayalt-responsive?appKey=online&productLine=MAYALT |
    |         | IT      | online | https://www-pt.autodesk.it/?appKey=online                                                                  |
    |         | IS      | online | https://www-pt.autodesk.eu/store?appKey=online                                                             |
    |         | RO      | online | https://www-pt.autodesk.eu/store?appKey=online                                                             |
# A second redirect break the following Singapore test in PT
#    |         | SG      | online | https://store.autodesk.com.sg/store/adsk/en_SG/DisplayHomePage?appKey=online                              |
    |         | MX      | online | https://www-pt.autodesk.mx/?appKey=online                                                                  |
    |         | WS      | online | https://www-pt.autodesk.com.au/?appKey=online                                                              |

@PROD
  Examples:
    | product | country | appKey | destination_page                                                                                            |
    |         | US      | online | https://www.autodesk.com/?appKey=online                                                                     |
    |         | BE      | online | https://www.autodesk.com/site-selector?country=BE&locale=nl_BE&appKey=online                                |
    |         | DE      | online | https://www.autodesk.de/?appKey=online                                                                      |
    |         | BG      | online | https://www.autodesk.eu/store?appKey=online                                                                 |
   # | MAYALT  | BG      | online | https://www.autodesk.eu/store/qa-automation/ipm-redirect/mayalt-responsive?appKey=online&productLine=MAYALT |
    |         | IT      | online | https://www.autodesk.it/?appKey=online                                                                      |
    |         | IS      | online | https://www.autodesk.eu/store?appKey=online                                                                 |
    |         | RO      | online | https://www.autodesk.eu/store?appKey=online                                                                 |
    |         | SG      | online | https://store.autodesk.com.sg/store/adsk/en_SG/DisplayHomePage?appKey=online                                |
    |         | MX      | online | https://www.autodesk.mx/?appKey=online                                                                      |
    |         | WS      | online | https://www.autodesk.com.au/?appKey=online                                                                  |

######################## SCENARIO 16 #########################
### REQUIRES THE PBL DISABLED PACKAGE INSTALLED to run these tests

@PBLDISABLED
# Example: https://www-sle2.awsism.autodesk.com/services/estore/redirect?country=CA&language=fr&appKey=online
# NOTE: language seems to be ignored
  Scenario Outline: 16- Validate countries that redirect to the Disabled PBL mapping with language parameters
    Given the user access an IPM URL with the given "<country>" and "<appKey>" and "<language>" but no Product
    Then the correct web site page is loaded: "<destination_page>"

@WIP
  Examples:
  | country | language  | appKey | destination_page                                                                           |
  | CA      | fr        | online | https://www-ca-sle2.awsism.autodesk.com/en?appKey=online                                   |
  | CA      | en        | online | https://www-ca-sle2.awsism.autodesk.com/en?appKey=online                                   |
  | BE      | nl        | online | https://www-sle2.awsism.autodesk.com/site-selector?country=BE&locale=nl_BE&appKey=online   |
  | BE      | fr        | online | https://www-sle2.awsism.autodesk.com/site-selector?country=BE&locale=nl_BE&appKey=online   |

    ######################## SCENARIO END #########################
