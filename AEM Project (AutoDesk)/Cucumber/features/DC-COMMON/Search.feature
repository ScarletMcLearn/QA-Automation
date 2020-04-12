@DC
@SEARCH
@SLE2
@PT
@REGRESSION
@SLE1


Feature: SEARCH: AEM Google search

  As a user I can search within the local Autodesk domain

#################### Scenario 1 #####################


Scenario Outline: 1. Search per domain from Utility bar
  Given the user navigates to a "<page>" with Search Utility on the "<site>"
  When user searches for a "<query>" from the Utility bar
  #And clicks the keyboard enter key on the utility bar search
  #Then the search results returns the correct "<query>" term
  #And the "<site>" URL contains the "<destinationpage>", the sn: "<sn>" and the query: "<query>"

@SMOKE
Examples:
  | site   | query    | sn    | page                                                 | destinationpage                                   |
  | .com   | Autocad  | en_US | /qa-automation/new-utility-bar                       | /qa-automation/new-utility-bar/search-results-new |
  | .ca/fr | Autocad  | fr_CA | /qa-automation/new-utility-bar/search-results-new    | /qa-automation/new-utility-bar/search-results-new |


##################### Scenario 2 #####################

  Scenario Outline: 2. Search per domain from a Search Box
  Given the user navigates to a "<page>" with a Search Box on the "<site>"
  When user enters a "<query>" on the search box and clicks the enter key
  #Then the search results returns the correct "<query>" term
  #And the "<site>" URL contains the "<page>", the query: "<query>" and the sn: "<sn>"

 @SMOKE
 Examples:
  | site | query | sn    | page                                               |
  | .com | Maya  | en_US | /qa-automation/new-utility-bar/search-results-akn  |


##################### Scenario 3 #####################

 #Scenario Outline: 3. Unicode(Special-Character) search is available on Utility Bar search
 #Given the user navigates to a "<page>" with Search Utility on the "<site>"
 #When user searches for a "<query>" from the Utility bar
 #And clicks the keyboard enter key on the utility bar search
 #Then the search results returns the correct "<query>" term


Examples:
  | site   | query                    	| page                                                |
  | .com   | Architecture, Engineering  | /qa-automation/new-utility-bar/search-results-akn   |
  | .com   | Хорошего дня               | /qa-automation/new-utility-bar/search-results-akn   |
  | .com   | 良い一日                    | /qa-automation/new-utility-bar/search-results-new   |
  
  ##################### Scenario 4 #####################
			
Scenario Outline: 4. script added to URL
Given the user navigates to a "<page>" with Search Utility on the ".com" with a "<script>" in the url
Then the search results returns the correct "<query>" term

 Examples:
 | page                                               | script                                                       | query  |
 | /search                     | ?qt=test+%3Cscript%3Ealert(%27test%27)%3B%3C%2Fscript%3E&p=0 | test   |
  #| /qa-automation/new-utility-bar/search-results-new  | ?qt=test+%3Cscript%3Ealert(%27test%27)%3B%3C%2Fscript%3E&p=0 | test   |

