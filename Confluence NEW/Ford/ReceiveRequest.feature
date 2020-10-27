Feature: Receive Request

    Scenario: Process as Error - 1 
        Given Grip / Batch File
        When Finance Label NOT provided 
        Then Process as Error

    Scenario: Process as Error - 2 
        Given Grip / Batch File
        And Finance Label provided 
        When missing Zip code
        Then Process as Error


    Scenario: 
        Given Grip / Batch File
        And Finance Label provided 
        And not missing Zip code
        When Contact Type Lessee
        And Phone Number NOT valid
        Then Cancel as UTC - No Valid Phone Number


    Scenario: 
        Given Grip / Batch File
        And Finance Label provided 
        And not missing Zip code
        When Contact Type Lessee
        And Phone Number is valid
        Then Request type New


    Scenario: 
        Given Grip / Batch File
        And Finance Label provided 
        And not missing Zip code
        When Contact Type Lessee
        And Phone Number is valid
        Then Request type Update


    Scenario: 
        Given Grip / Batch File
        And Finance Label provided 
        And not missing Zip code
        When Contact Type Lessee
        And Phone Number is valid
        Then Request type Reinspection


    Scenario: 
        Given Grip / Batch File
        And Finance Label provided 
        And not missing Zip code
        When Contact Type Lessee
        And Phone Number is valid
        Then Request type Cancel


    Scenario: 
        Given Grip / Batch File
        And Finance Label provided 
        And not missing Zip code
        When Contact Type Lessee
        And Phone Number is valid
        Then Request type Reopen


#
    Scenario: 
        Given Grip / Batch File
        And Finance Label provided 
        And not missing Zip code
        When Contact Type Dealer
        Then Request type New

    Scenario: 
        Given Grip / Batch File
        And Finance Label provided 
        And not missing Zip code
        When Contact Type Dealer
        Then Request type Update

    Scenario: 
        Given Grip / Batch File
        And Finance Label provided 
        And not missing Zip code
        When Contact Type Dealer
        Then Request type Reinspection

    Scenario: 
        Given Grip / Batch File
        And Finance Label provided 
        And not missing Zip code
        When Contact Type Dealer
        Then Request type Cancel


    Scenario: 
        Given Grip / Batch File
        And Finance Label provided 
        And not missing Zip code
        When Contact Type Dealer
        Then Request type Reopen







    #
    Scenario: 
        Given Grip / Batch File
        And Finance Label provided 
        And not missing Zip code
        When Contact Type Other
        Then Request type New

    Scenario: 
        Given Grip / Batch File
        And Finance Label provided 
        And not missing Zip code
        When Contact Type Other
        Then Request type Update

    Scenario: 
        Given Grip / Batch File
        And Finance Label provided 
        And not missing Zip code
        When Contact Type Other
        Then Request type Reinspection

    Scenario: 
        Given Grip / Batch File
        And Finance Label provided 
        And not missing Zip code
        When Contact Type Other
        Then Request type Cancel


    Scenario: 
        Given Grip / Batch File
        And Finance Label provided 
        And not missing Zip code
        When Contact Type Other
        Then Request type Reopen
    
