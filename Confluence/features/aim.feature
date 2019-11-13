Feature: AIM Site functionalities

    Background: 

        Given Browser is opened
        And nagivated to AIM inspect site // https://crm-qa.aiminspect.com/
        And AIM Inspect site is displayed 
        And correct user name and password is entered
        And login form is submitted


    Scenario: Launch AIM Inspect site
    
        When logged in to AIM Inspect site
        Then AIM Inspect site is displayed


    

    

    







    



    Scenario: Search bar is displayed

        When logged in 
        Then search bar on navigation menu is displayed 






    

        

    Scenario: If User logs in and there is already an inspection Completed

        Given current page is AIM Inspect site
        And user has a Completed Inspection
        When log in to AIM Inspect site
        Then can see Completed Report PDF


    Scenario: Dropdown Request menu is shown

        Given current page is AIM Inspect site 
        When hover cursor over Request tab
        Then dropdown Request menu is shown 


    
        
# TO DO
# https://crm-uat.aiminspect.com/#!/inspection-request/add
# CUSTOMER : MANHEIM
# REQUEST TYPE : THIRD PARTY INSPECTION 
# FORM NOT WORKING!!!!!














    

    


    









    



