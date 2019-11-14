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





    
    Scenario: Add Dealer ALLY US AL Organization

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
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed




    Scenario: Add Auction ALLY US AL Organization

        Given current page is New Organization page 
        When User click Customer Dropdown menu
        And select Chase
        And click Organization Type Dropdown menu 
        And selects Auction 
        And clicks Organization name field
        And enters Organization name
        And selects US from Billing Address dropdown menu 
        And clicks Street 1 field
        And enters a valid Street
        And clicks City field
        And enters a valid City
        And clicks State dropdown menu 
        And selects AL from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed



Scenario: Add Dealer VCI US AL Organization

        Given current page is New Organization page 
        When User click Customer Dropdown menu
        And select VCI
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
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed




    Scenario: Add Auction VCI US AL Organization

        Given current page is New Organization page 
        When User click Customer Dropdown menu
        And select VCI
        And click Organization Type Dropdown menu 
        And selects Auction 
        And clicks Organization name field
        And enters Organization name
        And selects US from Billing Address dropdown menu 
        And clicks Street 1 field
        And enters a valid Street
        And clicks City field
        And enters a valid City
        And clicks State dropdown menu 
        And selects AL from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed




    

Scenario: Add Dealer MANHEIM US AL Organization

        Given current page is New Organization page 
        When User click Customer Dropdown menu
        And select MANHEIM
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
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed




    Scenario: Add Auction MANHEIM US AL Organization

        Given current page is New Organization page 
        When User click Customer Dropdown menu
        And select MANHEIM
        And click Organization Type Dropdown menu 
        And selects Auction 
        And clicks Organization name field
        And enters Organization name
        And selects US from Billing Address dropdown menu 
        And clicks Street 1 field
        And enters a valid Street
        And clicks City field
        And enters a valid City
        And clicks State dropdown menu 
        And selects AL from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed



    Scenario: Add Dealer HYUNDAI US AL Organization

        Given current page is New Organization page 
        When User click Customer Dropdown menu
        And select HYUNDAI
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
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed




    Scenario: Add Auction HYUNDAI US AL Organization

        Given current page is New Organization page 
        When User click Customer Dropdown menu
        And select HYUNDAI
        And click Organization Type Dropdown menu 
        And selects Auction 
        And clicks Organization name field
        And enters Organization name
        And selects US from Billing Address dropdown menu 
        And clicks Street 1 field
        And enters a valid Street
        And clicks City field
        And enters a valid City
        And clicks State dropdown menu 
        And selects AL from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed




    Scenario: Add Dealer NISSAN US AL Organization

        Given current page is New Organization page 
        When User click Customer Dropdown menu
        And select NISSAN
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
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed




    Scenario: Add Auction NISSAN US AL Organization

        Given current page is New Organization page 
        When User click Customer Dropdown menu
        And select NISSAN
        And click Organization Type Dropdown menu 
        And selects Auction 
        And clicks Organization name field
        And enters Organization name
        And selects US from Billing Address dropdown menu 
        And clicks Street 1 field
        And enters a valid Street
        And clicks City field
        And enters a valid City
        And clicks State dropdown menu 
        And selects AL from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed




    
    
    Scenario: Add Dealer ALLY US AK Organization

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
        And selects AK from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed




    Scenario: Add Auction ALLY US AK Organization

        Given current page is New Organization page 
        When User click Customer Dropdown menu
        And select Chase
        And click Organization Type Dropdown menu 
        And selects Auction 
        And clicks Organization name field
        And enters Organization name
        And selects US from Billing Address dropdown menu 
        And clicks Street 1 field
        And enters a valid Street
        And clicks City field
        And enters a valid City
        And clicks State dropdown menu 
        And selects AK from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed



Scenario: Add Dealer VCI US AK Organization

        Given current page is New Organization page 
        When User click Customer Dropdown menu
        And select VCI
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
        And selects AK from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed




    Scenario: Add Auction VCI US AK Organization

        Given current page is New Organization page 
        When User click Customer Dropdown menu
        And select VCI
        And click Organization Type Dropdown menu 
        And selects Auction 
        And clicks Organization name field
        And enters Organization name
        And selects US from Billing Address dropdown menu 
        And clicks Street 1 field
        And enters a valid Street
        And clicks City field
        And enters a valid City
        And clicks State dropdown menu 
        And selects AK from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed




    

Scenario: Add Dealer MANHEIM US AK Organization

        Given current page is New Organization page 
        When User click Customer Dropdown menu
        And select MANHEIM
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
        And selects AK from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed




    Scenario: Add Auction MANHEIM US AK Organization

        Given current page is New Organization page 
        When User click Customer Dropdown menu
        And select MANHEIM
        And click Organization Type Dropdown menu 
        And selects Auction 
        And clicks Organization name field
        And enters Organization name
        And selects US from Billing Address dropdown menu 
        And clicks Street 1 field
        And enters a valid Street
        And clicks City field
        And enters a valid City
        And clicks State dropdown menu 
        And selects AK from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed



    Scenario: Add Dealer HYUNDAI US AK Organization

        Given current page is New Organization page 
        When User click Customer Dropdown menu
        And select HYUNDAI
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
        And selects AK from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed




    Scenario: Add Auction HYUNDAI US AK Organization

        Given current page is New Organization page 
        When User click Customer Dropdown menu
        And select HYUNDAI
        And click Organization Type Dropdown menu 
        And selects Auction 
        And clicks Organization name field
        And enters Organization name
        And selects US from Billing Address dropdown menu 
        And clicks Street 1 field
        And enters a valid Street
        And clicks City field
        And enters a valid City
        And clicks State dropdown menu 
        And selects AK from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed




    Scenario: Add Dealer NISSAN US AK Organization

        Given current page is New Organization page 
        When User click Customer Dropdown menu
        And select NISSAN
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
        And selects AK from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed




    Scenario: Add Auction NISSAN US AK Organization

        Given current page is New Organization page 
        When User click Customer Dropdown menu
        And select NISSAN
        And click Organization Type Dropdown menu 
        And selects Auction 
        And clicks Organization name field
        And enters Organization name
        And selects US from Billing Address dropdown menu 
        And clicks Street 1 field
        And enters a valid Street
        And clicks City field
        And enters a valid City
        And clicks State dropdown menu 
        And selects AK from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed




    
    
    Scenario: Add Dealer ALLY US AZ Organization

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
        And selects AZ from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed




    Scenario: Add Auction ALLY US AZ Organization

        Given current page is New Organization page 
        When User click Customer Dropdown menu
        And select Chase
        And click Organization Type Dropdown menu 
        And selects Auction 
        And clicks Organization name field
        And enters Organization name
        And selects US from Billing Address dropdown menu 
        And clicks Street 1 field
        And enters a valid Street
        And clicks City field
        And enters a valid City
        And clicks State dropdown menu 
        And selects AZ from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed



Scenario: Add Dealer VCI US AZ Organization

        Given current page is New Organization page 
        When User click Customer Dropdown menu
        And select VCI
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
        And selects AZ from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed




    Scenario: Add Auction VCI US AZ Organization

        Given current page is New Organization page 
        When User click Customer Dropdown menu
        And select VCI
        And click Organization Type Dropdown menu 
        And selects Auction 
        And clicks Organization name field
        And enters Organization name
        And selects US from Billing Address dropdown menu 
        And clicks Street 1 field
        And enters a valid Street
        And clicks City field
        And enters a valid City
        And clicks State dropdown menu 
        And selects AZ from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed




    

Scenario: Add Dealer MANHEIM US AZ Organization

        Given current page is New Organization page 
        When User click Customer Dropdown menu
        And select MANHEIM
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
        And selects AZ from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed




    Scenario: Add Auction MANHEIM US AZ Organization

        Given current page is New Organization page 
        When User click Customer Dropdown menu
        And select MANHEIM
        And click Organization Type Dropdown menu 
        And selects Auction 
        And clicks Organization name field
        And enters Organization name
        And selects US from Billing Address dropdown menu 
        And clicks Street 1 field
        And enters a valid Street
        And clicks City field
        And enters a valid City
        And clicks State dropdown menu 
        And selects AZ from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed



    Scenario: Add Dealer HYUNDAI US AZ Organization

        Given current page is New Organization page 
        When User click Customer Dropdown menu
        And select HYUNDAI
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
        And selects AZ from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed




    Scenario: Add Auction HYUNDAI US AZ Organization

        Given current page is New Organization page 
        When User click Customer Dropdown menu
        And select HYUNDAI
        And click Organization Type Dropdown menu 
        And selects Auction 
        And clicks Organization name field
        And enters Organization name
        And selects US from Billing Address dropdown menu 
        And clicks Street 1 field
        And enters a valid Street
        And clicks City field
        And enters a valid City
        And clicks State dropdown menu 
        And selects AZ from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed




    Scenario: Add Dealer NISSAN US AZ Organization

        Given current page is New Organization page 
        When User click Customer Dropdown menu
        And select NISSAN
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
        And selects AZ from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed




    Scenario: Add Auction NISSAN US AZ Organization

        Given current page is New Organization page 
        When User click Customer Dropdown menu
        And select NISSAN
        And click Organization Type Dropdown menu 
        And selects Auction 
        And clicks Organization name field
        And enters Organization name
        And selects US from Billing Address dropdown menu 
        And clicks Street 1 field
        And enters a valid Street
        And clicks City field
        And enters a valid City
        And clicks State dropdown menu 
        And selects AZ from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed


    


    
    
    Scenario: Add Dealer ALLY US AR Organization

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
        And selects AR from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed




    Scenario: Add Auction ALLY US AR Organization

        Given current page is New Organization page 
        When User click Customer Dropdown menu
        And select Chase
        And click Organization Type Dropdown menu 
        And selects Auction 
        And clicks Organization name field
        And enters Organization name
        And selects US from Billing Address dropdown menu 
        And clicks Street 1 field
        And enters a valid Street
        And clicks City field
        And enters a valid City
        And clicks State dropdown menu 
        And selects AR from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed



Scenario: Add Dealer VCI US AR Organization

        Given current page is New Organization page 
        When User click Customer Dropdown menu
        And select VCI
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
        And selects AR from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed




    Scenario: Add Auction VCI US AR Organization

        Given current page is New Organization page 
        When User click Customer Dropdown menu
        And select VCI
        And click Organization Type Dropdown menu 
        And selects Auction 
        And clicks Organization name field
        And enters Organization name
        And selects US from Billing Address dropdown menu 
        And clicks Street 1 field
        And enters a valid Street
        And clicks City field
        And enters a valid City
        And clicks State dropdown menu 
        And selects AR from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed




    

