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


Feature: IPM redirect to local site DC product page or Reseller page part 3


######################## SCENARIO 2 #########################
# EX URL: http://www-sle2.awsism.autodesk.com/services/ecommerce/redirect?productLine=BLA&country=CA&language=en
# EX URL: http://www.autodesk.com/services/ecommerce/redirect?productLine=BLA&country=DE&language=de



######################## SCENARIO 2 #########################
  Scenario Outline: 2- Validate countries that redirect to Latinoamerica site
    Given the user visits an IPM URL to DC with an existing "RDRT" and "<country>" and "<lang>"
    Then the latinoamerica page is loaded: "/qa-automation/fsb-buy/buy-container/ipm-redirect"

@SMOKE
  Examples:
    | country | lang |
    | AR      | es   |
    | BO      | es   |
    | CL      | es   |
    | CO      | es   |
    | CR      | es   |
    | CU      | es   |
    | DO      | es   |
    | EC      | es   |
    | GT      | es   |
    | HN      | es   |
    | HT      | es   |
    | NI      | es   |
    | PA      | es   |
    | PE      | es   |
    | PY      | es   |
    | SV      | es   |
    | UY      | es   |
    | VE      | es   |