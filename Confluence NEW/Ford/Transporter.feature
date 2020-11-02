Feature: Transporter 

    Scenario: 
        Given ADS reports to RP/AM and includes if transporter or tech review
        When ADS sends us complete for appointment and message for 'techReview' is true or 'missingLeaseInfo' is true
        And appointment gets marked complete, no CR is generated, so no guid, or link to store
        And put request on hold awaiting lessee info
        Then process as error