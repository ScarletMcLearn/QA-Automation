# PDS SLE2: https://web-sle-engineering-svc.awsism.autodesk.com/products/ACDIST?country=US&app=SRP&language=en
# PDS PT: https://web-pt-engineering-svc.autodesk.com/products/ACDIST?country=US&app=SRP&language=en
# PDS PROD: https://web-engineering-svc.autodesk.com/products/ACDIST?country=FR&app=ONLINE&language=fr

# INFO: https://cloud.google.com/storage/docs/json_api/v1/status-codes
#***********************************************************************

@PDS
@Errors

Feature: pds_Errors

  Validate correct Error messages

######################## SCENARIO 1 #########################


Scenario Outline: 400,404 Error when parameter is invalid

  Given the PDS url has an Invalid "<product>"  or "<appKey>" or "<country>"
  Then the response code is equal to "<respcode>"
  And the error message should equal to "<errormsg>"

  @REGRESSION
  @PROD
  Examples:
	| product	| appKey 	| country | respcode| errormsg 					                             	|
	| BLA    	| ONLINE 	| US 		  | 404 		| Product line data not found. 			            	|
	| ACD 		| BLA 		| US 		  | 400 		| query param app is not a valid application key	|
	| ACD 		| ONLINE	| XX  	  | 400 		| query param country is not a valid country 	  	|

######################## SCENARIO 2 #########################

Scenario Outline: Error message when parameter is missing

  Given the PDS url has an Invalid "<product>"  or "<appKey>" or "<country>"
  Then the response code is equal to "<respcode>"
  And the error message should equal to "<errormsg>"

  @REGRESSION
  Examples:
	| product 	| appKey 	|country| respcode    | errormsg 					                              |
	| 	      	| ONLINE 	| US 		| 404         | HTTP 404 Not Found 			                      	|
	| ACD 		  | ONLINE 	| 	   	| 400         | query param country may not be empty 	         	|
	| 	      	| 		    | 	   	| 404         | HTTP 404 Not Found 			                      	|

######################## SCENARIO 3 #########################
# http://web-sle-engineering-svc.awsism.autodesk.com/products/ACD?app=ONLINE&country=US&language=xx
# BUG PL-3719

Scenario Outline: 400 Error when Language parameter is invalid

  Given the PDS url has a valid "<product>","<appKey>","<country>" but an Invalid language parameter "<language>"
  Then the response code is equal to "<respcode>"
  And the error message should equal to "<errormsg>"

  @REGRESSION
  Examples:
	| product  | appKey 	| country 	| language 	| respcode 	| errormsg 					                            |
	| ACD      | ONLINE 	| US 		    | xx 		    | 400 		  | query param language is not a valid language	|