Scenario: Add Dealer MANHEIM US AR Organization

        Given current page is New Organization page 
        When User click Customer Dropdown menu
        And select MANHEIM
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
        And selects AR from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed




    Scenario: Add Auction MANHEIM US AR Organization

        Given current page is New Organization page 
        When User click Customer Dropdown menu
        And select MANHEIM
        And click Organization Type Dropdown menu 
        And selects Auction 
        And clicks Organization name field
        And enters Organization name
        And selects US from Billing Address dropdown menu 
        And clicks Street 1 field
        And enters a valid Street
        And clicks City field
        And enters a valid City
        And clicks State dropdown menu 
        And selects AR from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed



    Scenario: Add Dealer HYUNDAI US AR Organization

        Given current page is New Organization page 
        When User click Customer Dropdown menu
        And select HYUNDAI
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
        And selects AR from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed




    Scenario: Add Auction HYUNDAI US AR Organization

        Given current page is New Organization page 
        When User click Customer Dropdown menu
        And select HYUNDAI
        And click Organization Type Dropdown menu 
        And selects Auction 
        And clicks Organization name field
        And enters Organization name
        And selects US from Billing Address dropdown menu 
        And clicks Street 1 field
        And enters a valid Street
        And clicks City field
        And enters a valid City
        And clicks State dropdown menu 
        And selects AR from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed




    Scenario: Add Dealer NISSAN US AR Organization

        Given current page is New Organization page 
        When User click Customer Dropdown menu
        And select NISSAN
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
        And selects AR from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed




    Scenario: Add Auction NISSAN US AR Organization

        Given current page is New Organization page 
        When User click Customer Dropdown menu
        And select NISSAN
        And click Organization Type Dropdown menu 
        And selects Auction 
        And clicks Organization name field
        And enters Organization name
        And selects US from Billing Address dropdown menu 
        And clicks Street 1 field
        And enters a valid Street
        And clicks City field
        And enters a valid City
        And clicks State dropdown menu 
        And selects AR from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed




    
    
    Scenario: Add Dealer ALLY US CA Organization

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
        And selects CA from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed




    Scenario: Add Auction ALLY US CA Organization

        Given current page is New Organization page 
        When User click Customer Dropdown menu
        And select Chase
        And click Organization Type Dropdown menu 
        And selects Auction 
        And clicks Organization name field
        And enters Organization name
        And selects US from Billing Address dropdown menu 
        And clicks Street 1 field
        And enters a valid Street
        And clicks City field
        And enters a valid City
        And clicks State dropdown menu 
        And selects CA from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed



Scenario: Add Dealer VCI US CA Organization

        Given current page is New Organization page 
        When User click Customer Dropdown menu
        And select VCI
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
        And selects CA from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed




    Scenario: Add Auction VCI US CA Organization

        Given current page is New Organization page 
        When User click Customer Dropdown menu
        And select VCI
        And click Organization Type Dropdown menu 
        And selects Auction 
        And clicks Organization name field
        And enters Organization name
        And selects US from Billing Address dropdown menu 
        And clicks Street 1 field
        And enters a valid Street
        And clicks City field
        And enters a valid City
        And clicks State dropdown menu 
        And selects CA from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed




    

Scenario: Add Dealer MANHEIM US CA Organization

        Given current page is New Organization page 
        When User click Customer Dropdown menu
        And select MANHEIM
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
        And selects CA from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed




    Scenario: Add Auction MANHEIM US CA Organization

        Given current page is New Organization page 
        When User click Customer Dropdown menu
        And select MANHEIM
        And click Organization Type Dropdown menu 
        And selects Auction 
        And clicks Organization name field
        And enters Organization name
        And selects US from Billing Address dropdown menu 
        And clicks Street 1 field
        And enters a valid Street
        And clicks City field
        And enters a valid City
        And clicks State dropdown menu 
        And selects CA from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed



    Scenario: Add Dealer HYUNDAI US CA Organization

        Given current page is New Organization page 
        When User click Customer Dropdown menu
        And select HYUNDAI
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
        And selects CA from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed




    Scenario: Add Auction HYUNDAI US CA Organization

        Given current page is New Organization page 
        When User click Customer Dropdown menu
        And select HYUNDAI
        And click Organization Type Dropdown menu 
        And selects Auction 
        And clicks Organization name field
        And enters Organization name
        And selects US from Billing Address dropdown menu 
        And clicks Street 1 field
        And enters a valid Street
        And clicks City field
        And enters a valid City
        And clicks State dropdown menu 
        And selects CA from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed




    Scenario: Add Dealer NISSAN US CA Organization

        Given current page is New Organization page 
        When User click Customer Dropdown menu
        And select NISSAN
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
        And selects CA from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed




    Scenario: Add Auction NISSAN US CA Organization

        Given current page is New Organization page 
        When User click Customer Dropdown menu
        And select NISSAN
        And click Organization Type Dropdown menu 
        And selects Auction 
        And clicks Organization name field
        And enters Organization name
        And selects US from Billing Address dropdown menu 
        And clicks Street 1 field
        And enters a valid Street
        And clicks City field
        And enters a valid City
        And clicks State dropdown menu 
        And selects CA from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed





    
    
    Scenario: Add Dealer ALLY US CO Organization

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
        And selects CO from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed




    Scenario: Add Auction ALLY US CO Organization

        Given current page is New Organization page 
        When User click Customer Dropdown menu
        And select Chase
        And click Organization Type Dropdown menu 
        And selects Auction 
        And clicks Organization name field
        And enters Organization name
        And selects US from Billing Address dropdown menu 
        And clicks Street 1 field
        And enters a valid Street
        And clicks City field
        And enters a valid City
        And clicks State dropdown menu 
        And selects CO from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed



Scenario: Add Dealer VCI US CO Organization

        Given current page is New Organization page 
        When User click Customer Dropdown menu
        And select VCI
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
        And selects CO from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed




    Scenario: Add Auction VCI US CO Organization

        Given current page is New Organization page 
        When User click Customer Dropdown menu
        And select VCI
        And click Organization Type Dropdown menu 
        And selects Auction 
        And clicks Organization name field
        And enters Organization name
        And selects US from Billing Address dropdown menu 
        And clicks Street 1 field
        And enters a valid Street
        And clicks City field
        And enters a valid City
        And clicks State dropdown menu 
        And selects CO from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed




    

Scenario: Add Dealer MANHEIM US CO Organization

        Given current page is New Organization page 
        When User click Customer Dropdown menu
        And select MANHEIM
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
        And selects CO from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed




    Scenario: Add Auction MANHEIM US CO Organization

        Given current page is New Organization page 
        When User click Customer Dropdown menu
        And select MANHEIM
        And click Organization Type Dropdown menu 
        And selects Auction 
        And clicks Organization name field
        And enters Organization name
        And selects US from Billing Address dropdown menu 
        And clicks Street 1 field
        And enters a valid Street
        And clicks City field
        And enters a valid City
        And clicks State dropdown menu 
        And selects CO from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed



    Scenario: Add Dealer HYUNDAI US CO Organization

        Given current page is New Organization page 
        When User click Customer Dropdown menu
        And select HYUNDAI
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
        And selects CO from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed




    Scenario: Add Auction HYUNDAI US CO Organization

        Given current page is New Organization page 
        When User click Customer Dropdown menu
        And select HYUNDAI
        And click Organization Type Dropdown menu 
        And selects Auction 
        And clicks Organization name field
        And enters Organization name
        And selects US from Billing Address dropdown menu 
        And clicks Street 1 field
        And enters a valid Street
        And clicks City field
        And enters a valid City
        And clicks State dropdown menu 
        And selects CO from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed




    Scenario: Add Dealer NISSAN US CO Organization

        Given current page is New Organization page 
        When User click Customer Dropdown menu
        And select NISSAN
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
        And selects CO from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed




    Scenario: Add Auction NISSAN US CO Organization

        Given current page is New Organization page 
        When User click Customer Dropdown menu
        And select NISSAN
        And click Organization Type Dropdown menu 
        And selects Auction 
        And clicks Organization name field
        And enters Organization name
        And selects US from Billing Address dropdown menu 
        And clicks Street 1 field
        And enters a valid Street
        And clicks City field
        And enters a valid City
        And clicks State dropdown menu 
        And selects CO from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed




    
    
    Scenario: Add Dealer ALLY US CT Organization

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
        And selects CT from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed




    Scenario: Add Auction ALLY US CT Organization

        Given current page is New Organization page 
        When User click Customer Dropdown menu
        And select Chase
        And click Organization Type Dropdown menu 
        And selects Auction 
        And clicks Organization name field
        And enters Organization name
        And selects US from Billing Address dropdown menu 
        And clicks Street 1 field
        And enters a valid Street
        And clicks City field
        And enters a valid City
        And clicks State dropdown menu 
        And selects CT from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed



Scenario: Add Dealer VCI US CT Organization

        Given current page is New Organization page 
        When User click Customer Dropdown menu
        And select VCI
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
        And selects CT from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed




    Scenario: Add Auction VCI US CT Organization

        Given current page is New Organization page 
        When User click Customer Dropdown menu
        And select VCI
        And click Organization Type Dropdown menu 
        And selects Auction 
        And clicks Organization name field
        And enters Organization name
        And selects US from Billing Address dropdown menu 
        And clicks Street 1 field
        And enters a valid Street
        And clicks City field
        And enters a valid City
        And clicks State dropdown menu 
        And selects CT from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed




    

