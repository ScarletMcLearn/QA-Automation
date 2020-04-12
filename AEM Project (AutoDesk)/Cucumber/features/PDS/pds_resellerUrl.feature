# PDS SLE2: https://web-sle-engineering-svc.awsism.autodesk.com/products/ACDIST?country=US&app=SRP&language=en
# PDS PT: https://web-pt-engineering-svc.autodesk.com/products/ACDIST?country=US&app=SRP&language=en
# PDS PROD: https://web-engineering-svc.autodesk.com/products/ACDIST?country=FR&app=ONLINE&language=fr
#***********************************************************************

@PDS
@ResellerUrl
@Reseller

Feature: pds_resellerUrl

  Validate the resellerUrl in PDS JSON.

######################## SCENARIO 1 #########################
  Scenario Outline: 1. ONLINE: Internal User validates the resellerUrl received in the PDS Json file.

    Given the user is on a PDS URL for "<product>" and "<appKey>" and "<country>"
    When the PDS response code is equal to 200
    Then validate the correct resellerurl "<resellerurl>" for the Local Country is displayed

  @REGRESSION
  @PROD
    Examples:
      | product | appKey | country | resellerurl                                                                                      |
      | ACDIST  | ONLINE | US      | http://www.autodesk.com/resellers/locate-a-reseller?product=ACDIST&lang=en&cntr=United+States    |
      | ACDIST  | ONLINE | GB      | http://www.autodesk.co.uk/resellers/locate-a-reseller?product=ACDIST&lang=en&cntr=United+Kingdom |
      | ACDIST  | ONLINE | CA      | http://www.autodesk.ca/en/resellers/locate-a-reseller?product=ACDIST&lang=en&cntr=Canada         |

    Examples:
      | product | appKey | country | resellerurl                                                                                                        |
      | MAYA    | ONLINE | AU      | http://www.autodesk.com.au/resellers/locate-a-reseller?product=MAYA&lang=en&cntr=Australia                         |
      | ACDIST  | ONLINE | AT      | http://www.autodesk.at/resellers/locate-a-reseller?product=ACDIST&lang=de&cntr=Austria                             |
      | ACDIST  | ONLINE | BE      | http://www.autodesk.be/nl/resellers/locate-a-reseller?product=ACDIST&lang=nl&cntr=Belgium                          |
      | ACDIST  | ONLINE | BR      | http://www.autodesk.com.br/resellers/locate-a-reseller?product=ACDIST&lang=pt&cntr=Brazil                          |
      | ACDIST  | ONLINE | CZ      | http://www.autodesk.cz/resellers/locate-a-reseller?product=ACDIST&lang=cs&cntr=Czech+Republic                      |
      | ACDIST  | ONLINE | DE      | http://www.autodesk.de/resellers/locate-a-reseller?product=ACDIST&lang=de&cntr=Germany                             |
      | ACDIST  | ONLINE | DK      | http://www.autodesk.dk/resellers/locate-a-reseller?product=ACDIST&lang=da&cntr=Denmark                             |
      | ACDIST  | ONLINE | ES      | http://www.autodesk.es/resellers/locate-a-reseller?product=ACDIST&lang=es&cntr=Spain                               |
      | ACDIST  | ONLINE | FI      | http://www.autodesk.fi/resellers/locate-a-reseller?product=ACDIST&lang=fi&cntr=Finland                             |
      | ACDIST  | ONLINE | FR      | http://www.autodesk.fr/resellers/locate-a-reseller?product=ACDIST&lang=fr&cntr=France                              |
      | ACDIST  | ONLINE | GB      | http://www.autodesk.co.uk/resellers/locate-a-reseller?product=ACDIST&lang=en&cntr=United+Kingdom                   |
      | ACDIST  | ONLINE | HU      | http://www.autodesk.hu/resellers/locate-a-reseller?product=ACDIST&lang=hu&cntr=Hungary                             |
      | ACDIST  | ONLINE | IT      | http://www.autodesk.it/resellers/locate-a-reseller?product=ACDIST&lang=it&cntr=Italy                               |
      | MAYALT  | ONLINE | JP      | http://www.autodesk.co.jp/resellers/locate-a-reseller?product=MAYALT&lang=ja&cntr=Japan                            |
      | MAYA    | ONLINE | KR      | http://www.autodesk.co.kr/resellers/locate-a-reseller?product=MAYA&lang=ko&cntr=Korea%2C+Democratic+People%27s+Rep |
      | MAYA    | ONLINE | MX      | http://www.autodesk.mx/resellers/locate-a-reseller?product=MAYA&lang=es&cntr=Mexico                                |
      | ACDIST  | ONLINE | NL      | http://www.autodesk.nl/resellers/locate-a-reseller?product=ACDIST&lang=nl&cntr=Netherlands                         |
      | ACDIST  | ONLINE | NO      | http://www.autodesk.no/resellers/locate-a-reseller?product=ACDIST&lang=no&cntr=Norway                              |
      | ACDIST  | ONLINE | PL      | http://www.autodesk.pl/resellers/locate-a-reseller?product=ACDIST&lang=pl&cntr=Poland                              |
      | ACDIST  | ONLINE | PT      | http://www.autodesk.pt/resellers/locate-a-reseller?product=ACDIST&lang=pt&cntr=Portugal                            |
      | MAYA    | ONLINE | RU      | http://www.autodesk.ru/resellers/locate-a-reseller?product=MAYA&lang=ru&cntr=Russian+Federation                    |
      | ACDIST  | ONLINE | SE      | http://www.autodesk.se/resellers/locate-a-reseller?product=ACDIST&lang=sv&cntr=Sweden                              |
      | ACDIST  | ONLINE | BG      | http://www.autodesk.com/resellers/locate-a-reseller?product=ACDIST&lang=bg&cntr=Bulgaria                           |
      | ACDIST  | ONLINE | CH      | http://www.autodesk.ch/fr/resellers/locate-a-reseller?product=ACDIST&lang=fr&cntr=Switzerland                      |
      | ACDIST  | ONLINE | CY      | http://www.autodesk.com/resellers/locate-a-reseller?product=ACDIST&lang=el&cntr=Cyprus                             |
      | ACDIST  | ONLINE | EE      | http://www.autodesk.com/resellers/locate-a-reseller?product=ACDIST&lang=et&cntr=Estonia                            |
      | ACDIST  | ONLINE | GR      | http://www.autodesk.com/resellers/locate-a-reseller?product=ACDIST&lang=el&cntr=Greece                             |
      | ACDIST  | ONLINE | HR      | http://www.autodesk.com/resellers/locate-a-reseller?product=ACDIST&lang=hr&cntr=Croatia                            |
      | ACDIST  | ONLINE | IE      | http://www.autodesk.com/resellers/locate-a-reseller?product=ACDIST&lang=ga&cntr=Ireland                            |
      | ACDIST  | ONLINE | IS      | http://www.autodesk.com/resellers/locate-a-reseller?product=ACDIST&lang=is&cntr=Iceland                            |
      | ACDIST  | ONLINE | LI      | http://www.autodesk.com/resellers/locate-a-reseller?product=ACDIST&lang=en&cntr=Liechtenstein                      |
      | ACDIST  | ONLINE | LT      | http://www.autodesk.com/resellers/locate-a-reseller?product=ACDIST&lang=lt&cntr=Lithuania                          |
      | ACDIST  | ONLINE | LU      | http://www.autodesk.com/resellers/locate-a-reseller?product=ACDIST&lang=fr&cntr=Luxembourg                         |
      | ACDIST  | ONLINE | LV      | http://www.autodesk.com/resellers/locate-a-reseller?product=ACDIST&lang=lv&cntr=Latvia                             |
      | ACDIST  | ONLINE | MT      | http://www.autodesk.com/resellers/locate-a-reseller?product=ACDIST&lang=mt&cntr=Malta                              |
      | ACDIST  | ONLINE | RO      | http://www.autodesk.com/resellers/locate-a-reseller?product=ACDIST&lang=ro&cntr=Romania                            |
      | ACDIST  | ONLINE | SI      | http://www.autodesk.com/resellers/locate-a-reseller?product=ACDIST&lang=sl&cntr=Slovenia                           |
      | ACDIST  | ONLINE | SK      | http://www.autodesk.sk/resellers/locate-a-reseller?product=ACDIST&lang=sk&cntr=Slovakia                            |

 # "CH" NOTE: domain .ch redirects to .de
 # "SK" NOTE: .sk domain redirects to .cz
 # "AT" NOTE: domain .at redirects to .de
 # "NZ" NOTE: reseller page on http://www.autodesk.co.nz/resellers/locate-a-reseller will need to be created and publishers to add redirect to .com.au


 ######################## SCENARIO 2 #########################
  @SRP
  Scenario Outline: 2. SRP: Internal User validates the resellerUrl received in the PDS Json file.

    Given the user is on a PDS URL for "<product>" and "<appKey>" and "<country>" and "<language>"
    When the PDS response code is equal to 200
    Then validate the correct resellerurl "<resellerurl>" for the Local Country is displayed

  @REGRESSION
  @PROD
    Examples:
      | product | appKey | country | language | resellerurl                                                                                    |
      | MAYA    | SRP    | US      | en       | http://www.autodesk.com/resellers/locate-a-reseller?product=MAYA&lang=en&cntr=United+States    |
      | MAYA    | SRP    | GB      | en       | http://www.autodesk.co.uk/resellers/locate-a-reseller?product=MAYA&lang=en&cntr=United+Kingdom |
      | MAYA    | SRP    | CA      | en       | http://www.autodesk.ca/en/resellers/locate-a-reseller?product=MAYA&lang=en&cntr=Canada         |
      | MAYA    | SRP    | FR      | fr       |http://www.autodesk.fr/resellers/locate-a-reseller?product=MAYA&lang=fr&cntr=France            |
      | ACDIST  | SRP    | IE      | ga       |http://www.autodesk.com/resellers/locate-a-reseller?product=ACDIST&lang=ga&cntr=Ireland        |



    Examples:
      | product | appKey | country | resellerurl                                                                                   |
      | MAYA    | SRP    | CN      | http://www.autodesk.com.cn/resellers/locate-a-reseller?product=MAYA&lang=zh&cntr=China        |
      | MAYA    | SRP    | HK      | http://www.autodesk.com.hk/resellers/locate-a-reseller?product=MAYA&lang=zh&cntr=Hong+Kong    |
      | MAYA    | SRP    | NZ      | http://www.autodesk.co.nz/resellers/locate-a-reseller?product=MAYA&lang=en&cntr=New+Zealand   |
      | ACDIST  | SRP    | TR      | http://www.autodesk.com.tr/resellers/locate-a-reseller?product=ACDIST&lang=tr&cntr=Turkey     |
      | MAYA    | SRP    | TW      | http://www.autodesk.com.tw/resellers/locate-a-reseller?product=MAYA&lang=zh&cntr=Taiwan       |
      | MAYA    | SRP    | ZA      | http://www.autodesk.co.za/resellers/locate-a-reseller?product=MAYA&lang=en&cntr=South+Africa  |
      | ACDIST  | SRP    | PK      | http://www.autodesk.com/resellers/locate-a-reseller?product=ACDIST&lang=en&cntr=Pakistan      |
      | ACDIST  | SRP    | VN      | http://www.autodesk.com/resellers/locate-a-reseller?product=ACDIST&lang=vi&cntr=Viet+Nam      |
      | ACDIST  | SRP    | BE      | http://www.autodesk.be/nl/resellers/locate-a-reseller?product=ACDIST&lang=nl&cntr=Belgium     |
      | ACDIST  | SRP    | AT      | http://www.autodesk.at/resellers/locate-a-reseller?product=ACDIST&lang=de&cntr=Austria        |
      | ACDIST  | SRP    | MY      | http://www.autodesk.com/resellers/locate-a-reseller?product=ACDIST&lang=ms&cntr=Malaysia      |
      | ACDIST  | SRP    | MX      | http://www.autodesk.mx/resellers/locate-a-reseller?product=ACDIST&lang=es&cntr=Mexico         |
      | ACDIST  | SRP    | NO      | http://www.autodesk.no/resellers/locate-a-reseller?product=ACDIST&lang=no&cntr=Norway         |
      | ACDIST  | SRP    | CH      | http://www.autodesk.ch/fr/resellers/locate-a-reseller?product=ACDIST&lang=fr&cntr=Switzerland |
      | MAYALT  | SRP    | JP      | http://www.autodesk.co.jp/resellers/locate-a-reseller?product=MAYALT&lang=ja&cntr=Japan       |
      | ACDIST  | SRP    | GR      | http://www.autodesk.com/resellers/locate-a-reseller?product=ACDIST&lang=el&cntr=Greece        |
      | ACDIST  | SRP    | DE      | http://www.autodesk.de/resellers/locate-a-reseller?product=ACDIST&lang=de&cntr=Germany        |
      | ACDIST  | SRP    | FR      | http://www.autodesk.fr/resellers/locate-a-reseller?product=ACDIST&lang=fr&cntr=France         |
      | ACDIST  | SRP    | FI      | http://www.autodesk.fi/resellers/locate-a-reseller?product=ACDIST&lang=fi&cntr=Finland        |
      | ACDIST  | SRP    | MY      | http://www.autodesk.com/resellers/locate-a-reseller?product=ACDIST&lang=ms&cntr=Malaysia      |
      | ACDIST  | SRP    | CZ      | http://www.autodesk.cz/resellers/locate-a-reseller?product=ACDIST&lang=cs&cntr=Czech+Republic |
      | ACDIST  | SRP    | IN      | http://www.autodesk.in/resellers/locate-a-reseller?product=ACDIST&lang=hi&cntr=India          |
      | ACDIST  | SRP    | SG      | http://www.autodesk.com/resellers/locate-a-reseller?product=ACDIST&lang=en&cntr=Singapore     |
      | ACDIST  | SRP    | IT      | http://www.autodesk.it/resellers/locate-a-reseller?product=ACDIST&lang=it&cntr=Italy          |
      | ACDIST  | SRP    | IE      | http://www.autodesk.com/resellers/locate-a-reseller?product=ACDIST&lang=ga&cntr=Ireland       |


