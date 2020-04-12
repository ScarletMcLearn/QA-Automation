# PDS SLE2: https://web-sle-engineering-svc.awsism.autodesk.com/products/ACDIST?country=US&app=SRP&language=en
# PDS PT: https://web-pt-engineering-svc.autodesk.com/products/ACDIST?country=US&app=SRP&language=en
# PDS PROD: https://web-engineering-svc.autodesk.com/products/ACDIST?country=FR&app=ONLINE&language=fr
#***********************************************************************

@PDS
@directToCartUrl

Feature: pds_directtocarturl

  Validate the directToCartUrl in PDS JSON.


  ######################## SCENARIO 1 #########################

  Scenario Outline: 1. DR - ONLINE: Internal user validates the Digital River's directToCartUrl received in the PDS Json file.

    Given the user is on a PDS URL for "<plc>" and "<appKey>" and "<country>" and Quantity "<qty>"
    When the PDS response code is equal to 200
    And the "<period>" and "<count>" and "<s_level>" with quantity for PDS are provided
    Then validate that the correct directToCartUrl "<directToCartUrl>" for the Local Country is displayed

    @REGRESSION
    Examples:
      | plc    | appKey | country | s_level  | period | count | directToCartUrl | qty |
      | MAYA   | ONLINE | AU      | ADVANCED | YEAR   | 1     | https://store.autodesk.com.au/store/adsk/en_AU/buy/productID.4832687800/quantity.13/Currency.AUD  | 13  |
      | ACDIST | ONLINE | BR      | ADVANCED | YEAR   | 1     | https://store.autodesk.com/store/adskbr/pt_BR/buy/productID.5175203600/quantity.1/Currency.BRL | 1   |
      | ACDIST | ONLINE | BR      | ADVANCED | YEAR   | 1     | https://store.autodesk.com/store/adskbr/pt_BR/buy/productID.5175203600/quantity.7/Currency.BRL    | 7   |
      | MAYALT | ONLINE | JP      | ADVANCED | YEAR   | 1     | https://store.autodesk.co.jp/store/adskjp/ja_JP/buy/productID.5023725400/quantity.1/Currency.JPY  | 1   |
      | MAYALT | ONLINE | JP      | ADVANCED | YEAR   | 1     | https://store.autodesk.co.jp/store/adskjp/ja_JP/buy/productID.5023725400/quantity.10/Currency.JPY | 10  |
      | MAYA   | ONLINE | KR      | ADVANCED | YEAR   | 1     | https://store.autodesk.co.kr/store/adskkr/ko_KR/buy/productID.5056508900/quantity.1/Currency.KRW | 1   |
      | MAYA   | ONLINE | KR      | ADVANCED | YEAR   | 1     | https://store.autodesk.co.kr/store/adskkr/ko_KR/buy/productID.5056508900/quantity.3/Currency.KRW  | 3   |
      | MAYA   | ONLINE | MX      | ADVANCED | YEAR   | 1     | https://store.autodesk.com/store/adsk/es_MX/buy/productID.5064675600/quantity.7/Currency.MXN | 7   |
      | MAYALT | ONLINE | TR      | ADVANCED | YEAR  | 1     | https://store.autodesk.com/store/adsk/tr_TR/buy/productID.5109132800/quantity.13/Currency.TRY | 13  |

    @PROD
    Examples:
      | plc    | appKey | country | s_level  | period | count | directToCartUrl | qty |
      # | MAP    | ONLINE | AU      | ADVANCED | YEAR   | 1     | https://store.autodesk.com.au/store/adsk/en_AU/buy/productID.334550500/quantity.4/Currency.AUD    | 4   |
      # | MAYALT| ONLINE | JP    | ADVANCED | YEAR  | 1     | https://store.autodesk.co.jp/store/adskjp/ja_JP/buy/productID.5023725400/quantity.1/Currency.JPY   | 1   |
      # | MAYALT| ONLINE | TR    | ADVANCED | YEAR  | 1     | https://store.autodesk.com/store/adsk/tr_TR/buy/productID.5085345000/quantity.13/Currency.TRY      | 2   |
      | MAYALT | ONLINE | JP      | ADVANCED | YEAR   | 1     | https://store.autodesk.co.jp/store/adskjp/ja_JP/buy/productID.5023725400/quantity.10/Currency.JPY | 10  |
      | ACDIST | ONLINE | BR      | ADVANCED | YEAR   | 1     | https://store.autodesk.com/store/adskbr/pt_BR/buy/productID.5175203600/quantity.1/Currency.BRL    | 1   |
      | ACDIST | ONLINE | MX      | ADVANCED | YEAR   | 1     | https://store.autodesk.com/store/adsk/es_MX/buy/productID.5175178900/quantity.7/Currency.MXN      | 7   |
      | MAYA   | ONLINE | KR      | ADVANCED | YEAR   | 1     | https://store.autodesk.co.kr/store/adskkr/ko_KR/buy/productID.5056508900/quantity.1/Currency.KRW  | 1   |




  ######################## SCENARIO 2 #########################

  Scenario Outline: 2. PELICAN - ONLINE: Internal user validates the Pelican's directToCartUrl received in the PDS Json file.

    Given the user is on a PDS URL for "<plc>" and "<appKey>" and "<country>" and Quantity "<qty>"
    When the PDS response code is equal to 200
    And the "<period>" and "<count>" and "<s_level>" with quantity for PDS are provided
    Then validate that the correct directToCartUrl "<directToCartUrl>" for the Local Country is displayed

    @REGRESSION
    Examples:
      | plc    | appKey | country | s_level  | period | count | directToCartUrl | qty |
      | ACDIST | ONLINE | AT      | ADVANCED | YEAR   | 1     | https://cart.bicstg.autodesk.com/r?storeKey=STORE-DE&productIds=312917%5Bqty%3A2%5D&language=de-AT&country=AT&visitorId={{visitorId}}  | 2   |
      | ACDIST | ONLINE | BG      | ADVANCED | YEAR   | 1     | https://cart.bicstg.autodesk.com/r?storeKey=STORE-EU&productIds=312921%5Bqty%3A6%5D&language=bg-BG&country=BG&visitorId={{visitorId}}  | 6   |
      # | ACDIST | ONLINE | CH      | ADVANCED | YEAR   | 1     | https://cart.bicstg.autodesk.com/r?storeKey=STORE-DE&productIds=157397%5Bqty%3A3%5D&language=fr-CH&country=CH&visitorId={{visitorId}}  | 3   |
      # | ACDIST | ONLINE | CY      | ADVANCED | YEAR   | 1     | https://cart.bicstg.autodesk.com/r?storeKey=STORE-EU&productIds=157399%5Bqty%3A9%5D&language=el-CY&country=CY&visitorId={{visitorId}}  | 9   |
      # | ACDIST | ONLINE | CZ      | ADVANCED | YEAR   | 1     | https://cart.bicstg.autodesk.com/r?storeKey=STORE-EU&productIds=157399%5Bqty%3A8%5D&language=cs-CZ&country=CZ&visitorId={{visitorId}}  | 8   |
      # | ACDIST | ONLINE | DK      | ADVANCED | YEAR   | 2     | https://cart.bicstg.autodesk.com/r?storeKey=STORE-EU&productIds=157447%5Bqty%3A5%5D&language=da-DK&country=DK&visitorId={{visitorId}}  | 5   |
      # | ACDIST | ONLINE | EE      | ADVANCED | YEAR   | 2     | https://cart.bicstg.autodesk.com/r?storeKey=STORE-EU&productIds=157447&language=et-EE&country=EE&visitorId={{visitorId}}               | 1   |
      | ACDIST | ONLINE | GR      | ADVANCED | YEAR   | 2     | https://cart.bicstg.autodesk.com/r?storeKey=STORE-EU&productIds=312937%5Bqty%3A10%5D&language=el-GR&country=GR&visitorId={{visitorId}} | 10  |
      | ACDIST | ONLINE | HR      | ADVANCED | YEAR   | 1     | https://cart.bicstg.autodesk.com/r?storeKey=STORE-EU&productIds=312921%5Bqty%3A4%5D&language=hr-HR&country=HR&visitorId={{visitorId}}  | 4   |
      | ACDIST | ONLINE | IE      | ADVANCED | YEAR   | 3     | https://cart.bicstg.autodesk.com/r?storeKey=STORE-EU&productIds=312953%5Bqty%3A7%5D&language=ga-IE&country=IE&visitorId={{visitorId}} | 7   |
      | ACDIST | ONLINE | IS      | ADVANCED | YEAR   | 1     | https://cart.bicstg.autodesk.com/r?storeKey=STORE-EU&productIds=312921%5Bqty%3A5%5D&language=is-IS&country=IS&visitorId={{visitorId}} | 5   |
      # | ACDIST | ONLINE | LI      | ADVANCED | YEAR   | 2     | https://cart.bicstg.autodesk.com/r?storeKey=STORE-EU&productIds=157447%5Bqty%3A6%5D&language=en-LI&country=LI&visitorId={{visitorId}}  | 6   |
      # | ACDIST | ONLINE | LT      | ADVANCED | YEAR   | 1     | https://cart.bicstg.autodesk.com/r?storeKey=STORE-EU&productIds=157399%5Bqty%3A8%5D&language=lt-LT&country=LT&visitorId={{visitorId}}  | 8   |
      # | ACDIST | ONLINE | LU      | ADVANCED | YEAR   | 2     | https://cart.bicstg.autodesk.com/r?storeKey=STORE-EU&productIds=157447%5Bqty%3A3%5D&language=fr-LU&country=LU&visitorId={{visitorId}}  | 3   |
      | ACDIST | ONLINE | LV      | ADVANCED | YEAR   | 2     | https://cart.bicstg.autodesk.com/r?storeKey=STORE-EU&productIds=312937&language=lv-LV&country=LV&visitorId={{visitorId}} | 1   |
      | ACDIST | ONLINE | MT      | ADVANCED | YEAR   | 2     | https://cart.bicstg.autodesk.com/r?storeKey=STORE-EU&productIds=312937%5Bqty%3A2%5D&language=mt-MT&country=MT&visitorId={{visitorId}} | 2   |
      # | ACDIST | ONLINE | NO      | ADVANCED | YEAR   | 1     | https://cart.bicstg.autodesk.com/r?storeKey=STORE-EU&productIds=157399%5Bqty%3A6%5D&language=no-NO&country=NO&visitorId={{visitorId}}  | 6   |
      # | ACDIST | ONLINE | PL      | ADVANCED | YEAR   | 1     | https://cart.bicstg.autodesk.com/r?storeKey=STORE-EU&productIds=157399&language=pl-PL&country=PL&visitorId={{visitorId}}               | 1   |
      # | ACDIST  | ONLINE | SE    | ADVANCED | YEAR  | 1   | https://cart.bicstg.autodesk.com/r?storeKey=STORE-EU&productIds=157399%5Bqty%3A3%5D&language=sv-SE&country=SE&visitorId={{visitorId}}  | 3   |
      # | ACDIST  | ONLINE | SE    | ADVANCED | YEAR  | 2   | https://cart.bicstg.autodesk.com/r?storeKey=STORE-EU&productIds=157447&language=sv-SE&country=SE&visitorId={{visitorId}}               | 1   |
      # | ACDIST | ONLINE | SI      | ADVANCED | YEAR   | 2     | https://cart.bicstg.autodesk.com/r?storeKey=STORE-EU&productIds=157447%5Bqty%3A5%5D&language=sl-SI&country=SI&visitorId={{visitorId}}  | 5   |
      | ACDIST | ONLINE | SK      | ADVANCED | YEAR   | 1     | https://cart.bicstg.autodesk.com/r?storeKey=STORE-EU&productIds=312921&language=sk-SK&country=SK&visitorId={{visitorId}}  | 1   |
      | ACDIST | ONLINE | RO      | ADVANCED | YEAR   | 1     | https://cart.bicstg.autodesk.com/r?storeKey=STORE-EU&productIds=312921%5Bqty%3A2%5D&language=ro-RO&country=RO&visitorId={{visitorId}} | 2   |

    @PROD
    Examples:
      | plc    | appKey | country | s_level  | period | count | directToCartUrl | qty |
      | ACDIST | ONLINE | AT      | ADVANCED | YEAR   | 1     | https://cart.autodesk.com/r?storeKey=STORE-DE&productIds=22799%5Bqty%3A2%5D&language=de-AT&country=AT&visitorId={{visitorId}}   | 2   |
      | ACDIST | ONLINE | BE      | ADVANCED | YEAR   | 1     | https://cart.autodesk.com/r?storeKey=STORE-EU&productIds=22797%5Bqty%3A4%5D&language=nl-NL&country=BE&visitorId={{visitorId}}    | 4   |
      | ACDIST | ONLINE | FI      | ADVANCED | YEAR  | 1    | https://cart.autodesk.com/r?storeKey=STORE-EU&productIds=22797%5Bqty%3A5%5D&language=fi-FI&country=FI&visitorId={{visitorId}}     | 5   |
      | ACDIST | ONLINE | HU      | ADVANCED | YEAR  | 1    | https://cart.autodesk.com/r?storeKey=STORE-EU&productIds=22797%5Bqty%3A9%5D&language=hu-HU&country=HU&visitorId={{visitorId}}     | 9   |
      | ACDIST | ONLINE | NL      | ADVANCED | YEAR  | 1    | https://cart.autodesk.com/r?storeKey=STORE-EU&productIds=22797%5Bqty%3A4%5D&language=nl-NL&country=NL&visitorId={{visitorId}}     | 4   |
      # | ACDIST | ONLINE | PT      | ADVANCED | YEAR  | 2    | https://cart.autodesk.com/r?storeKey=STORE-EU&productIds=13915%5Bqty%3A3%5D&language=pt-PT&country=PT&visitorId={{visitorId}}     | 3   |
      # | ACDIST   | ONLINE | BG    | ADVANCED | YEAR  | 1    | https://cart.autodesk.com/r?storeKey=STORE-EU&productIds=13913%5Bqty%3A6%5D&language=bg-BG&country=BG&visitorId={{visitorId}}     | 6   |
      # | ACDIST   | ONLINE | CH    | ADVANCED | YEAR  | 1    | https://cart.autodesk.com/r?storeKey=STORE-DE&productIds=13897%5Bqty%3A3%5D&language=fr-CH&country=CH&visitorId={{visitorId}}     | 3   |
      # | ACDIST   | ONLINE | CY    | ADVANCED | YEAR  | 1    | https://cart.autodesk.com/r?storeKey=STORE-EU&productIds=13913%5Bqty%3A9%5D&language=el-CY&country=CY&visitorId={{visitorId}}     | 9   |
      # | ACDIST   | ONLINE | CZ    | ADVANCED | YEAR  | 1    | https://cart.autodesk.com/r?storeKey=STORE-EU&productIds=13913%5Bqty%3A8%5D&language=cs-CZ&country=CZ&visitorId={{visitorId}}     | 8   |
      # | ACDIST   | ONLINE | DK    | ADVANCED | YEAR  | 1    | https://cart.autodesk.com/r?storeKey=STORE-EU&productIds=13913%5Bqty%3A5%5D&language=da-DK&country=DK&visitorId={{visitorId}}     | 5   |
      # | ACDIST   | ONLINE | EE    | ADVANCED | YEAR  | 1    | https://cart.autodesk.com/r?storeKey=STORE-EU&productIds=13913&language=et-EE&country=EE&visitorId={{visitorId}}                  | 1   |
      # | ACDIST   | ONLINE | GR    | ADVANCED | YEAR  | 1    | https://cart.autodesk.com/r?storeKey=STORE-EU&productIds=13913%5Bqty%3A10%5D&language=el-GR&country=GR&visitorId={{visitorId}}    | 10  |
      # | ACDIST   | ONLINE | HR    | ADVANCED | YEAR  | 1    | https://cart.autodesk.com/r?storeKey=STORE-EU&productIds=13913%5Bqty%3A4%5D&language=hr-HR&country=HR&visitorId={{visitorId}}     | 4   |
      # | ACDIST   | ONLINE | IE    | ADVANCED | YEAR  | 2    | https://cart.autodesk.com/r?storeKey=STORE-EU&productIds=13915%5Bqty%3A7%5D&language=ga-IE&country=IE&visitorId={{visitorId}}     | 7   |
      # | ACDIST   | ONLINE | IS    | ADVANCED | YEAR  | 1    | https://cart.autodesk.com/r?storeKey=STORE-EU&productIds=13913%5Bqty%3A5%5D&language=is-IS&country=IS&visitorId={{visitorId}}     | 5   |
      # | ACDIST   | ONLINE | IT    | ADVANCED | YEAR  | 1    | https://cart.autodesk.com/r?storeKey=STORE-IT&productIds=13929%5Bqty%3A2%5D&language=it-IT&country=IT&visitorId={{visitorId}}     | 2   |
      # | ACDIST   | ONLINE | LI    | ADVANCED | YEAR  | 1    | https://cart.autodesk.com/r?storeKey=STORE-EU&productIds=13913%5Bqty%3A6%5D&language=en-LI&country=LI&visitorId={{visitorId}}     | 6   |
      # | ACDIST   | ONLINE | LT    | ADVANCED | YEAR  | 2    | https://cart.autodesk.com/r?storeKey=STORE-EU&productIds=13915%5Bqty%3A8%5D&language=lt-LT&country=LT&visitorId={{visitorId}}     | 8   |
      # | ACDIST   | ONLINE | LU    | ADVANCED | YEAR  | 1    | https://cart.autodesk.com/r?storeKey=STORE-EU&productIds=13913%5Bqty%3A3%5D&language=fr-LU&country=LU&visitorId={{visitorId}}     | 3   |
      # | ACDIST   | ONLINE | LV    | ADVANCED | YEAR  | 1    | https://cart.autodesk.com/r?storeKey=STORE-EU&productIds=13913&language=lv-LV&country=LV&visitorId={{visitorId}}                  | 1   |
      # | ACDIST   | ONLINE | MT    | ADVANCED | YEAR  | 1    | https://cart.autodesk.com/r?storeKey=STORE-EU&productIds=13913%5Bqty%3A2%5D&language=mt-MT&country=MT&visitorId={{visitorId}}     | 2   |
      # | ACDIST   | ONLINE | NO    | ADVANCED | YEAR  | 1    | https://cart.autodesk.com/r?storeKey=STORE-EU&productIds=13913%5Bqty%3A6%5D&language=no-NO&country=NO&visitorId={{visitorId}}     | 6   |
      # | ACDIST   | ONLINE | PL    | ADVANCED | YEAR  | 1    | https://cart.autodesk.com/r?storeKey=STORE-EU&productIds=13913&language=pl-PL&country=PL&visitorId={{visitorId}}                  | 1   |
      # | ACDIST   | ONLINE | RO    | ADVANCED | YEAR  | 1    | https://cart.autodesk.com/r?storeKey=STORE-EU&productIds=13913%5Bqty%3A2%5D&language=ro-RO&country=RO&visitorId={{visitorId}}     | 2   |
      # | ACDIST   | ONLINE | SE    | ADVANCED | YEAR  | 1    | https://cart.autodesk.com/r?storeKey=STORE-EU&productIds=13913&language=sv-SE&country=SE&visitorId={{visitorId}}                  | 1   |
      # | ACDIST   | ONLINE | SI    | ADVANCED | YEAR  | 2    | https://cart.autodesk.com/r?storeKey=STORE-EU&productIds=13915%5Bqty%3A5%5D&language=sl-SI&country=SI&visitorId={{visitorId}}     | 5   |
      # | ACDIST   | ONLINE | SK    | ADVANCED | YEAR  | 1    | https://cart.autodesk.com/r?storeKey=STORE-EU&productIds=13913&language=sk-SK&country=SK&visitorId={{visitorId}}                  | 1   |
      # | ACDIST   | ONLINE | RO    | ADVANCED | YEAR  | 1    | https://cart.autodesk.com/r?storeKey=STORE-EU&productIds=13913%5Bqty%3A2%5D&language=ro-RO&country=RO&visitorId={{visitorId}}     | 2   |




  ######################## SCENARIO 3, WPE-3965, WPE-4613, WPE-4984, WPE-5265 #########################

  Scenario Outline: 3. PELICAN - ONLINE: Validates the Pelican's directToCartUrl for GUAC products in US, CA and some EMEA points to GUAC Cart URL.

    Given the user is on a PDS URL for "<plc>" and "<appKey>" and "<country>" and Quantity "<qty>"
    When the PDS response code is equal to 200
    And the "<period>" and "<count>" and "<s_level>" with quantity for PDS are provided
    Then validate that the correct directToCartUrl "<directToCartUrl>" for the Local Country is displayed

    @REGRESSION
    Examples:
      | plc    | appKey | country | s_level  | period | count | directToCartUrl | qty |
      | ACDIST | ONLINE | BE      | ADVANCED | YEAR   | 3     | https://checkout-pt.autodesk.com/nl-BE?visitorId={{visitorId}}&priceIds=312953%5Bqty%3A4%5D&plc=ACDIST  | 4 |
      | INVLT  | ONLINE | CA      | ADVANCED | YEAR   | 1     | https://checkout-pt.autodesk.com/en-CA?visitorId={{visitorId}}&priceIds=142615&plc=INVLT | 1 |
      | COLLRP | ONLINE | DE      | ADVANCED | YEAR   | 1     | https://checkout-pt.autodesk.com/de-DE?visitorId={{visitorId}}&priceIds=312839&plc=COLLRP | 1 |
      | ACDIST | ONLINE | DE      | ADVANCED | YEAR   | 1     | https://checkout-pt.autodesk.com/de-DE?visitorId={{visitorId}}&priceIds=312917%5Bqty%3A2%5D&plc=ACDIST | 2  |
      | ACDIST | ONLINE | ES      | ADVANCED | YEAR   | 1     | https://checkout-pt.autodesk.com/es-ES?visitorId={{visitorId}}&priceIds=312919&plc=ACDIST | 1 |
      | ACDIST | ONLINE | ES      | ADVANCED | YEAR   | 2     | https://checkout-pt.autodesk.com/es-ES?visitorId={{visitorId}}&priceIds=312935%5Bqty%3A7%5D&plc=ACDIST | 7  |
      | ACDIST | ONLINE | FI      | ADVANCED | YEAR   | 1     | https://checkout-pt.autodesk.com/fi-FI?visitorId={{visitorId}}&priceIds=312921%5Bqty%3A5%5D&plc=ACDIST  | 5 |
      | ACDIST | ONLINE | FR      | ADVANCED | YEAR   | 1     | https://checkout-pt.autodesk.com/fr-FR?visitorId={{visitorId}}&priceIds=312923%5Bqty%3A3%5D&plc=ACDIST  | 3 |
      | ACDIST | ONLINE | GB      | ADVANCED | YEAR   | 1     | https://checkout-pt.autodesk.com/en-GB?visitorId={{visitorId}}&priceIds=312929&plc=ACDIST | 1 |
      | ACDIST | ONLINE | GB      | ADVANCED | YEAR   | 2     | https://checkout-pt.autodesk.com/en-GB?visitorId={{visitorId}}&priceIds=312945%5Bqty%3A2%5D&plc=ACDIST  | 2 |
      | ACDIST | ONLINE | HU      | ADVANCED | YEAR   | 1     | https://checkout-pt.autodesk.com/hu-HU?visitorId={{visitorId}}&priceIds=312921%5Bqty%3A9%5D&plc=ACDIST  | 9 |
      | ACDIST | ONLINE | IT      | ADVANCED | YEAR   | 1     | https://checkout-pt.autodesk.com/it-IT?visitorId={{visitorId}}&priceIds=312925%5Bqty%3A2%5D&plc=ACDIST | 2  |
      | ACDIST | ONLINE | NL      | ADVANCED | YEAR   | 1     | https://checkout-pt.autodesk.com/nl-NL?visitorId={{visitorId}}&priceIds=312921%5Bqty%3A4%5D&plc=ACDIST  | 4 |
      | ACDIST | ONLINE | PT      | ADVANCED | YEAR   | 3     | https://checkout-pt.autodesk.com/pt-PT?visitorId={{visitorId}}&priceIds=312953%5Bqty%3A3%5D&plc=ACDIST  | 3 |
      | ACDIST | ONLINE | US      | ADVANCED | YEAR   | 1     | https://checkout-pt.autodesk.com/en-US?visitorId={{visitorId}}&priceIds=312927&plc=ACDIST | 1 |
      | ACDIST | ONLINE | US      | ADVANCED | YEAR   | 1     | https://checkout-pt.autodesk.com/en-US?visitorId={{visitorId}}&priceIds=312927%5Bqty%3A4%5D&plc=ACDIST | 4  |
      | INVLT  | ONLINE | US      | ADVANCED | YEAR   | 1     | https://checkout-pt.autodesk.com/en-US?visitorId={{visitorId}}&priceIds=109451%5Bqty%3A4%5D&plc=INVLT | 4 |
      | NAVSIM | ONLINE | US      | ADVANCED | YEAR   | 1     | https://checkout-pt.autodesk.com/en-US?visitorId={{visitorId}}&priceIds=109353&plc=NAVSIM | 1 |

    @PROD
    Examples:
      | plc    | appKey | country | s_level  | period | count | directToCartUrl | qty |
      | ACDIST | ONLINE | CA      | ADVANCED | YEAR   | 1     | https://checkout.autodesk.com/en-CA?visitorId={{visitorId}}&priceIds=22800&plc=ACDIST | 1 |
      | INVLT  | ONLINE | CA      | ADVANCED | YEAR   | 1     | https://checkout.autodesk.com/en-CA?visitorId={{visitorId}}&priceIds=22161&plc=INVLT  | 1 |
      # | COLLRP | ONLINE | DE      | ADVANCED | YEAR   | 1     | https://checkout.autodesk.com/de-DE?visitorId={{visitorId}}&priceIds=16824&plc=COLLRP              | 1 |
      | ACDIST | ONLINE | DE      | ADVANCED | YEAR   | 1     | https://checkout.autodesk.com/de-DE?visitorId={{visitorId}}&priceIds=22799%5Bqty%3A2%5D&plc=ACDIST | 2   |
      | ACDIST | ONLINE | ES      | ADVANCED | YEAR   | 1     | https://checkout.autodesk.com/es-ES?visitorId={{visitorId}}&priceIds=22798%5Bqty%3A3%5D&plc=ACDIST | 3   |
      | ACDIST | ONLINE | US      | ADVANCED | YEAR   | 1     | https://checkout.autodesk.com/en-US?visitorId={{visitorId}}&priceIds=22794%5Bqty%3A2%5D&plc=ACDIST | 2   |
      | INVLT  | ONLINE | US      | ADVANCED | YEAR   | 1     | https://checkout.autodesk.com/en-US?visitorId={{visitorId}}&priceIds=21517%5Bqty%3A4%5D&plc=INVLT  | 4 |
      | NAVSIM | ONLINE | US      | ADVANCED | YEAR   | 1     | https://checkout.autodesk.com/en-US?visitorId={{visitorId}}&priceIds=21608&plc=NAVSIM | 1 |
      # | ACDIST | ONLINE | FR      | ADVANCED | YEAR   | 1     | https://checkout.autodesk.com/fr-FR?visitorId={{visitorId}}&priceIds=17414%5Bqty%3A3%5D&plc=ACDIST | 3   |