Scenario: Add Dealer MANHEIM US CT Organization

        Given current page is New Organization page 
        When User click Customer Dropdown menu
        And select MANHEIM
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
        And selects CT from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed




    Scenario: Add Auction MANHEIM US CT Organization

        Given current page is New Organization page 
        When User click Customer Dropdown menu
        And select MANHEIM
        And click Organization Type Dropdown menu 
        And selects Auction 
        And clicks Organization name field
        And enters Organization name
        And selects US from Billing Address dropdown menu 
        And clicks Street 1 field
        And enters a valid Street
        And clicks City field
        And enters a valid City
        And clicks State dropdown menu 
        And selects CT from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed



    Scenario: Add Dealer HYUNDAI US CT Organization

        Given current page is New Organization page 
        When User click Customer Dropdown menu
        And select HYUNDAI
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
        And selects CT from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed




    Scenario: Add Auction HYUNDAI US CT Organization

        Given current page is New Organization page 
        When User click Customer Dropdown menu
        And select HYUNDAI
        And click Organization Type Dropdown menu 
        And selects Auction 
        And clicks Organization name field
        And enters Organization name
        And selects US from Billing Address dropdown menu 
        And clicks Street 1 field
        And enters a valid Street
        And clicks City field
        And enters a valid City
        And clicks State dropdown menu 
        And selects CT from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed




    Scenario: Add Dealer NISSAN US CT Organization

        Given current page is New Organization page 
        When User click Customer Dropdown menu
        And select NISSAN
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
        And selects CT from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed




    Scenario: Add Auction NISSAN US CT Organization

        Given current page is New Organization page 
        When User click Customer Dropdown menu
        And select NISSAN
        And click Organization Type Dropdown menu 
        And selects Auction 
        And clicks Organization name field
        And enters Organization name
        And selects US from Billing Address dropdown menu 
        And clicks Street 1 field
        And enters a valid Street
        And clicks City field
        And enters a valid City
        And clicks State dropdown menu 
        And selects CT from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed




    
    
    Scenario: Add Dealer ALLY US DE Organization

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
        And selects DE from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed




    Scenario: Add Auction ALLY US DE Organization

        Given current page is New Organization page 
        When User click Customer Dropdown menu
        And select Chase
        And click Organization Type Dropdown menu 
        And selects Auction 
        And clicks Organization name field
        And enters Organization name
        And selects US from Billing Address dropdown menu 
        And clicks Street 1 field
        And enters a valid Street
        And clicks City field
        And enters a valid City
        And clicks State dropdown menu 
        And selects DE from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed



Scenario: Add Dealer VCI US DE Organization

        Given current page is New Organization page 
        When User click Customer Dropdown menu
        And select VCI
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
        And selects DE from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed




    Scenario: Add Auction VCI US DE Organization

        Given current page is New Organization page 
        When User click Customer Dropdown menu
        And select VCI
        And click Organization Type Dropdown menu 
        And selects Auction 
        And clicks Organization name field
        And enters Organization name
        And selects US from Billing Address dropdown menu 
        And clicks Street 1 field
        And enters a valid Street
        And clicks City field
        And enters a valid City
        And clicks State dropdown menu 
        And selects DE from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed




    

Scenario: Add Dealer MANHEIM US DE Organization

        Given current page is New Organization page 
        When User click Customer Dropdown menu
        And select MANHEIM
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
        And selects DE from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed




    Scenario: Add Auction MANHEIM US DE Organization

        Given current page is New Organization page 
        When User click Customer Dropdown menu
        And select MANHEIM
        And click Organization Type Dropdown menu 
        And selects Auction 
        And clicks Organization name field
        And enters Organization name
        And selects US from Billing Address dropdown menu 
        And clicks Street 1 field
        And enters a valid Street
        And clicks City field
        And enters a valid City
        And clicks State dropdown menu 
        And selects DE from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed



    Scenario: Add Dealer HYUNDAI US DE Organization

        Given current page is New Organization page 
        When User click Customer Dropdown menu
        And select HYUNDAI
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
        And selects DE from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed




    Scenario: Add Auction HYUNDAI US DE Organization

        Given current page is New Organization page 
        When User click Customer Dropdown menu
        And select HYUNDAI
        And click Organization Type Dropdown menu 
        And selects Auction 
        And clicks Organization name field
        And enters Organization name
        And selects US from Billing Address dropdown menu 
        And clicks Street 1 field
        And enters a valid Street
        And clicks City field
        And enters a valid City
        And clicks State dropdown menu 
        And selects DE from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed




    Scenario: Add Dealer NISSAN US DE Organization

        Given current page is New Organization page 
        When User click Customer Dropdown menu
        And select NISSAN
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
        And selects DE from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed




    Scenario: Add Auction NISSAN US DE Organization

        Given current page is New Organization page 
        When User click Customer Dropdown menu
        And select NISSAN
        And click Organization Type Dropdown menu 
        And selects Auction 
        And clicks Organization name field
        And enters Organization name
        And selects US from Billing Address dropdown menu 
        And clicks Street 1 field
        And enters a valid Street
        And clicks City field
        And enters a valid City
        And clicks State dropdown menu 
        And selects DE from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed




    
    
    Scenario: Add Dealer ALLY US DC Organization

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
        And selects DC from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed




    Scenario: Add Auction ALLY US DC Organization

        Given current page is New Organization page 
        When User click Customer Dropdown menu
        And select Chase
        And click Organization Type Dropdown menu 
        And selects Auction 
        And clicks Organization name field
        And enters Organization name
        And selects US from Billing Address dropdown menu 
        And clicks Street 1 field
        And enters a valid Street
        And clicks City field
        And enters a valid City
        And clicks State dropdown menu 
        And selects DC from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed



Scenario: Add Dealer VCI US DC Organization

        Given current page is New Organization page 
        When User click Customer Dropdown menu
        And select VCI
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
        And selects DC from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed




    Scenario: Add Auction VCI US DC Organization

        Given current page is New Organization page 
        When User click Customer Dropdown menu
        And select VCI
        And click Organization Type Dropdown menu 
        And selects Auction 
        And clicks Organization name field
        And enters Organization name
        And selects US from Billing Address dropdown menu 
        And clicks Street 1 field
        And enters a valid Street
        And clicks City field
        And enters a valid City
        And clicks State dropdown menu 
        And selects DC from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed




    

Scenario: Add Dealer MANHEIM US DC Organization

        Given current page is New Organization page 
        When User click Customer Dropdown menu
        And select MANHEIM
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
        And selects DC from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed




    Scenario: Add Auction MANHEIM US DC Organization

        Given current page is New Organization page 
        When User click Customer Dropdown menu
        And select MANHEIM
        And click Organization Type Dropdown menu 
        And selects Auction 
        And clicks Organization name field
        And enters Organization name
        And selects US from Billing Address dropdown menu 
        And clicks Street 1 field
        And enters a valid Street
        And clicks City field
        And enters a valid City
        And clicks State dropdown menu 
        And selects DC from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed



    Scenario: Add Dealer HYUNDAI US DC Organization

        Given current page is New Organization page 
        When User click Customer Dropdown menu
        And select HYUNDAI
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
        And selects DC from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed




    Scenario: Add Auction HYUNDAI US DC Organization

        Given current page is New Organization page 
        When User click Customer Dropdown menu
        And select HYUNDAI
        And click Organization Type Dropdown menu 
        And selects Auction 
        And clicks Organization name field
        And enters Organization name
        And selects US from Billing Address dropdown menu 
        And clicks Street 1 field
        And enters a valid Street
        And clicks City field
        And enters a valid City
        And clicks State dropdown menu 
        And selects DC from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed




    Scenario: Add Dealer NISSAN US DC Organization

        Given current page is New Organization page 
        When User click Customer Dropdown menu
        And select NISSAN
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
        And selects DC from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed




    Scenario: Add Auction NISSAN US DC Organization

        Given current page is New Organization page 
        When User click Customer Dropdown menu
        And select NISSAN
        And click Organization Type Dropdown menu 
        And selects Auction 
        And clicks Organization name field
        And enters Organization name
        And selects US from Billing Address dropdown menu 
        And clicks Street 1 field
        And enters a valid Street
        And clicks City field
        And enters a valid City
        And clicks State dropdown menu 
        And selects DC from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed



    


    
    
    Scenario: Add Dealer ALLY US FL Organization

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
        And selects FL from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed




    Scenario: Add Auction ALLY US FL Organization

        Given current page is New Organization page 
        When User click Customer Dropdown menu
        And select Chase
        And click Organization Type Dropdown menu 
        And selects Auction 
        And clicks Organization name field
        And enters Organization name
        And selects US from Billing Address dropdown menu 
        And clicks Street 1 field
        And enters a valid Street
        And clicks City field
        And enters a valid City
        And clicks State dropdown menu 
        And selects FL from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed



Scenario: Add Dealer VCI US FL Organization

        Given current page is New Organization page 
        When User click Customer Dropdown menu
        And select VCI
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
        And selects FL from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed




    Scenario: Add Auction VCI US FL Organization

        Given current page is New Organization page 
        When User click Customer Dropdown menu
        And select VCI
        And click Organization Type Dropdown menu 
        And selects Auction 
        And clicks Organization name field
        And enters Organization name
        And selects US from Billing Address dropdown menu 
        And clicks Street 1 field
        And enters a valid Street
        And clicks City field
        And enters a valid City
        And clicks State dropdown menu 
        And selects FL from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed




    

Scenario: Add Dealer MANHEIM US FL Organization

        Given current page is New Organization page 
        When User click Customer Dropdown menu
        And select MANHEIM
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
        And selects FL from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed




    Scenario: Add Auction MANHEIM US FL Organization

        Given current page is New Organization page 
        When User click Customer Dropdown menu
        And select MANHEIM
        And click Organization Type Dropdown menu 
        And selects Auction 
        And clicks Organization name field
        And enters Organization name
        And selects US from Billing Address dropdown menu 
        And clicks Street 1 field
        And enters a valid Street
        And clicks City field
        And enters a valid City
        And clicks State dropdown menu 
        And selects FL from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed



    Scenario: Add Dealer HYUNDAI US FL Organization

        Given current page is New Organization page 
        When User click Customer Dropdown menu
        And select HYUNDAI
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
        And selects FL from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed




    Scenario: Add Auction HYUNDAI US FL Organization

        Given current page is New Organization page 
        When User click Customer Dropdown menu
        And select HYUNDAI
        And click Organization Type Dropdown menu 
        And selects Auction 
        And clicks Organization name field
        And enters Organization name
        And selects US from Billing Address dropdown menu 
        And clicks Street 1 field
        And enters a valid Street
        And clicks City field
        And enters a valid City
        And clicks State dropdown menu 
        And selects FL from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed




    Scenario: Add Dealer NISSAN US FL Organization

        Given current page is New Organization page 
        When User click Customer Dropdown menu
        And select NISSAN
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
        And selects FL from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed




    Scenario: Add Auction NISSAN US FL Organization

        Given current page is New Organization page 
        When User click Customer Dropdown menu
        And select NISSAN
        And click Organization Type Dropdown menu 
        And selects Auction 
        And clicks Organization name field
        And enters Organization name
        And selects US from Billing Address dropdown menu 
        And clicks Street 1 field
        And enters a valid Street
        And clicks City field
        And enters a valid City
        And clicks State dropdown menu 
        And selects FL from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed



    
    
    Scenario: Add Dealer ALLY US GA Organization

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
        And selects GA from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed




    Scenario: Add Auction ALLY US GA Organization

        Given current page is New Organization page 
        When User click Customer Dropdown menu
        And select Chase
        And click Organization Type Dropdown menu 
        And selects Auction 
        And clicks Organization name field
        And enters Organization name
        And selects US from Billing Address dropdown menu 
        And clicks Street 1 field
        And enters a valid Street
        And clicks City field
        And enters a valid City
        And clicks State dropdown menu 
        And selects GA from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed



