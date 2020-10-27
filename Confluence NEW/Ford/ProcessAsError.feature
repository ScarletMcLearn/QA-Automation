Feature: Process as Error

    Scenario: Finance Label Error

        Given Finance Label Error
        When Process as Error
        And Log as Error in AM History
        Then Email error to distribution lists part of Response File process

    Scenario: Missing Zip Error

        Given Missing Zip Error
        When Process as Error
        And Log as Error in AM History
        Then Email error to distribution lists part of Response File process


    Scenario: Reopen for Complete Error

        Given Reopen for Complete Error
        When Process as Error
        And Log as Error in AM History
        Then Email error to distribution lists part of Response File process


    Scenario: Reinspection for not yet complete Error

        Given Reinspection for not yet complete Error
        When Process as Error
        And Log as Error in AM History
        Then Email error to distribution lists part of Response File process   


     
    Scenario: Update Record not sent Error

        Given Update Record not sent Error
        When Process as Error
        And Log as Error in AM History
        Then Email error to distribution lists part of Response File process
