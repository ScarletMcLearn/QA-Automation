#SLE2: https://www-sle2.awsism.autodesk.com/qa-automation/fsb-buy/buy-container/sys-req.contenthub.json
#**********************************************************************

@DC
@API
@SLE2
@PT
@REGRESSION
@SLE1

Feature: search_api

	Validation of Content Hub Search API feature


  ######################## SCENARIO 1 #########################

  Scenario Outline: 1- API returns metadata of content hub
    Given the user sends request with "<parameters>"
    Then the API returns <results> results

@SMOKE
Examples:
  	| parameters                                                                 | results |
  	|                                                                            | 8       |
    | tag=topic/aec/in_practice/using_model_analysis                             | 1       |
    | tag=role/aec/designer                                                      | 2       |
    | tag=industry/aec/civil_infrastructure/roads_highways                       | 2       |
    | tag=role/aec/designer&tag=industry/aec/civil_infrastructure/roads_highways | 1       |
    | tag=role/aec                                                               | 0       |
    | q=no buy                                                                   | 1       |
    | q=data3                                                                    | 1       |
    | q=data                                                                     | 3       |
    | q=blablabla                                                                | 0       |
    | tag=role/aec/designer&q=set                                                | 1       |
    | tag=role/aec/designer&q=doubled                                            | 0       |


    ######################## SCENARIO 2 #########################

@SMOKE
  Scenario: 2- Metadata has pds information
    Given the user sends request with ""
    Then the metadata result has pds information