Scenario: Add Dealer VCI US GA Organization

        Given current page is New Organization page 
        When User click Customer Dropdown menu
        And select VCI
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
        And selects GA from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed




    Scenario: Add Auction VCI US GA Organization

        Given current page is New Organization page 
        When User click Customer Dropdown menu
        And select VCI
        And click Organization Type Dropdown menu 
        And selects Auction 
        And clicks Organization name field
        And enters Organization name
        And selects US from Billing Address dropdown menu 
        And clicks Street 1 field
        And enters a valid Street
        And clicks City field
        And enters a valid City
        And clicks State dropdown menu 
        And selects GA from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed




    

Scenario: Add Dealer MANHEIM US GA Organization

        Given current page is New Organization page 
        When User click Customer Dropdown menu
        And select MANHEIM
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
        And selects GA from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed




    Scenario: Add Auction MANHEIM US GA Organization

        Given current page is New Organization page 
        When User click Customer Dropdown menu
        And select MANHEIM
        And click Organization Type Dropdown menu 
        And selects Auction 
        And clicks Organization name field
        And enters Organization name
        And selects US from Billing Address dropdown menu 
        And clicks Street 1 field
        And enters a valid Street
        And clicks City field
        And enters a valid City
        And clicks State dropdown menu 
        And selects GA from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed



    Scenario: Add Dealer HYUNDAI US GA Organization

        Given current page is New Organization page 
        When User click Customer Dropdown menu
        And select HYUNDAI
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
        And selects GA from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed




    Scenario: Add Auction HYUNDAI US GA Organization

        Given current page is New Organization page 
        When User click Customer Dropdown menu
        And select HYUNDAI
        And click Organization Type Dropdown menu 
        And selects Auction 
        And clicks Organization name field
        And enters Organization name
        And selects US from Billing Address dropdown menu 
        And clicks Street 1 field
        And enters a valid Street
        And clicks City field
        And enters a valid City
        And clicks State dropdown menu 
        And selects GA from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed




    Scenario: Add Dealer NISSAN US GA Organization

        Given current page is New Organization page 
        When User click Customer Dropdown menu
        And select NISSAN
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
        And selects GA from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed




    Scenario: Add Auction NISSAN US GA Organization

        Given current page is New Organization page 
        When User click Customer Dropdown menu
        And select NISSAN
        And click Organization Type Dropdown menu 
        And selects Auction 
        And clicks Organization name field
        And enters Organization name
        And selects US from Billing Address dropdown menu 
        And clicks Street 1 field
        And enters a valid Street
        And clicks City field
        And enters a valid City
        And clicks State dropdown menu 
        And selects GA from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed



    
    
    Scenario: Add Dealer ALLY US HI Organization

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
        And selects HI from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed




    Scenario: Add Auction ALLY US HI Organization

        Given current page is New Organization page 
        When User click Customer Dropdown menu
        And select Chase
        And click Organization Type Dropdown menu 
        And selects Auction 
        And clicks Organization name field
        And enters Organization name
        And selects US from Billing Address dropdown menu 
        And clicks Street 1 field
        And enters a valid Street
        And clicks City field
        And enters a valid City
        And clicks State dropdown menu 
        And selects HI from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed



Scenario: Add Dealer VCI US HI Organization

        Given current page is New Organization page 
        When User click Customer Dropdown menu
        And select VCI
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
        And selects HI from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed




    Scenario: Add Auction VCI US HI Organization

        Given current page is New Organization page 
        When User click Customer Dropdown menu
        And select VCI
        And click Organization Type Dropdown menu 
        And selects Auction 
        And clicks Organization name field
        And enters Organization name
        And selects US from Billing Address dropdown menu 
        And clicks Street 1 field
        And enters a valid Street
        And clicks City field
        And enters a valid City
        And clicks State dropdown menu 
        And selects HI from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed




    

Scenario: Add Dealer MANHEIM US HI Organization

        Given current page is New Organization page 
        When User click Customer Dropdown menu
        And select MANHEIM
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
        And selects HI from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed




    Scenario: Add Auction MANHEIM US HI Organization

        Given current page is New Organization page 
        When User click Customer Dropdown menu
        And select MANHEIM
        And click Organization Type Dropdown menu 
        And selects Auction 
        And clicks Organization name field
        And enters Organization name
        And selects US from Billing Address dropdown menu 
        And clicks Street 1 field
        And enters a valid Street
        And clicks City field
        And enters a valid City
        And clicks State dropdown menu 
        And selects HI from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed



    Scenario: Add Dealer HYUNDAI US HI Organization

        Given current page is New Organization page 
        When User click Customer Dropdown menu
        And select HYUNDAI
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
        And selects HI from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed




    Scenario: Add Auction HYUNDAI US HI Organization

        Given current page is New Organization page 
        When User click Customer Dropdown menu
        And select HYUNDAI
        And click Organization Type Dropdown menu 
        And selects Auction 
        And clicks Organization name field
        And enters Organization name
        And selects US from Billing Address dropdown menu 
        And clicks Street 1 field
        And enters a valid Street
        And clicks City field
        And enters a valid City
        And clicks State dropdown menu 
        And selects HI from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed




    Scenario: Add Dealer NISSAN US HI Organization

        Given current page is New Organization page 
        When User click Customer Dropdown menu
        And select NISSAN
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
        And selects HI from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed




    Scenario: Add Auction NISSAN US HI Organization

        Given current page is New Organization page 
        When User click Customer Dropdown menu
        And select NISSAN
        And click Organization Type Dropdown menu 
        And selects Auction 
        And clicks Organization name field
        And enters Organization name
        And selects US from Billing Address dropdown menu 
        And clicks Street 1 field
        And enters a valid Street
        And clicks City field
        And enters a valid City
        And clicks State dropdown menu 
        And selects HI from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed




    
    
    Scenario: Add Dealer ALLY US ID Organization

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
        And selects ID from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed




    Scenario: Add Auction ALLY US ID Organization

        Given current page is New Organization page 
        When User click Customer Dropdown menu
        And select Chase
        And click Organization Type Dropdown menu 
        And selects Auction 
        And clicks Organization name field
        And enters Organization name
        And selects US from Billing Address dropdown menu 
        And clicks Street 1 field
        And enters a valid Street
        And clicks City field
        And enters a valid City
        And clicks State dropdown menu 
        And selects ID from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed



Scenario: Add Dealer VCI US ID Organization

        Given current page is New Organization page 
        When User click Customer Dropdown menu
        And select VCI
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
        And selects ID from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed




    Scenario: Add Auction VCI US ID Organization

        Given current page is New Organization page 
        When User click Customer Dropdown menu
        And select VCI
        And click Organization Type Dropdown menu 
        And selects Auction 
        And clicks Organization name field
        And enters Organization name
        And selects US from Billing Address dropdown menu 
        And clicks Street 1 field
        And enters a valid Street
        And clicks City field
        And enters a valid City
        And clicks State dropdown menu 
        And selects ID from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed




    

Scenario: Add Dealer MANHEIM US ID Organization

        Given current page is New Organization page 
        When User click Customer Dropdown menu
        And select MANHEIM
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
        And selects ID from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed




    Scenario: Add Auction MANHEIM US ID Organization

        Given current page is New Organization page 
        When User click Customer Dropdown menu
        And select MANHEIM
        And click Organization Type Dropdown menu 
        And selects Auction 
        And clicks Organization name field
        And enters Organization name
        And selects US from Billing Address dropdown menu 
        And clicks Street 1 field
        And enters a valid Street
        And clicks City field
        And enters a valid City
        And clicks State dropdown menu 
        And selects ID from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed



    Scenario: Add Dealer HYUNDAI US ID Organization

        Given current page is New Organization page 
        When User click Customer Dropdown menu
        And select HYUNDAI
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
        And selects ID from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed




    Scenario: Add Auction HYUNDAI US ID Organization

        Given current page is New Organization page 
        When User click Customer Dropdown menu
        And select HYUNDAI
        And click Organization Type Dropdown menu 
        And selects Auction 
        And clicks Organization name field
        And enters Organization name
        And selects US from Billing Address dropdown menu 
        And clicks Street 1 field
        And enters a valid Street
        And clicks City field
        And enters a valid City
        And clicks State dropdown menu 
        And selects ID from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed




    Scenario: Add Dealer NISSAN US ID Organization

        Given current page is New Organization page 
        When User click Customer Dropdown menu
        And select NISSAN
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
        And selects ID from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed




    Scenario: Add Auction NISSAN US ID Organization

        Given current page is New Organization page 
        When User click Customer Dropdown menu
        And select NISSAN
        And click Organization Type Dropdown menu 
        And selects Auction 
        And clicks Organization name field
        And enters Organization name
        And selects US from Billing Address dropdown menu 
        And clicks Street 1 field
        And enters a valid Street
        And clicks City field
        And enters a valid City
        And clicks State dropdown menu 
        And selects ID from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed



    
    
    Scenario: Add Dealer ALLY US IL Organization

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
        And selects IL from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed




    Scenario: Add Auction ALLY US IL Organization

        Given current page is New Organization page 
        When User click Customer Dropdown menu
        And select Chase
        And click Organization Type Dropdown menu 
        And selects Auction 
        And clicks Organization name field
        And enters Organization name
        And selects US from Billing Address dropdown menu 
        And clicks Street 1 field
        And enters a valid Street
        And clicks City field
        And enters a valid City
        And clicks State dropdown menu 
        And selects IL from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed



    Scenario: Add Dealer VCI US IL Organization

        Given current page is New Organization page 
        When User click Customer Dropdown menu
        And select VCI
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
        And selects IL from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed




    Scenario: Add Auction VCI US IL Organization

        Given current page is New Organization page 
        When User click Customer Dropdown menu
        And select VCI
        And click Organization Type Dropdown menu 
        And selects Auction 
        And clicks Organization name field
        And enters Organization name
        And selects US from Billing Address dropdown menu 
        And clicks Street 1 field
        And enters a valid Street
        And clicks City field
        And enters a valid City
        And clicks State dropdown menu 
        And selects IL from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed




    

    Scenario: Add Dealer MANHEIM US IL Organization

        Given current page is New Organization page 
        When User click Customer Dropdown menu
        And select MANHEIM
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
        And selects IL from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed




    Scenario: Add Auction MANHEIM US IL Organization

        Given current page is New Organization page 
        When User click Customer Dropdown menu
        And select MANHEIM
        And click Organization Type Dropdown menu 
        And selects Auction 
        And clicks Organization name field
        And enters Organization name
        And selects US from Billing Address dropdown menu 
        And clicks Street 1 field
        And enters a valid Street
        And clicks City field
        And enters a valid City
        And clicks State dropdown menu 
        And selects IL from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed



    Scenario: Add Dealer HYUNDAI US IL Organization

        Given current page is New Organization page 
        When User click Customer Dropdown menu
        And select HYUNDAI
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
        And selects IL from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed




    Scenario: Add Auction HYUNDAI US IL Organization

        Given current page is New Organization page 
        When User click Customer Dropdown menu
        And select HYUNDAI
        And click Organization Type Dropdown menu 
        And selects Auction 
        And clicks Organization name field
        And enters Organization name
        And selects US from Billing Address dropdown menu 
        And clicks Street 1 field
        And enters a valid Street
        And clicks City field
        And enters a valid City
        And clicks State dropdown menu 
        And selects IL from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed




    Scenario: Add Dealer NISSAN US IL Organization

        Given current page is New Organization page 
        When User click Customer Dropdown menu
        And select NISSAN
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
        And selects IL from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed




    Scenario: Add Auction NISSAN US IL Organization

        Given current page is New Organization page 
        When User click Customer Dropdown menu
        And select NISSAN
        And click Organization Type Dropdown menu 
        And selects Auction 
        And clicks Organization name field
        And enters Organization name
        And selects US from Billing Address dropdown menu 
        And clicks Street 1 field
        And enters a valid Street
        And clicks City field
        And enters a valid City
        And clicks State dropdown menu 
        And selects IL from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed










    
    
    Scenario: Add Dealer ALLY US IN Organization

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
        And selects IN from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed




    Scenario: Add Auction ALLY US IN Organization

        Given current page is New Organization page 
        When User click Customer Dropdown menu
        And select Chase
        And click Organization Type Dropdown menu 
        And selects Auction 
        And clicks Organization name field
        And enters Organization name
        And selects US from Billing Address dropdown menu 
        And clicks Street 1 field
        And enters a valid Street
        And clicks City field
        And enters a valid City
        And clicks State dropdown menu 
        And selects IN from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed



