Feature: Systemic Cancellation

    Scenario: 
        Given Systemic Cancellation
        When Request Type is Lesse
        And Greater than 20 days past maturity is True
        Then Cancel Request


    Scenario: 
        Given Systemic Cancellation
        When Request Type is Lesse
        And Greater than 20 days past maturity is False 
        And 3 outbound calls made is True 
        Then Cancel Request


    Scenario: 
        Given Systemic Cancellation
        When Request Type is Lesse
        And Greater than 20 days past maturity is False 
        And 3 outbound calls made is False 
        Then Take no action


    Scenario: 
        Given Systemic Cancellation
        When Request Type is Dealer
        And On Hold Greater than 90 days is False 
        Then Take no action


    Scenario: 
        Given Systemic Cancellation
        When Request Type is Dealer
        And On Hold Greater than 90 days is True 
        Then Cancel Request