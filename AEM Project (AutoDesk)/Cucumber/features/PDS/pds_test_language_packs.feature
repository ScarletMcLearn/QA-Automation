# PDS SLE2: https://web-sle-engineering-svc.awsism.autodesk.com/products/ACDIST?country=US&app=SRP&language=en
# PDS PT: https://web-pt-engineering-svc.autodesk.com/products/ACDIST?country=US&app=SRP&language=en
# PDS PROD: https://web-engineering-svc.autodesk.com/products/ACDIST?country=FR&app=ONLINE&language=fr
#***********************************************************************

@PDS
@REGRESSION
@PROD

Feature: pds_test_language_packs

  To validate PDS json for test language packs against expected json

  Scenario Outline: 1. TEST LANGUAGE PACKS : Compare to expected json.

    Given the user is on a PDS URL for language packs "<product>"
    When the PDS response code is equal to 200
    Then validate the response against expected json "<jsonExpected>"

    Examples:
      | product | jsonExpected    |
      | ACDLT   | ACD_lang_pack   |
      | MAYA    | MAYA_lang_pack  |
      | F360B   | F360B_lang_pack |