Scenario: Add Dealer VCI US IN Organization

        Given current page is New Organization page 
        When User click Customer Dropdown menu
        And select VCI
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
        And selects IN from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed




    Scenario: Add Auction VCI US IN Organization

        Given current page is New Organization page 
        When User click Customer Dropdown menu
        And select VCI
        And click Organization Type Dropdown menu 
        And selects Auction 
        And clicks Organization name field
        And enters Organization name
        And selects US from Billing Address dropdown menu 
        And clicks Street 1 field
        And enters a valid Street
        And clicks City field
        And enters a valid City
        And clicks State dropdown menu 
        And selects IN from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed




    

Scenario: Add Dealer MANHEIM US IN Organization

        Given current page is New Organization page 
        When User click Customer Dropdown menu
        And select MANHEIM
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
        And selects IN from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed




    Scenario: Add Auction MANHEIM US IN Organization

        Given current page is New Organization page 
        When User click Customer Dropdown menu
        And select MANHEIM
        And click Organization Type Dropdown menu 
        And selects Auction 
        And clicks Organization name field
        And enters Organization name
        And selects US from Billing Address dropdown menu 
        And clicks Street 1 field
        And enters a valid Street
        And clicks City field
        And enters a valid City
        And clicks State dropdown menu 
        And selects IN from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed



    Scenario: Add Dealer HYUNDAI US IN Organization

        Given current page is New Organization page 
        When User click Customer Dropdown menu
        And select HYUNDAI
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
        And selects IN from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed




    Scenario: Add Auction HYUNDAI US IN Organization

        Given current page is New Organization page 
        When User click Customer Dropdown menu
        And select HYUNDAI
        And click Organization Type Dropdown menu 
        And selects Auction 
        And clicks Organization name field
        And enters Organization name
        And selects US from Billing Address dropdown menu 
        And clicks Street 1 field
        And enters a valid Street
        And clicks City field
        And enters a valid City
        And clicks State dropdown menu 
        And selects IN from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed




    Scenario: Add Dealer NISSAN US IN Organization

        Given current page is New Organization page 
        When User click Customer Dropdown menu
        And select NISSAN
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
        And selects IN from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed




    Scenario: Add Auction NISSAN US IN Organization

        Given current page is New Organization page 
        When User click Customer Dropdown menu
        And select NISSAN
        And click Organization Type Dropdown menu 
        And selects Auction 
        And clicks Organization name field
        And enters Organization name
        And selects US from Billing Address dropdown menu 
        And clicks Street 1 field
        And enters a valid Street
        And clicks City field
        And enters a valid City
        And clicks State dropdown menu 
        And selects IN from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed




    
    
    Scenario: Add Dealer ALLY US IA Organization

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
        And selects IA from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed




    Scenario: Add Auction ALLY US IA Organization

        Given current page is New Organization page 
        When User click Customer Dropdown menu
        And select Chase
        And click Organization Type Dropdown menu 
        And selects Auction 
        And clicks Organization name field
        And enters Organization name
        And selects US from Billing Address dropdown menu 
        And clicks Street 1 field
        And enters a valid Street
        And clicks City field
        And enters a valid City
        And clicks State dropdown menu 
        And selects IA from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed



Scenario: Add Dealer VCI US IA Organization

        Given current page is New Organization page 
        When User click Customer Dropdown menu
        And select VCI
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
        And selects IA from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed




    Scenario: Add Auction VCI US IA Organization

        Given current page is New Organization page 
        When User click Customer Dropdown menu
        And select VCI
        And click Organization Type Dropdown menu 
        And selects Auction 
        And clicks Organization name field
        And enters Organization name
        And selects US from Billing Address dropdown menu 
        And clicks Street 1 field
        And enters a valid Street
        And clicks City field
        And enters a valid City
        And clicks State dropdown menu 
        And selects IA from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed




    

Scenario: Add Dealer MANHEIM US IA Organization

        Given current page is New Organization page 
        When User click Customer Dropdown menu
        And select MANHEIM
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
        And selects IA from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed




    Scenario: Add Auction MANHEIM US IA Organization

        Given current page is New Organization page 
        When User click Customer Dropdown menu
        And select MANHEIM
        And click Organization Type Dropdown menu 
        And selects Auction 
        And clicks Organization name field
        And enters Organization name
        And selects US from Billing Address dropdown menu 
        And clicks Street 1 field
        And enters a valid Street
        And clicks City field
        And enters a valid City
        And clicks State dropdown menu 
        And selects IA from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed



    Scenario: Add Dealer HYUNDAI US IA Organization

        Given current page is New Organization page 
        When User click Customer Dropdown menu
        And select HYUNDAI
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
        And selects IA from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed




    Scenario: Add Auction HYUNDAI US IA Organization

        Given current page is New Organization page 
        When User click Customer Dropdown menu
        And select HYUNDAI
        And click Organization Type Dropdown menu 
        And selects Auction 
        And clicks Organization name field
        And enters Organization name
        And selects US from Billing Address dropdown menu 
        And clicks Street 1 field
        And enters a valid Street
        And clicks City field
        And enters a valid City
        And clicks State dropdown menu 
        And selects IA from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed




    Scenario: Add Dealer NISSAN US IA Organization

        Given current page is New Organization page 
        When User click Customer Dropdown menu
        And select NISSAN
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
        And selects IA from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed




    Scenario: Add Auction NISSAN US IA Organization

        Given current page is New Organization page 
        When User click Customer Dropdown menu
        And select NISSAN
        And click Organization Type Dropdown menu 
        And selects Auction 
        And clicks Organization name field
        And enters Organization name
        And selects US from Billing Address dropdown menu 
        And clicks Street 1 field
        And enters a valid Street
        And clicks City field
        And enters a valid City
        And clicks State dropdown menu 
        And selects IA from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed




    
    
    Scenario: Add Dealer ALLY US KS Organization

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
        And selects KS from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed




    Scenario: Add Auction ALLY US KS Organization

        Given current page is New Organization page 
        When User click Customer Dropdown menu
        And select Chase
        And click Organization Type Dropdown menu 
        And selects Auction 
        And clicks Organization name field
        And enters Organization name
        And selects US from Billing Address dropdown menu 
        And clicks Street 1 field
        And enters a valid Street
        And clicks City field
        And enters a valid City
        And clicks State dropdown menu 
        And selects KS from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed



Scenario: Add Dealer VCI US KS Organization

        Given current page is New Organization page 
        When User click Customer Dropdown menu
        And select VCI
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
        And selects KS from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed




    Scenario: Add Auction VCI US KS Organization

        Given current page is New Organization page 
        When User click Customer Dropdown menu
        And select VCI
        And click Organization Type Dropdown menu 
        And selects Auction 
        And clicks Organization name field
        And enters Organization name
        And selects US from Billing Address dropdown menu 
        And clicks Street 1 field
        And enters a valid Street
        And clicks City field
        And enters a valid City
        And clicks State dropdown menu 
        And selects KS from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed




    

Scenario: Add Dealer MANHEIM US KS Organization

        Given current page is New Organization page 
        When User click Customer Dropdown menu
        And select MANHEIM
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
        And selects KS from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed




    Scenario: Add Auction MANHEIM US KS Organization

        Given current page is New Organization page 
        When User click Customer Dropdown menu
        And select MANHEIM
        And click Organization Type Dropdown menu 
        And selects Auction 
        And clicks Organization name field
        And enters Organization name
        And selects US from Billing Address dropdown menu 
        And clicks Street 1 field
        And enters a valid Street
        And clicks City field
        And enters a valid City
        And clicks State dropdown menu 
        And selects KS from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed



    Scenario: Add Dealer HYUNDAI US KS Organization

        Given current page is New Organization page 
        When User click Customer Dropdown menu
        And select HYUNDAI
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
        And selects KS from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed




    Scenario: Add Auction HYUNDAI US KS Organization

        Given current page is New Organization page 
        When User click Customer Dropdown menu
        And select HYUNDAI
        And click Organization Type Dropdown menu 
        And selects Auction 
        And clicks Organization name field
        And enters Organization name
        And selects US from Billing Address dropdown menu 
        And clicks Street 1 field
        And enters a valid Street
        And clicks City field
        And enters a valid City
        And clicks State dropdown menu 
        And selects KS from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed




    Scenario: Add Dealer NISSAN US KS Organization

        Given current page is New Organization page 
        When User click Customer Dropdown menu
        And select NISSAN
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
        And selects KS from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed




    Scenario: Add Auction NISSAN US KS Organization

        Given current page is New Organization page 
        When User click Customer Dropdown menu
        And select NISSAN
        And click Organization Type Dropdown menu 
        And selects Auction 
        And clicks Organization name field
        And enters Organization name
        And selects US from Billing Address dropdown menu 
        And clicks Street 1 field
        And enters a valid Street
        And clicks City field
        And enters a valid City
        And clicks State dropdown menu 
        And selects KS from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed




    
    
    Scenario: Add Dealer ALLY US KY Organization

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
        And selects KY from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed




    Scenario: Add Auction ALLY US KY Organization

        Given current page is New Organization page 
        When User click Customer Dropdown menu
        And select Chase
        And click Organization Type Dropdown menu 
        And selects Auction 
        And clicks Organization name field
        And enters Organization name
        And selects US from Billing Address dropdown menu 
        And clicks Street 1 field
        And enters a valid Street
        And clicks City field
        And enters a valid City
        And clicks State dropdown menu 
        And selects KY from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed



