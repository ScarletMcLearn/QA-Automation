# PDS SLE2: https://web-sle-engineering-svc.awsism.autodesk.com/products/ACDIST?country=US&app=SRP&language=en
# PDS PT: https://web-pt-engineering-svc.autodesk.com/products/ACDIST?country=US&app=SRP&language=en
# PDS PROD: https://web-engineering-svc.autodesk.com/products/ACDIST?country=FR&app=ONLINE&language=fr
#***********************************************************************

@PDS
@REGRESSION

Feature: pds_test_products

  To validate PDS json for test products against expected json

  Scenario Outline: 1. Compare to expected json.

    Given the user is on a PDS URL for "<product>" and query string is "<queryString>"
    When the PDS response code is equal to 200
    Then validate the response against expected json "<jsonExpected>"


    Examples:
# TEST PRODUCTS WITH DEFAULT
      | product | queryString                                   | jsonExpected           |
      | GSW     | country=US                                    | GSW_US                 |
      | GSW     | country=CA&language=en                        | GSW_CA_en              |
      # | GSW     | country=CA&language=fr                        | GSW_CA_fr              |
      # | GSW     | country=FR                                    | GSW_FR                 |
      # | GSW     | country=GB                                    | GSW_GB                 |
      # | GSW     | country=KR                                    | GSW_KR                 |
      # | GSW     | country=CH&language=fr                        | GSW_CH_fr              |
      # | GSW     | country=CH&language=it                        | GSW_CH_it              |
      # | GSW     | country=JP                                    | GSW_JP                 |
      # | GSW     | country=RU                                    | GSW_RU                 |
      # | GSW     | country=AE                                    | GSW_AE                 |

# # TEST PRODUCTS WITH ONLINE
#       | GSW     | country=US&app=ONLINE                         | GSW_US_ONLINE          |
#       | GSW     | country=CA&language=en&app=ONLINE             | GSW_CA_en_ONLINE       |

# # TEST PRODUCTS WITH SRP
#       #| GSW     | country=AE&app=SRP                            | GSW_AE_SRP             |

# #  TEST PRODUCTS WITH QUANTITY
# # Todo: Need a few cases, not many. Anything on bulk price?
#       | GSW     | country=US&quantity=2                         | GSW_US_quantity2               |
#       | GSW     | country=JP&quantity=20                        | GSW_JP_quantity20              |
#       | GSW     | country=KR&quantity=26                        | GSW_KR_quantity26              |

# # Todo: Add more per https://wiki.autodesk.com/display/webteam/PDS+Regression
# #  TEST PRODUCTS WITH PROMOTION CODE (not used on Buy container V2)
#       | GSW     | country=CA&langauge=en&promotionCode=GSW25OFF    | GSW_CA_en_promo        |
#       | GSW     | country=CH&language=fr&promotionCode=62640691901 | GSW_CH_fr_promo        |

# #  TEST PRODUCTS WITH TERM
#       | GSW     | country=US&term=2-YEAR                        | GSW_US_2_year_term     |
#       | GSW     | country=CA&langauge=en&term=1-MONTH           | GSW_CA_en_1_month_term |

# #  TEST PRODUCTS WITH VALIDSERIALNUMBER
#       | GSW     | country=US&validSerialNumber=true                                    | GSW_US_VALIDSN                 |
      # | GSW     | country=CA&language=en&validSerialNumber=true                        | GSW_CA_en_VALIDSN              |
#       | GSW     | country=CA&language=fr&validSerialNumber=true                        | GSW_CA_fr_VALIDSN              |
#       | GSW     | country=FR&validSerialNumber=true                                    | GSW_FR_VALIDSN                 |
#       | GSW     | country=GB&validSerialNumber=true                                    | GSW_GB_VALIDSN                 |
#       | GSW     | country=KR&validSerialNumber=true                                    | GSW_KR_VALIDSN                 |
#       #| GSW     | country=CH&language=de&validSerialNumber=true                        | GSW_CH_de_VALIDSN              |
#       | GSW     | country=CH&language=fr&validSerialNumber=true                        | GSW_CH_fr_VALIDSN              |
#       | GSW     | country=CH&language=it&validSerialNumber=true                        | GSW_CH_it_VALIDSN              |
#       | GSW     | country=JP&validSerialNumber=true                                    | GSW_JP_VALIDSN                 |
#       | GSW     | country=RU&validSerialNumber=true                                    | GSW_RU_VALIDSN                 |
#       #| GSW     | country=AE&validSerialNumber=true                                    | GSW_AE_VALIDSN

