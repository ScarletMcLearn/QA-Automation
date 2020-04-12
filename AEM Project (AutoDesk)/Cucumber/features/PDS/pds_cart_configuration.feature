# PDS SLE2: https://web-sle-engineering-svc.awsism.autodesk.com/products/ACDIST?country=US&app=SRP&language=en
# PDS PT: https://web-pt-engineering-svc.autodesk.com/products/ACDIST?country=US&app=SRP&language=en
# PDS PROD: https://web-engineering-svc.autodesk.com/products/ACDIST?country=FR&app=ONLINE&language=fr
#***********************************************************************

@PDS
@pds_cart_configuration

Feature: pds_cart_configuration

  To validate the cart configuration in PDS JSON

  ######################## SCENARIO 1: WPE-3965, WPE-4613, WPE-4984, WPE-5265 #########################

  Scenario Outline: 1. Check Pelican Countries: US, CA and some EMEA's cart link type to be GUAC.

    Given the user is on a PDS cart configuration URL
    When the PDS response code is equal to 200
    Then the cartLinkType for Pelican "<country>" should be "<cartLinkType>"

  	@REGRESSION
  	@PROD
    Examples:
      | country | cartLinkType   |
      | US      | guac           |
      | CA      | guac           |
      | BE      | guac           |
      | DE      | guac           |
      | ES      | guac           |
      | FI      | guac           |
      | FR      | guac           |
      | GB      | guac           |
      | HU      | guac           |
      | IT      | guac           |
      | NL      | guac           |
      | PT      | guac           |