Scenario: Add Dealer VCI US KY Organization

        Given current page is New Organization page 
        When User click Customer Dropdown menu
        And select VCI
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
        And selects KY from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed




    Scenario: Add Auction VCI US KY Organization

        Given current page is New Organization page 
        When User click Customer Dropdown menu
        And select VCI
        And click Organization Type Dropdown menu 
        And selects Auction 
        And clicks Organization name field
        And enters Organization name
        And selects US from Billing Address dropdown menu 
        And clicks Street 1 field
        And enters a valid Street
        And clicks City field
        And enters a valid City
        And clicks State dropdown menu 
        And selects KY from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed




    

Scenario: Add Dealer MANHEIM US KY Organization

        Given current page is New Organization page 
        When User click Customer Dropdown menu
        And select MANHEIM
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
        And selects KY from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed




    Scenario: Add Auction MANHEIM US KY Organization

        Given current page is New Organization page 
        When User click Customer Dropdown menu
        And select MANHEIM
        And click Organization Type Dropdown menu 
        And selects Auction 
        And clicks Organization name field
        And enters Organization name
        And selects US from Billing Address dropdown menu 
        And clicks Street 1 field
        And enters a valid Street
        And clicks City field
        And enters a valid City
        And clicks State dropdown menu 
        And selects KY from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed



    Scenario: Add Dealer HYUNDAI US KY Organization

        Given current page is New Organization page 
        When User click Customer Dropdown menu
        And select HYUNDAI
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
        And selects KY from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed




    Scenario: Add Auction HYUNDAI US KY Organization

        Given current page is New Organization page 
        When User click Customer Dropdown menu
        And select HYUNDAI
        And click Organization Type Dropdown menu 
        And selects Auction 
        And clicks Organization name field
        And enters Organization name
        And selects US from Billing Address dropdown menu 
        And clicks Street 1 field
        And enters a valid Street
        And clicks City field
        And enters a valid City
        And clicks State dropdown menu 
        And selects KY from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed




    Scenario: Add Dealer NISSAN US KY Organization

        Given current page is New Organization page 
        When User click Customer Dropdown menu
        And select NISSAN
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
        And selects KY from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed




    Scenario: Add Auction NISSAN US KY Organization

        Given current page is New Organization page 
        When User click Customer Dropdown menu
        And select NISSAN
        And click Organization Type Dropdown menu 
        And selects Auction 
        And clicks Organization name field
        And enters Organization name
        And selects US from Billing Address dropdown menu 
        And clicks Street 1 field
        And enters a valid Street
        And clicks City field
        And enters a valid City
        And clicks State dropdown menu 
        And selects KY from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed




    
    
    Scenario: Add Dealer ALLY US LA Organization

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
        And selects LA from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed




    Scenario: Add Auction ALLY US LA Organization

        Given current page is New Organization page 
        When User click Customer Dropdown menu
        And select Chase
        And click Organization Type Dropdown menu 
        And selects Auction 
        And clicks Organization name field
        And enters Organization name
        And selects US from Billing Address dropdown menu 
        And clicks Street 1 field
        And enters a valid Street
        And clicks City field
        And enters a valid City
        And clicks State dropdown menu 
        And selects LA from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed



Scenario: Add Dealer VCI US LA Organization

        Given current page is New Organization page 
        When User click Customer Dropdown menu
        And select VCI
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
        And selects LA from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed




    Scenario: Add Auction VCI US LA Organization

        Given current page is New Organization page 
        When User click Customer Dropdown menu
        And select VCI
        And click Organization Type Dropdown menu 
        And selects Auction 
        And clicks Organization name field
        And enters Organization name
        And selects US from Billing Address dropdown menu 
        And clicks Street 1 field
        And enters a valid Street
        And clicks City field
        And enters a valid City
        And clicks State dropdown menu 
        And selects LA from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed




    

Scenario: Add Dealer MANHEIM US LA Organization

        Given current page is New Organization page 
        When User click Customer Dropdown menu
        And select MANHEIM
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
        And selects LA from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed




    Scenario: Add Auction MANHEIM US LA Organization

        Given current page is New Organization page 
        When User click Customer Dropdown menu
        And select MANHEIM
        And click Organization Type Dropdown menu 
        And selects Auction 
        And clicks Organization name field
        And enters Organization name
        And selects US from Billing Address dropdown menu 
        And clicks Street 1 field
        And enters a valid Street
        And clicks City field
        And enters a valid City
        And clicks State dropdown menu 
        And selects LA from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed



    Scenario: Add Dealer HYUNDAI US LA Organization

        Given current page is New Organization page 
        When User click Customer Dropdown menu
        And select HYUNDAI
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
        And selects LA from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed




    Scenario: Add Auction HYUNDAI US LA Organization

        Given current page is New Organization page 
        When User click Customer Dropdown menu
        And select HYUNDAI
        And click Organization Type Dropdown menu 
        And selects Auction 
        And clicks Organization name field
        And enters Organization name
        And selects US from Billing Address dropdown menu 
        And clicks Street 1 field
        And enters a valid Street
        And clicks City field
        And enters a valid City
        And clicks State dropdown menu 
        And selects LA from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed




    Scenario: Add Dealer NISSAN US LA Organization

        Given current page is New Organization page 
        When User click Customer Dropdown menu
        And select NISSAN
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
        And selects LA from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed




    Scenario: Add Auction NISSAN US LA Organization

        Given current page is New Organization page 
        When User click Customer Dropdown menu
        And select NISSAN
        And click Organization Type Dropdown menu 
        And selects Auction 
        And clicks Organization name field
        And enters Organization name
        And selects US from Billing Address dropdown menu 
        And clicks Street 1 field
        And enters a valid Street
        And clicks City field
        And enters a valid City
        And clicks State dropdown menu 
        And selects LA from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed



    
    
    Scenario: Add Dealer ALLY US ME Organization

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
        And selects ME from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed




    Scenario: Add Auction ALLY US ME Organization

        Given current page is New Organization page 
        When User click Customer Dropdown menu
        And select Chase
        And click Organization Type Dropdown menu 
        And selects Auction 
        And clicks Organization name field
        And enters Organization name
        And selects US from Billing Address dropdown menu 
        And clicks Street 1 field
        And enters a valid Street
        And clicks City field
        And enters a valid City
        And clicks State dropdown menu 
        And selects ME from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed



Scenario: Add Dealer VCI US ME Organization

        Given current page is New Organization page 
        When User click Customer Dropdown menu
        And select VCI
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
        And selects ME from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed




    Scenario: Add Auction VCI US ME Organization

        Given current page is New Organization page 
        When User click Customer Dropdown menu
        And select VCI
        And click Organization Type Dropdown menu 
        And selects Auction 
        And clicks Organization name field
        And enters Organization name
        And selects US from Billing Address dropdown menu 
        And clicks Street 1 field
        And enters a valid Street
        And clicks City field
        And enters a valid City
        And clicks State dropdown menu 
        And selects ME from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed




    

Scenario: Add Dealer MANHEIM US ME Organization

        Given current page is New Organization page 
        When User click Customer Dropdown menu
        And select MANHEIM
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
        And selects ME from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed




    Scenario: Add Auction MANHEIM US ME Organization

        Given current page is New Organization page 
        When User click Customer Dropdown menu
        And select MANHEIM
        And click Organization Type Dropdown menu 
        And selects Auction 
        And clicks Organization name field
        And enters Organization name
        And selects US from Billing Address dropdown menu 
        And clicks Street 1 field
        And enters a valid Street
        And clicks City field
        And enters a valid City
        And clicks State dropdown menu 
        And selects ME from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed



    Scenario: Add Dealer HYUNDAI US ME Organization

        Given current page is New Organization page 
        When User click Customer Dropdown menu
        And select HYUNDAI
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
        And selects ME from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed




    Scenario: Add Auction HYUNDAI US ME Organization

        Given current page is New Organization page 
        When User click Customer Dropdown menu
        And select HYUNDAI
        And click Organization Type Dropdown menu 
        And selects Auction 
        And clicks Organization name field
        And enters Organization name
        And selects US from Billing Address dropdown menu 
        And clicks Street 1 field
        And enters a valid Street
        And clicks City field
        And enters a valid City
        And clicks State dropdown menu 
        And selects ME from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed




    Scenario: Add Dealer NISSAN US ME Organization

        Given current page is New Organization page 
        When User click Customer Dropdown menu
        And select NISSAN
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
        And selects ME from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed




    Scenario: Add Auction NISSAN US ME Organization

        Given current page is New Organization page 
        When User click Customer Dropdown menu
        And select NISSAN
        And click Organization Type Dropdown menu 
        And selects Auction 
        And clicks Organization name field
        And enters Organization name
        And selects US from Billing Address dropdown menu 
        And clicks Street 1 field
        And enters a valid Street
        And clicks City field
        And enters a valid City
        And clicks State dropdown menu 
        And selects ME from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed





    
    
    Scenario: Add Dealer ALLY US MD Organization

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
        And selects MD from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed




    Scenario: Add Auction ALLY US MD Organization

        Given current page is New Organization page 
        When User click Customer Dropdown menu
        And select Chase
        And click Organization Type Dropdown menu 
        And selects Auction 
        And clicks Organization name field
        And enters Organization name
        And selects US from Billing Address dropdown menu 
        And clicks Street 1 field
        And enters a valid Street
        And clicks City field
        And enters a valid City
        And clicks State dropdown menu 
        And selects MD from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed



