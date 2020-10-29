Feature: Confirmation Emails

    Scenario: 

        When send confirmation email to Lessee
        And Lessee request is False
        Then end
        
    Scenario: 

        When send confirmation email to Lessee
        And Lessee request is True
        And email address in AM is False
        Then end

    Scenario: 

        When send confirmation email to Lessee
        And Lessee request is True
        And email address in AM is True
        Then Send email to lesse asap
        And document AM that email was sent 
        And document history of AM 
        And end 