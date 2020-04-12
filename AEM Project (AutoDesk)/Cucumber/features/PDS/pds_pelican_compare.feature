# PDS SLE2: https://web-sle-engineering-svc.awsism.autodesk.com/products/ACDIST?country=US&app=SRP&language=en
# PDS PT: https://web-pt-engineering-svc.autodesk.com/products/ACDIST?country=US&app=SRP&language=en
# PDS PROD: https://web-engineering-svc.autodesk.com/products/ACDIST?country=FR&app=ONLINE&language=fr
#***********************************************************************

@PDS
@Pelican

Feature: pds_pelican_compare

  Compare values between PDS JSON and Pelican JSON.


######################## SCENARIO 1 #########################

  Scenario Outline: 1. ONLINE: Compare pricing details from PDS and Pelican

    Given the user is on a PDS URL for "<product>" and "<appKey>" and "<country>"
    And the user is on a Pelican URL for "<product>" and "<country>" and "<store>"
    When the Pelican response code is equal to 200
    And the PDS response code is equal to 200
    And the "<billingPeriod>" and "<billingPeriodCount>" and "<supportLevel>" for PDS are provided
    And the "<billingPeriod>" and "<billingPeriodCount>" and "<supportLevel>" for Pelican are provided
    Then the user compares the values in the pricing fields specified "<validation_field>"

  @PROD
    Examples:
      | product | appKey | country | store       | currency | supportLevel | billingPeriod | billingPeriodCount | validation_field |
      | ACDIST  | ONLINE | US      | STORE-NAMER | USD      | ADVANCED     | YEAR          | 1                  | amount           |
      | ACDIST  | ONLINE | US      | STORE-NAMER | USD      | ADVANCED     | YEAR          | 1                  | vatAmount        |
      | ACDIST  | ONLINE | US      | STORE-NAMER | USD      | ADVANCED     | MONTH         | 1                  | priceId          |

      #| ACDIST     | ONLINE | DK      | STORE-EU    | USD      | ADVANCED     | YEAR          | 1                  | amount                      |
      #| ACDIST     | ONLINE | DK      | STORE-EU    | USD      | ADVANCED     | YEAR          | 2                  | vatAmount                   |
      #| ACDIST     | ONLINE | DK      | STORE-EU    | USD      | ADVANCED     | MONTH         | 1                  | priceId                     |
      #| ACDIST     | ONLINE | DK      | STORE-EU    | USD      | ADVANCED     | YEAR          | 2                  | discount                    |
      #| ACDIST     | ONLINE | DK      | STORE-EU    | USD      | ADVANCED     | YEAR          | 3                  | amountBeforeDiscountWithVat |

      #| AA360P  | ONLINE | US      | STORE-NAMER | USD      | ADVANCED     | YEAR          | 1                  | amount                      |
      #| AA360P  | ONLINE | US      | STORE-NAMER | USD      | ADVANCED     | YEAR          | 1                  | priceId                     |
      #| AA360P  | ONLINE | US      | STORE-NAMER | USD      | ADVANCED     | YEAR          | 1                  | type                        |
      #| F360B   | ONLINE | US      | STORE-NAMER | USD      | ADVANCED     | YEAR          | 3                  | amount                      |
      #| F360B   | ONLINE | US      | STORE-NAMER | USD      | ADVANCED     | YEAR          | 3                  | priceId                     |
      #| F360B   | ONLINE | US      | STORE-NAMER | USD      | ADVANCED     | YEAR          | 3                  | type                        |
      #| MAYA    | ONLINE | US      | STORE-NAMER | USD      | ADVANCED     | YEAR          | 1                  | amount                      |
      #| MAYA    | ONLINE | US      | STORE-NAMER | USD      | ADVANCED     | YEAR          | 1                  | priceId                     |
      #| MAYA    | ONLINE | US      | STORE-NAMER | USD      | ADVANCED     | YEAR          | 1                  | type                        |


  @REGRESSION
    Examples:
      | product | appKey | country | store | currency | supportLevel | billingPeriod | billingPeriodCount | validation_field |
      #| ACDIST     | ONLINE | US      | STORE-NAMER | USD      | ADVANCED     | YEAR          | 1                  | amount                      |
      #| ACDIST     | ONLINE | US      | STORE-NAMER | USD      | ADVANCED     | YEAR          | 1                  | vatAmount                   |
      #| ACDIST     | ONLINE | US      | STORE-NAMER | USD      | ADVANCED     | MONTH         | 1                  | priceId   |

  @WIP
    Examples:
      | product | appKey | country | store       | currency | supportLevel | billingPeriod | billingPeriodCount | validation_field            |
      | ACDIST  | ONLINE | US      | STORE-NAMER | USD      | ADVANCED     | YEAR          | 2                  | discount                    |
      | ACDIST  | ONLINE | US      | STORE-NAMER | USD      | ADVANCED     | YEAR          | 3                  | amountBeforeDiscountWithVat |

      | ACDIST  | ONLINE | BE      | STORE-EU    | USD      | ADVANCED     | YEAR          | 1                  | amount                      |
      | ACDIST  | ONLINE | BE      | STORE-EU    | USD      | ADVANCED     | YEAR          | 1                  | vatAmount                   |
      | ACDIST  | ONLINE | BE      | STORE-EU    | USD      | ADVANCED     | MONTH         | 1                  | priceId                     |
      | ACDIST  | ONLINE | BE      | STORE-EU    | USD      | ADVANCED     | YEAR          | 2                  | discount                    |
      | ACDIST  | ONLINE | BE      | STORE-EU    | USD      | ADVANCED     | YEAR          | 3                  | amountBeforeDiscountWithVat |

      | ACDIST  | ONLINE | GR      | STORE-EU    | USD      | ADVANCED     | YEAR          | 1                  | amount                      |
      | ACDIST  | ONLINE | GR      | STORE-EU    | USD      | ADVANCED     | YEAR          | 2                  | vatAmount                   |
      | ACDIST  | ONLINE | GR      | STORE-EU    | USD      | ADVANCED     | MONTH         | 1                  | priceId                     |
      | ACDIST  | ONLINE | GR      | STORE-EU    | USD      | ADVANCED     | YEAR          | 2                  | discount                    |
      | ACDIST  | ONLINE | GR      | STORE-EU    | USD      | ADVANCED     | YEAR          | 3                  | amountBeforeDiscountWithVat |

      | ACDIST  | ONLINE | HU      | STORE-EU    | USD      | ADVANCED     | YEAR          | 1                  | amount                      |
      | ACDIST  | ONLINE | HU      | STORE-EU    | USD      | ADVANCED     | YEAR          | 1                  | vatAmount                   |
      | ACDIST  | ONLINE | HU      | STORE-EU    | USD      | ADVANCED     | MONTH         | 1                  | priceId                     |
      | ACDIST  | ONLINE | HU      | STORE-EU    | USD      | ADVANCED     | YEAR          | 2                  | discount                    |
      | ACDIST  | ONLINE | HU      | STORE-EU    | USD      | ADVANCED     | YEAR          | 3                  | amountBeforeDiscountWithVat |

      | ACDIST  | ONLINE | MT      | STORE-EU    | USD      | ADVANCED     | YEAR          | 1                  | amount                      |
      | ACDIST  | ONLINE | MT      | STORE-EU    | USD      | ADVANCED     | YEAR          | 2                  | vatAmount                   |
      | ACDIST  | ONLINE | MT      | STORE-EU    | USD      | ADVANCED     | MONTH         | 1                  | priceId                     |
      | ACDIST  | ONLINE | MT      | STORE-EU    | USD      | ADVANCED     | YEAR          | 2                  | discount                    |
      | ACDIST  | ONLINE | MT      | STORE-EU    | USD      | ADVANCED     | YEAR          | 3                  | amountBeforeDiscountWithVat |

      | ACDIST  | ONLINE | PT      | STORE-EU    | USD      | ADVANCED     | YEAR          | 1                  | amount                      |
      | ACDIST  | ONLINE | PT      | STORE-EU    | USD      | ADVANCED     | YEAR          | 2                  | vatAmount                   |
      | ACDIST  | ONLINE | PT      | STORE-EU    | USD      | ADVANCED     | MONTH         | 1                  | priceId                     |
      | ACDIST  | ONLINE | PT      | STORE-EU    | USD      | ADVANCED     | YEAR          | 2                  | discount                    |
      | ACDIST  | ONLINE | PT      | STORE-EU    | USD      | ADVANCED     | YEAR          | 3                  | amountBeforeDiscountWithVat |
      | ACDIST  | ONLINE | SE      | STORE-EU    | USD      | ADVANCED     | YEAR          | 1                  | amount                      |
      | ACDIST  | ONLINE | SE      | STORE-EU    | USD      | ADVANCED     | YEAR          | 2                  | vatAmount                   |
      | ACDIST  | ONLINE | SE      | STORE-EU    | USD      | ADVANCED     | MONTH         | 1                  | priceId                     |
      | ACDIST  | ONLINE | SE      | STORE-EU    | USD      | ADVANCED     | YEAR          | 2                  | discount                    |
      | ACDIST  | ONLINE | SE      | STORE-EU    | USD      | ADVANCED     | YEAR          | 3                  | amountBeforeDiscountWithVat |

      | ACDIST  | ONLINE | NO      | STORE-EU    | USD      | ADVANCED     | YEAR          | 1                  | amount                      |
      | ACDIST  | ONLINE | NO      | STORE-EU    | USD      | ADVANCED     | YEAR          | 2                  | vatAmount                   |
      | ACDIST  | ONLINE | NO      | STORE-EU    | USD      | ADVANCED     | MONTH         | 1                  | priceId                     |
      | ACDIST  | ONLINE | NO      | STORE-EU    | USD      | ADVANCED     | YEAR          | 2                  | discount                    |
      | ACDIST  | ONLINE | NO      | STORE-EU    | USD      | ADVANCED     | YEAR          | 3                  | amountBeforeDiscountWithVat |

      | ACDIST  | ONLINE | GB      | STORE-UK    | USD      | ADVANCED     | YEAR          | 1                  | amount                      |
      | ACDIST  | ONLINE | GB      | STORE-UK    | USD      | ADVANCED     | YEAR          | 2                  | vatAmount                   |
      | ACDIST  | ONLINE | GB      | STORE-UK    | USD      | ADVANCED     | MONTH         | 1                  | priceId                     |
      | ACDIST  | ONLINE | GB      | STORE-UK    | USD      | ADVANCED     | YEAR          | 2                  | discount                    |
      | ACDIST  | ONLINE | GB      | STORE-UK    | USD      | ADVANCED     | YEAR          | 3                  | amountBeforeDiscountWithVat |

      | ACDIST  | ONLINE | DE      | STORE-DE    | USD      | ADVANCED     | YEAR          | 1                  | amount                      |
      | ACDIST  | ONLINE | DE      | STORE-DE    | USD      | ADVANCED     | YEAR          | 2                  | vatAmount                   |
      | ACDIST  | ONLINE | DE      | STORE-DE    | USD      | ADVANCED     | MONTH         | 1                  | priceId                     |
      | ACDIST  | ONLINE | DE      | STORE-DE    | USD      | ADVANCED     | YEAR          | 2                  | discount                    |
      | ACDIST  | ONLINE | DE      | STORE-DE    | USD      | ADVANCED     | YEAR          | 3                  | amountBeforeDiscountWithVat |

      | ACDIST  | ONLINE | FR      | STORE-FR    | USD      | ADVANCED     | YEAR          | 1                  | amount                      |
      | ACDIST  | ONLINE | FR      | STORE-FR    | USD      | ADVANCED     | YEAR          | 2                  | vatAmount                   |
      | ACDIST  | ONLINE | FR      | STORE-FR    | USD      | ADVANCED     | MONTH         | 1                  | priceId                     |
      | ACDIST  | ONLINE | FR      | STORE-FR    | USD      | ADVANCED     | YEAR          | 2                  | discount                    |
      | ACDIST  | ONLINE | FR      | STORE-FR    | USD      | ADVANCED     | YEAR          | 3                  | amountBeforeDiscountWithVat |

      | ACDIST  | ONLINE | CH      | STORE-DE    | USD      | ADVANCED     | YEAR          | 1                  | amount                      |
      | ACDIST  | ONLINE | CH      | STORE-DE    | USD      | ADVANCED     | YEAR          | 2                  | vatAmount                   |
      | ACDIST  | ONLINE | CH      | STORE-DE    | USD      | ADVANCED     | MONTH         | 1                  | priceId                     |
      | ACDIST  | ONLINE | CH      | STORE-DE    | USD      | ADVANCED     | YEAR          | 2                  | discount                    |
      | ACDIST  | ONLINE | CH      | STORE-DE    | USD      | ADVANCED     | YEAR          | 3                  | amountBeforeDiscountWithVat |

      | ACDIST  | ONLINE | ES      | STORE-ES    | USD      | ADVANCED     | YEAR          | 1                  | amount                      |
      | ACDIST  | ONLINE | ES      | STORE-ES    | USD      | ADVANCED     | YEAR          | 2                  | vatAmount                   |
      | ACDIST  | ONLINE | ES      | STORE-ES    | USD      | ADVANCED     | MONTH         | 1                  | priceId                     |
      | ACDIST  | ONLINE | ES      | STORE-ES    | USD      | ADVANCED     | YEAR          | 2                  | discount                    |
      | ACDIST  | ONLINE | ES      | STORE-ES    | USD      | ADVANCED     | YEAR          | 3                  | amountBeforeDiscountWithVat |

      | ACDIST  | ONLINE | IT      | STORE-IT    | USD      | ADVANCED     | YEAR          | 1                  | amount                      |
      | ACDIST  | ONLINE | IT      | STORE-IT    | USD      | ADVANCED     | YEAR          | 2                  | vatAmount                   |
      | ACDIST  | ONLINE | IT      | STORE-IT    | USD      | ADVANCED     | MONTH         | 1                  | priceId                     |
      | ACDIST  | ONLINE | IT      | STORE-IT    | USD      | ADVANCED     | YEAR          | 2                  | discount                    |
      | ACDIST  | ONLINE | IT      | STORE-IT    | USD      | ADVANCED     | YEAR          | 3                  | amountBeforeDiscountWithVat |