Scenario: Add Dealer VCI US MD Organization

        Given current page is New Organization page 
        When User click Customer Dropdown menu
        And select VCI
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
        And selects MD from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed




    Scenario: Add Auction VCI US MD Organization

        Given current page is New Organization page 
        When User click Customer Dropdown menu
        And select VCI
        And click Organization Type Dropdown menu 
        And selects Auction 
        And clicks Organization name field
        And enters Organization name
        And selects US from Billing Address dropdown menu 
        And clicks Street 1 field
        And enters a valid Street
        And clicks City field
        And enters a valid City
        And clicks State dropdown menu 
        And selects MD from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed




    

Scenario: Add Dealer MANHEIM US MD Organization

        Given current page is New Organization page 
        When User click Customer Dropdown menu
        And select MANHEIM
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
        And selects MD from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed




    Scenario: Add Auction MANHEIM US MD Organization

        Given current page is New Organization page 
        When User click Customer Dropdown menu
        And select MANHEIM
        And click Organization Type Dropdown menu 
        And selects Auction 
        And clicks Organization name field
        And enters Organization name
        And selects US from Billing Address dropdown menu 
        And clicks Street 1 field
        And enters a valid Street
        And clicks City field
        And enters a valid City
        And clicks State dropdown menu 
        And selects MD from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed



    Scenario: Add Dealer HYUNDAI US MD Organization

        Given current page is New Organization page 
        When User click Customer Dropdown menu
        And select HYUNDAI
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
        And selects MD from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed




    Scenario: Add Auction HYUNDAI US MD Organization

        Given current page is New Organization page 
        When User click Customer Dropdown menu
        And select HYUNDAI
        And click Organization Type Dropdown menu 
        And selects Auction 
        And clicks Organization name field
        And enters Organization name
        And selects US from Billing Address dropdown menu 
        And clicks Street 1 field
        And enters a valid Street
        And clicks City field
        And enters a valid City
        And clicks State dropdown menu 
        And selects MD from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed




    Scenario: Add Dealer NISSAN US MD Organization

        Given current page is New Organization page 
        When User click Customer Dropdown menu
        And select NISSAN
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
        And selects MD from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed




    Scenario: Add Auction NISSAN US MD Organization

        Given current page is New Organization page 
        When User click Customer Dropdown menu
        And select NISSAN
        And click Organization Type Dropdown menu 
        And selects Auction 
        And clicks Organization name field
        And enters Organization name
        And selects US from Billing Address dropdown menu 
        And clicks Street 1 field
        And enters a valid Street
        And clicks City field
        And enters a valid City
        And clicks State dropdown menu 
        And selects MD from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed




    
    
    Scenario: Add Dealer ALLY US MA Organization

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
        And selects MA from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed




    Scenario: Add Auction ALLY US MA Organization

        Given current page is New Organization page 
        When User click Customer Dropdown menu
        And select Chase
        And click Organization Type Dropdown menu 
        And selects Auction 
        And clicks Organization name field
        And enters Organization name
        And selects US from Billing Address dropdown menu 
        And clicks Street 1 field
        And enters a valid Street
        And clicks City field
        And enters a valid City
        And clicks State dropdown menu 
        And selects MA from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed



Scenario: Add Dealer VCI US MA Organization

        Given current page is New Organization page 
        When User click Customer Dropdown menu
        And select VCI
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
        And selects MA from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed




    Scenario: Add Auction VCI US MA Organization

        Given current page is New Organization page 
        When User click Customer Dropdown menu
        And select VCI
        And click Organization Type Dropdown menu 
        And selects Auction 
        And clicks Organization name field
        And enters Organization name
        And selects US from Billing Address dropdown menu 
        And clicks Street 1 field
        And enters a valid Street
        And clicks City field
        And enters a valid City
        And clicks State dropdown menu 
        And selects MA from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed




    

Scenario: Add Dealer MANHEIM US MA Organization

        Given current page is New Organization page 
        When User click Customer Dropdown menu
        And select MANHEIM
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
        And selects MA from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed




    Scenario: Add Auction MANHEIM US MA Organization

        Given current page is New Organization page 
        When User click Customer Dropdown menu
        And select MANHEIM
        And click Organization Type Dropdown menu 
        And selects Auction 
        And clicks Organization name field
        And enters Organization name
        And selects US from Billing Address dropdown menu 
        And clicks Street 1 field
        And enters a valid Street
        And clicks City field
        And enters a valid City
        And clicks State dropdown menu 
        And selects MA from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed



    Scenario: Add Dealer HYUNDAI US MA Organization

        Given current page is New Organization page 
        When User click Customer Dropdown menu
        And select HYUNDAI
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
        And selects MA from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed




    Scenario: Add Auction HYUNDAI US MA Organization

        Given current page is New Organization page 
        When User click Customer Dropdown menu
        And select HYUNDAI
        And click Organization Type Dropdown menu 
        And selects Auction 
        And clicks Organization name field
        And enters Organization name
        And selects US from Billing Address dropdown menu 
        And clicks Street 1 field
        And enters a valid Street
        And clicks City field
        And enters a valid City
        And clicks State dropdown menu 
        And selects MA from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed




    Scenario: Add Dealer NISSAN US MA Organization

        Given current page is New Organization page 
        When User click Customer Dropdown menu
        And select NISSAN
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
        And selects MA from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed




    Scenario: Add Auction NISSAN US MA Organization

        Given current page is New Organization page 
        When User click Customer Dropdown menu
        And select NISSAN
        And click Organization Type Dropdown menu 
        And selects Auction 
        And clicks Organization name field
        And enters Organization name
        And selects US from Billing Address dropdown menu 
        And clicks Street 1 field
        And enters a valid Street
        And clicks City field
        And enters a valid City
        And clicks State dropdown menu 
        And selects MA from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed





    
    
    Scenario: Add Dealer ALLY US MI Organization

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
        And selects MI from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed




    Scenario: Add Auction ALLY US MI Organization

        Given current page is New Organization page 
        When User click Customer Dropdown menu
        And select Chase
        And click Organization Type Dropdown menu 
        And selects Auction 
        And clicks Organization name field
        And enters Organization name
        And selects US from Billing Address dropdown menu 
        And clicks Street 1 field
        And enters a valid Street
        And clicks City field
        And enters a valid City
        And clicks State dropdown menu 
        And selects MI from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed



Scenario: Add Dealer VCI US MI Organization

        Given current page is New Organization page 
        When User click Customer Dropdown menu
        And select VCI
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
        And selects MI from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed




    Scenario: Add Auction VCI US MI Organization

        Given current page is New Organization page 
        When User click Customer Dropdown menu
        And select VCI
        And click Organization Type Dropdown menu 
        And selects Auction 
        And clicks Organization name field
        And enters Organization name
        And selects US from Billing Address dropdown menu 
        And clicks Street 1 field
        And enters a valid Street
        And clicks City field
        And enters a valid City
        And clicks State dropdown menu 
        And selects MI from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed




    

Scenario: Add Dealer MANHEIM US MI Organization

        Given current page is New Organization page 
        When User click Customer Dropdown menu
        And select MANHEIM
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
        And selects MI from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed




    Scenario: Add Auction MANHEIM US MI Organization

        Given current page is New Organization page 
        When User click Customer Dropdown menu
        And select MANHEIM
        And click Organization Type Dropdown menu 
        And selects Auction 
        And clicks Organization name field
        And enters Organization name
        And selects US from Billing Address dropdown menu 
        And clicks Street 1 field
        And enters a valid Street
        And clicks City field
        And enters a valid City
        And clicks State dropdown menu 
        And selects MI from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed



    Scenario: Add Dealer HYUNDAI US MI Organization

        Given current page is New Organization page 
        When User click Customer Dropdown menu
        And select HYUNDAI
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
        And selects MI from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed




    Scenario: Add Auction HYUNDAI US MI Organization

        Given current page is New Organization page 
        When User click Customer Dropdown menu
        And select HYUNDAI
        And click Organization Type Dropdown menu 
        And selects Auction 
        And clicks Organization name field
        And enters Organization name
        And selects US from Billing Address dropdown menu 
        And clicks Street 1 field
        And enters a valid Street
        And clicks City field
        And enters a valid City
        And clicks State dropdown menu 
        And selects MI from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed




    Scenario: Add Dealer NISSAN US MI Organization

        Given current page is New Organization page 
        When User click Customer Dropdown menu
        And select NISSAN
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
        And selects MI from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed




    Scenario: Add Auction NISSAN US MI Organization

        Given current page is New Organization page 
        When User click Customer Dropdown menu
        And select NISSAN
        And click Organization Type Dropdown menu 
        And selects Auction 
        And clicks Organization name field
        And enters Organization name
        And selects US from Billing Address dropdown menu 
        And clicks Street 1 field
        And enters a valid Street
        And clicks City field
        And enters a valid City
        And clicks State dropdown menu 
        And selects MI from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed




    
    
    Scenario: Add Dealer ALLY US MN Organization

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
        And selects MN from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed




    Scenario: Add Auction ALLY US MN Organization

        Given current page is New Organization page 
        When User click Customer Dropdown menu
        And select Chase
        And click Organization Type Dropdown menu 
        And selects Auction 
        And clicks Organization name field
        And enters Organization name
        And selects US from Billing Address dropdown menu 
        And clicks Street 1 field
        And enters a valid Street
        And clicks City field
        And enters a valid City
        And clicks State dropdown menu 
        And selects MN from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed



Scenario: Add Dealer VCI US MN Organization

        Given current page is New Organization page 
        When User click Customer Dropdown menu
        And select VCI
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
        And selects MN from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed




    Scenario: Add Auction VCI US MN Organization

        Given current page is New Organization page 
        When User click Customer Dropdown menu
        And select VCI
        And click Organization Type Dropdown menu 
        And selects Auction 
        And clicks Organization name field
        And enters Organization name
        And selects US from Billing Address dropdown menu 
        And clicks Street 1 field
        And enters a valid Street
        And clicks City field
        And enters a valid City
        And clicks State dropdown menu 
        And selects MN from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed




    

