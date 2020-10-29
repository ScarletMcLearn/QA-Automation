Feature: Reopen Request

    Scenario: 

        Given Request Type Reopen 
        When Current Request is False 
        Then Create New Request  


    Scenario: 

        Given Request Type Reopen 
        When Current Request is True
        And Tech Review is True  
        Then Update Request  


    Scenario: 

        Given Request Type Reopen 
        When Current Request is True
        And Tech Review is False
        And Cancelled Status is True  
        Then Create New Request  


    Scenario: 

        Given Request Type Reopen 
        When Current Request is True
        And Tech Review is False
        And Cancelled Status is False  
        And Complete Status is True
        Then Process as Error 


    Scenario: 

        Given Request Type Reopen 
        When Current Request is True
        And Tech Review is False
        And Cancelled Status is False  
        And Complete Status is False
        And is Any Other Status 
        Then Update request