######################## SCENARIO 2 #########################

  Scenario Outline: 2. ONLINE: PDS gets the external_key details from Pelican

    Given the user is on a PDS URL for "<product>" and "<appKey>" and "<country>"
    And the user is on a Pelican URL for "<product>" and "<country>" and "<store>"
    When the Pelican response code is equal to 200
    And the PDS response code is equal to 200
    Then the user reads the external key received in PDS for the support level "<supportLevel>" specified
    And the user reads the external key received in pelican for the support level "<supportLevel>" specified
    And compare the external key values.


  @REGRESSION
  @PROD
    Examples:
      | product | appKey | country | store       | supportLevel |
      | ACDIST  | ONLINE | US      | STORE-NAMER | BASIC        |
      | ACDIST  | ONLINE | US      | STORE-NAMER | ADVANCED     |
      | ACDIST  | ONLINE | BE      | STORE-EU    | ADVANCED     |
      | ACDIST  | ONLINE | GB      | STORE-UK    | BASIC        |


  @WIP
    Examples:
      | product | appKey | country | store       | supportLevel |
      | ACDIST  | ONLINE | US      | STORE-NAMER | BASIC        |
      | ACDIST  | ONLINE | US      | STORE-NAMER | ADVANCED     |

      | ACDIST  | ONLINE | US      | STORE-NAMER | BASIC        |
      | ACDIST  | ONLINE | US      | STORE-NAMER | ADVANCED     |

      | ACDIST  | ONLINE | BE      | STORE-EU    | BASIC        |
      | ACDIST  | ONLINE | BE      | STORE-EU    | ADVANCED     |

      | ACDIST  | ONLINE | GR      | STORE-EU    | ADVANCED     |
      | ACDIST  | ONLINE | GR      | STORE-EU    | BASIC        |

      | ACDIST  | ONLINE | HU      | STORE-EU    | ADVANCED     |
      | ACDIST  | ONLINE | HU      | STORE-EU    | BASIC        |

      | ACDIST  | ONLINE | MT      | STORE-EU    | BASIC        |
      | ACDIST  | ONLINE | MT      | STORE-EU    | ADVANCED     |

      | ACDIST  | ONLINE | PT      | STORE-EU    | BASIC        |
      | ACDIST  | ONLINE | PT      | STORE-EU    | ADVANCED     |

      | ACDIST  | ONLINE | SE      | STORE-EU    | BASIC        |
      | ACDIST  | ONLINE | SE      | STORE-EU    | ADVANCED     |

      | ACDIST  | ONLINE | NO      | STORE-EU    | BASIC        |
      | ACDIST  | ONLINE | NO      | STORE-EU    | ADVANCED     |

      | ACDIST  | ONLINE | GB      | STORE-UK    | BASIC        |
      | ACDIST  | ONLINE | GB      | STORE-UK    | ADVANCED     |

      | ACDIST  | ONLINE | DE      | STORE-DE    | ADVANCED     |
      | ACDIST  | ONLINE | DE      | STORE-DE    | BASIC        |

      | ACDIST  | ONLINE | FR      | STORE-FR    | BASIC        |
      | ACDIST  | ONLINE | FR      | STORE-FR    | ADVANCED     |

      | ACDIST  | ONLINE | CH      | STORE-DE    | BASIC        |
      | ACDIST  | ONLINE | CH      | STORE-DE    | ADVANCED     |

      | ACDIST  | ONLINE | ES      | STORE-ES    | BASIC        |
      | ACDIST  | ONLINE | ES      | STORE-ES    | ADVANCED     |

      | ACDIST  | ONLINE | IT      | STORE-IT    | ADVANCED     |
      | ACDIST  | ONLINE | IT      | STORE-IT    | BASIC        |

