Feature: AIM Site functionalities

    Background: 

        Given Browser is opened
        And nagivated to AIM inspect site // https://crm-qa.aiminspect.com/
        And AIM Inspect site is displayed 
        And correct user name and password is entered
        And login form is submitted



    Scenario: No Results found if does not exist

        When click on Request 
        And input text in search bar which does not exist # sdfsdf32423
        And click search
        Then 'No Results Found.' message is displayed


    Scenario: Results displayed if does exist

        When click on Request 
        And input text in search bar which does exist # asa
        And click search
        Then search results are displayed




    Scenario: Search bar is displayed

        When logged in 
        Then search bar on navigation menu is displayed 







    Scenario: Edit Lessee info

        Given current page is single inspection search result detail page 
        When find Lessee Info section
        And hover over Lessee Info edit button
        And click on Lessee Info edit button
        Then edit Lessee Info page is shown 


    Scenario: Edit Dealer info

        Given current page is single inspection search result detail page 
        When find Dealer Info section
        And hover over Dealer Info edit button
        And click on Dealer Info edit button
        Then edit Dealer Info page is shown 


    Scenario: Add Disposition

        Given current page is single inspection search result detail page 
        When find Dispositions section
        And hover over Add Disposition button
        And click Add Disposition button
        And Add Disposition page is displayed
        And select call type from options
        And select disposition type from dropdown menu
        And click Add
        Then Disposition is added in Disposition section


    Scenario: Schedule Appointment

        Given current page is single inspection search result detail page 
        When find Current Appointment Detail section
        And click the options button
        And select Schedule from options
        And Schedule Appointment form is displayed
        And fill up the Schedule Appointment form
        And click Save
        Then appointment can be seen scheduled in the Current Appointments section


    Scenario: Add Internal Comment

        Given current page is single inspection search result detail page 
        When find Internal Comments section
        And click the Add Comment button
        And Add Internal Comment page is shown
        And input comment in field
        And click Add
        Then comment can be seen in Internal Comments section






    Scenario: See Organization Exists

        Given current page is AIM Inspect site 
        When click Basic Search box
        And input Organization name
        And click Search
        And click Submit
        Then Organization is displayed in search results
        








    Scenario: Advanced Requests Search Form with no values returns all Requests

        Given current URL is AIM Inspect site home page
        When user overs over Request tab
        And click Search Requests
        And clicks  Advanced Search
        And leaves Advanced Search form empty
        And clicks search button
        Then all request search results will be displayed







    Scenario: Organization Search Form with no values returns all Organizations

        Given current URL is AIM Inspect site home page
        When user overs over Request tab
        And click Search Organizations
        And leaves Search form empty
        And clicks search button
        Then all organization search results will be displayed




    Scenario: Organization Search Form Customer Type dropdown menu functioning 

        Given current URL is AIM Inspect site home page
        When user overs over Request tab
        And click Search Organizations
        And clicks Customer Dropdown menu
        Then different Customers are shown in options


    Scenario: Organization Search Form with Customer Type CHASE returns CHASE results 

        Given current URL is AIM Inspect site home page
        When user overs over Request tab
        And click Search Organizations
        And clicks Customer Dropdown menu
        And selects CHASE from Dropdown menu
        And clicks search button
        Then all organization search results with CHASE will be displayed



    Scenario: Organization Search Form with Customer Type US BANK returns US BANK results 

        Given current URL is AIM Inspect site home page
        When user overs over Request tab
        And click Search Organizations
        And clicks Customer Dropdown menu
        And selects US BANK from Dropdown menu
        And clicks search button
        Then all organization search results with US BANK will be displayed



    Scenario: Organization Search Form with Customer Type ALLY returns ALLY results 

        Given current URL is AIM Inspect site home page
        When user overs over Request tab
        And click Search Organizations
        And clicks Customer Dropdown menu
        And selects ALLY from Dropdown menu
        And clicks search button
        Then all organization search results with ALLY will be displayed


    
    Scenario: Organization Search Form with Customer Type TFS returns TFS results 

        Given current URL is AIM Inspect site home page
        When user overs over Request tab
        And click Search Organizations
        And clicks Customer Dropdown menu
        And selects TFS from Dropdown menu
        And clicks search button
        Then all organization search results with TFS will be displayed



    Scenario: Organization Search Form with Customer Type VCI returns VCI results 

        Given current URL is AIM Inspect site home page
        When user overs over Request tab
        And click Search Organizations
        And clicks Customer Dropdown menu
        And selects VCI from Dropdown menu
        And clicks search button
        Then all organization search results with VCI will be displayed



    Scenario: Organization Search Form with Customer Type CHRYSLER STYDER returns CHRYSLER STYDER results 

        Given current URL is AIM Inspect site home page
        When user overs over Request tab
        And click Search Organizations
        And clicks Customer Dropdown menu
        And selects CHRYSLER STYDER from Dropdown menu
        And clicks search button
        Then all organization search results with CHRYSLER STYDER will be displayed



    Scenario: Organization Search Form with Customer Type MENHEIM returns MENHEIM results 

        Given current URL is AIM Inspect site home page
        When user overs over Request tab
        And click Search Organizations
        And clicks Customer Dropdown menu
        And selects MENHEIM from Dropdown menu
        And clicks search button
        Then all organization search results with MENHEIM will be displayed



    Scenario: Organization Search Form with Customer Type HYUNDAI returns HYUNDAI results 

        Given current URL is AIM Inspect site home page
        When user overs over Request tab
        And click Search Organizations
        And clicks Customer Dropdown menu
        And selects HYUNDAI from Dropdown menu
        And clicks search button
        Then all organization search results with HYUNDAI will be displayed



    Scenario: Organization Search Form with Customer Type NISSAN returns NISSAN results 

        Given current URL is AIM Inspect site home page
        When user overs over Request tab
        And click Search Organizations
        And clicks Customer Dropdown menu
        And selects NISSAN from Dropdown menu
        And clicks search button
        Then all organization search results with NISSAN will be displayed



    


    Scenario: Organization Search Form Country dropdown menu functioning 

        Given current URL is AIM Inspect site home page
        When user overs over Request tab
        And click Search Organizations
        And clicks Country Dropdown menu
        Then different Countries are shown in options



    Scenario: Organization Search Form with US selected from Country dropdown menu shows US results 

        Given current URL is AIM Inspect site home page
        When user overs over Request tab
        And click Search Organizations
        And clicks Country Dropdown menu
        And selects US from the options
        And clicks search
        Then US results are shown


    Scenario: Organization Search Form with Mexico selected from Country dropdown menu shows US results 

        Given current URL is AIM Inspect site home page
        When user overs over Request tab
        And click Search Organizations
        And clicks Country Dropdown menu
        And selects Mexico from the options
        And clicks search
        Then Mexico results are shown


    Scenario: Organization Search Form with Canada selected from Country dropdown menu shows Canada results 

        Given current URL is AIM Inspect site home page
        When user overs over Request tab
        And click Search Organizations
        And clicks Country Dropdown menu
        And selects Canada from the options
        And clicks search
        Then Canada results are shown



    




    Scenario: Organization Search Form with US selected from Country dropdown menu shows US results 

        Given current URL is AIM Inspect site home page
        When user overs over Request tab
        And click Search Organizations
        And clicks Country Dropdown menu
        And selects US from the options
        And clicks search
        Then US results are shown


    Scenario: Organization Search Form with Mexico selected from Country dropdown menu shows US results 

        Given current URL is AIM Inspect site home page
        When user overs over Request tab
        And click Search Organizations
        And clicks Country Dropdown menu
        And selects Mexico from the options
        And clicks search
        Then Mexico results are shown


    Scenario: Organization Search Form with Canada selected from Country dropdown menu shows Canada results 

        Given current URL is AIM Inspect site home page
        When user overs over Request tab
        And click Search Organizations
        And clicks Country Dropdown menu
        And selects Canada from the options
        And clicks search
        Then Canada results are shown




    Scenario: Organization Search Form with Mexico selected from Country dropdown menu shows Mexico states in States dropdown menu 

        Given current URL is AIM Inspect site home page
        When user overs over Request tab
        And click Search Organizations
        And clicks Country Dropdown menu
        And selects Mexico from the options
        And clicks States dropdown menu
        Then Mexico States are shown in dropdown menu


    Scenario: Organization Search Form with US selected from Country dropdown menu shows US states in States dropdown menu 

        Given current URL is AIM Inspect site home page
        When user overs over Request tab
        And click Search Organizations
        And clicks Country Dropdown menu
        And selects US from the options
        And clicks States dropdown menu
        Then US States are shown in dropdown menu



    
    Scenario: Organization Search Form with Canada selected from Country dropdown menu shows Canada states in States dropdown menu 

        Given current URL is AIM Inspect site home page
        When user overs over Request tab
        And click Search Organizations
        And clicks Country Dropdown menu
        And selects Canada from the options
        And clicks States dropdown menu
        Then Canada States are shown in dropdown menu







    Scenario: Organization Search Form with Canada selected from Country dropdown menu and Alberta from States dropdown menu returns Alberta in search results

        Given current URL is AIM Inspect site home page
        When user overs over Request tab
        And click Search Organizations
        And clicks Country Dropdown menu
        And selects Canada from the options
        And clicks States dropdown menu
        And selects Alberta from dropdown menu
        And clicks search
        Then Alberta results are shown


    Scenario: Organization Search Form with Canada selected from Country dropdown menu and British Columbia from States dropdown menu returns British Columbia in search results

        Given current URL is AIM Inspect site home page
        When user overs over Request tab
        And click Search Organizations
        And clicks Country Dropdown menu
        And selects Canada from the options
        And clicks States dropdown menu
        And selects British Columbia from dropdown menu
        And clicks search
        Then British Columbia results are shown


    Scenario: Organization Search Form with Canada selected from Country dropdown menu and Manitoba from States dropdown menu returns Manitoba in search results

        Given current URL is AIM Inspect site home page
        When user overs over Request tab
        And click Search Organizations
        And clicks Country Dropdown menu
        And selects Canada from the options
        And clicks States dropdown menu
        And selects Manitoba from dropdown menu
        And clicks search
        Then Manitoba results are shown


    Scenario: Organization Search Form with Canada selected from Country dropdown menu and Newfoundland from States dropdown menu returns New Newfoundland in search results

        Given current URL is AIM Inspect site home page
        When user overs over Request tab
        And click Search Organizations
        And clicks Country Dropdown menu
        And selects Canada from the options
        And clicks States dropdown menu
        And selects Newfoundland from dropdown menu
        And clicks search
        Then Newfoundland results are shown


    Scenario: Organization Search Form with Canada selected from Country dropdown menu and Nova Scotia from States dropdown menu returns Nova Scotia in search results

        Given current URL is AIM Inspect site home page
        When user overs over Request tab
        And click Search Organizations
        And clicks Country Dropdown menu
        And selects Canada from the options
        And clicks States dropdown menu
        And selects Nova Scotia from dropdown menu
        And clicks search
        Then Nova Scotia results are shown


    Scenario: Organization Search Form with Canada selected from Country dropdown menu and Ontario from States dropdown menu returns Ontario in search results

        Given current URL is AIM Inspect site home page
        When user overs over Request tab
        And click Search Organizations
        And clicks Country Dropdown menu
        And selects Canada from the options
        And clicks States dropdown menu
        And selects Ontario from dropdown menu
        And clicks search
        Then Ontario results are shown


    Scenario: Organization Search Form with Canada selected from Country dropdown menu and PE from States dropdown menu returns PE in search results

        Given current URL is AIM Inspect site home page
        When user overs over Request tab
        And click Search Organizations
        And clicks Country Dropdown menu
        And selects Canada from the options
        And clicks States dropdown menu
        And selects PE from dropdown menu
        And clicks search
        Then PE results are shown


    Scenario: Organization Search Form with Canada selected from Country dropdown menu and QC from States dropdown menu returns QC in search results

        Given current URL is AIM Inspect site home page
        When user overs over Request tab
        And click Search Organizations
        And clicks Country Dropdown menu
        And selects Canada from the options
        And clicks States dropdown menu
        And selects QC from dropdown menu
        And clicks search
        Then QC results are shown


    Scenario: Organization Search Form with Canada selected from Country dropdown menu and SK from States dropdown menu returns SK in search results

        Given current URL is AIM Inspect site home page
        When user overs over Request tab
        And click Search Organizations
        And clicks Country Dropdown menu
        And selects Canada from the options
        And clicks States dropdown menu
        And selects SK from dropdown menu
        And clicks search
        Then SK results are shown


        ############################
        # TO DO
        ############################


    Scenario: Organization Search Form with Canada selected from Country dropdown menu and Alberta from States dropdown menu returns Alberta in search results

        Given current URL is AIM Inspect site home page
        When user overs over Request tab
        And click Search Organizations
        And clicks Country Dropdown menu
        And selects Canada from the options
        And clicks States dropdown menu
        And selects Alberta from dropdown menu
        And clicks search
        Then Alberta results are shown


    Scenario: Organization Search Form with Canada selected from Country dropdown menu and Alberta from States dropdown menu returns Alberta in search results

        Given current URL is AIM Inspect site home page
        When user overs over Request tab
        And click Search Organizations
        And clicks Country Dropdown menu
        And selects Canada from the options
        And clicks States dropdown menu
        And selects Alberta from dropdown menu
        And clicks search
        Then Alberta results are shown


    Scenario: Organization Search Form with Canada selected from Country dropdown menu and Alberta from States dropdown menu returns Alberta in search results

        Given current URL is AIM Inspect site home page
        When user overs over Request tab
        And click Search Organizations
        And clicks Country Dropdown menu
        And selects Canada from the options
        And clicks States dropdown menu
        And selects Alberta from dropdown menu
        And clicks search
        Then Alberta results are shown


    Scenario: Organization Search Form with Canada selected from Country dropdown menu and Alberta from States dropdown menu returns Alberta in search results

        Given current URL is AIM Inspect site home page
        When user overs over Request tab
        And click Search Organizations
        And clicks Country Dropdown menu
        And selects Canada from the options
        And clicks States dropdown menu
        And selects Alberta from dropdown menu
        And clicks search
        Then Alberta results are shown










    Scenario: Advanced Search Form with VINs seperated by comma returns those in results if exists

        Given the following VINs exists
        | 2C3CDZBT0JH259828 | KM8J23A44GU231323 |
        When user clicks Request
        And clicks search Requests
        And clicks Advanced Search
        And enters the given data in the VIN field seperated by comma
        And click search
        Then the results with those VINs will be shown


    Scenario: Advanced Search Form with VINs seperated by space returns those in results if exists

        Given the following VINs exists
        | 2C3CDZBT0JH259828 | KM8J23A44GU231323 |
        When user clicks Request
        And clicks search Requests
        And clicks Advanced Search
        And enters the given data in the VIN field seperated by comma
        And click search
        Then the results with those VINs will be shown


    Scenario: Advanced Search Form with VIN returns that in results if exists

        Given the VIN 2C3CDZBT0JH259828 exists
        When user clicks Request
        And clicks search Requests
        And clicks Advanced Search
        And enters the given data in the VIN field
        And click search
        Then the result with that VIN will be shown



    Scenario: Advanced Search Form with VIN returns no result found if does not exist

        Given the VIN 345465756 does not exist
        When user clicks Request
        And clicks search Requests
        And clicks Advanced Search
        And enters the given data in the VIN field
        And click search
        Then the result will show no result found 


    Scenario: Advanced Search Form with Dealer Name returns that in results if exists

        Given the Dealer Alley exists
        When user clicks Request
        And clicks search Requests
        And clicks Advanced Search
        And enters the given data in the Dealer Name field
        And click search
        Then the result with that Dealer Name will be shown


    Scenario: Advanced Search Form with Dealer Name returns no result found if does not exist

        Given the Dealer Allesdfsdy does not exist
        When user clicks Request
        And clicks search Requests
        And clicks Advanced Search
        And enters the given data in the Dealer Name field
        And click search
        Then the result will show no result found 



    Scenario: Advanced Search Form with Contact First Name returns that in results if exists

        Given the Contact Eric exists
        When user clicks Request
        And clicks search Requests
        And clicks Advanced Search
        And enters the given data in the Contact First Name field
        And click search
        Then the result with that Contact First Name will be shown


    Scenario: Advanced Search Form with Contact First Name returns no result found if does not exist

        Given the Contact Allesdfsdy does not exist
        When user clicks Request
        And clicks search Requests
        And clicks Advanced Search
        And enters the given data in the Contact First Name field
        And click search
        Then the result will show no result found 



    Scenario: Advanced Search Form with Contact Last Name returns that in results if exists

        Given the Contact Eric exists
        When user clicks Request
        And clicks search Requests
        And clicks Advanced Search
        And enters the given data in the Contact Last Name field
        And click search
        Then the result with that Contact First Name will be shown


    Scenario: Advanced Search Form with Contact Last Name returns no result found if does not exist

        Given the Contact Allesdfsdy does not exist
        When user clicks Request
        And clicks search Requests
        And clicks Advanced Search
        And enters the given data in the Contact Last Name field
        And click search
        Then the result will show no result found 
        


    Scenario: Advanced Search Form with Phone returns that in results if exists

        Given the Phone 00880077888 exists
        When user clicks Request
        And clicks search Requests
        And clicks Advanced Search
        And enters the given data in the Phone field
        And click search
        Then the result with that Phone will be shown


    Scenario: Advanced Search Form Country Dropdown Menu is working

        When user clicks Request
        And clicks search Requests
        And clicks Advanced Search
        And clicks on Country Drop down menu 
        Then countries are shown


    # TO DO
    Scenario: Specific Country Results are shown from advanced search

        When user clicks Request
        And clicks search Requests
        And clicks Advanced Search
        And clicks on Country Dropdown menu 
        And selects United States of America - US from Dropdown menu
        And clicks search
        Then USA results will be shown  


    Scenario: State Dropdown menu inactive without selecting option from Country Dropdown menu

        When user clicks Request
        And clicks search Requests
        And clicks Advanced Search
        Then State Dropdown menu is inactive 


    Scenario: State Dropdown menu active with when selected option from Country Dropdown menu

        When user clicks Request
        And clicks search Requests
        And clicks Advanced Search
        And select an option from Country Dropdown menu
        Then State Dropdown menu is active 


    Scenario: State Dropdown menu shows states of the Country selected

        When user clicks Request
        And clicks search Requests
        And clicks Advanced Search
        And select Canada - CA from Country Dropdown menu
        Then State Dropdown menu is active 
        And shows only States of Canada



    Scenario: Specific State Results are shown from advanced search

        When user clicks Request
        And clicks search Requests
        And clicks Advanced Search
        And select Canada - CA from Country Dropdown menu
        And selects Alaska - AK from States Dropdown menu
        And click Search
        Then Search results show Alaska State results



    Scenario: Advanced Search Form Status Dropdown Menu is working

        When user clicks Request
        And clicks search Requests
        And clicks Advanced Search
        And clicks on Status Drop down menu 
        Then different status are shown  


    Scenario: Reason Dropdown menu inactive without selecting option from Status Dropdown menu

        When user clicks Request
        And clicks search Requests
        And clicks Advanced Search
        Then Reason Dropdown menu is inactive 


    Scenario: Reason Dropdown menu active with when selected option from Status Dropdown menu

        When user clicks Request
        And clicks search Requests
        And clicks Advanced Search
        And select an option from Status Dropdown menu
        Then Reason Dropdown menu is active 



    # TO DO !!!!
    Scenario: Reason Dropdown menu results

        When user clicks Request
        And clicks search Requests
        And clicks Advanced Search
        And select an option from Status Dropdown menu
        Then Reason Dropdown menu is active 



    # TO DO !!!!!!!
    Scenario: Reason Dropdown menu shows reasons of the Status selected

        When user clicks Request
        And clicks search Requests
        And clicks Advanced Search
        And select Canada - CA from Country Dropdown menu
        Then State Dropdown menu is active 
        And shows only States of Canada


    Scenario: Advanced Search Form Inspection Type Dropdown Menu is working

        When user clicks Request
        And clicks search Requests
        And clicks Advanced Search
        And clicks on Inspection Type Drop down menu 
        Then different inspection types are shown 


    Scenario: Advanced Search Form Specific Inspection Type results are shown

        When user clicks Request
        And clicks search Requests
        And clicks Advanced Search
        And clicks on Inspection Type Drop down menu 
        And selects Home from Dropdown menu
        And clicks search
        Then search results show Home Inspection Type 


    Scenario: Advanced Search Form Customer Dropdown Menu is working

        When user clicks Request
        And clicks search Requests
        And clicks Advanced Search
        And clicks on Customer Drop down menu 
        Then different Customer types are shown 


    Scenario: Advanced Search Form Specific Customer results are shown

        When user clicks Request
        And clicks search Requests
        And clicks Advanced Search
        And clicks on Customer Drop down menu 
        And selects US Bank from Dropdown menu
        And clicks search
        Then search results show US Bank Results   


    Scenario: Advanced Search Form Appointment Status Dropdown Menu is working

        When user clicks Request
        And clicks search Requests
        And clicks Advanced Search
        And clicks on Appointment Status Dropdown menu 
        Then different Appointment Status are shown 



    Scenario: Advanced Search Form Appointment Status Dropdown Menu shows specific results

        When user clicks Request
        And clicks search Requests
        And clicks Advanced Search
        And clicks on Appointment Status Dropdown menu 
        And selects Pending from Status Dropdown menu
        And clicks search
        Then only Pending results will be shown 


    Scenario: Advanced Search Form Assigned Engineer Dropdown Menu is working

        When user clicks Request
        And clicks search Requests
        And clicks Advanced Search
        And clicks on Assigned Engineer Dropdown menu 
        Then different Assigned Engineer are shown   


    Scenario: Advanced Search Form specific Assigned Engineer results are shown

        When user clicks Request
        And clicks search Requests
        And clicks Advanced Search
        And clicks on Assigned Engineer Dropdown menu 
        And selects 7-UXUI2 from menu
        And clicks search
        Then results show 7-UXUI2  


    




    

    

