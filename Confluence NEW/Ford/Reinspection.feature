Feature: Reinspection

    Scenario: 
        Given Reinspection process
        And is Dealer 
        When Current Request is true
        And is Complete 
        Then Create new Inspection request 


    Scenario: 
        Given Reinspection process
        And is Dealer 
        When Current Request is true
        And is not Complete 
        Then Process as error


    Scenario: 
        Given Reinspection process
        And is Dealer 
        When Current Request is false
        Then Create new Inspection request 


    #
    Scenario: 
        Given Reinspection process
        And is Home 
        When Current Request is true
        And is Complete 
        Then Create new Inspection request 


    Scenario: 
        Given Reinspection process
        And is Home 
        When Current Request is true
        And is not Complete 
        Then Process as error


    Scenario: 
        Given Reinspection process
        And is Home 
        When Current Request is false
        Then Create new Inspection request 

     