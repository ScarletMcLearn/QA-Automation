Feature: 

    Background: 

        Given Browser is opened
        And nagivated to AIM inspect site // https://crm-qa.aiminspect.com/
        And AIM Inspect site is displayed 
        And correct user name and password is entered
        And login form is submitted



    Scenario: Organization Search Form with no values returns all Organizations

        Given current URL is AIM Inspect site home page
        When user hovers cursor over Request tab
        And click Search Organizations
        And leaves Search form empty
        And clicks search button
        Then all organization search results will be displayed




    Scenario: Organization Search Form with Active Records Only unchecked and no values returns all Organizations and inactive records

        Given current URL is AIM Inspect site home page
        When user hovers cursor over Request tab
        And click Search Organizations
        And leaves Search form empty
        And unchecks Active Records Only field 
        And clicks search button
        Then all organization search results with no inactive records will be displayed 




    Scenario: Organization Search Form Customer Type dropdown menu functioning 

        Given current URL is AIM Inspect site home page
        When user hovers cursor over Request tab
        And click Search Organizations
        And clicks Customer Dropdown menu
        Then different Customers are shown in options


    Scenario: Organization Search Form with Customer Type CHASE returns CHASE results 

        Given current URL is AIM Inspect site home page
        When user hovers cursor over Request tab
        And click Search Organizations
        And clicks Customer Dropdown menu
        And selects CHASE from Dropdown menu
        And clicks search button
        Then all organization search results with CHASE will be displayed



    Scenario: Organization Search Form with Customer Type US BANK returns US BANK results 

        Given current URL is AIM Inspect site home page
        When user hovers cursor over Request tab
        And click Search Organizations
        And clicks Customer Dropdown menu
        And selects US BANK from Dropdown menu
        And clicks search button
        Then all organization search results with US BANK will be displayed



    Scenario: Organization Search Form with Customer Type ALLY returns ALLY results 

        Given current URL is AIM Inspect site home page
        When user hovers cursor over Request tab
        And click Search Organizations
        And clicks Customer Dropdown menu
        And selects ALLY from Dropdown menu
        And clicks search button
        Then all organization search results with ALLY will be displayed



    Scenario: Organization Search Form with Customer Type ALLY  and Code Type Auction Code returns Auction Code ALLY results 

        Given current URL is AIM Inspect site home page
        When user hovers cursor over Request tab
        And click Search Organizations
        And clicks Customer Dropdown menu
        And selects ALLY from Dropdown menu
        And clicks Code Type Dropdown menu
        And selects Auction Code
        And clicks search button
        Then all organization search results with Auction Code ALLY will be displayed


    
    Scenario: Organization Search Form with Customer Type TFS returns TFS results 

        Given current URL is AIM Inspect site home page
        When user hovers cursor over Request tab
        And click Search Organizations
        And clicks Customer Dropdown menu
        And selects TFS from Dropdown menu
        And clicks search button
        Then all organization search results with TFS will be displayed



    Scenario: Organization Search Form with Customer Type VCI returns VCI results 

        Given current URL is AIM Inspect site home page
        When user hovers cursor over Request tab
        And click Search Organizations
        And clicks Customer Dropdown menu
        And selects VCI from Dropdown menu
        And clicks search button
        Then all organization search results with VCI will be displayed



    Scenario: Organization Search Form with Customer Type VCI and Code Type VCI Dealer Code returns VCI and VCI Dealer Code results 

        Given current URL is AIM Inspect site home page
        When user hovers cursor over Request tab
        And click Search Organizations
        And clicks Customer Dropdown menu
        And selects VCI from Dropdown menu
        And clicks the Code Type Dropdown menu
        And selects VCI Dealer Code 
        And clicks search button
        Then all organization search results with VCI and VCI Dealer Code will be displayed



    Scenario: Organization Search Form with Customer Type CHRYSLER STYDER returns CHRYSLER STYDER results 

        Given current URL is AIM Inspect site home page
        When user hovers cursor over Request tab
        And click Search Organizations
        And clicks Customer Dropdown menu
        And selects CHRYSLER STYDER from Dropdown menu
        And clicks search button
        Then all organization search results with CHRYSLER STYDER will be displayed



    Scenario: Organization Search Form with Customer Type MANHEIM returns MANHEIM results 

        Given current URL is AIM Inspect site home page
        When user hovers cursor over Request tab
        And click Search Organizations
        And clicks Customer Dropdown menu
        And selects MANHEIM from Dropdown menu
        And clicks search button
        Then all organization search results with MANHEIM will be displayed



    Scenario: Organization Search Form with Customer Type MANHEIM and Code Type Auction Access Number returns MANHEIM and Auction Access Number results 

        Given current URL is AIM Inspect site home page
        When user hovers cursor over Request tab
        And click Search Organizations
        And clicks Customer Dropdown menu
        And selects MANHEIM from Dropdown menu
        And clicks the Code Type Dropdown menu
        And selects Auction Access Number 
        And clicks search button
        Then all organization search results with MANHEIM and Auction Access Number will be displayed



    Scenario: Organization Search Form with Customer Type HYUNDAI returns HYUNDAI results 

        Given current URL is AIM Inspect site home page
        When user hovers cursor over Request tab
        And click Search Organizations
        And clicks Customer Dropdown menu
        And selects HYUNDAI from Dropdown menu
        And clicks search button
        Then all organization search results with HYUNDAI will be displayed



    Scenario: Organization Search Form with Customer Type HYUNDAI  and Code Type Auction Code returns Auction Code HYUNDAI results 

        Given current URL is AIM Inspect site home page
        When user hovers cursor over Request tab
        And click Search Organizations
        And clicks Customer Dropdown menu
        And selects HYUNDAI from Dropdown menu
        And clicks Code Type Dropdown menu
        And selects Auction Code
        And clicks search button
        Then all organization search results with Auction Code HYUNDAI will be displayed


    Scenario: Organization Search Form with Customer Type NISSAN returns NISSAN results 

        Given current URL is AIM Inspect site home page
        When user hovers cursor over Request tab
        And click Search Organizations
        And clicks Customer Dropdown menu
        And selects NISSAN from Dropdown menu
        And clicks search button
        Then all organization search results with NISSAN will be displayed




    Scenario: Organization Search Form with Customer Type NISSAN and Code Type Dealer Code returns NISSAN and NISSAN Dealer Code results 

        Given current URL is AIM Inspect site home page
        When user hovers cursor over Request tab
        And click Search Organizations
        And clicks Customer Dropdown menu
        And selects NISSAN from Dropdown menu
        And clicks the Code Type Dropdown menu
        And selects Dealer Code 
        And clicks search button
        Then all organization search results with NISSAN and Dealer Code will be displayed



    Scenario: Organization Search Form with Customer Type NISSAN and Code Type NNA Dealer Code returns NISSAN and NNA Dealer Code results 

        Given current URL is AIM Inspect site home page
        When user hovers cursor over Request tab
        And click Search Organizations
        And clicks Customer Dropdown menu
        And selects NISSAN from Dropdown menu
        And clicks the Code Type Dropdown menu
        And selects NNA Dealer Code 
        And clicks search button
        Then all organization search results with NISSAN and NNA Dealer Code will be displayed



    


    Scenario: Organization Search Form Country dropdown menu functioning 

        Given current URL is AIM Inspect site home page
        When user hovers cursor over Request tab
        And click Search Organizations
        And clicks Country Dropdown menu
        Then different Countries are shown in options



    

    Scenario: Organization Search Form with Mexico selected from Country dropdown menu shows Mexico results 

        Given current URL is AIM Inspect site home page
        When user hovers cursor over Request tab
        And click Search Organizations
        And clicks Country Dropdown menu
        And selects Mexico from the options
        And clicks search
        Then Mexico results are shown


    Scenario: Organization Search Form with Canada selected from Country dropdown menu shows Canada results 

        Given current URL is AIM Inspect site home page
        When user hovers cursor over Request tab
        And click Search Organizations
        And clicks Country Dropdown menu
        And selects Canada from the options
        And clicks search
        Then Canada results are shown



    




   



   


    Scenario: Organization Search Form with US selected from Country dropdown menu shows US states in States dropdown menu 

        Given current URL is AIM Inspect site home page
        When user hovers cursor over Request tab
        And click Search Organizations
        And clicks Country Dropdown menu
        And selects US from the options
        And clicks States dropdown menu
        Then US States are shown in dropdown menu



    
    Scenario: Organization Search Form with Canada selected from Country dropdown menu shows Canada states in States dropdown menu 

        Given current URL is AIM Inspect site home page
        When user hovers cursor over Request tab
        And click Search Organizations
        And clicks Country Dropdown menu
        And selects Canada from the options
        And clicks States dropdown menu
        Then Canada States are shown in dropdown menu







    Scenario: Organization Search Form with Canada selected from Country dropdown menu and Alberta from States dropdown menu returns Alberta in search results

        Given current URL is AIM Inspect site home page
        When user hovers cursor over Request tab
        And click Search Organizations
        And clicks Country Dropdown menu
        And selects Canada from the options
        And clicks States dropdown menu
        And selects Alberta from dropdown menu
        And clicks search
        Then Alberta results are shown


    Scenario: Organization Search Form with Canada selected from Country dropdown menu and British Columbia from States dropdown menu returns British Columbia in search results

        Given current URL is AIM Inspect site home page
        When user hovers cursor over Request tab
        And click Search Organizations
        And clicks Country Dropdown menu
        And selects Canada from the options
        And clicks States dropdown menu
        And selects British Columbia from dropdown menu
        And clicks search
        Then British Columbia results are shown


   












    Scenario: Organization Search Form with no values returns all Organizations

        Given current URL is AIM Inspect site home page
        When user hovers cursor over Request tab
        And click Search Organizations
        And leaves Search form empty
        And clicks search button
        Then all organization search results will be displayed




    Scenario: Organization Search Form Customer Type dropdown menu functioning 

        Given current URL is AIM Inspect site home page
        When user hovers cursor over Request tab
        And click Search Organizations
        And clicks Customer Dropdown menu
        Then different Customers are shown in options


    Scenario: Organization Search Form with Customer Type CHASE returns CHASE results 

        Given current URL is AIM Inspect site home page
        When user hovers cursor over Request tab
        And click Search Organizations
        And clicks Customer Dropdown menu
        And selects CHASE from Dropdown menu
        And clicks search button
        Then all organization search results with CHASE will be displayed



    Scenario: Organization Search Form with Customer Type US BANK returns US BANK results 

        Given current URL is AIM Inspect site home page
        When user hovers cursor over Request tab
        And click Search Organizations
        And clicks Customer Dropdown menu
        And selects US BANK from Dropdown menu
        And clicks search button
        Then all organization search results with US BANK will be displayed



    Scenario: Organization Search Form with Customer Type ALLY returns ALLY results 

        Given current URL is AIM Inspect site home page
        When user hovers cursor over Request tab
        And click Search Organizations
        And clicks Customer Dropdown menu
        And selects ALLY from Dropdown menu
        And clicks search button
        Then all organization search results with ALLY will be displayed


    
    Scenario: Organization Search Form with Customer Type TFS returns TFS results 

        Given current URL is AIM Inspect site home page
        When user hovers cursor over Request tab
        And click Search Organizations
        And clicks Customer Dropdown menu
        And selects TFS from Dropdown menu
        And clicks search button
        Then all organization search results with TFS will be displayed



    Scenario: Organization Search Form with Customer Type VCI returns VCI results 

        Given current URL is AIM Inspect site home page
        When user hovers cursor over Request tab
        And click Search Organizations
        And clicks Customer Dropdown menu
        And selects VCI from Dropdown menu
        And clicks search button
        Then all organization search results with VCI will be displayed



    Scenario: Organization Search Form with Customer Type CHRYSLER STYDER returns CHRYSLER STYDER results 

        Given current URL is AIM Inspect site home page
        When user hovers cursor over Request tab
        And click Search Organizations
        And clicks Customer Dropdown menu
        And selects CHRYSLER STYDER from Dropdown menu
        And clicks search button
        Then all organization search results with CHRYSLER STYDER will be displayed



    Scenario: Organization Search Form with Customer Type MANHEIM returns MANHEIM results 

        Given current URL is AIM Inspect site home page
        When user hovers cursor over Request tab
        And click Search Organizations
        And clicks Customer Dropdown menu
        And selects MANHEIM from Dropdown menu
        And clicks search button
        Then all organization search results with MANHEIM will be displayed



    Scenario: Organization Search Form with Customer Type HYUNDAI returns HYUNDAI results 

        Given current URL is AIM Inspect site home page
        When user hovers cursor over Request tab
        And click Search Organizations
        And clicks Customer Dropdown menu
        And selects HYUNDAI from Dropdown menu
        And clicks search button
        Then all organization search results with HYUNDAI will be displayed



    Scenario: Organization Search Form with Customer Type NISSAN returns NISSAN results 

        Given current URL is AIM Inspect site home page
        When user hovers cursor over Request tab
        And click Search Organizations
        And clicks Customer Dropdown menu
        And selects NISSAN from Dropdown menu
        And clicks search button
        Then all organization search results with NISSAN will be displayed



    


    Scenario: Organization Search Form Country dropdown menu functioning 

        Given current URL is AIM Inspect site home page
        When user hovers cursor over Request tab
        And click Search Organizations
        And clicks Country Dropdown menu
        Then different Countries are shown in options



    Scenario: Organization Search Form with US selected from Country dropdown menu shows US results 

        Given current URL is AIM Inspect site home page
        When user hovers cursor over Request tab
        And click Search Organizations
        And clicks Country Dropdown menu
        And selects US from the options
        And clicks search
        Then US results are shown


    Scenario: Organization Search Form with Mexico selected from Country dropdown menu shows Mexico results 

        Given current URL is AIM Inspect site home page
        When user hovers cursor over Request tab
        And click Search Organizations
        And clicks Country Dropdown menu
        And selects Mexico from the options
        And clicks search
        Then Mexico results are shown


    Scenario: Organization Search Form with Canada selected from Country dropdown menu shows Canada results 

        Given current URL is AIM Inspect site home page
        When user hovers cursor over Request tab
        And click Search Organizations
        And clicks Country Dropdown menu
        And selects Canada from the options
        And clicks search
        Then Canada results are shown



    




    


  


    Scenario: Organization Search Form with Canada selected from Country dropdown menu shows Canada results 

        Given current URL is AIM Inspect site home page
        When user hovers cursor over Request tab
        And click Search Organizations
        And clicks Country Dropdown menu
        And selects Canada from the options
        And clicks search
        Then Canada results are shown




    Scenario: Organization Search Form with Mexico selected from Country dropdown menu shows Mexico states in States dropdown menu 

        Given current URL is AIM Inspect site home page
        When user hovers cursor over Request tab
        And click Search Organizations
        And clicks Country Dropdown menu
        And selects Mexico from the options
        And clicks States dropdown menu
        Then Mexico States are shown in dropdown menu








     Scenario: Organization Search Form with Mexico selected from Country dropdown menu and AGU from States dropdown menu returns AGU in search results

        Given current URL is AIM Inspect site home page
        When user hovers cursor over Request tab
        And click Search Organizations
        And clicks Country Dropdown menu
        And selects Mexico from the options
        And clicks States dropdown menu
        And selects AGU from dropdown menu
        And clicks search
        Then AGU results are shown


    Scenario: Organization Search Form with Mexico selected from Country dropdown menu and BCN from States dropdown menu returns BCN in search results

        Given current URL is AIM Inspect site home page
        When user hovers cursor over Request tab
        And click Search Organizations
        And clicks Country Dropdown menu
        And selects Mexico from the options
        And clicks States dropdown menu
        And selects BCN from dropdown menu
        And clicks search
        Then BCN results are shown


    




   



















    Scenario: Organization Search Form with US selected from Country dropdown menu and AL from States dropdown menu returns AL in search results

        Given current URL is AIM Inspect site home page
        When user hovers cursor over Request tab
        And click Search Organizations
        And clicks Country Dropdown menu
        And selects US from the options
        And clicks States dropdown menu
        And selects AL from dropdown menu
        And clicks search
        Then AL results are shown


    Scenario: Organization Search Form with US selected from Country dropdown menu and AK from States dropdown menu returns AK in search results

        Given current URL is AIM Inspect site home page
        When user hovers cursor over Request tab
        And click Search Organizations
        And clicks Country Dropdown menu
        And selects US from the options
        And clicks States dropdown menu
        And selects AK from dropdown menu
        And clicks search
        Then AK results are shown


    

   















    
   







    Scenario: Organization Search Form with Canada selected from Country dropdown menu and Alberta from States dropdown menu returns Alberta in search results

        Given current URL is AIM Inspect site home page
        When user hovers cursor over Request tab
        And click Search Organizations
        And clicks Country Dropdown menu
        And selects Canada from the options
        And clicks States dropdown menu
        And selects Alberta from dropdown menu
        And clicks search
        Then Alberta results are shown


    Scenario: Organization Search Form with Canada selected from Country dropdown menu and British Columbia from States dropdown menu returns British Columbia in search results

        Given current URL is AIM Inspect site home page
        When user hovers cursor over Request tab
        And click Search Organizations
        And clicks Country Dropdown menu
        And selects Canada from the options
        And clicks States dropdown menu
        And selects British Columbia from dropdown menu
        And clicks search
        Then British Columbia results are shown


   


















        ###############################################################


        # organization type

    Scenario: Organization Search Form with Dealer selected from Organization type dropdown menu returns Dealer in search results

        Given current URL is AIM Inspect site home page
        When user hovers cursor over Request tab
        And click Search Organizations
        And clicks Organization type Dropdown menu
        And selects Dealer from the options
        And clicks search
        Then Dealer results are shown


    Scenario: Organization Search Form with Auction selected from Organization type dropdown menu returns Auction in search results

        Given current URL is AIM Inspect site home page
        When user hovers cursor over Request tab
        And click Search Organizations
        And clicks Organization type Dropdown menu
        And selects Auction from the options
        And clicks search
        Then Auction results are shown



    Scenario: Organization Search Form Organization type dropdown menu shows organization types

        Given current URL is AIM Inspect site home page
        When user hovers cursor over Request tab
        And click Search Organizations
        And clicks Organization type Dropdown menu
        Then different Organization types are shown




    Scenario: Organization Search Form Code type dropdown menu shows Code types

        Given current URL is AIM Inspect site home page
        When user hovers cursor over Request tab
        And click Search Organizations
        And clicks Customer dropdown menu 
        And selects a customer from dropdown menu
        And clicks Code type Dropdown menu
        Then different Code types are shown






    Scenario: Organization Search Form with Birmingham in the City returns Birmingham in search results if exists

        Given current URL is AIM Inspect site home page
        And Birmingham result exists
        When user hovers cursor over Request tab
        And click Search Organizations
        And clicks City text field
        And fills text field with Birmingham
        And clicks search
        Then Birmingham results are shown


    Scenario: Organization Search Form with Birmingham in the City returns No Results found in search results if does not exist

        Given current URL is AIM Inspect site home page
        And Birmingham result do not exist
        When user hovers cursor over Request tab
        And click Search Organizations
        And clicks City text field
        And fills text field with Birmingham
        And clicks search
        Then No Results found are shown




    Scenario: Organization Search Form with Cassat Ave in the Address returns No Results found in search results if does not exist

        Given current URL is AIM Inspect site home page
        And Cassat Ave result do not exist
        When user hovers cursor over Request tab
        And click Search Organizations
        And clicks Address text field
        And fills text field with Cassat Ave
        And clicks search
        Then No Results found are shown



    Scenario: Organization Search Form with Cassat Ave in the Address returns Cassat Ave in search results if does exist

        Given current URL is AIM Inspect site home page
        And Cassat Ave result do exist
        When user hovers cursor over Request tab
        And click Search Organizations
        And clicks Address text field
        And fills text field with Cassat Ave
        And clicks search
        Then Cassat Ave are shown in results
        


    Scenario: Completed Organization Search form cleared by clicking reset

        Given organization search form is completed 
        And user clicks reset 
        Then organization search form is cleared 




    Scenario: Using valid ZIP and organization result exist show appropriate results 

        Given ZIP valid 
        And Organizaiton with ZIP exists 
        When user click Request
        And click Search Organizations
        And enters ZIP in ZIP field 
        And clicks Search
        Then results shown including inputted ZIP


    Scenario: Using invalid ZIP show no results 

        Given ZIP invalid 
        When user click Request
        And click Search Organizations
        And enters ZIP in ZIP field 
        And clicks Search
        Then no results shown


    Scenario: Using valid ZIP and organization result does not exist show no results 

        Given ZIP valid 
        And Organizaiton with ZIP does not exists 
        When user click Request
        And click Search Organizations
        And enters ZIP in ZIP field 
        And clicks Search
        Then no results shown 



    Scenario: Organization Search form with Organization Name shows results with Organization Name specified 

        When user click Request
        And click Search Organizations
        And enters Organization Name in Organization Name field 
        And clicks Search
        Then results show Organizations with given Organization Name 




    Scenario: Using valid Organization Code and organization result exist show appropriate results 

        Given ZIP valid 
        And Organizaiton with Organization Code exists 
        When user click Request
        And click Search Organizations
        And enters Organization Code in Organization Code field 
        And clicks Search
        Then results shown including inputted Organization Code


    Scenario: Using invalid Organization Code show no results 

        Given Organization Code invalid 
        When user click Request
        And click Search Organizations
        And enters Organization Code in Organization Code field 
        And clicks Search
        Then no results shown


    Scenario: Using valid Organization Code and organization result does not exist show no results 

        Given Organization Code valid 
        And Organizaiton with Organization Code does not exists 
        When user click Request
        And click Search Organizations
        And enters Organization Code in Organization Code field 
        And clicks Search
        Then no results shown 




    Scenario: Organization detail page is shown

        Given organization exists
        When user clicks Request tab 
        And clicks search organization 
        And organization search page is shown
        And clicks search button 
        And organization search results are shown 
        And clicks on a result
        Then organization detail page is shown  












        


    


    




    