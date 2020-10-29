Feature: Reminder Emails

    Scenario: 

        When Reminder Emails to Lessee
        And Lessee request is False
        Then end  

    Scenario: 

        When Reminder Emails to Lessee
        And Lessee request is True
        And email address in AM is False
        Then end 


    Scenario: 

        When Reminder Emails to Lessee
        And Lessee request is True
        And email address in AM is True
        And Is the appointment 2 businesss days from today is False
        Then end 

    Scenario: 

        When Reminder Emails to Lessee
        And Lessee request is True
        And email address in AM is True
        And Is the appointment 2 businesss days from today is True
        And Is there a gap of at least 2 business days since the confirmation email was sent is False
        Then end 


    Scenario: 

        When Reminder Emails to Lessee
        And Lessee request is True
        And email address in AM is True
        And Is the appointment 2 businesss days from today is True
        And Is there a gap of at least 2 business days since the confirmation email was sent is True
        Then Send reminder email with exact same verbiage as confirmation email
        And Document AM that reminder email was sent 