Scenario: Add Dealer MANHEIM US MN Organization

        Given current page is New Organization page 
        When User click Customer Dropdown menu
        And select MANHEIM
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
        And selects MN from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed




    Scenario: Add Auction MANHEIM US MN Organization

        Given current page is New Organization page 
        When User click Customer Dropdown menu
        And select MANHEIM
        And click Organization Type Dropdown menu 
        And selects Auction 
        And clicks Organization name field
        And enters Organization name
        And selects US from Billing Address dropdown menu 
        And clicks Street 1 field
        And enters a valid Street
        And clicks City field
        And enters a valid City
        And clicks State dropdown menu 
        And selects MN from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed



    Scenario: Add Dealer HYUNDAI US MN Organization

        Given current page is New Organization page 
        When User click Customer Dropdown menu
        And select HYUNDAI
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
        And selects MN from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed




    Scenario: Add Auction HYUNDAI US MN Organization

        Given current page is New Organization page 
        When User click Customer Dropdown menu
        And select HYUNDAI
        And click Organization Type Dropdown menu 
        And selects Auction 
        And clicks Organization name field
        And enters Organization name
        And selects US from Billing Address dropdown menu 
        And clicks Street 1 field
        And enters a valid Street
        And clicks City field
        And enters a valid City
        And clicks State dropdown menu 
        And selects MN from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed




    Scenario: Add Dealer NISSAN US MN Organization

        Given current page is New Organization page 
        When User click Customer Dropdown menu
        And select NISSAN
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
        And selects MN from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed




    Scenario: Add Auction NISSAN US MN Organization

        Given current page is New Organization page 
        When User click Customer Dropdown menu
        And select NISSAN
        And click Organization Type Dropdown menu 
        And selects Auction 
        And clicks Organization name field
        And enters Organization name
        And selects US from Billing Address dropdown menu 
        And clicks Street 1 field
        And enters a valid Street
        And clicks City field
        And enters a valid City
        And clicks State dropdown menu 
        And selects MN from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed



    
    
    Scenario: Add Dealer ALLY US MS Organization

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
        And selects MS from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed




    Scenario: Add Auction ALLY US MS Organization

        Given current page is New Organization page 
        When User click Customer Dropdown menu
        And select Chase
        And click Organization Type Dropdown menu 
        And selects Auction 
        And clicks Organization name field
        And enters Organization name
        And selects US from Billing Address dropdown menu 
        And clicks Street 1 field
        And enters a valid Street
        And clicks City field
        And enters a valid City
        And clicks State dropdown menu 
        And selects MS from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed



Scenario: Add Dealer VCI US MS Organization

        Given current page is New Organization page 
        When User click Customer Dropdown menu
        And select VCI
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
        And selects MS from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed




    Scenario: Add Auction VCI US MS Organization

        Given current page is New Organization page 
        When User click Customer Dropdown menu
        And select VCI
        And click Organization Type Dropdown menu 
        And selects Auction 
        And clicks Organization name field
        And enters Organization name
        And selects US from Billing Address dropdown menu 
        And clicks Street 1 field
        And enters a valid Street
        And clicks City field
        And enters a valid City
        And clicks State dropdown menu 
        And selects MS from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed




    

Scenario: Add Dealer MANHEIM US MS Organization

        Given current page is New Organization page 
        When User click Customer Dropdown menu
        And select MANHEIM
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
        And selects MS from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed




    Scenario: Add Auction MANHEIM US MS Organization

        Given current page is New Organization page 
        When User click Customer Dropdown menu
        And select MANHEIM
        And click Organization Type Dropdown menu 
        And selects Auction 
        And clicks Organization name field
        And enters Organization name
        And selects US from Billing Address dropdown menu 
        And clicks Street 1 field
        And enters a valid Street
        And clicks City field
        And enters a valid City
        And clicks State dropdown menu 
        And selects MS from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed



    Scenario: Add Dealer HYUNDAI US MS Organization

        Given current page is New Organization page 
        When User click Customer Dropdown menu
        And select HYUNDAI
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
        And selects MS from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed




    Scenario: Add Auction HYUNDAI US MS Organization

        Given current page is New Organization page 
        When User click Customer Dropdown menu
        And select HYUNDAI
        And click Organization Type Dropdown menu 
        And selects Auction 
        And clicks Organization name field
        And enters Organization name
        And selects US from Billing Address dropdown menu 
        And clicks Street 1 field
        And enters a valid Street
        And clicks City field
        And enters a valid City
        And clicks State dropdown menu 
        And selects MS from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed




    Scenario: Add Dealer NISSAN US MS Organization

        Given current page is New Organization page 
        When User click Customer Dropdown menu
        And select NISSAN
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
        And selects MS from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed




    Scenario: Add Auction NISSAN US MS Organization

        Given current page is New Organization page 
        When User click Customer Dropdown menu
        And select NISSAN
        And click Organization Type Dropdown menu 
        And selects Auction 
        And clicks Organization name field
        And enters Organization name
        And selects US from Billing Address dropdown menu 
        And clicks Street 1 field
        And enters a valid Street
        And clicks City field
        And enters a valid City
        And clicks State dropdown menu 
        And selects MS from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed



    
    
    Scenario: Add Dealer ALLY US MO Organization

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
        And selects MO from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed




    Scenario: Add Auction ALLY US MO Organization

        Given current page is New Organization page 
        When User click Customer Dropdown menu
        And select Chase
        And click Organization Type Dropdown menu 
        And selects Auction 
        And clicks Organization name field
        And enters Organization name
        And selects US from Billing Address dropdown menu 
        And clicks Street 1 field
        And enters a valid Street
        And clicks City field
        And enters a valid City
        And clicks State dropdown menu 
        And selects MO from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed



Scenario: Add Dealer VCI US MO Organization

        Given current page is New Organization page 
        When User click Customer Dropdown menu
        And select VCI
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
        And selects MO from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed




    Scenario: Add Auction VCI US MO Organization

        Given current page is New Organization page 
        When User click Customer Dropdown menu
        And select VCI
        And click Organization Type Dropdown menu 
        And selects Auction 
        And clicks Organization name field
        And enters Organization name
        And selects US from Billing Address dropdown menu 
        And clicks Street 1 field
        And enters a valid Street
        And clicks City field
        And enters a valid City
        And clicks State dropdown menu 
        And selects MO from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed




    

Scenario: Add Dealer MANHEIM US MO Organization

        Given current page is New Organization page 
        When User click Customer Dropdown menu
        And select MANHEIM
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
        And selects MO from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed




    Scenario: Add Auction MANHEIM US MO Organization

        Given current page is New Organization page 
        When User click Customer Dropdown menu
        And select MANHEIM
        And click Organization Type Dropdown menu 
        And selects Auction 
        And clicks Organization name field
        And enters Organization name
        And selects US from Billing Address dropdown menu 
        And clicks Street 1 field
        And enters a valid Street
        And clicks City field
        And enters a valid City
        And clicks State dropdown menu 
        And selects MO from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed



    Scenario: Add Dealer HYUNDAI US MO Organization

        Given current page is New Organization page 
        When User click Customer Dropdown menu
        And select HYUNDAI
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
        And selects MO from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed




    Scenario: Add Auction HYUNDAI US MO Organization

        Given current page is New Organization page 
        When User click Customer Dropdown menu
        And select HYUNDAI
        And click Organization Type Dropdown menu 
        And selects Auction 
        And clicks Organization name field
        And enters Organization name
        And selects US from Billing Address dropdown menu 
        And clicks Street 1 field
        And enters a valid Street
        And clicks City field
        And enters a valid City
        And clicks State dropdown menu 
        And selects MO from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed




    Scenario: Add Dealer NISSAN US MO Organization

        Given current page is New Organization page 
        When User click Customer Dropdown menu
        And select NISSAN
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
        And selects MO from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed




    Scenario: Add Auction NISSAN US MO Organization

        Given current page is New Organization page 
        When User click Customer Dropdown menu
        And select NISSAN
        And click Organization Type Dropdown menu 
        And selects Auction 
        And clicks Organization name field
        And enters Organization name
        And selects US from Billing Address dropdown menu 
        And clicks Street 1 field
        And enters a valid Street
        And clicks City field
        And enters a valid City
        And clicks State dropdown menu 
        And selects MO from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed





    
    
    Scenario: Add Dealer ALLY US MT Organization

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
        And selects MT from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed




    Scenario: Add Auction ALLY US MT Organization

        Given current page is New Organization page 
        When User click Customer Dropdown menu
        And select Chase
        And click Organization Type Dropdown menu 
        And selects Auction 
        And clicks Organization name field
        And enters Organization name
        And selects US from Billing Address dropdown menu 
        And clicks Street 1 field
        And enters a valid Street
        And clicks City field
        And enters a valid City
        And clicks State dropdown menu 
        And selects MT from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed



Scenario: Add Dealer VCI US MT Organization

        Given current page is New Organization page 
        When User click Customer Dropdown menu
        And select VCI
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
        And selects MT from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed




    Scenario: Add Auction VCI US MT Organization

        Given current page is New Organization page 
        When User click Customer Dropdown menu
        And select VCI
        And click Organization Type Dropdown menu 
        And selects Auction 
        And clicks Organization name field
        And enters Organization name
        And selects US from Billing Address dropdown menu 
        And clicks Street 1 field
        And enters a valid Street
        And clicks City field
        And enters a valid City
        And clicks State dropdown menu 
        And selects MT from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed




    

Scenario: Add Dealer MANHEIM US MT Organization

        Given current page is New Organization page 
        When User click Customer Dropdown menu
        And select MANHEIM
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
        And selects MT from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed




    Scenario: Add Auction MANHEIM US MT Organization

        Given current page is New Organization page 
        When User click Customer Dropdown menu
        And select MANHEIM
        And click Organization Type Dropdown menu 
        And selects Auction 
        And clicks Organization name field
        And enters Organization name
        And selects US from Billing Address dropdown menu 
        And clicks Street 1 field
        And enters a valid Street
        And clicks City field
        And enters a valid City
        And clicks State dropdown menu 
        And selects MT from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed



    Scenario: Add Dealer HYUNDAI US MT Organization

        Given current page is New Organization page 
        When User click Customer Dropdown menu
        And select HYUNDAI
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
        And selects MT from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed




    Scenario: Add Auction HYUNDAI US MT Organization

        Given current page is New Organization page 
        When User click Customer Dropdown menu
        And select HYUNDAI
        And click Organization Type Dropdown menu 
        And selects Auction 
        And clicks Organization name field
        And enters Organization name
        And selects US from Billing Address dropdown menu 
        And clicks Street 1 field
        And enters a valid Street
        And clicks City field
        And enters a valid City
        And clicks State dropdown menu 
        And selects MT from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed




    Scenario: Add Dealer NISSAN US MT Organization

        Given current page is New Organization page 
        When User click Customer Dropdown menu
        And select NISSAN
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
        And selects MT from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed




    Scenario: Add Auction NISSAN US MT Organization

        Given current page is New Organization page 
        When User click Customer Dropdown menu
        And select NISSAN
        And click Organization Type Dropdown menu 
        And selects Auction 
        And clicks Organization name field
        And enters Organization name
        And selects US from Billing Address dropdown menu 
        And clicks Street 1 field
        And enters a valid Street
        And clicks City field
        And enters a valid City
        And clicks State dropdown menu 
        And selects MT from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed



    