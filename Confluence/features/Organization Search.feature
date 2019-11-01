



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








     Scenario: Organization Search Form with Mexico selected from Country dropdown menu and AGU from States dropdown menu returns AGU in search results

        Given current URL is AIM Inspect site home page
        When user overs over Request tab
        And click Search Organizations
        And clicks Country Dropdown menu
        And selects Mexico from the options
        And clicks States dropdown menu
        And selects AGU from dropdown menu
        And clicks search
        Then AGU results are shown


    Scenario: Organization Search Form with Mexico selected from Country dropdown menu and BCN from States dropdown menu returns BCN in search results

        Given current URL is AIM Inspect site home page
        When user overs over Request tab
        And click Search Organizations
        And clicks Country Dropdown menu
        And selects Mexico from the options
        And clicks States dropdown menu
        And selects BCN from dropdown menu
        And clicks search
        Then BCN results are shown


    Scenario: Organization Search Form with Mexico selected from Country dropdown menu and BCS from States dropdown menu returns BCS in search results

        Given current URL is AIM Inspect site home page
        When user overs over Request tab
        And click Search Organizations
        And clicks Country Dropdown menu
        And selects Mexico from the options
        And clicks States dropdown menu
        And selects BCS from dropdown menu
        And clicks search
        Then BCS results are shown


    Scenario: Organization Search Form with Mexico selected from Country dropdown menu and CAM from States dropdown menu returns CAM in search results

        Given current URL is AIM Inspect site home page
        When user overs over Request tab
        And click Search Organizations
        And clicks Country Dropdown menu
        And selects Mexico from the options
        And clicks States dropdown menu
        And selects CAM from dropdown menu
        And clicks search
        Then CAM results are shown


    Scenario: Organization Search Form with Mexico selected from Country dropdown menu and COA from States dropdown menu returns COA in search results

        Given current URL is AIM Inspect site home page
        When user overs over Request tab
        And click Search Organizations
        And clicks Country Dropdown menu
        And selects Mexico from the options
        And clicks States dropdown menu
        And selects COA from dropdown menu
        And clicks search
        Then COA results are shown


    Scenario: Organization Search Form with Mexico selected from Country dropdown menu and COL from States dropdown menu returns COL in search results

        Given current URL is AIM Inspect site home page
        When user overs over Request tab
        And click Search Organizations
        And clicks Country Dropdown menu
        And selects Mexico from the options
        And clicks States dropdown menu
        And selects COL from dropdown menu
        And clicks search
        Then COL results are shown


    Scenario: Organization Search Form with Mexico selected from Country dropdown menu and CHP from States dropdown menu returns CHP in search results

        Given current URL is AIM Inspect site home page
        When user overs over Request tab
        And click Search Organizations
        And clicks Country Dropdown menu
        And selects Mexico from the options
        And clicks States dropdown menu
        And selects CHP from dropdown menu
        And clicks search
        Then CHP results are shown



    Scenario: Organization Search Form with Mexico selected from Country dropdown menu and CHH from States dropdown menu returns CHH in search results

        Given current URL is AIM Inspect site home page
        When user overs over Request tab
        And click Search Organizations
        And clicks Country Dropdown menu
        And selects Mexico from the options
        And clicks States dropdown menu
        And selects CHH from dropdown menu
        And clicks search
        Then CHH results are shown


    Scenario: Organization Search Form with Mexico selected from Country dropdown menu and DIF from States dropdown menu returns DIF in search results

        Given current URL is AIM Inspect site home page
        When user overs over Request tab
        And click Search Organizations
        And clicks Country Dropdown menu
        And selects Mexico from the options
        And clicks States dropdown menu
        And selects DIF from dropdown menu
        And clicks search
        Then DIF results are shown


    Scenario: Organization Search Form with Mexico selected from Country dropdown menu and DUR from States dropdown menu returns DUR in search results

        Given current URL is AIM Inspect site home page
        When user overs over Request tab
        And click Search Organizations
        And clicks Country Dropdown menu
        And selects Mexico from the options
        And clicks States dropdown menu
        And selects DUR from dropdown menu
        And clicks search
        Then DUR results are shown


    Scenario: Organization Search Form with Mexico selected from Country dropdown menu and GUA from States dropdown menu returns GUA in search results

        Given current URL is AIM Inspect site home page
        When user overs over Request tab
        And click Search Organizations
        And clicks Country Dropdown menu
        And selects Mexico from the options
        And clicks States dropdown menu
        And selects GUA from dropdown menu
        And clicks search
        Then GUA results are shown


    Scenario: Organization Search Form with Mexico selected from Country dropdown menu and GRO from States dropdown menu returns GRO in search results

        Given current URL is AIM Inspect site home page
        When user overs over Request tab
        And click Search Organizations
        And clicks Country Dropdown menu
        And selects Mexico from the options
        And clicks States dropdown menu
        And selects GRO from dropdown menu
        And clicks search
        Then GRO results are shown


    Scenario: Organization Search Form with Mexico selected from Country dropdown menu and HID from States dropdown menu returns HID in search results

        Given current URL is AIM Inspect site home page
        When user overs over Request tab
        And click Search Organizations
        And clicks Country Dropdown menu
        And selects Mexico from the options
        And clicks States dropdown menu
        And selects HID from dropdown menu
        And clicks search
        Then HID results are shown


    Scenario: Organization Search Form with Mexico selected from Country dropdown menu and JAL from States dropdown menu returns JAL in search results

        Given current URL is AIM Inspect site home page
        When user overs over Request tab
        And click Search Organizations
        And clicks Country Dropdown menu
        And selects Mexico from the options
        And clicks States dropdown menu
        And selects JAL from dropdown menu
        And clicks search
        Then JAL results are shown


    Scenario: Organization Search Form with Mexico selected from Country dropdown menu and MEX from States dropdown menu returns MEX in search results

        Given current URL is AIM Inspect site home page
        When user overs over Request tab
        And click Search Organizations
        And clicks Country Dropdown menu
        And selects Mexico from the options
        And clicks States dropdown menu
        And selects MEX from dropdown menu
        And clicks search
        Then MEX results are shown


    Scenario: Organization Search Form with Mexico selected from Country dropdown menu and MIC from States dropdown menu returns MIC in search results

        Given current URL is AIM Inspect site home page
        When user overs over Request tab
        And click Search Organizations
        And clicks Country Dropdown menu
        And selects Mexico from the options
        And clicks States dropdown menu
        And selects MIC from dropdown menu
        And clicks search
        Then MIC results are shown


    Scenario: Organization Search Form with Mexico selected from Country dropdown menu and MOR from States dropdown menu returns MOR in search results

        Given current URL is AIM Inspect site home page
        When user overs over Request tab
        And click Search Organizations
        And clicks Country Dropdown menu
        And selects Mexico from the options
        And clicks States dropdown menu
        And selects MOR from dropdown menu
        And clicks search
        Then MOR results are shown


    Scenario: Organization Search Form with Mexico selected from Country dropdown menu and NAY from States dropdown menu returns NAY in search results

        Given current URL is AIM Inspect site home page
        When user overs over Request tab
        And click Search Organizations
        And clicks Country Dropdown menu
        And selects Mexico from the options
        And clicks States dropdown menu
        And selects NAY from dropdown menu
        And clicks search
        Then NAY results are shown


    Scenario: Organization Search Form with Mexico selected from Country dropdown menu and NLE from States dropdown menu returns NLE in search results

        Given current URL is AIM Inspect site home page
        When user overs over Request tab
        And click Search Organizations
        And clicks Country Dropdown menu
        And selects Mexico from the options
        And clicks States dropdown menu
        And selects NLE from dropdown menu
        And clicks search
        Then NLE results are shown


    Scenario: Organization Search Form with Mexico selected from Country dropdown menu and OAX from States dropdown menu returns OAX in search results

        Given current URL is AIM Inspect site home page
        When user overs over Request tab
        And click Search Organizations
        And clicks Country Dropdown menu
        And selects Mexico from the options
        And clicks States dropdown menu
        And selects OAX from dropdown menu
        And clicks search
        Then OAX results are shown


    Scenario: Organization Search Form with Mexico selected from Country dropdown menu and PUE from States dropdown menu returns PUE in search results

        Given current URL is AIM Inspect site home page
        When user overs over Request tab
        And click Search Organizations
        And clicks Country Dropdown menu
        And selects Mexico from the options
        And clicks States dropdown menu
        And selects PUE from dropdown menu
        And clicks search
        Then PUE results are shown


    Scenario: Organization Search Form with Mexico selected from Country dropdown menu and QUE from States dropdown menu returns QUE in search results

        Given current URL is AIM Inspect site home page
        When user overs over Request tab
        And click Search Organizations
        And clicks Country Dropdown menu
        And selects Mexico from the options
        And clicks States dropdown menu
        And selects QUE from dropdown menu
        And clicks search
        Then QUE results are shown


    Scenario: Organization Search Form with Mexico selected from Country dropdown menu and ROO from States dropdown menu returns ROO in search results

        Given current URL is AIM Inspect site home page
        When user overs over Request tab
        And click Search Organizations
        And clicks Country Dropdown menu
        And selects Mexico from the options
        And clicks States dropdown menu
        And selects ROO from dropdown menu
        And clicks search
        Then ROO results are shown




    Scenario: Organization Search Form with Mexico selected from Country dropdown menu and SLP from States dropdown menu returns SLP in search results

        Given current URL is AIM Inspect site home page
        When user overs over Request tab
        And click Search Organizations
        And clicks Country Dropdown menu
        And selects Mexico from the options
        And clicks States dropdown menu
        And selects SLP from dropdown menu
        And clicks search
        Then SLP results are shown




    Scenario: Organization Search Form with Mexico selected from Country dropdown menu and SIN from States dropdown menu returns SIN in search results

        Given current URL is AIM Inspect site home page
        When user overs over Request tab
        And click Search Organizations
        And clicks Country Dropdown menu
        And selects Mexico from the options
        And clicks States dropdown menu
        And selects SIN from dropdown menu
        And clicks search
        Then SIN results are shown




    Scenario: Organization Search Form with Mexico selected from Country dropdown menu and SON from States dropdown menu returns SON in search results

        Given current URL is AIM Inspect site home page
        When user overs over Request tab
        And click Search Organizations
        And clicks Country Dropdown menu
        And selects Mexico from the options
        And clicks States dropdown menu
        And selects SON from dropdown menu
        And clicks search
        Then SON results are shown




    Scenario: Organization Search Form with Mexico selected from Country dropdown menu and TAB from States dropdown menu returns TAB in search results

        Given current URL is AIM Inspect site home page
        When user overs over Request tab
        And click Search Organizations
        And clicks Country Dropdown menu
        And selects Mexico from the options
        And clicks States dropdown menu
        And selects TAB from dropdown menu
        And clicks search
        Then TAB results are shown




    Scenario: Organization Search Form with Mexico selected from Country dropdown menu and TLA from States dropdown menu returns TLA in search results

        Given current URL is AIM Inspect site home page
        When user overs over Request tab
        And click Search Organizations
        And clicks Country Dropdown menu
        And selects Mexico from the options
        And clicks States dropdown menu
        And selects TLA from dropdown menu
        And clicks search
        Then TLA results are shown




    Scenario: Organization Search Form with Mexico selected from Country dropdown menu and VER from States dropdown menu returns VER in search results

        Given current URL is AIM Inspect site home page
        When user overs over Request tab
        And click Search Organizations
        And clicks Country Dropdown menu
        And selects Mexico from the options
        And clicks States dropdown menu
        And selects VER from dropdown menu
        And clicks search
        Then VER results are shown




    Scenario: Organization Search Form with Mexico selected from Country dropdown menu and YUC from States dropdown menu returns YUC in search results

        Given current URL is AIM Inspect site home page
        When user overs over Request tab
        And click Search Organizations
        And clicks Country Dropdown menu
        And selects Mexico from the options
        And clicks States dropdown menu
        And selects YUC from dropdown menu
        And clicks search
        Then YUC results are shown




    Scenario: Organization Search Form with Mexico selected from Country dropdown menu and ZAC from States dropdown menu returns ZAC in search results

        Given current URL is AIM Inspect site home page
        When user overs over Request tab
        And click Search Organizations
        And clicks Country Dropdown menu
        And selects Mexico from the options
        And clicks States dropdown menu
        And selects ZAC from dropdown menu
        And clicks search
        Then ZAC results are shown




    






   









    Scenario: Organization Search Form with US selected from Country dropdown menu shows US states in States dropdown menu 

        Given current URL is AIM Inspect site home page
        When user overs over Request tab
        And click Search Organizations
        And clicks Country Dropdown menu
        And selects US from the options
        And clicks States dropdown menu
        Then US States are shown in dropdown menu










    Scenario: Organization Search Form with US selected from Country dropdown menu and AL from States dropdown menu returns AL in search results

        Given current URL is AIM Inspect site home page
        When user overs over Request tab
        And click Search Organizations
        And clicks Country Dropdown menu
        And selects US from the options
        And clicks States dropdown menu
        And selects AL from dropdown menu
        And clicks search
        Then AL results are shown


    Scenario: Organization Search Form with US selected from Country dropdown menu and AK from States dropdown menu returns AK in search results

        Given current URL is AIM Inspect site home page
        When user overs over Request tab
        And click Search Organizations
        And clicks Country Dropdown menu
        And selects US from the options
        And clicks States dropdown menu
        And selects AK from dropdown menu
        And clicks search
        Then AK results are shown


    Scenario: Organization Search Form with US selected from Country dropdown menu and AZ from States dropdown menu returns AZ in search results

        Given current URL is AIM Inspect site home page
        When user overs over Request tab
        And click Search Organizations
        And clicks Country Dropdown menu
        And selects US from the options
        And clicks States dropdown menu
        And selects AZ from dropdown menu
        And clicks search
        Then AZ results are shown


    Scenario: Organization Search Form with US selected from Country dropdown menu and AR from States dropdown menu returns AR in search results

        Given current URL is AIM Inspect site home page
        When user overs over Request tab
        And click Search Organizations
        And clicks Country Dropdown menu
        And selects US from the options
        And clicks States dropdown menu
        And selects AR from dropdown menu
        And clicks search
        Then AR results are shown


    Scenario: Organization Search Form with US selected from Country dropdown menu and CA from States dropdown menu returns CA in search results

        Given current URL is AIM Inspect site home page
        When user overs over Request tab
        And click Search Organizations
        And clicks Country Dropdown menu
        And selects US from the options
        And clicks States dropdown menu
        And selects CA from dropdown menu
        And clicks search
        Then CA results are shown


    Scenario: Organization Search Form with US selected from Country dropdown menu and CO from States dropdown menu returns CO in search results

        Given current URL is AIM Inspect site home page
        When user overs over Request tab
        And click Search Organizations
        And clicks Country Dropdown menu
        And selects US from the options
        And clicks States dropdown menu
        And selects CO from dropdown menu
        And clicks search
        Then CO results are shown


    Scenario: Organization Search Form with US selected from Country dropdown menu and CT from States dropdown menu returns CT in search results

        Given current URL is AIM Inspect site home page
        When user overs over Request tab
        And click Search Organizations
        And clicks Country Dropdown menu
        And selects US from the options
        And clicks States dropdown menu
        And selects CT from dropdown menu
        And clicks search
        Then CT results are shown


    Scenario: Organization Search Form with US selected from Country dropdown menu and DE from States dropdown menu returns DE in search results

        Given current URL is AIM Inspect site home page
        When user overs over Request tab
        And click Search Organizations
        And clicks Country Dropdown menu
        And selects US from the options
        And clicks States dropdown menu
        And selects DE from dropdown menu
        And clicks search
        Then DE results are shown


    Scenario: Organization Search Form with US selected from Country dropdown menu and DC from States dropdown menu returns DC in search results

        Given current URL is AIM Inspect site home page
        When user overs over Request tab
        And click Search Organizations
        And clicks Country Dropdown menu
        And selects US from the options
        And clicks States dropdown menu
        And selects DC from dropdown menu
        And clicks search
        Then DC results are shown


    Scenario: Organization Search Form with US selected from Country dropdown menu and FL from States dropdown menu returns FL in search results

        Given current URL is AIM Inspect site home page
        When user overs over Request tab
        And click Search Organizations
        And clicks Country Dropdown menu
        And selects US from the options
        And clicks States dropdown menu
        And selects FL from dropdown menu
        And clicks search
        Then FL results are shown


    Scenario: Organization Search Form with US selected from Country dropdown menu and GA from States dropdown menu returns GA in search results

        Given current URL is AIM Inspect site home page
        When user overs over Request tab
        And click Search Organizations
        And clicks Country Dropdown menu
        And selects US from the options
        And clicks States dropdown menu
        And selects GA from dropdown menu
        And clicks search
        Then GA results are shown


    Scenario: Organization Search Form with US selected from Country dropdown menu and HI from States dropdown menu returns HI in search results

        Given current URL is AIM Inspect site home page
        When user overs over Request tab
        And click Search Organizations
        And clicks Country Dropdown menu
        And selects US from the options
        And clicks States dropdown menu
        And selects HI from dropdown menu
        And clicks search
        Then HI results are shown


    Scenario: Organization Search Form with US selected from Country dropdown menu and ID from States dropdown menu returns ID in search results

        Given current URL is AIM Inspect site home page
        When user overs over Request tab
        And click Search Organizations
        And clicks Country Dropdown menu
        And selects US from the options
        And clicks States dropdown menu
        And selects ID from dropdown menu
        And clicks search
        Then ID results are shown


    Scenario: Organization Search Form with US selected from Country dropdown menu and IL from States dropdown menu returns IL in search results

        Given current URL is AIM Inspect site home page
        When user overs over Request tab
        And click Search Organizations
        And clicks Country Dropdown menu
        And selects US from the options
        And clicks States dropdown menu
        And selects IL from dropdown menu
        And clicks search
        Then IL results are shown


    Scenario: Organization Search Form with US selected from Country dropdown menu and IN from States dropdown menu returns IN in search results

        Given current URL is AIM Inspect site home page
        When user overs over Request tab
        And click Search Organizations
        And clicks Country Dropdown menu
        And selects US from the options
        And clicks States dropdown menu
        And selects IN from dropdown menu
        And clicks search
        Then IN results are shown


    Scenario: Organization Search Form with US selected from Country dropdown menu and IA from States dropdown menu returns IA in search results

        Given current URL is AIM Inspect site home page
        When user overs over Request tab
        And click Search Organizations
        And clicks Country Dropdown menu
        And selects US from the options
        And clicks States dropdown menu
        And selects IA from dropdown menu
        And clicks search
        Then IA results are shown


    Scenario: Organization Search Form with US selected from Country dropdown menu and KS from States dropdown menu returns KS in search results

        Given current URL is AIM Inspect site home page
        When user overs over Request tab
        And click Search Organizations
        And clicks Country Dropdown menu
        And selects US from the options
        And clicks States dropdown menu
        And selects KS from dropdown menu
        And clicks search
        Then KS results are shown

    
    Scenario: Organization Search Form with US selected from Country dropdown menu and KY from States dropdown menu returns KY in search results

        Given current URL is AIM Inspect site home page
        When user overs over Request tab
        And click Search Organizations
        And clicks Country Dropdown menu
        And selects US from the options
        And clicks States dropdown menu
        And selects KY from dropdown menu
        And clicks search
        Then KY results are shown


    Scenario: Organization Search Form with US selected from Country dropdown menu and LA from States dropdown menu returns LA in search results

        Given current URL is AIM Inspect site home page
        When user overs over Request tab
        And click Search Organizations
        And clicks Country Dropdown menu
        And selects US from the options
        And clicks States dropdown menu
        And selects LA from dropdown menu
        And clicks search
        Then LA results are shown


    Scenario: Organization Search Form with US selected from Country dropdown menu and ME from States dropdown menu returns ME in search results

        Given current URL is AIM Inspect site home page
        When user overs over Request tab
        And click Search Organizations
        And clicks Country Dropdown menu
        And selects US from the options
        And clicks States dropdown menu
        And selects ME from dropdown menu
        And clicks search
        Then ME results are shown


    Scenario: Organization Search Form with US selected from Country dropdown menu and MD from States dropdown menu returns MD in search results

        Given current URL is AIM Inspect site home page
        When user overs over Request tab
        And click Search Organizations
        And clicks Country Dropdown menu
        And selects US from the options
        And clicks States dropdown menu
        And selects MD from dropdown menu
        And clicks search
        Then MD results are shown


    Scenario: Organization Search Form with US selected from Country dropdown menu and MA  from States dropdown menu returns MA in search results

        Given current URL is AIM Inspect site home page
        When user overs over Request tab
        And click Search Organizations
        And clicks Country Dropdown menu
        And selects US from the options
        And clicks States dropdown menu
        And selects MA from dropdown menu
        And clicks search
        Then MA results are shown


    Scenario: Organization Search Form with US selected from Country dropdown menu and MI from States dropdown menu returns MI in search results

        Given current URL is AIM Inspect site home page
        When user overs over Request tab
        And click Search Organizations
        And clicks Country Dropdown menu
        And selects US from the options
        And clicks States dropdown menu
        And selects MI from dropdown menu
        And clicks search
        Then MI results are shown


    



    Scenario: Organization Search Form with US selected from Country dropdown menu and MN from States dropdown menu returns MN in search results

        Given current URL is AIM Inspect site home page
        When user overs over Request tab
        And click Search Organizations
        And clicks Country Dropdown menu
        And selects US from the options
        And clicks States dropdown menu
        And selects MN from dropdown menu
        And clicks search
        Then MN results are shown



    Scenario: Organization Search Form with US selected from Country dropdown menu and MS from States dropdown menu returns MS in search results

        Given current URL is AIM Inspect site home page
        When user overs over Request tab
        And click Search Organizations
        And clicks Country Dropdown menu
        And selects US from the options
        And clicks States dropdown menu
        And selects MS from dropdown menu
        And clicks search
        Then MS results are shown



    Scenario: Organization Search Form with US selected from Country dropdown menu and MO from States dropdown menu returns MO in search results

        Given current URL is AIM Inspect site home page
        When user overs over Request tab
        And click Search Organizations
        And clicks Country Dropdown menu
        And selects US from the options
        And clicks States dropdown menu
        And selects MO from dropdown menu
        And clicks search
        Then MO results are shown



    Scenario: Organization Search Form with US selected from Country dropdown menu and MT from States dropdown menu returns MT in search results

        Given current URL is AIM Inspect site home page
        When user overs over Request tab
        And click Search Organizations
        And clicks Country Dropdown menu
        And selects US from the options
        And clicks States dropdown menu
        And selects MT from dropdown menu
        And clicks search
        Then MT results are shown



    Scenario: Organization Search Form with US selected from Country dropdown menu and NE from States dropdown menu returns NE in search results

        Given current URL is AIM Inspect site home page
        When user overs over Request tab
        And click Search Organizations
        And clicks Country Dropdown menu
        And selects US from the options
        And clicks States dropdown menu
        And selects NE from dropdown menu
        And clicks search
        Then NE results are shown



    Scenario: Organization Search Form with US selected from Country dropdown menu and NV from States dropdown menu returns NV in search results

        Given current URL is AIM Inspect site home page
        When user overs over Request tab
        And click Search Organizations
        And clicks Country Dropdown menu
        And selects US from the options
        And clicks States dropdown menu
        And selects NV from dropdown menu
        And clicks search
        Then NV results are shown



    Scenario: Organization Search Form with US selected from Country dropdown menu and NH from States dropdown menu returns NH in search results

        Given current URL is AIM Inspect site home page
        When user overs over Request tab
        And click Search Organizations
        And clicks Country Dropdown menu
        And selects US from the options
        And clicks States dropdown menu
        And selects NH from dropdown menu
        And clicks search
        Then NH results are shown




    Scenario: Organization Search Form with US selected from Country dropdown menu and NJ from States dropdown menu returns NJ in search results

        Given current URL is AIM Inspect site home page
        When user overs over Request tab
        And click Search Organizations
        And clicks Country Dropdown menu
        And selects US from the options
        And clicks States dropdown menu
        And selects NJ from dropdown menu
        And clicks search
        Then NJ results are shown




    Scenario: Organization Search Form with US selected from Country dropdown menu and NM from States dropdown menu returns NM in search results

        Given current URL is AIM Inspect site home page
        When user overs over Request tab
        And click Search Organizations
        And clicks Country Dropdown menu
        And selects US from the options
        And clicks States dropdown menu
        And selects NM from dropdown menu
        And clicks search
        Then NM results are shown



    Scenario: Organization Search Form with US selected from Country dropdown menu and NY from States dropdown menu returns NY in search results

        Given current URL is AIM Inspect site home page
        When user overs over Request tab
        And click Search Organizations
        And clicks Country Dropdown menu
        And selects US from the options
        And clicks States dropdown menu
        And selects NY from dropdown menu
        And clicks search
        Then NY results are shown



    Scenario: Organization Search Form with US selected from Country dropdown menu and NC from States dropdown menu returns NC in search results

        Given current URL is AIM Inspect site home page
        When user overs over Request tab
        And click Search Organizations
        And clicks Country Dropdown menu
        And selects US from the options
        And clicks States dropdown menu
        And selects NC from dropdown menu
        And clicks search
        Then NC results are shown



    Scenario: Organization Search Form with US selected from Country dropdown menu and ND from States dropdown menu returns ND in search results

        Given current URL is AIM Inspect site home page
        When user overs over Request tab
        And click Search Organizations
        And clicks Country Dropdown menu
        And selects US from the options
        And clicks States dropdown menu
        And selects ND from dropdown menu
        And clicks search
        Then ND results are shown




    Scenario: Organization Search Form with US selected from Country dropdown menu and OH from States dropdown menu returns OH in search results

        Given current URL is AIM Inspect site home page
        When user overs over Request tab
        And click Search Organizations
        And clicks Country Dropdown menu
        And selects US from the options
        And clicks States dropdown menu
        And selects OH from dropdown menu
        And clicks search
        Then OH results are shown




    Scenario: Organization Search Form with US selected from Country dropdown menu and OK from States dropdown menu returns OK in search results

        Given current URL is AIM Inspect site home page
        When user overs over Request tab
        And click Search Organizations
        And clicks Country Dropdown menu
        And selects US from the options
        And clicks States dropdown menu
        And selects OK from dropdown menu
        And clicks search
        Then OK results are shown



    Scenario: Organization Search Form with US selected from Country dropdown menu and OR from States dropdown menu returns OR in search results

        Given current URL is AIM Inspect site home page
        When user overs over Request tab
        And click Search Organizations
        And clicks Country Dropdown menu
        And selects US from the options
        And clicks States dropdown menu
        And selects OR from dropdown menu
        And clicks search
        Then OR results are shown




    Scenario: Organization Search Form with US selected from Country dropdown menu and PA from States dropdown menu returns PA in search results

        Given current URL is AIM Inspect site home page
        When user overs over Request tab
        And click Search Organizations
        And clicks Country Dropdown menu
        And selects US from the options
        And clicks States dropdown menu
        And selects PA from dropdown menu
        And clicks search
        Then PA results are shown



    Scenario: Organization Search Form with US selected from Country dropdown menu and PR from States dropdown menu returns PR in search results

        Given current URL is AIM Inspect site home page
        When user overs over Request tab
        And click Search Organizations
        And clicks Country Dropdown menu
        And selects US from the options
        And clicks States dropdown menu
        And selects PR from dropdown menu
        And clicks search
        Then PR results are shown


    Scenario: Organization Search Form with US selected from Country dropdown menu and RI from States dropdown menu returns RI in search results

        Given current URL is AIM Inspect site home page
        When user overs over Request tab
        And click Search Organizations
        And clicks Country Dropdown menu
        And selects US from the options
        And clicks States dropdown menu
        And selects RI from dropdown menu
        And clicks search
        Then RI results are shown



    Scenario: Organization Search Form with US selected from Country dropdown menu and SC from States dropdown menu returns SC in search results

        Given current URL is AIM Inspect site home page
        When user overs over Request tab
        And click Search Organizations
        And clicks Country Dropdown menu
        And selects US from the options
        And clicks States dropdown menu
        And selects SC from dropdown menu
        And clicks search
        Then SC results are shown


    Scenario: Organization Search Form with US selected from Country dropdown menu and SD from States dropdown menu returns SD in search results

        Given current URL is AIM Inspect site home page
        When user overs over Request tab
        And click Search Organizations
        And clicks Country Dropdown menu
        And selects US from the options
        And clicks States dropdown menu
        And selects SD from dropdown menu
        And clicks search
        Then SD results are shown


    Scenario: Organization Search Form with US selected from Country dropdown menu and TN from States dropdown menu returns TN in search results

        Given current URL is AIM Inspect site home page
        When user overs over Request tab
        And click Search Organizations
        And clicks Country Dropdown menu
        And selects US from the options
        And clicks States dropdown menu
        And selects TN from dropdown menu
        And clicks search
        Then TN results are shown


    Scenario: Organization Search Form with US selected from Country dropdown menu and TX from States dropdown menu returns TX in search results

        Given current URL is AIM Inspect site home page
        When user overs over Request tab
        And click Search Organizations
        And clicks Country Dropdown menu
        And selects US from the options
        And clicks States dropdown menu
        And selects TX from dropdown menu
        And clicks search
        Then TX results are shown



    Scenario: Organization Search Form with US selected from Country dropdown menu and UT from States dropdown menu returns UT in search results

        Given current URL is AIM Inspect site home page
        When user overs over Request tab
        And click Search Organizations
        And clicks Country Dropdown menu
        And selects US from the options
        And clicks States dropdown menu
        And selects UT from dropdown menu
        And clicks search
        Then UT results are shown



    Scenario: Organization Search Form with US selected from Country dropdown menu and VT from States dropdown menu returns VT in search results

        Given current URL is AIM Inspect site home page
        When user overs over Request tab
        And click Search Organizations
        And clicks Country Dropdown menu
        And selects US from the options
        And clicks States dropdown menu
        And selects VT from dropdown menu
        And clicks search
        Then VT results are shown



    Scenario: Organization Search Form with US selected from Country dropdown menu and VI from States dropdown menu returns VI in search results

        Given current URL is AIM Inspect site home page
        When user overs over Request tab
        And click Search Organizations
        And clicks Country Dropdown menu
        And selects US from the options
        And clicks States dropdown menu
        And selects VI from dropdown menu
        And clicks search
        Then VI results are shown



    Scenario: Organization Search Form with US selected from Country dropdown menu and WA from States dropdown menu returns WA in search results

        Given current URL is AIM Inspect site home page
        When user overs over Request tab
        And click Search Organizations
        And clicks Country Dropdown menu
        And selects US from the options
        And clicks States dropdown menu
        And selects WA from dropdown menu
        And clicks search
        Then WA results are shown


    Scenario: Organization Search Form with US selected from Country dropdown menu and WV from States dropdown menu returns WV in search results

        Given current URL is AIM Inspect site home page
        When user overs over Request tab
        And click Search Organizations
        And clicks Country Dropdown menu
        And selects US from the options
        And clicks States dropdown menu
        And selects WV from dropdown menu
        And clicks search
        Then WV results are shown


    Scenario: Organization Search Form with US selected from Country dropdown menu and WI from States dropdown menu returns WI in search results

        Given current URL is AIM Inspect site home page
        When user overs over Request tab
        And click Search Organizations
        And clicks Country Dropdown menu
        And selects US from the options
        And clicks States dropdown menu
        And selects WI from dropdown menu
        And clicks search
        Then WI results are shown


    Scenario: Organization Search Form with US selected from Country dropdown menu and WY from States dropdown menu returns WY in search results

        Given current URL is AIM Inspect site home page
        When user overs over Request tab
        And click Search Organizations
        And clicks Country Dropdown menu
        And selects US from the options
        And clicks States dropdown menu
        And selects WY from dropdown menu
        And clicks search
        Then WY results are shown


   















    
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



    Scenario: Organization Search Form with Canada selected from Country dropdown menu and NT from States dropdown menu returns NT in search results

        Given current URL is AIM Inspect site home page
        When user overs over Request tab
        And click Search Organizations
        And clicks Country Dropdown menu
        And selects Canada from the options
        And clicks States dropdown menu
        And selects NT from dropdown menu
        And clicks search
        Then NT results are shown


    Scenario: Organization Search Form with Canada selected from Country dropdown menu and NU from States dropdown menu returns NU in search results

        Given current URL is AIM Inspect site home page
        When user overs over Request tab
        And click Search Organizations
        And clicks Country Dropdown menu
        And selects Canada from the options
        And clicks States dropdown menu
        And selects NU from dropdown menu
        And clicks search
        Then NU results are shown


    Scenario: Organization Search Form with Canada selected from Country dropdown menu and YT from States dropdown menu returns YT in search results

        Given current URL is AIM Inspect site home page
        When user overs over Request tab
        And click Search Organizations
        And clicks Country Dropdown menu
        And selects Canada from the options
        And clicks States dropdown menu
        And selects YT from dropdown menu
        And clicks search
        Then YT results are shown


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


















        


    


    




    