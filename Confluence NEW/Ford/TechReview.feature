Feature: Transporter 

    Scenario: 

        Given ADS reports to RP/AM and includes if transporter or tech review
        When ADS sends us complete for appointment and message for 'techReview' is true or 'missingLeaseInfo' is true
        And appointment gets marked complete, no CR is generated, so no guid, or link to store
        And put request in Tech Review; Hold awaiting quality 
        And quality gets email notification from VP
        And Quality determines who takes action is Ford
        Quality to update VP which status AM status to Tech Review awaiting FMCC
        And Ford will review and update VP/AA
        And ADS sends update to AM
        And Update AM to Tech Review Hold Awaiting Quality
        And Goes back to Quality
        And Quality determines who takes action is Quality team
        And action taken is Quality to update inspection
        Then Quality completes with details they already know/have or ford provides
        And ADS sends complete to AM
        And AM gets update from ADS to complete



    Scenario: 

        Given ADS reports to RP/AM and includes if transporter or tech review
        When ADS sends us complete for appointment and message for 'techReview' is true or 'missingLeaseInfo' is true
        And appointment gets marked complete, no CR is generated, so no guid, or link to store
        And put request in Tech Review; Hold awaiting quality 
        And quality gets email notification from VP
        And Quality determines who takes action is Quality team
        And action taken is Quality to update inspection
        Then Quality completes with details they already know/have or ford provides
        And ADS sends complete to AM
        And AM gets update from ADS to complete



    Scenario: 

        Given ADS reports to RP/AM and includes if transporter or tech review
        When ADS sends us complete for appointment and message for 'techReview' is true or 'missingLeaseInfo' is true
        And appointment gets marked complete, no CR is generated, so no guid, or link to store
        And put request in Tech Review; Hold awaiting quality 
        And quality gets email notification from VP
        And Quality determines who takes action is Quality team
        And action taken is Cancel
        Then Cancel by Quality
        And Cancel Request sent to AM


    Scenario: 

        Given ADS reports to RP/AM and includes if transporter or tech review
        When ADS sends us complete for appointment and message for 'techReview' is true or 'missingLeaseInfo' is true
        And appointment gets marked complete, no CR is generated, so no guid, or link to store
        And put request in Tech Review; Hold awaiting quality 
        And quality gets email notification from VP
        And Quality determines who takes action is Inspector
        And Quality decides this needs an inspector to go back to vehicle
        Then Quality team will add notes to inspector in AM
        And the Quality uses send to scheduler button in AM