######################## SCENARIO 3 #########################
# UPDATE: cart.bicstg and cart prod no longer appears to contain "Meta" subscription. Therefore scenario is commented out.
  #@REGRESSION
  #@PROD

  Scenario: 3. ONLINE: PDS response strips out duplicate billing plans included in the Pelican JSON

    Given the user is on a PDS URL for "MAYA" and "ONLINE" and "US"
    And the user is on a Pelican URL for "MAYA" and "US" and "STORE-NAMER"
    When the Pelican response contains "BIC_SUBSCRIPTION" for "BASIC" support level
    And the Pelican response contains "META_SUBSCRIPTION" for "BASIC" support level
    Then the PDS response contains "BIC_SUBSCRIPTION" for the "BASIC" support level
    And the PDS response does not contain "META_SUBCRIPTION" for the "BASIC" support level


######################## SCENARIO 4 #########################

  Scenario Outline: 4. ONLINE: PDS gets the Promotion details from Pelican

    Given the user is on a PDS URL for "<product>" and "<appKey>" and "<country>"
    And the user is on a Pelican URL for "<product>" and "<country>" and "<store>"
    When the Pelican response code is equal to 200
    And the PDS response code is equal to 200
    And the "<billPeriod>" and "<billPeriodCount>" and "<s_Level>" for PDS are provided
    And the "<billPeriod>" and "<billPeriodCount>" and "<s_Level>" for Pelican are provided
    Then the user compares the values in the pricing fields specified "<validation_field>"


    Examples:
      | product | appKey | country | store    | s_Level  | billPeriod | billPeriodCount | validation_field |
      | MAYALT  | ONLINE | FR      | STORE-FR | ADVANCED | YEAR       | 2               | promoId          |
      | MAYALT  | ONLINE | FR      | STORE-FR | ADVANCED | YEAR       | 2               | promoName        |
      | MAYALT  | ONLINE | FR      | STORE-FR | ADVANCED | YEAR       | 2               | promoHeadline    |
      | MAYALT  | ONLINE | FR      | STORE-FR | ADVANCED | YEAR       | 2               | promoSubHeadline |
      | MAYALT  | ONLINE | FR      | STORE-FR | ADVANCED | YEAR       | 2               | promoType        |


    Examples:
      | product | appKey | country | store       | s_Level  | billPeriod | billPeriodCount | validation_field |
      | ACDIST  | ONLINE | US      | STORE-NAMER | ADVANCED | YEAR       | 1               | promoId          |
      | ACDIST  | ONLINE | US      | STORE-NAMER | ADVANCED | YEAR       | 1               | promoName        |
      | ACDIST  | ONLINE | US      | STORE-NAMER | ADVANCED | YEAR       | 1               | promoHeadline    |
      | ACDIST  | ONLINE | US      | STORE-NAMER | ADVANCED | YEAR       | 1               | promoSubHeadline |
      | ACDIST  | ONLINE | US      | STORE-NAMER | ADVANCED | YEAR       | 1               | promoType        |
      | ACDIST  | ONLINE | US      | STORE-NAMER | ADVANCED | YEAR       | 3               | promoId          |
      | ACDIST  | ONLINE | US      | STORE-NAMER | ADVANCED | YEAR       | 3               | promoName        |
      | ACDIST  | ONLINE | US      | STORE-NAMER | ADVANCED | YEAR       | 3               | promoHeadline    |
      | ACDIST  | ONLINE | US      | STORE-NAMER | ADVANCED | YEAR       | 3               | promoSubHeadline |
      | ACDIST  | ONLINE | US      | STORE-NAMER | ADVANCED | YEAR       | 3               | promoType        |


  @PROD
  @REGRESSION
    Examples:
      | product | appKey | country | store       | s_Level  | billPeriod | billPeriodCount | validation_field |
      # | ACDIST  | ONLINE | US      | STORE-NAMER | ADVANCED | YEAR       | 1               | promoId          |
      | ACDIST  | ONLINE | US      | STORE-NAMER | ADVANCED | YEAR       | 1               | promoName        |
      # | ACDIST  | ONLINE | US      | STORE-NAMER | ADVANCED | YEAR       | 1               | promoHeadline    |
      # | ACDIST  | ONLINE | US      | STORE-NAMER | ADVANCED | YEAR       | 1               | promoSubHeadline |
      | ACDIST  | ONLINE | US      | STORE-NAMER | ADVANCED | YEAR       | 1               | promoType        |