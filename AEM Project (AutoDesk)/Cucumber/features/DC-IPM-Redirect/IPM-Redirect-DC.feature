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


Feature: IPM redirect to local site DC product page or Reseller page part 1



#-------------------- SCENARIO 1 --------------------#
  Scenario Outline: 1- Validate countries that redirect to DC sites
    Given the user visits an IPM URL to DC with an existing "RDRT" and "<country>" and "<lang>"
    Then the correct site page is loaded: "<site>" and "/qa-automation/fsb-buy/buy-container/ipm-redirect"

@SMOKE
  Examples:
    | country | lang | site    |
    | US      | en   | .com    |
    | ES      | es   | .es     |
    | FR      | fr   | .fr     |
    | GB      | en   | .co.uk  |
    | CN      | en   | .com.cn |

#Languages
    | CA      | en   | .ca/en  |
    | CA      | fr   | .ca/fr  |
    | NL      | nl   | .nl     |
    | NL      | en   | .eu     |
    | BE      | nl   | .be/nl  |
    | BE      | fr   | .be/fr  |
    #| CH      | de   | .ch/de  |
    #| CH      | fr   | .ch/fr  |
    #| CH      | it   | .ch/it  |

#Germany
    | DE      | de   | .de     |
    | AT      | de   | .de     |

#Australia
    | AU      | en   | .com.au |
    | CK      | en   | .com.au |
    | MH      | en   | .com.au |
    | PG      | en   | .com.au |
    | TO      | en   | .com.au |
    | TV      | en   | .com.au |
    | WS      | en   | .com.au |

#EU
    | BG      | en   | .eu     |
    | CY      | en   | .eu     |
    | EE      | en   | .eu     |
    | GR      | gr   | .eu     |
    | HR      | en   | .eu     |
    | IE      | en   | .eu     |
    | IS      | en   | .eu     |
    | LI      | en   | .eu     |
    | LT      | en   | .eu     |
    | LU      | en   | .eu     |
    | LV      | en   | .eu     |
    | MT      | en   | .eu     |
    | RO      | en   | .eu     |
    | SK      | en   | .eu     |
    | SI      | en   | .eu     |
    | NL      | en   | .eu     |

    | IT      | it   | .it     |
    | CZ      | cs   | .cz     |
    | DK      | da   | .dk     |
    | FI      | fi   | .fi     |
    | HU      | hu   | .hu     |
    | NO      | no   | .no     |
    | PL      | pl   | .pl     |
    | PT      | pt   | .pt     |
    | SE      | sv   | .se     |
    | BR      | pt   | .com.br |
    | HK      | en   | .com.hk |
    | IN      | en   | .in     |
    | JP      | ja   | .co.jp  |
    | KR      | ko   | .co.kr |
    | MX      | es   | .mx     |
    | NZ      | en   | .co.nz  |
    | RU      | ru   | .ru     |
    #| SG      | en   | .com.sg |
    | TR      | tr   | .com.tr |
    | TW      | zh   | .com.tw |
    | ZA      | en   | .co.za  |