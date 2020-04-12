@AU
@WD
@QA-AU-SEARCH
@SLE2
@PT
@REGRESSION

Feature: AU Search page validation

#########  Scenario 1  ##########

#utility bar already covered in COD.feature


#########  Scenario 2  ##########

#Search box already covered in COD.feature


#########  Scenario 3  ##########
Scenario: 3- Search Page: Verify Filter Results is present and with subfilters
Given I am on AU search page "/qa-automation/au-online/search"
Then I should see "FILTER RESULTS" under the au searchbox
And I should see software option in the au search filter
And I should see language option in the au search filter
And I should see year option in the au search filter
And I should see conference option in the au search filter

#########  Scenario 4  ##########
Scenario: 4- Search Page: Verify Pagination is located at the bottom of page
Given I am on AU search page "/qa-automation/au-online/search"
Then page one should be selected by default in the pagination
And page one should be present in the pagination
And page eight should be present in the pagination
And left and right arrow should be present in the pagination


#########  Scenario 5  ##########

Scenario: 5- Verify for invalid search no result is found
Given I am on AU search page "/qa-automation/au-online/search"
When I enter text "autodes" in the search field
And hit enter key on the AU search field
Then I get no result found search header as "No results found. Here are a few tips:"
And I should see the Search Result page is loaded based on my query in the url "/qa-automation/au-online/search?full-text=autodes&productName=&language=&year=&conference="

#########  Scenario 6  ##########
Scenario: 6- Search Page: Verify for valid search results are found when using filtered results
Given I am on AU search page "/qa-automation/au-online/search"
And in the filter results I set software as '3ds Max Entertainment Creation Suite',language as 'English', year as '2013' and conference 'AU Las Vegas'
When I enter text "autodesk" in the search field
And hit enter key on the AU search field
Then I should see the Search Result page is loaded based on my query in the url "/qa-automation/au-online/search?full-text=autodesk&productName=3ds+Max+Entertainment+Creation+Suite&language=English&year=2013&conference=Las+Vegas"


#########  Scenario 7  ##########

Scenario: 7- Verify for SPECIFIC search, the expected results are found and Browser title reflects the keyword that was searched for.
Given I am on AU search page "/qa-automation/au-online/search"
When I enter text "SM5745-V" in the search field
And hit enter key on the AU search field
Then I should see the Search Result page is loaded based on my query in the url "/qa-automation/au-online/search?full-text=SM5745-V&productName=&language=&year=&conference="
And I should see video thumbnail
And I should see "JORGE EMILIO LOPERA LEDESMA (2012)" in the class header
And I should see "¿Cuándo usar Autodesk® Inventor® Simulation y/o Simulation Mechanical y/o Robot?" in the au class title
And I should see "Autodesk Simulation" in the product section
And I should see "KEY LEARNING" in the key learning header
And I should see "Aprender a simplificar modelos para obtener mejores resultados de elementos finitos." in the first learning objective
And I should see "SM5745-V Classes and Videos | Autodesk University" as page title
