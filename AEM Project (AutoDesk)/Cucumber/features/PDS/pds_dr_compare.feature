# PDS SLE2: https://web-sle-engineering-svc.awsism.autodesk.com/products/ACDIST?country=US&app=SRP&language=en
# PDS PT: https://web-pt-engineering-svc.autodesk.com/products/ACDIST?country=US&app=SRP&language=en
# PDS PROD: https://web-engineering-svc.autodesk.com/products/ACDIST?country=FR&app=ONLINE&language=fr
#***********************************************************************

@PDS
@DR

Feature: pds_dr_compare

  Compare values between PDS JSON and DR JSON.


  ######################## SCENARIO 1 #########################

  Scenario Outline: 1. ONLINE: Internal User compared the fields received in the PDS Json file with DR.

    #Given the user is on a PDS URL for "<product>" and "<country>" and "<appKey>"
    #When the DR response code is equal to "<errorcode>"
    #Then validated string "<str>"

    Given the user is on a PDS URL for "<product>" and "<appKey>" and "<country>" and "<language>"
    And the user is on a DR URL for "<dr_product>" and "<locale>" and "<apikey>"
    When the DR response code is equal to 200
    And the PDS response code is equal to 200
    And the "<billingPeriod>" and "<billingPeriodCount>" and "<supportLevel>" for PDS are provided
    And the "<dr_duration>" and "<dr_support>" for DR are provided
    Then the user compares the values in the DR pricing fields specified "<validation_field>"

    @REGRESSION
    @PROD
    Examples:
      | product | appKey | country | language | dr_product    | locale | apikey                           | supportLevel | billingPeriod | billingPeriodCount | dr_duration | dr_support | validation_field           |
      | ACDLT   | ONLINE | MX      | es       | ACDLT-ADSK    | es_MX  | 014d336197b94414910b7317b5d019d1 | BASIC        | MONTH         | 1                  | MONTHLY     | BASIC      | amount                     |
      | ACDLT   | ONLINE | MX      | es       | ACDLT-ADSK    | es_MX  | 014d336197b94414910b7317b5d019d1 | BASIC        | YEAR          | 1                  | YEARLY      | BASIC      | discount                   |
      | ACDLT   | ONLINE | IN      | en       | ACDLT-ADSK    | en_IN  | 014d336197b94414910b7317b5d019d1 | BASIC        | YEAR          | 1                  | YEARLY      | BASIC      | amountBeforeDiscount       |
      | MAYALT  | ONLINE | JP      | ja       | MAYALT-ADSKJP | ja_JP  | 3563c230c22945f1826644bdb9534d95 | ADVANCED     | MONTH         | 1                  | MONTHLY     | ADVANCED   | amountBeforeDiscount       |
      | MAYA    | ONLINE | KR      | ko       | MAYA-ADSKKR   | ko_KR  | fbe2a04cb5144f4cb8ec2a13f326398c | ADVANCED     | YEAR          | 2                  | TWO_YEAR    | ADVANCED   | amountAfterDiscountWithVat |
      | MAYA    | ONLINE | NZ      | en       | MAYA-ADSK-AU  | en_AU  | 014d336197b94414910b7317b5d019d1 | ADVANCED     | YEAR          | 2                  | TWO_YEAR    | ADVANCED   | amountAfterDiscountWithVat |
      #| MAYA    | ONLINE | SG      | en       |MAYA-ADSK-SG  | en_SG  | 014d336197b94414910b7317b5d019d1 | ADVANCED     | YEAR          | 2                  | TWO_YEAR    | ADVANCED   | amount                     |


    @WIP
    Examples:
      | product | appKey | country | dr_product      | locale | apikey                           | supportLevel  | billingPeriod | billingPeriodCount | dr_duration | dr_support | validation_field            |
      | ACDLT   | ONLINE | MX      | ACDLT-ADSK      | es_MX  | 014d336197b94414910b7317b5d019d1 | ADVANCED      | MONTH         | 1                  | MONTHLY     | BASIC      | discount                    |
      | ACDLT   | ONLINE | MX      | ACDLT-ADSK      | es_MX  | 014d336197b94414910b7317b5d019d1 | ADVANCED      | MONTH         | 1                  | MONTHLY     | BASIC      | amountBeforeDiscount        |
      | ACDLT   | ONLINE | MX      | ACDLT-ADSK      | es_MX  | 014d336197b94414910b7317b5d019d1 | ADVANCED      | MONTH         | 1                  | MONTHLY     | BASIC      | priceId                     |
      | ACDLT   | ONLINE | MX      | ACDLT-ADSK      | es_MX  | 014d336197b94414910b7317b5d019d1 | ADVANCED      | MONTH         | 1                  | MONTHLY     | BASIC      | vatAmount                   |
      | ACDLT   | ONLINE | MX      | ACDLT-ADSK      | es_MX  | 014d336197b94414910b7317b5d019d1 | ADVANCED      | MONTH         | 1                  | MONTHLY     | BASIC      | amountBeforeDiscountWithVat |
      | ACDLT   | ONLINE | MX      | ACDLT-ADSK      | es_MX  | 014d336197b94414910b7317b5d019d1 | ADVANCED      | MONTH         | 1                  | MONTHLY     | BASIC      | amountAfterDiscountWithVat  |

      | ACDLT   | ONLINE | MX      | ACDLT-ADSK      | es_MX  | 014d336197b94414910b7317b5d019d1 | ADVANCED      | YEAR          | 1                  | YEARLY      | BASIC      | amount                      |
      | ACDLT   | ONLINE | MX      | ACDLT-ADSK      | es_MX  | 014d336197b94414910b7317b5d019d1 | ADVANCED      | YEAR          | 1                  | YEARLY      | BASIC      | amountBeforeDiscount        |
      | ACDLT   | ONLINE | MX      | ACDLT-ADSK      | es_MX  | 014d336197b94414910b7317b5d019d1 | ADVANCED      | YEAR          | 1                  | YEARLY      | BASIC      | priceId                     |
      | ACDLT   | ONLINE | MX      | ACDLT-ADSK      | es_MX  | 014d336197b94414910b7317b5d019d1 | ADVANCED      | YEAR          | 1                  | YEARLY      | BASIC      | vatAmount                   |
      | ACDLT   | ONLINE | MX      | ACDLT-ADSK      | es_MX  | 014d336197b94414910b7317b5d019d1 | ADVANCED      | YEAR          | 1                  | YEARLY      | BASIC      | amountBeforeDiscountWithVat |
      | ACDLT   | ONLINE | MX      | ACDLT-ADSK      | es_MX  | 014d336197b94414910b7317b5d019d1 | ADVANCED      | YEAR          | 1                  | YEARLY      | BASIC      | amountAfterDiscountWithVat  |
      | ACDLT   | ONLINE | IN      | ACDLT-ADSK      | en_IN  | 014d336197b94414910b7317b5d019d1 | ADVANCED      | YEAR          | 1                  | YEARLY      | BASIC      | amount                      |
      | ACDLT   | ONLINE | IN      | ACDLT-ADSK      | en_IN  | 014d336197b94414910b7317b5d019d1 | ADVANCED      | YEAR          | 1                  | YEARLY      | BASIC      | discount                    |
      | ACDLT   | ONLINE | IN      | ACDLT-ADSK      | en_IN  | 014d336197b94414910b7317b5d019d1 | ADVANCED      | YEAR          | 1                  | YEARLY      | BASIC      | priceId                     |
      | ACDLT   | ONLINE | IN      | ACDLT-ADSK      | en_IN  | 014d336197b94414910b7317b5d019d1 | ADVANCED      | YEAR          | 1                  | YEARLY      | BASIC      | vatAmount                   |
      | ACDLT   | ONLINE | IN      | ACDLT-ADSK      | en_IN  | 014d336197b94414910b7317b5d019d1 | ADVANCED      | YEAR          | 1                  | YEARLY      | BASIC      | amountBeforeDiscountWithVat |
      | ACDLT   | ONLINE | IN      | ACDLT-ADSK      | en_IN  | 014d336197b94414910b7317b5d019d1 | ADVANCED      | YEAR          | 1                  | YEARLY      | BASIC      | amountAfterDiscountWithVat  |

      | MAYALT  | ONLINE | JP      | MAYALT-ADSKJP | ja_JP  | 3563c230c22945f1826644bdb9534d95 | ADVANCED     | MONTH         | 1                  | MONTHLY     | ADVANCED   | priceId                     |
      | MAYALT  | ONLINE | JP      | MAYALT-ADSKJP | ja_JP  | 3563c230c22945f1826644bdb9534d95 | ADVANCED     | MONTH         | 1                  | MONTHLY     | ADVANCED   | amount                      |
      | MAYALT  | ONLINE | JP      | MAYALT-ADSKJP | ja_JP  | 3563c230c22945f1826644bdb9534d95 | ADVANCED     | MONTH         | 1                  | MONTHLY     | ADVANCED   | discount                    |
      | MAYALT  | ONLINE | JP      | MAYALT-ADSKJP | ja_JP  | 3563c230c22945f1826644bdb9534d95 | ADVANCED     | MONTH         | 1                  | MONTHLY     | ADVANCED   | vatAmount                   |
      | MAYALT  | ONLINE | JP      | MAYALT-ADSKJP | ja_JP  | 3563c230c22945f1826644bdb9534d95 | ADVANCED     | MONTH         | 1                  | MONTHLY     | ADVANCED   | amountBeforeDiscountWithVat |
      | MAYALT  | ONLINE | JP      | MAYALT-ADSKJP | ja_JP  | 3563c230c22945f1826644bdb9534d95 | ADVANCED     | MONTH         | 1                  | MONTHLY     | ADVANCED   | amountAfterDiscountWithVat  |

      | ACD     | ONLINE | BR      | ACD-ADSKBR    | pt_BR  | 2c84e84bb902457aad6cb73206db923f | ADVANCED     | MONTH         | 1                  | MONTHLY     | BASIC      | amount                      |
      | ACD     | ONLINE | BR      | ACD-ADSKBR    | pt_BR  | 2c84e84bb902457aad6cb73206db923f | ADVANCED     | MONTH         | 1                  | MONTHLY     | BASIC      | amountBeforeDiscount        |
      | ACD     | ONLINE | BR      | ACD-ADSKBR    | pt_BR  | 2c84e84bb902457aad6cb73206db923f | ADVANCED     | MONTH         | 1                  | MONTHLY     | BASIC      | discount                    |
      | ACD     | ONLINE | BR      | ACD-ADSKBR    | pt_BR  | 2c84e84bb902457aad6cb73206db923f | ADVANCED     | MONTH         | 1                  | MONTHLY     | BASIC      | priceId                     |
      | ACD     | ONLINE | BR      | ACD-ADSKBR    | pt_BR  | 2c84e84bb902457aad6cb73206db923f | ADVANCED     | MONTH         | 1                  | MONTHLY     | BASIC      | vatAmount                   |
      | ACD     | ONLINE | BR      | ACD-ADSKBR    | pt_BR  | 2c84e84bb902457aad6cb73206db923f | ADVANCED     | MONTH         | 1                  | MONTHLY     | BASIC      | amountBeforeDiscountWithVat |
      | ACD     | ONLINE | BR      | ACD-ADSKBR    | pt_BR  | 2c84e84bb902457aad6cb73206db923f | ADVANCED     | MONTH         | 1                  | MONTHLY     | BASIC      | amountAfterDiscountWithVat  |

      | MAYA    | ONLINE | KR      | MAYA-ADSKKR   | ko_KR  | fbe2a04cb5144f4cb8ec2a13f326398c | ADVANCED     | YEAR          | 2                  | TWO_YEAR    | ADVANCED   | amount                      |
      | MAYA    | ONLINE | KR      | MAYA-ADSKKR   | ko_KR  | fbe2a04cb5144f4cb8ec2a13f326398c | ADVANCED     | YEAR          | 2                  | TWO_YEAR    | ADVANCED   | amountBeforeDiscount        |
      | MAYA    | ONLINE | KR      | MAYA-ADSKKR   | ko_KR  | fbe2a04cb5144f4cb8ec2a13f326398c | ADVANCED     | YEAR          | 2                  | TWO_YEAR    | ADVANCED   | discount                    |
      | MAYA    | ONLINE | KR      | MAYA-ADSKKR   | ko_KR  | fbe2a04cb5144f4cb8ec2a13f326398c | ADVANCED     | YEAR          | 2                  | TWO_YEAR    | ADVANCED   | priceId                     |
      | MAYA    | ONLINE | KR      | MAYA-ADSKKR   | ko_KR  | fbe2a04cb5144f4cb8ec2a13f326398c | ADVANCED     | YEAR          | 2                  | TWO_YEAR    | ADVANCED   | vatAmount                   |
      | MAYA    | ONLINE | KR      | MAYA-ADSKKR   | ko_KR  | fbe2a04cb5144f4cb8ec2a13f326398c | ADVANCED     | YEAR          | 2                  | TWO_YEAR    | ADVANCED   | amountBeforeDiscountWithVat |
      | MAYA    | ONLINE | KR      | MAYA-ADSKKR   | ko_KR  | fbe2a04cb5144f4cb8ec2a13f326398c | ADVANCED     | YEAR          | 2                  | TWO_YEAR    | ADVANCED   | amountAfterDiscountWithVat  |

      | MAYA   | ONLINE | AU      | MAYA-ADSK-AU   | en_AU  | 014d336197b94414910b7317b5d019d1 | ADVANCED     | YEAR          | 1                  | YEARLY      | ADVANCED   | amount                      |
      | MAYA   | ONLINE | AU      | MAYA-ADSK-AU   | en_AU  | 014d336197b94414910b7317b5d019d1 | ADVANCED     | YEAR          | 1                  | YEARLY      | ADVANCED   | amountBeforeDiscount        |
      | MAYA   | ONLINE | AU      | MAYA-ADSK-AU   | en_AU  | 014d336197b94414910b7317b5d019d1 | ADVANCED     | YEAR          | 1                  | YEARLY      | ADVANCED   | discount                    |
      | MAYA   | ONLINE | AU      | MAYA-ADSK-AU   | en_AU  | 014d336197b94414910b7317b5d019d1 | ADVANCED     | YEAR          | 1                  | YEARLY      | ADVANCED   | priceId                     |
      | MAYA   | ONLINE | AU      | MAYA-ADSK-AU   | en_AU  | 014d336197b94414910b7317b5d019d1 | ADVANCED     | YEAR          | 1                  | YEARLY      | ADVANCED   | vatAmount                   |
      | MAYA   | ONLINE | AU      | MAYA-ADSK-AU   | en_AU  | 014d336197b94414910b7317b5d019d1 | ADVANCED     | YEAR          | 1                  | YEARLY      | ADVANCED   | amountBeforeDiscountWithVat |
      | MAYA   | ONLINE | AU      | MAYA-ADSK-AU   | en_AU  | 014d336197b94414910b7317b5d019d1 | ADVANCED     | YEAR          | 1                  | YEARLY      | ADVANCED   | amountAfterDiscountWithVat  |

      | MAYA   | ONLINE | NZ      | MAYA-ADSK-AU   | en_AU  | 014d336197b94414910b7317b5d019d1 | ADVANCED     | YEAR          | 2                  | TWO_YEAR    | ADVANCED   | amount                      |
      | MAYA   | ONLINE | NZ      | MAYA-ADSK-AU   | en_AU  | 014d336197b94414910b7317b5d019d1 | ADVANCED     | YEAR          | 2                  | TWO_YEAR    | ADVANCED   | amountBeforeDiscount        |
      | MAYA   | ONLINE | NZ      | MAYA-ADSK-AU   | en_AU  | 014d336197b94414910b7317b5d019d1 | ADVANCED     | YEAR          | 2                  | TWO_YEAR    | ADVANCED   | discount                    |
      | MAYA   | ONLINE | NZ      | MAYA-ADSK-AU   | en_AU  | 014d336197b94414910b7317b5d019d1 | ADVANCED     | YEAR          | 2                  | TWO_YEAR    | ADVANCED   | priceId                     |
      | MAYA   | ONLINE | NZ      | MAYA-ADSK-AU   | en_AU  | 014d336197b94414910b7317b5d019d1 | ADVANCED     | YEAR          | 2                  | TWO_YEAR    | ADVANCED   | vatAmount                   |
      | MAYA   | ONLINE | NZ      | MAYA-ADSK-AU   | en_AU  | 014d336197b94414910b7317b5d019d1 | ADVANCED     | YEAR          | 2                  | TWO_YEAR    | ADVANCED   | amountBeforeDiscountWithVat |

      | MAYA   | ONLINE | SG      | MAYA-ADSK-SG  | en_SG  | 014d336197b94414910b7317b5d019d1 | ADVANCED     | YEAR          | 2                  | TWO_YEAR    | ADVANCED   | amountBeforeDiscount        |
      | MAYA   | ONLINE | SG      | MAYA-ADSK-SG  | en_SG  | 014d336197b94414910b7317b5d019d1 | ADVANCED     | YEAR          | 2                  | TWO_YEAR    | ADVANCED   | discount                    |
      | MAYA   | ONLINE | SG      | MAYA-ADSK-SG  | en_SG  | 014d336197b94414910b7317b5d019d1 | ADVANCED     | YEAR          | 2                  | TWO_YEAR    | ADVANCED   | priceId                     |
      | MAYA   | ONLINE | SG      | MAYA-ADSK-SG  | en_SG  | 014d336197b94414910b7317b5d019d1 | ADVANCED     | YEAR          | 2                  | TWO_YEAR    | ADVANCED   | vatAmount                   |
      | MAYA   | ONLINE | SG      | MAYA-ADSK-SG  | en_SG  | 014d336197b94414910b7317b5d019d1 | ADVANCED     | YEAR          | 2                  | TWO_YEAR    | ADVANCED   | amountBeforeDiscountWithVat |
      | MAYA   | ONLINE | SG      | MAYA-ADSK-SG  | en_SG  | 014d336197b94414910b7317b5d019d1 | ADVANCED     | YEAR          | 2                  | TWO_YEAR    | ADVANCED   | amountAfterDiscountWithVat  |

  ######################## SCENARIO 2 #########################

  Scenario Outline: 2. ONLINE: Multi-platform product like MAYA: Compared the fields received in the PDS Json file with DR for Windows.

    Given the user is on a PDS URL for "<product>" and "<appKey>" and "<country>"
    And the user is on a DR URL for "<dr_product>" and "<locale>" and "<apikey>"
    When the DR response code is equal to 200
    And the PDS response code is equal to 200
    Then there are duplicated terms for "<dr_duration>" and "<supportLevel>" support in DR
    And No duplicated term for "<billingPeriod>", "<billingPeriodCount>" and "<supportLevel>" support in PDS

    # TODO: Improve the test to detect duplicated term in the list of all present terms automatically (without term specification)

    @REGRESSION
    @PROD
    Examples:
      | product | appKey | country | dr_product     | locale | apikey                           | supportLevel | billingPeriod | billingPeriodCount | dr_duration |
      | MAYA    | ONLINE | AU      | MAYA-ADSK-AU   | en_AU  | 014d336197b94414910b7317b5d019d1 | ADVANCED     | MONTH         | 1                  | MONTHLY     |
      | MAYA    | ONLINE | AU      | MAYA-ADSK-AU   | en_AU  | 014d336197b94414910b7317b5d019d1 | ADVANCED     | YEAR          | 1                  | YEARLY      |
      | MAYALT  | ONLINE | AU      | MAYALT-ADSK-AU | en_AU  | 014d336197b94414910b7317b5d019d1 | ADVANCED     | MONTH         | 1                  | MONTHLY     |
      | MAYALT  | ONLINE | AU      | MAYALT-ADSK-AU | en_AU  | 014d336197b94414910b7317b5d019d1 | ADVANCED     | YEAR          | 1                  | YEARLY      |
