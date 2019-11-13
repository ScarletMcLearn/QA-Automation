Feature: 

    Background: 

        Given Browser is opened
        And nagivated to AIM inspect site // https://crm-qa.aiminspect.com/
        And AIM Inspect site is displayed 
        And correct user name and password is entered
        And login form is submitted

    Scenario: Navigate to Add Organization Page

        Given logged in to AIM Inspect site
        And current page is AIM Inspect site 
        When hover over Request tab
        And click the Add organization
        Then Add Organization page is shown


    Scenario: Add Organization 

        Given logged in to AIM Inspect site
        And current page is AIM Inspect site 
        When hover over Request tab
        And click the Add organization
        And Add Organization page is shown
        And fill up Add Organization form
        And click Submit
        Then AIM Inspect home page is displayed





    
    Scenario: Add Dealer Chase US AL Organization

        Given current page is New Organization page 
        When User click Customer Dropdown menu
        And select Chase
        And click Organization Type Dropdown menu 
        And selects Dealer 
        And clicks Organization name field
        And enters Organization name
        And selects US from Billing Address dropdown menu 
        And clicks Street 1 field
        And enters a valid Street
        And clicks City field
        And enters a valid City
        And clicks State dropdown menu 
        And selects AL from state