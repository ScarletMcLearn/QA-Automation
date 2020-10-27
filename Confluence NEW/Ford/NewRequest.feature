Feature: New Requests

    Scenario:  

        Given Request Type New 
        When Contact Type is Home
        And Current Request is False
        Then Create New Home Request 


    Scenario:  

        Given Request Type New 
        When Contact Type is Home
        And Current Request is True
        And Request Type is Dealer
        Then Cancel Dealer Request
        And Create New Home Request 


    Scenario:  

        Given Request Type New 
        When Contact Type is Home
        And Current Request is True
        And Request Type is Home
        And Request Status Cancelled or Complete
        Then Create New Home Request 


    Scenario:  

        Given Request Type New 
        When Contact Type is Home
        And Current Request is True
        And Request Type is Home
        And Request Status On Hold, Quality, Tech Review, Awaiting Finance
        Then Update Request  



    Scenario:  

        Given Request Type New 
        When Contact Type is Home
        And Current Request is True
        And Request Type is Home
        And Request Status Scheduled, Pending, Potential, Hold, Client, Helpdesk, Date, Dispatch, CSI, etc
        Then Update Request 
