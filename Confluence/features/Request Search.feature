Feature: 

    Background: 

        Given Browser is opened
        And nagivated to AIM inspect site // https://crm-qa.aiminspect.com/
        And AIM Inspect site is displayed 
        And correct user name and password is entered
        And login form is submitted

        

    Scenario: No Requests Search Results found if does not exist

        When click on Request 
        And click on Search requests 
        And input text in Basic search bar which does not exist # sdfsdf32423
        And click search
        Then 'No Results Found.' message is displayed


    Scenario: Requests Search Results displayed if does exist

        When click on Request 
        And click on Search requests 
        And input text in Basic search bar which does exist # asa
        And click search
        Then search results are displayed
