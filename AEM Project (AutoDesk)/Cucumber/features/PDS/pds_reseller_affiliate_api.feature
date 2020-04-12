# PDS SLE2: https://web-sle-engineering-svc.awsism.autodesk.com/products/ACDIST?country=US&app=SRP&language=en
# PDS PT: https://web-pt-engineering-svc.autodesk.com/products/ACDIST?country=US&app=SRP&language=en
# PDS PROD: https://web-engineering-svc.autodesk.com/products/ACDIST?country=FR&app=ONLINE&language=fr
#***********************************************************************

@PDS
@REGRESSION

Feature: pds_reseller_affiliate_api

  API to send data from Reseller Affiliate popup field


######################## SCENARIO 1 #########################

Scenario Outline: 1. A response of 201 is received when valid data is posted.

 Given the test data is posted into the reseller affiliate table using "<id>", "<page>", "<plc>", "<email>"
 Then the response should be <status>


Examples:
| id      | page                                          | plc   | email        | status |
| 123456A | /content/global/en/products/autocad/subscribe | ACDLT | some@one.com | 201    |
| 123456C | /content/global/en/products/autocad/subscribe |       | some@one.com | 201    |

######################## SCENARIO 2 #########################

Scenario Outline: 2. A response of 400 is received when any empty or invalid data is posted.

 Given the test data is posted into the reseller affiliate table using "<id>", "<page>", "<plc>", "<email>"
 Then the response should be <status>


Examples:
| id       | page                                          | plc                   | email        | status |
|          | /content/global/en/products/autocad/subscribe | ACDLT                 | some@one.com | 400    |
| 123456C  |                                               | ACDLT                 | some@one.com | 400    |
| 123456C  | /content/global/en/products/autocad/subscribe | ACDLT                 |              | 400    |
| 123456A1 | /content/global/en/products/autocad/subscribe | ACDLT                 | some@one.com | 400    |
| 123456A  | https://www.autodesk.com                      | AACDLTBBBBBBBBBBBBBBBB| some@one.com | 400    |
| 123456B  | /content/global/en/products/autocad/subscribe | ACDLT | AACDLTBBBBBBBBBBBBBBBBEFGHIJKLMNOPQRSTUVWXYZACDLTBBBBBBBBBBBBBBBBEFGHIJKLMNOPQRSTUVWXYZACDLTBBBBBBBBBBBBBBBBEFGHIJKLMNOPQRSTUVWXYZACDLTBBBBBBBBBBBBBBBBEFGHIJKLMNOPQRSTUVWXYZACDLTBBBBBBBBBBBBBBCDEFGHIJKLMNOPQRSTUVWXYZACDLTBBBBBBBBBBBBBBCDEFGHIJKLMN@one.com | 400    |
| 123456A  | AACDLTBBBBBBBBBBBBBBBBEFGHIJKLMNOPQRSTUVWXYZACDLTBBBBBBBBBBBBBBBBEFGHIJKLMNOPQRSTUVWXYZACDLTBBBBBBBBBBBBBBBBEFGHIJKLMNOPQRSTUVWXYZACDLTBBBBBBBBBBBBBBBBEFGHIJKLMNOPQRSTUVWXYZACDLTBBBBBBBBBBBBBBBBEFGHIJKLMNOPQRSTUVWXYZACDLTBBBBBBBBBBBBBBBBEFGHIJKLMNOPQRSTUVWXYZACDLTBBBBBBBBBBBBBBBBEFGHIJKLMNOPQRSTUVWXYZACDLTBBBBBBBBBBBBBBBBEFGHIJKLMNOPQRSTUVWXYZACDLTBBBBBBBBBBBBBBBBEFGHIJKLMNOPQRSTUVWXYZACDLTBBBBBBBBBBBBBBBBEFGHIJKLMNOPQRSTUVWXYZACDLTBBBBBBBBBBBBBBBBEFGHIJKLMNOPQRSTUVWXYZACDLTBBBBBBBBBBBBBBBBEFGHIJ | ACDLT                 | some@one.com | 400    |

######################## SCENARIO 3 #########################

Scenario Outline: 3. A response of 201 when an SQL injection is posted, instead of the statement being executed.

 Given the test data is posted into the reseller affiliate table using "<id>", "<page>", "<plc>", "<email>"
 Then the response should be <status>


Examples:
| id      | page | plc                   | email                                                          | status |
| 123456? | .com | ACDLT                 | a@b.c; DROP ResellerAffiliate                                  | 201    |
| 123456! | .com | ACDLT                 | a@b.c; SELECT * FROM ResellerAffiliate WHERE plc = BBB  OR 1=1 | 201    |


