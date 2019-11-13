Feature: Search and Advanced Search functionalities

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



    Scenario: Basic Search with existing VIN outputs results with VIN

        Given current page is AIM Inspect site
        And VIN exists
        When click Request
        And click search request
        And click Basic search
        And click search bar 
        And input VIN 
        And click search
        Then results including specified VIN is shown  



    Scenario: Basic Search with nonexisting VIN outputs results without VIN

        Given current page is AIM Inspect site
        And VIN does not exist
        When click Request
        And click search request
        And click Basic search
        And click search bar 
        And input VIN 
        And click search
        Then results do not include specified VIN  



    Scenario: Basic Search with existing phone outputs results with phone

        Given current page is AIM Inspect site
        And phone exists
        When click Request
        And click search request
        And click Basic search
        And click search bar 
        And input phone 
        And click search
        Then results including specified phone is shown  



    Scenario: Basic Search with nonexisting phone outputs results without phone

        Given current page is AIM Inspect site
        And phone does not exist
        When click Request
        And click search request
        And click Basic search
        And click search bar 
        And input phone 
        And click search
        Then results do not include specified phone  



    Scenario: Basic Search with existing Conf outputs results with Conf

        Given current page is AIM Inspect site
        And Conf exists
        When click Request
        And click search request
        And click Basic search
        And click search bar 
        And input Conf 
        And click search
        Then results including specified Conf is shown  



    Scenario: Basic Search with nonexisting Conf outputs results without Conf

        Given current page is AIM Inspect site
        And Conf does not exist
        When click Request
        And click search request
        And click Basic search
        And click search bar 
        And input Conf 
        And click search
        Then results do not include specified Conf  


    Scenario: Basic Search with existing Account outputs results with Account

        Given current page is AIM Inspect site
        And Account exists
        When click Request
        And click search request
        And click Basic search
        And click search bar 
        And input Account 
        And click search
        Then results including specified Account is shown  



    Scenario: Basic Search with nonexisting Account outputs results without Account

        Given current page is AIM Inspect site
        And Account does not exist
        When click Request
        And click search request
        And click Basic search
        And click search bar 
        And input Account 
        And click search
        Then results do not include specified Account  



    Scenario: Basic Search with existing Dealer Name outputs results with Dealer Name

        Given current page is AIM Inspect site
        And Dealer Name exists
        When click Request
        And click search request
        And click Basic search
        And click search bar 
        And input Dealer Name 
        And click search
        Then results including specified Dealer Name is shown  



    Scenario: Basic Search with nonexisting Dealer Name outputs results without Dealer Name

        Given current page is AIM Inspect site
        And Dealer Name does not exist
        When click Request
        And click search request
        And click Basic search
        And click search bar 
        And input Dealer Name 
        And click search
        Then results do not include specified Dealer Name  



    Scenario: Basic Search with existing Lesse Name outputs results with Lesse Name

        Given current page is AIM Inspect site
        And Lesse Name exists
        When click Request
        And click search request
        And click Basic search
        And click search bar 
        And input Lesse Name 
        And click search
        Then results including specified Lesse Name is shown  



    Scenario: Basic Search with nonexisting Lesse Name outputs results without Lesse Name

        Given current page is AIM Inspect site
        And Lesse Name does not exist
        When click Request
        And click search request
        And click Basic search
        And click search bar 
        And input Lesse Name 
        And click search
        Then results do not include specified Lesse Name  

        








    Scenario: Advanced Requests Search Form with no values returns all Requests

        Given current URL is AIM Inspect site home page
        When user overs over Request tab
        And click Search Requests
        And clicks  Advanced Search
        And leaves Advanced Search form empty
        And clicks search button
        Then all request search results will be displayed
















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





    Scenario: Nav search bar fills Basic search form

        When user clicks nav search bar
        And enters text in field 
        And presses enter
        Then Basic search form results with the text is shown 


    
    Scenario: Basic search with Active Records Only unselected and VIN in search box returns inactive results

        When user hovers over request
        And clicks search request
        And clicks basic search
        And enters vin in search box
        And unselects Active Records Only checkbox
        And clicks search
        Then inactive vin results will also be shown


    Scenario: Basic search with Active Records Only unselected and Phone in search box returns inactive results

        When user hovers over request
        And clicks search request
        And clicks basic search
        And enters Phone in search box
        And unselects Active Records Only checkbox
        And clicks search
        Then inactive Phone results will also be shown


    Scenario: Basic search with Active Records Only unselected and Conf# in search box returns inactive results

        When user hovers over request
        And clicks search request
        And clicks basic search
        And enters Conf# in search box
        And unselects Active Records Only checkbox
        And clicks search
        Then inactive Conf# results will also be shown


    Scenario: Basic search with Active Records Only unselected and Account in search box returns inactive results

        When user hovers over request
        And clicks search request
        And clicks basic search
        And enters Account in search box
        And unselects Active Records Only checkbox
        And clicks search
        Then inactive Account results will also be shown


    Scenario: Basic search with Active Records Only unselected and Dealer Name in search box returns inactive results

        When user hovers over request
        And clicks search request
        And clicks basic search
        And enters Dealer Name in search box
        And unselects Active Records Only checkbox
        And clicks search
        Then inactive Dealer Name results will also be shown


    Scenario: Basic search with Active Records Only unselected and Lesse Name in search box returns inactive results

        When user hovers over request
        And clicks search request
        And clicks basic search
        And enters Lesse Name in search box
        And unselects Active Records Only checkbox
        And clicks search
        Then inactive Lesse Name results will also be shown
    

    

