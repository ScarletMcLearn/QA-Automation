Feature: Cancel Request

    Scenario: 
        Given Request Type Cancel 
        When Current Request (Home and Dealer same process) is False 
        Then Follow current process, create new request and cancel right away


    Scenario: 
        Given Request Type Cancel 
        When Current Request (Home and Dealer same process) is True 
        And is Tech Review or on Hold Awaiting Quality is True  
        Then Ignore


    Scenario: 
        Given Request Type Cancel 
        When Current Request (Home and Dealer same process) is True 
        And is Tech Review or on Hold Awaiting Quality is False  
        And is Cancelled is True
        Then Ignore


    Scenario: 
        Given Request Type Cancel 
        When Current Request (Home and Dealer same process) is True 
        And is Tech Review or on Hold Awaiting Quality is False  
        And is Cancelled is False
        And is Complete is True
        Then Ignore



    Scenario: 
        Given Request Type Cancel 
        When Current Request (Home and Dealer same process) is True 
        And is Tech Review or on Hold Awaiting Quality is False  
        And is Cancelled is False
        And is Complete is False
        And Request Type is Dealer
        Then Cancel request



    Scenario: 
        Given Request Type Cancel 
        When Current Request (Home and Dealer same process) is True 
        And is Tech Review or on Hold Awaiting Quality is False  
        And is Cancelled is False
        And is Complete is False
        And Request Type is Home
        And is there appointment for today is False
        Then Cancel request



    Scenario: 
        Given Request Type Cancel 
        When Current Request (Home and Dealer same process) is True 
        And is Tech Review or on Hold Awaiting Quality is False  
        And is Cancelled is False
        And is Complete is False
        And Request Type is Home
        And is there appointment for today is True
        And Follow current Business process to hold Cancel until next day to see if CR is completed
        And next day complete is True 
        Then Complete 


    Scenario: 
        Given Request Type Cancel 
        When Current Request (Home and Dealer same process) is True 
        And is Tech Review or on Hold Awaiting Quality is False  
        And is Cancelled is False
        And is Complete is False
        And Request Type is Home
        And is there appointment for today is True
        And Follow current Business process to hold Cancel until next day to see if CR is completed
        And next day complete is False 
        Then Cancel Request  