#      | MBXPRO  | ONLINE | AU      | MBXPRO-ADSK-AU | en_AU  | 014d336197b94414910b7317b5d019d1 | BASIC        | MONTH         | 1                  | MONTHLY     |
#      | MBXPRO  | ONLINE | AU      | MBXPRO-ADSK-AU | en_AU  | 014d336197b94414910b7317b5d019d1 | BASIC        | YEAR          | 1                  | YEARLY      |


    Examples:
      | product | appKey | country | dr_product     | locale | apikey                           | supportLevel | billingPeriod | billingPeriodCount | dr_duration |
      | MAYA    | ONLINE | AU      | MAYA-ADSK-AU   | en_AU  | 014d336197b94414910b7317b5d019d1 | ADVANCED     | YEAR          | 2                  | TWO_YEAR    |
      | MAYA    | ONLINE | AU      | MAYA-ADSK-AU   | en_AU  | 014d336197b94414910b7317b5d019d1 | ADVANCED     | YEAR          | 3                  | THREE_YEAR  |
      | MAYALT  | ONLINE | AU      | MAYALT-ADSK-AU | en_AU  | 014d336197b94414910b7317b5d019d1 | ADVANCED     | YEAR          | 2                  | TWO_YEAR    |
      | MAYALT  | ONLINE | AU      | MAYALT-ADSK-AU | en_AU  | 014d336197b94414910b7317b5d019d1 | ADVANCED     | YEAR          | 3                  | THREE_YEAR  |
#      | MBXPRO  | ONLINE | AU      | MBXPRO-ADSK-AU | en_AU  | 014d336197b94414910b7317b5d019d1 | BASIC        | YEAR          | 2                  | TWO_YEAR    |
#      | MBXPRO  | ONLINE | AU      | MBXPRO-ADSK-AU | en_AU  | 014d336197b94414910b7317b5d019d1 | BASIC        | YEAR          | 3                  | THREE_YEAR  |