######################## SCENARIO 3 #########################
  @LocalSites
  Scenario Outline: 3. ONLINE: Internal User validates the resellerUrl received in the PDS Json for language parameters.

    Given the user is on a PDS URL for "<product>" and "<appKey>" and "<country>" and "<language>"
    When the PDS response code is equal to 200
    Then validate the correct resellerurl "<resellerurl>" for the Local Country is displayed

  @REGRESSION
  @PROD
    Examples:
      | product | appKey | country | language | resellerurl                                                                               |
      | ACDIST  | ONLINE | CA      | en       | http://www.autodesk.ca/en/resellers/locate-a-reseller?product=ACDIST&lang=en&cntr=Canada  |
      | ACDIST  | ONLINE | CA      | fr       | http://www.autodesk.ca/fr/resellers/locate-a-reseller?product=ACDIST&lang=fr&cntr=Canada  |
      | ACDIST  | ONLINE | BE      | nl       | http://www.autodesk.be/nl/resellers/locate-a-reseller?product=ACDIST&lang=nl&cntr=Belgium |
      | ACDIST  | ONLINE | BE      | fr       | http://www.autodesk.be/fr/resellers/locate-a-reseller?product=ACDIST&lang=fr&cntr=Belgium |


######################## SCENARIO 4 #########################
  @Browser_needed
  @REGRESSION
  @PROD

  Scenario Outline: 4. Validate domains redirect to other domains
    Given the user is on a Reseller Page "<resellerurl>"
    Then I should be redirected to correct domain: "<resellerpage>"

    Examples:
      | resellerurl                                                                             | resellerpage                                                                             |
      | http://www.autodesk.at/partners/locate-a-reseller?product=ACDIST&lang=de&cntr=Austria   | https://www.autodesk.de/partners/locate-a-reseller?product=ACDIST&lang=de&cntr=Austria   |
      #| http://www.autodesk.ch/partners/locate-a-reseller?product=ACDIST&lang=de&cntr=Switzerland | https://www.autodesk.de/partners/locate-a-reseller?product=ACDIST&lang=de&cntr=Switzerland |
      | http://www.autodesk.sk/resellers/locate-a-reseller?product=ACDIST&lang=sk&cntr=Slovakia | https://www.autodesk.cz/resellers/locate-a-reseller?product=ACDIST&lang=sk&cntr=Slovakia |
#| http://www.autodesk.co.nz/resellers/locate-a-reseller?product=MAYA&lang=en&cntr=New+Zealand   | https://www.autodesk.com.au/resellers/locate-a-reseller?product=MAYA&lang=en&cntr=New+Zealand |
