@AU
@WD
@AU-SEARCH
@PROD

Feature: PROD AU: Basic functionaly validation on PROD - Publishers


#########  Scenario 1  ##########
Scenario: 1- Verify for invalid search no result is found
Given I am on AU search page "/au-online/classes-on-demand/search"
When I enter text "autodes" in the search field
And hit enter key on the AU search field
Then I get no result found search header as "No results found. Here are a few tips:"


#########  Scenario 2  ##########
Scenario: 2- Verify for SPECIFIC search, the expected results are found and Browser title reflects the keyword that was searched for.
Given I am on AU search page "/au-online/classes-on-demand/search"
When I enter text "SM5745-V" in the search field
And hit enter key on the AU search field
Then I should see the Search Result page is loaded based on my query in the url "/au-online/classes-on-demand/search?full-text=SM5745-V&productName=&language=&year=&conference="
And I should see video thumbnail
And I should see "JORGE EMILIO LOPERA LEDESMA (2012)" in the class header
And I should see "¿Cuándo usar Autodesk® Inventor® Simulation y/o Simulation Mechanical y/o Robot?" in the au class title
And I should see "Autodesk Simulation" in the product section
And I should see "KEY LEARNING" in the key learning header
And I should see "Aprender a simplificar modelos para obtener mejores resultados de elementos finitos." in the first learning objective
And I should see "SM5745-V Classes and Videos | Autodesk University" as page title
