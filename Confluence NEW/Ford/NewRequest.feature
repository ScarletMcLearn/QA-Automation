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



    Scenario:  

        Given Request Type New 
        When Contact Type is Home
        And Current Request is False
        Then Create New Dealer Request 



    Scenario:  

        Given Request Type New 
        When Contact Type is Home
        And Current Request is True
        And Request Type is Dealer
        And Request Status Cancelled
        Then Create New Dealer Request 


    Scenario:  

        Given Request Type New 
        When Contact Type is Home
        And Current Request is True
        And Request Type is Dealer
        And Request Status Complete
        And is more than 65 days old
        Then Create New Dealer Request 



    Scenario:  

        Given Request Type New 
        When Contact Type is Home
        And Current Request is True
        And Request Type is Dealer
        And Request Status Complete
        And is not more than 65 days old
        Then Resend Prior Inspection



    Scenario:  

        Given Request Type New 
        When Contact Type is Home
        And Current Request is True
        And Request Type is Dealer
        And Request Status Open, Scheduled, Home, etc
        Then update request




    Scenario:  

        Given Request Type New 
        When Contact Type is Home
        And Current Request is True
        And Request Type is Home
        And Appointment set for today is False
        Then Cancel Home Request 
        And Create Dealer Request 



    Scenario:  

        Given Request Type New 
        When Contact Type is Home
        And Current Request is True
        And Request Type is Home
        And Appointment set for today is True
        And Follow current Business process to hold Dealer until next day to see if Home is completed
        And next day Home request complete is True 
        Then follow current business process and complete home and send CR 



    Scenario:  

        Given Request Type New 
        When Contact Type is Home
        And Current Request is True
        And Request Type is Home
        And Appointment set for today is True
        And Follow current Business process to hold Dealer until next day to see if Home is completed
        And next day Home request complete is False 
        Then Cancel Home request 
        And Cancel Dealer request 