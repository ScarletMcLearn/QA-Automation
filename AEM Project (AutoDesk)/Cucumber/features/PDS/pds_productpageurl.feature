# PDS SLE2: https://web-sle-engineering-svc.awsism.autodesk.com/products/ACDIST?country=US&app=SRP&language=en
# PDS PT: https://web-pt-engineering-svc.autodesk.com/products/ACDIST?country=US&app=SRP&language=en
# PDS PROD: https://web-engineering-svc.autodesk.com/products/ACDIST?country=FR&app=ONLINE&language=fr
#***********************************************************************

@PDS
@ProductPageUrl

Feature: pds_productpageurl

  Validate the ProductPageUrl in PDS JSON.


 ######################## SCENARIO 1 #########################

  Scenario Outline: 1. ONLINE: Internal User validates the productPageUrl received in the PDS Json file.

    Given the user is on a PDS URL for "<product>" and "<appKey>" and "<country>"
    When the PDS response code is equal to 200
    Then validate that the correct productPageUrl "<productPageUrl>" for the Local Country is displayed

  @REGRESSION
  @PROD
    Examples:
      | product | appKey | country | productPageUrl                                                                             |
      | ACDIST  | ONLINE | US      | http://www.autodesk.com/services/estore/redirect?productLine=ACDIST&country=US&language=en |
      | ACDIST  | ONLINE | GB      | http://www.autodesk.com/services/estore/redirect?productLine=ACDIST&country=GB&language=en |
      | MAYALT  | ONLINE | JP      | http://www.autodesk.com/services/estore/redirect?productLine=MAYALT&country=JP&language=ja |




    Examples:
      | product | appKey | country | productPageUrl                                                                             |
      | MAYA    | ONLINE | AU      | http://www.autodesk.com/services/estore/redirect?productLine=MAYA&country=AU&language=en   |
      | ACDIST  | ONLINE | AT      | http://www.autodesk.com/services/estore/redirect?productLine=ACDIST&country=AT&language=de |
      | ACDIST  | ONLINE | BE      | http://www.autodesk.com/services/estore/redirect?productLine=ACDIST&country=BE&language=nl |
      | ACDIST  | ONLINE | BG      | http://www.autodesk.com/services/estore/redirect?productLine=ACDIST&country=BG&language=bg |
      | ACDIST  | ONLINE | BR      | http://www.autodesk.com/services/estore/redirect?productLine=ACDIST&country=BR&language=pt |
      | ACDIST  | ONLINE | CH      | http://www.autodesk.com/services/estore/redirect?productLine=ACDIST&country=CH&language=fr |
      | ACDIST  | ONLINE | CY      | http://www.autodesk.com/services/estore/redirect?productLine=ACDIST&country=CY&language=el |
      | ACDIST  | ONLINE | CZ      | http://www.autodesk.com/services/estore/redirect?productLine=ACDIST&country=CZ&language=cs |
      | ACDIST  | ONLINE | DE      | http://www.autodesk.com/services/estore/redirect?productLine=ACDIST&country=DE&language=de |
      | ACDIST  | ONLINE | DK      | http://www.autodesk.com/services/estore/redirect?productLine=ACDIST&country=DK&language=da |
      | ACDIST  | ONLINE | EE      | http://www.autodesk.com/services/estore/redirect?productLine=ACDIST&country=EE&language=et |
      | ACDIST  | ONLINE | ES      | http://www.autodesk.com/services/estore/redirect?productLine=ACDIST&country=ES&language=es |
      | ACDIST  | ONLINE | FI      | http://www.autodesk.com/services/estore/redirect?productLine=ACDIST&country=FI&language=fi |
      | ACDIST  | ONLINE | FR      | http://www.autodesk.com/services/estore/redirect?productLine=ACDIST&country=FR&language=fr |
      | ACDIST  | ONLINE | GR      | http://www.autodesk.com/services/estore/redirect?productLine=ACDIST&country=GR&language=el |
      | ACDIST  | ONLINE | HR      | http://www.autodesk.com/services/estore/redirect?productLine=ACDIST&country=HR&language=hr |
      | ACDIST  | ONLINE | HU      | http://www.autodesk.com/services/estore/redirect?productLine=ACDIST&country=HU&language=hu |
      | ACDIST  | ONLINE | IE      | http://www.autodesk.com/services/estore/redirect?productLine=ACDIST&country=IE&language=ga |
      | ACDIST  | ONLINE | IS      | http://www.autodesk.com/services/estore/redirect?productLine=ACDIST&country=IS&language=is |
      | ACDIST  | ONLINE | IT      | http://www.autodesk.com/services/estore/redirect?productLine=ACDIST&country=IT&language=it |
      | MAYA    | ONLINE | KR      | http://www.autodesk.com/services/estore/redirect?productLine=MAYA&country=KR&language=ko   |
      | ACDIST  | ONLINE | LI      | http://www.autodesk.com/services/estore/redirect?productLine=ACDIST&country=LI&language=en |
      | ACDIST  | ONLINE | LT      | http://www.autodesk.com/services/estore/redirect?productLine=ACDIST&country=LT&language=lt |
      | ACDIST  | ONLINE | LU      | http://www.autodesk.com/services/estore/redirect?productLine=ACDIST&country=LU&language=fr |
      | ACDIST  | ONLINE | LV      | http://www.autodesk.com/services/estore/redirect?productLine=ACDIST&country=LV&language=lv |
      | ACDIST  | ONLINE | MT      | http://www.autodesk.com/services/estore/redirect?productLine=ACDIST&country=MT&language=mt |
      | MAYA    | ONLINE | MX      | http://www.autodesk.com/services/estore/redirect?productLine=MAYA&country=MX&language=es   |
      | ACDIST  | ONLINE | NL      | http://www.autodesk.com/services/estore/redirect?productLine=ACDIST&country=NL&language=nl |
      | ACDIST  | ONLINE | NO      | http://www.autodesk.com/services/estore/redirect?productLine=ACDIST&country=NO&language=no |
      | ACDIST  | ONLINE | PL      | http://www.autodesk.com/services/estore/redirect?productLine=ACDIST&country=PL&language=pl |
      | ACDIST  | ONLINE | PT      | http://www.autodesk.com/services/estore/redirect?productLine=ACDIST&country=PT&language=pt |
      | ACDIST  | ONLINE | RO      | http://www.autodesk.com/services/estore/redirect?productLine=ACDIST&country=RO&language=ro |
      | ACDIST  | ONLINE | SE      | http://www.autodesk.com/services/estore/redirect?productLine=ACDIST&country=SE&language=sv |
      | ACDIST  | ONLINE | SI      | http://www.autodesk.com/services/estore/redirect?productLine=ACDIST&country=SI&language=sl |
      | ACDIST  | ONLINE | SK      | http://www.autodesk.com/services/estore/redirect?productLine=ACDIST&country=SK&language=sk |
 #| MAYALT   |   ONLINE    | TR         | http://www.autodesk.com/services/estore/redirect?productLine=MAYALT&country=TR&language=tr|



