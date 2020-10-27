Feature: Cancel - No Phone

    Scenario: 

        Given Lessee request comes in with no valid phone number
        When create request
        Then cancel request - no valid phone number 