######################## SCENARIO 2 #########################
  @SRP
  Scenario Outline: 2. SRP: Internal User validates the productPageUrl received in the PDS Json file.

    Given the user is on a PDS URL for "<product>" and "<appKey>" and "<country>"
    When the PDS response code is equal to 200
    Then validate that the correct productPageUrl "<productPageUrl>" for the Local Country is displayed

  @REGRESSION
  @PROD
    Examples:
      | product | appKey | country | productPageUrl                                                                             |
      | ACDIST  | SRP    | US      | http://www.autodesk.com/services/estore/redirect?productLine=ACDIST&country=US&language=en |



    Examples:
      | product | appKey | country | productPageUrl                                                                             |
      | ACDIST  | SRP    | AT      | http://www.autodesk.com/services/estore/redirect?productLine=ACDIST&country=AT&language=de |
      | ACDIST  | SRP    | BE      | http://www.autodesk.com/services/estore/redirect?productLine=ACDIST&country=BE&language=nl |
      | ACDIST  | SRP    | CA      | http://www.autodesk.com/services/estore/redirect?productLine=ACDIST&country=CA&language=en |
      | ACDIST  | SRP    | CH      | http://www.autodesk.com/services/estore/redirect?productLine=ACDIST&country=CH&language=fr |
      | ACDIST  | SRP    | CZ      | http://www.autodesk.com/services/estore/redirect?productLine=ACDIST&country=CZ&language=cs |
      | ACDIST  | SRP    | DE      | http://www.autodesk.com/services/estore/redirect?productLine=ACDIST&country=DE&language=de |
      | ACDIST  | SRP    | DK      | http://www.autodesk.com/services/estore/redirect?productLine=ACDIST&country=DK&language=da |
      | ACDIST  | SRP    | ES      | http://www.autodesk.com/services/estore/redirect?productLine=ACDIST&country=ES&language=es |
      | ACDIST  | SRP    | FI      | http://www.autodesk.com/services/estore/redirect?productLine=ACDIST&country=FI&language=fi |
      | ACDIST  | SRP    | FR      | http://www.autodesk.com/services/estore/redirect?productLine=ACDIST&country=FR&language=fr |
      | ACDIST  | SRP    | GB      | http://www.autodesk.com/services/estore/redirect?productLine=ACDIST&country=GB&language=en |
      | ACDIST  | SRP    | GR      | http://www.autodesk.com/services/estore/redirect?productLine=ACDIST&country=GR&language=el |
      | ACDIST  | SRP    | HU      | http://www.autodesk.com/services/estore/redirect?productLine=ACDIST&country=HU&language=hu |
      | ACDIST  | SRP    | IE      | http://www.autodesk.com/services/estore/redirect?productLine=ACDIST&country=IE&language=ga |
      | ACDIST  | SRP    | IN      | http://www.autodesk.com/services/estore/redirect?productLine=ACDIST&country=IN&language=hi |
      | ACDIST  | SRP    | IT      | http://www.autodesk.com/services/estore/redirect?productLine=ACDIST&country=IT&language=it |
      | ACDIST  | SRP    | JP      | http://www.autodesk.com/services/estore/redirect?productLine=ACDIST&country=JP&language=ja |
      | ACDIST  | SRP    | MX      | http://www.autodesk.com/services/estore/redirect?productLine=ACDIST&country=MX&language=es |
      | ACDIST  | SRP    | MY      | http://www.autodesk.com/services/estore/redirect?productLine=ACDIST&country=MY&language=ms |
      | ACDIST  | SRP    | NL      | http://www.autodesk.com/services/estore/redirect?productLine=ACDIST&country=NL&language=nl |
      | ACDIST  | SRP    | NO      | http://www.autodesk.com/services/estore/redirect?productLine=ACDIST&country=NO&language=no |
      | ACDIST  | SRP    | PK      | http://www.autodesk.com/services/estore/redirect?productLine=ACDIST&country=PK&language=en |
      | ACDIST  | SRP    | PL      | http://www.autodesk.com/services/estore/redirect?productLine=ACDIST&country=PL&language=pl |
      | ACDIST  | SRP    | PT      | http://www.autodesk.com/services/estore/redirect?productLine=ACDIST&country=PT&language=pt |
      | ACDIST  | SRP    | RO      | http://www.autodesk.com/services/estore/redirect?productLine=ACDIST&country=RO&language=ro |
      | ACDIST  | SRP    | RU      | http://www.autodesk.com/services/estore/redirect?productLine=ACDIST&country=RU&language=ru |
      | ACDIST  | SRP    | SE      | http://www.autodesk.com/services/estore/redirect?productLine=ACDIST&country=SE&language=sv |
      | ACDIST  | SRP    | SG      | http://www.autodesk.com/services/estore/redirect?productLine=ACDIST&country=SG&language=en |
      | ACDIST  | SRP    | SI      | http://www.autodesk.com/services/estore/redirect?productLine=ACDIST&country=SI&language=sl |
      | ACDIST  | SRP    | SK      | http://www.autodesk.com/services/estore/redirect?productLine=ACDIST&country=SK&language=sk |
      | ACDIST  | SRP    | TR      | http://www.autodesk.com/services/estore/redirect?productLine=ACDIST&country=TR&language=tr |
      | ACDIST  | SRP    | TW      | http://www.autodesk.com/services/estore/redirect?productLine=ACDIST&country=TW&language=zh |
      | ACDIST  | SRP    | VN      | http://www.autodesk.com/services/estore/redirect?productLine=ACDIST&country=VN&language=vi |
      | ACDIST  | SRP    | ZA      | http://www.autodesk.com/services/estore/redirect?productLine=ACDIST&country=ZA&language=en |
