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





    
    # Scenario: Add Dealer ALLY US AL Organization

    #     Given current page is New Organization page 
    #     When User click Customer Dropdown menu
    #     And select ALLY
    #     And click Organization Type Dropdown menu 
    #     And selects Dealer 
    #     And clicks Organization name field
    #     And enters Organization name
    #     And selects US from Billing Address dropdown menu 
    #     And clicks Street 1 field
    #     And enters a valid Street
    #     And clicks City field
    #     And enters a valid City
    #     And clicks State dropdown menu 
    #     And selects AL from state
    #     And clicks zip field 
    #     And enters a valid zip
    #     And checks Default Inspection Location as same as billing address
    #     And click Organization Code dropdown menu
    #     And select Auction Code from dropdown menu
    #     And click Organization code field 
    #     And enters valid Organization code  
    #     And click submit 
    #     Then organization created notification message displayed




    # Scenario: Add Auction ALLY US AL Organization

    #     Given current page is New Organization page 
    #     When User click Customer Dropdown menu
    #     And select ALLY
    #     And click Organization Type Dropdown menu 
    #     And selects Auction 
    #     And clicks Organization name field
    #     And enters Organization name
    #     And selects US from Billing Address dropdown menu 
    #     And clicks Street 1 field
    #     And enters a valid Street
    #     And clicks City field
    #     And enters a valid City
    #     And clicks State dropdown menu 
    #     And selects AL from state
    #     And clicks zip field 
    #     And enters a valid zip
    #     And checks Default Inspection Location as same as billing address
    #     And click Organization Code dropdown menu
    #     And select Auction Code from dropdown menu
    #     And click Organization code field 
    #     And enters valid Organization code  
    #     And click submit 
    #     Then organization created notification message displayed



# Scenario: Add Dealer VCI US AL Organization

#         Given current page is New Organization page 
#         When User click Customer Dropdown menu
#         And select VCI
#         And click Organization Type Dropdown menu 
#         And selects Dealer 
#         And clicks Organization name field
#         And enters Organization name
#         And selects US from Billing Address dropdown menu 
#         And clicks Street 1 field
#         And enters a valid Street
#         And clicks City field
#         And enters a valid City
#         And clicks State dropdown menu 
#         And selects AL from state
#         And clicks zip field 
#         And enters a valid zip
#         And checks Default Inspection Location as same as billing address
#         And click Organization Code dropdown menu
#         And select Auction Code from dropdown menu
#         And click Organization code field 
#         And enters valid Organization code  
#         And click submit 
#         Then organization created notification message displayed




#     Scenario: Add Auction VCI US AL Organization

#         Given current page is New Organization page 
#         When User click Customer Dropdown menu
#         And select VCI
#         And click Organization Type Dropdown menu 
#         And selects Auction 
#         And clicks Organization name field
#         And enters Organization name
#         And selects US from Billing Address dropdown menu 
#         And clicks Street 1 field
#         And enters a valid Street
#         And clicks City field
#         And enters a valid City
#         And clicks State dropdown menu 
#         And selects AL from state
#         And clicks zip field 
#         And enters a valid zip
#         And checks Default Inspection Location as same as billing address
#         And click Organization Code dropdown menu
#         And select Auction Code from dropdown menu
#         And click Organization code field 
#         And enters valid Organization code  
#         And click submit 
#         Then organization created notification message displayed




    

# Scenario: Add Dealer MANHEIM US AL Organization

#         Given current page is New Organization page 
#         When User click Customer Dropdown menu
#         And select MANHEIM
#         And click Organization Type Dropdown menu 
#         And selects Dealer 
#         And clicks Organization name field
#         And enters Organization name
#         And selects US from Billing Address dropdown menu 
#         And clicks Street 1 field
#         And enters a valid Street
#         And clicks City field
#         And enters a valid City
#         And clicks State dropdown menu 
#         And selects AL from state
#         And clicks zip field 
#         And enters a valid zip
#         And checks Default Inspection Location as same as billing address
#         And click Organization Code dropdown menu
#         And select Auction Code from dropdown menu
#         And click Organization code field 
#         And enters valid Organization code  
#         And click submit 
#         Then organization created notification message displayed




#     Scenario: Add Auction MANHEIM US AL Organization

#         Given current page is New Organization page 
#         When User click Customer Dropdown menu
#         And select MANHEIM
#         And click Organization Type Dropdown menu 
#         And selects Auction 
#         And clicks Organization name field
#         And enters Organization name
#         And selects US from Billing Address dropdown menu 
#         And clicks Street 1 field
#         And enters a valid Street
#         And clicks City field
#         And enters a valid City
#         And clicks State dropdown menu 
#         And selects AL from state
#         And clicks zip field 
#         And enters a valid zip
#         And checks Default Inspection Location as same as billing address
#         And click Organization Code dropdown menu
#         And select Auction Code from dropdown menu
#         And click Organization code field 
#         And enters valid Organization code  
#         And click submit 
#         Then organization created notification message displayed



    # Scenario: Add Dealer HYUNDAI US AL Organization

    #     Given current page is New Organization page 
    #     When User click Customer Dropdown menu
    #     And select HYUNDAI
    #     And click Organization Type Dropdown menu 
    #     And selects Dealer 
    #     And clicks Organization name field
    #     And enters Organization name
    #     And selects US from Billing Address dropdown menu 
    #     And clicks Street 1 field
    #     And enters a valid Street
    #     And clicks City field
    #     And enters a valid City
    #     And clicks State dropdown menu 
    #     And selects AL from state
    #     And clicks zip field 
    #     And enters a valid zip
    #     And checks Default Inspection Location as same as billing address
    #     And click Organization Code dropdown menu
    #     And select Auction Code from dropdown menu
    #     And click Organization code field 
    #     And enters valid Organization code  
    #     And click submit 
    #     Then organization created notification message displayed




    # Scenario: Add Auction HYUNDAI US AL Organization

    #     Given current page is New Organization page 
    #     When User click Customer Dropdown menu
    #     And select HYUNDAI
    #     And click Organization Type Dropdown menu 
    #     And selects Auction 
    #     And clicks Organization name field
    #     And enters Organization name
    #     And selects US from Billing Address dropdown menu 
    #     And clicks Street 1 field
    #     And enters a valid Street
    #     And clicks City field
    #     And enters a valid City
    #     And clicks State dropdown menu 
    #     And selects AL from state
    #     And clicks zip field 
    #     And enters a valid zip
    #     And checks Default Inspection Location as same as billing address
    #     And click Organization Code dropdown menu
    #     And select Auction Code from dropdown menu
    #     And click Organization code field 
    #     And enters valid Organization code  
    #     And click submit 
    #     Then organization created notification message displayed




    # Scenario: Add Dealer NISSAN US AL Organization

    #     Given current page is New Organization page 
    #     When User click Customer Dropdown menu
    #     And select NISSAN
    #     And click Organization Type Dropdown menu 
    #     And selects Dealer 
    #     And clicks Organization name field
    #     And enters Organization name
    #     And selects US from Billing Address dropdown menu 
    #     And clicks Street 1 field
    #     And enters a valid Street
    #     And clicks City field
    #     And enters a valid City
    #     And clicks State dropdown menu 
    #     And selects AL from state
    #     And clicks zip field 
    #     And enters a valid zip
    #     And checks Default Inspection Location as same as billing address
    #     And click Organization Code dropdown menu
    #     And select Auction Code from dropdown menu
    #     And click Organization code field 
    #     And enters valid Organization code  
    #     And click submit 
    #     Then organization created notification message displayed




    # Scenario: Add Auction NISSAN US AL Organization

    #     Given current page is New Organization page 
    #     When User click Customer Dropdown menu
    #     And select NISSAN
    #     And click Organization Type Dropdown menu 
    #     And selects Auction 
    #     And clicks Organization name field
    #     And enters Organization name
    #     And selects US from Billing Address dropdown menu 
    #     And clicks Street 1 field
    #     And enters a valid Street
    #     And clicks City field
    #     And enters a valid City
    #     And clicks State dropdown menu 
    #     And selects AL from state
    #     And clicks zip field 
    #     And enters a valid zip
    #     And checks Default Inspection Location as same as billing address
    #     And click Organization Code dropdown menu
    #     And select Auction Code from dropdown menu
    #     And click Organization code field 
    #     And enters valid Organization code  
    #     And click submit 
    #     Then organization created notification message displayed




    
    
    # Scenario: Add Dealer ALLY US AK Organization

    #     Given current page is New Organization page 
    #     When User click Customer Dropdown menu
    #     And select Chase
    #     And click Organization Type Dropdown menu 
    #     And selects Dealer 
    #     And clicks Organization name field
    #     And enters Organization name
    #     And selects US from Billing Address dropdown menu 
    #     And clicks Street 1 field
    #     And enters a valid Street
    #     And clicks City field
    #     And enters a valid City
    #     And clicks State dropdown menu 
    #     And selects AK from state
    #     And clicks zip field 
    #     And enters a valid zip
    #     And checks Default Inspection Location as same as billing address
    #     And click Organization Code dropdown menu
    #     And select Auction Code from dropdown menu
    #     And click Organization code field 
    #     And enters valid Organization code  
    #     And click submit 
    #     Then organization created notification message displayed




    # Scenario: Add Auction ALLY US AK Organization

    #     Given current page is New Organization page 
    #     When User click Customer Dropdown menu
    #     And select Chase
    #     And click Organization Type Dropdown menu 
    #     And selects Auction 
    #     And clicks Organization name field
    #     And enters Organization name
    #     And selects US from Billing Address dropdown menu 
    #     And clicks Street 1 field
    #     And enters a valid Street
    #     And clicks City field
    #     And enters a valid City
    #     And clicks State dropdown menu 
    #     And selects AK from state
    #     And clicks zip field 
    #     And enters a valid zip
    #     And checks Default Inspection Location as same as billing address
    #     And click Organization Code dropdown menu
    #     And select Auction Code from dropdown menu
    #     And click Organization code field 
    #     And enters valid Organization code  
    #     And click submit 
    #     Then organization created notification message displayed



# Scenario: Add Dealer VCI US AK Organization

#         Given current page is New Organization page 
#         When User click Customer Dropdown menu
#         And select VCI
#         And click Organization Type Dropdown menu 
#         And selects Dealer 
#         And clicks Organization name field
#         And enters Organization name
#         And selects US from Billing Address dropdown menu 
#         And clicks Street 1 field
#         And enters a valid Street
#         And clicks City field
#         And enters a valid City
#         And clicks State dropdown menu 
#         And selects AK from state
#         And clicks zip field 
#         And enters a valid zip
#         And checks Default Inspection Location as same as billing address
#         And click Organization Code dropdown menu
#         And select Auction Code from dropdown menu
#         And click Organization code field 
#         And enters valid Organization code  
#         And click submit 
#         Then organization created notification message displayed




#     Scenario: Add Auction VCI US AK Organization

#         Given current page is New Organization page 
#         When User click Customer Dropdown menu
#         And select VCI
#         And click Organization Type Dropdown menu 
#         And selects Auction 
#         And clicks Organization name field
#         And enters Organization name
#         And selects US from Billing Address dropdown menu 
#         And clicks Street 1 field
#         And enters a valid Street
#         And clicks City field
#         And enters a valid City
#         And clicks State dropdown menu 
#         And selects AK from state
#         And clicks zip field 
#         And enters a valid zip
#         And checks Default Inspection Location as same as billing address
#         And click Organization Code dropdown menu
#         And select Auction Code from dropdown menu
#         And click Organization code field 
#         And enters valid Organization code  
#         And click submit 
#         Then organization created notification message displayed




    

# Scenario: Add Dealer MANHEIM US AK Organization

#         Given current page is New Organization page 
#         When User click Customer Dropdown menu
#         And select MANHEIM
#         And click Organization Type Dropdown menu 
#         And selects Dealer 
#         And clicks Organization name field
#         And enters Organization name
#         And selects US from Billing Address dropdown menu 
#         And clicks Street 1 field
#         And enters a valid Street
#         And clicks City field
#         And enters a valid City
#         And clicks State dropdown menu 
#         And selects AK from state
#         And clicks zip field 
#         And enters a valid zip
#         And checks Default Inspection Location as same as billing address
#         And click Organization Code dropdown menu
#         And select Auction Code from dropdown menu
#         And click Organization code field 
#         And enters valid Organization code  
#         And click submit 
#         Then organization created notification message displayed




#     Scenario: Add Auction MANHEIM US AK Organization

#         Given current page is New Organization page 
#         When User click Customer Dropdown menu
#         And select MANHEIM
#         And click Organization Type Dropdown menu 
#         And selects Auction 
#         And clicks Organization name field
#         And enters Organization name
#         And selects US from Billing Address dropdown menu 
#         And clicks Street 1 field
#         And enters a valid Street
#         And clicks City field
#         And enters a valid City
#         And clicks State dropdown menu 
#         And selects AK from state
#         And clicks zip field 
#         And enters a valid zip
#         And checks Default Inspection Location as same as billing address
#         And click Organization Code dropdown menu
#         And select Auction Code from dropdown menu
#         And click Organization code field 
#         And enters valid Organization code  
#         And click submit 
#         Then organization created notification message displayed



    # Scenario: Add Dealer HYUNDAI US AK Organization

    #     Given current page is New Organization page 
    #     When User click Customer Dropdown menu
    #     And select HYUNDAI
    #     And click Organization Type Dropdown menu 
    #     And selects Dealer 
    #     And clicks Organization name field
    #     And enters Organization name
    #     And selects US from Billing Address dropdown menu 
    #     And clicks Street 1 field
    #     And enters a valid Street
    #     And clicks City field
    #     And enters a valid City
    #     And clicks State dropdown menu 
    #     And selects AK from state
    #     And clicks zip field 
    #     And enters a valid zip
    #     And checks Default Inspection Location as same as billing address
    #     And click Organization Code dropdown menu
    #     And select Auction Code from dropdown menu
    #     And click Organization code field 
    #     And enters valid Organization code  
    #     And click submit 
    #     Then organization created notification message displayed




    # Scenario: Add Auction HYUNDAI US AK Organization

    #     Given current page is New Organization page 
    #     When User click Customer Dropdown menu
    #     And select HYUNDAI
    #     And click Organization Type Dropdown menu 
    #     And selects Auction 
    #     And clicks Organization name field
    #     And enters Organization name
    #     And selects US from Billing Address dropdown menu 
    #     And clicks Street 1 field
    #     And enters a valid Street
    #     And clicks City field
    #     And enters a valid City
    #     And clicks State dropdown menu 
    #     And selects AK from state
    #     And clicks zip field 
    #     And enters a valid zip
    #     And checks Default Inspection Location as same as billing address
    #     And click Organization Code dropdown menu
    #     And select Auction Code from dropdown menu
    #     And click Organization code field 
    #     And enters valid Organization code  
    #     And click submit 
    #     Then organization created notification message displayed




    # Scenario: Add Dealer NISSAN US AK Organization

    #     Given current page is New Organization page 
    #     When User click Customer Dropdown menu
    #     And select NISSAN
    #     And click Organization Type Dropdown menu 
    #     And selects Dealer 
    #     And clicks Organization name field
    #     And enters Organization name
    #     And selects US from Billing Address dropdown menu 
    #     And clicks Street 1 field
    #     And enters a valid Street
    #     And clicks City field
    #     And enters a valid City
    #     And clicks State dropdown menu 
    #     And selects AK from state
    #     And clicks zip field 
    #     And enters a valid zip
    #     And checks Default Inspection Location as same as billing address
    #     And click Organization Code dropdown menu
    #     And select Auction Code from dropdown menu
    #     And click Organization code field 
    #     And enters valid Organization code  
    #     And click submit 
    #     Then organization created notification message displayed




    # Scenario: Add Auction NISSAN US AK Organization

    #     Given current page is New Organization page 
    #     When User click Customer Dropdown menu
    #     And select NISSAN
    #     And click Organization Type Dropdown menu 
    #     And selects Auction 
    #     And clicks Organization name field
    #     And enters Organization name
    #     And selects US from Billing Address dropdown menu 
    #     And clicks Street 1 field
    #     And enters a valid Street
    #     And clicks City field
    #     And enters a valid City
    #     And clicks State dropdown menu 
    #     And selects AK from state
    #     And clicks zip field 
    #     And enters a valid zip
    #     And checks Default Inspection Location as same as billing address
    #     And click Organization Code dropdown menu
    #     And select Auction Code from dropdown menu
    #     And click Organization code field 
    #     And enters valid Organization code  
    #     And click submit 
    #     Then organization created notification message displayed




    
    
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




    
    
    Scenario: Add Dealer ALLY US NE Organization

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
        And selects NE from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed




    Scenario: Add Auction ALLY US NE Organization

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
        And selects NE from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed



Scenario: Add Dealer VCI US NE Organization

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
        And selects NE from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed




    Scenario: Add Auction VCI US NE Organization

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
        And selects NE from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed




    

Scenario: Add Dealer MANHEIM US NE Organization

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
        And selects NE from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed




    Scenario: Add Auction MANHEIM US NE Organization

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
        And selects NE from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed



    Scenario: Add Dealer HYUNDAI US NE Organization

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
        And selects NE from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed




    Scenario: Add Auction HYUNDAI US NE Organization

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
        And selects NE from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed




    Scenario: Add Dealer NISSAN US NE Organization

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
        And selects NE from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed




    Scenario: Add Auction NISSAN US NE Organization

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
        And selects NE from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed




    
    
    Scenario: Add Dealer ALLY US NV Organization

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
        And selects NV from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed




    Scenario: Add Auction ALLY US NV Organization

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
        And selects NV from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed



Scenario: Add Dealer VCI US NV Organization

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
        And selects NV from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed




    Scenario: Add Auction VCI US NV Organization

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
        And selects NV from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed




    

Scenario: Add Dealer MANHEIM US NV Organization

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
        And selects NV from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed




    Scenario: Add Auction MANHEIM US NV Organization

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
        And selects NV from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed



    Scenario: Add Dealer HYUNDAI US NV Organization

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
        And selects NV from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed




    Scenario: Add Auction HYUNDAI US NV Organization

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
        And selects NV from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed




    Scenario: Add Dealer NISSAN US NV Organization

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
        And selects NV from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed




    Scenario: Add Auction NISSAN US NV Organization

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
        And selects NV from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed


        
    
    Scenario: Add Dealer ALLY US NH Organization

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
        And selects NH from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed




    Scenario: Add Auction ALLY US NH Organization

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
        And selects NH from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed



Scenario: Add Dealer VCI US NH Organization

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
        And selects NH from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed




    Scenario: Add Auction VCI US NH Organization

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
        And selects NH from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed




    

Scenario: Add Dealer MANHEIM US NH Organization

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
        And selects NH from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed




    Scenario: Add Auction MANHEIM US NH Organization

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
        And selects NH from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed



    Scenario: Add Dealer HYUNDAI US NH Organization

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
        And selects NH from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed




    Scenario: Add Auction HYUNDAI US NH Organization

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
        And selects NH from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed




    Scenario: Add Dealer NISSAN US NH Organization

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
        And selects NH from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed




    Scenario: Add Auction NISSAN US NH Organization

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
        And selects NH from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed




    
    
    Scenario: Add Dealer ALLY US NJ Organization

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
        And selects NJ from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed




    Scenario: Add Auction ALLY US NJ Organization

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
        And selects NJ from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed



Scenario: Add Dealer VCI US NJ Organization

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
        And selects NJ from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed




    Scenario: Add Auction VCI US NJ Organization

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
        And selects NJ from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed




    

Scenario: Add Dealer MANHEIM US NJ Organization

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
        And selects NJ from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed




    Scenario: Add Auction MANHEIM US NJ Organization

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
        And selects NJ from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed



    Scenario: Add Dealer HYUNDAI US NJ Organization

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
        And selects NJ from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed




    Scenario: Add Auction HYUNDAI US NJ Organization

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
        And selects NJ from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed




    Scenario: Add Dealer NISSAN US NJ Organization

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
        And selects NJ from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed




    Scenario: Add Auction NISSAN US NJ Organization

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
        And selects NJ from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed




    
    
    Scenario: Add Dealer ALLY US NM Organization

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
        And selects NM from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed




    Scenario: Add Auction ALLY US NM Organization

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
        And selects NM from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed



Scenario: Add Dealer VCI US NM Organization

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
        And selects NM from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed




    Scenario: Add Auction VCI US NM Organization

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
        And selects NM from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed




    

Scenario: Add Dealer MANHEIM US NM Organization

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
        And selects NM from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed




    Scenario: Add Auction MANHEIM US NM Organization

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
        And selects NM from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed



    Scenario: Add Dealer HYUNDAI US NM Organization

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
        And selects NM from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed




    Scenario: Add Auction HYUNDAI US NM Organization

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
        And selects NM from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed




    Scenario: Add Dealer NISSAN US NM Organization

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
        And selects NM from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed




    Scenario: Add Auction NISSAN US NM Organization

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
        And selects NM from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed




    
    
    Scenario: Add Dealer ALLY US NY Organization

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
        And selects NY from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed




    Scenario: Add Auction ALLY US NY Organization

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
        And selects NY from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed



Scenario: Add Dealer VCI US NY Organization

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
        And selects NY from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed




    Scenario: Add Auction VCI US NY Organization

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
        And selects NY from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed




    

Scenario: Add Dealer MANHEIM US NY Organization

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
        And selects NY from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed




    Scenario: Add Auction MANHEIM US NY Organization

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
        And selects NY from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed



    Scenario: Add Dealer HYUNDAI US NY Organization

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
        And selects NY from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed




    Scenario: Add Auction HYUNDAI US NY Organization

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
        And selects NY from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed




    Scenario: Add Dealer NISSAN US NY Organization

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
        And selects NY from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed




    Scenario: Add Auction NISSAN US NY Organization

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
        And selects NY from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed




    
    
    Scenario: Add Dealer ALLY US NC Organization

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
        And selects NC from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed




    Scenario: Add Auction ALLY US NC Organization

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
        And selects NC from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed



Scenario: Add Dealer VCI US NC Organization

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
        And selects NC from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed




    Scenario: Add Auction VCI US NC Organization

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
        And selects NC from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed




    

Scenario: Add Dealer MANHEIM US NC Organization

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
        And selects NC from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed




    Scenario: Add Auction MANHEIM US NC Organization

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
        And selects NC from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed



    Scenario: Add Dealer HYUNDAI US NC Organization

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
        And selects NC from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed




    Scenario: Add Auction HYUNDAI US NC Organization

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
        And selects NC from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed




    Scenario: Add Dealer NISSAN US NC Organization

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
        And selects NC from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed




    Scenario: Add Auction NISSAN US NC Organization

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
        And selects NC from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed




    
    
    Scenario: Add Dealer ALLY US ND Organization

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
        And selects ND from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed




    Scenario: Add Auction ALLY US ND Organization

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
        And selects ND from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed



Scenario: Add Dealer VCI US ND Organization

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
        And selects ND from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed




    Scenario: Add Auction VCI US ND Organization

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
        And selects ND from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed




    

Scenario: Add Dealer MANHEIM US ND Organization

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
        And selects ND from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed




    Scenario: Add Auction MANHEIM US ND Organization

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
        And selects ND from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed



    Scenario: Add Dealer HYUNDAI US ND Organization

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
        And selects ND from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed




    Scenario: Add Auction HYUNDAI US ND Organization

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
        And selects ND from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed




    Scenario: Add Dealer NISSAN US ND Organization

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
        And selects ND from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed




    Scenario: Add Auction NISSAN US ND Organization

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
        And selects ND from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed




    
    
    Scenario: Add Dealer ALLY US OH Organization

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
        And selects OH from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed




    Scenario: Add Auction ALLY US OH Organization

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
        And selects OH from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed



Scenario: Add Dealer VCI US OH Organization

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
        And selects OH from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed




    Scenario: Add Auction VCI US OH Organization

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
        And selects OH from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed




    

Scenario: Add Dealer MANHEIM US OH Organization

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
        And selects OH from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed




    Scenario: Add Auction MANHEIM US OH Organization

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
        And selects OH from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed



    Scenario: Add Dealer HYUNDAI US OH Organization

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
        And selects OH from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed




    Scenario: Add Auction HYUNDAI US OH Organization

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
        And selects OH from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed




    Scenario: Add Dealer NISSAN US OH Organization

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
        And selects OH from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed




    Scenario: Add Auction NISSAN US OH Organization

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
        And selects OH from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed




    
    
    Scenario: Add Dealer ALLY US OK Organization

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
        And selects OK from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed




    Scenario: Add Auction ALLY US OK Organization

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
        And selects OK from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed



Scenario: Add Dealer VCI US OK Organization

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
        And selects OK from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed




    Scenario: Add Auction VCI US OK Organization

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
        And selects OK from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed




    

Scenario: Add Dealer MANHEIM US OK Organization

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
        And selects OK from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed




    Scenario: Add Auction MANHEIM US OK Organization

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
        And selects OK from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed



    Scenario: Add Dealer HYUNDAI US OK Organization

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
        And selects OK from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed




    Scenario: Add Auction HYUNDAI US OK Organization

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
        And selects OK from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed




    Scenario: Add Dealer NISSAN US OK Organization

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
        And selects OK from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed




    Scenario: Add Auction NISSAN US OK Organization

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
        And selects OK from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed




    
    
    Scenario: Add Dealer ALLY US OR Organization

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
        And selects OR from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed




    Scenario: Add Auction ALLY US OR Organization

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
        And selects OR from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed



Scenario: Add Dealer VCI US OR Organization

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
        And selects OR from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed




    Scenario: Add Auction VCI US OR Organization

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
        And selects OR from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed




    

Scenario: Add Dealer MANHEIM US OR Organization

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
        And selects OR from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed




    Scenario: Add Auction MANHEIM US OR Organization

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
        And selects OR from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed



    Scenario: Add Dealer HYUNDAI US OR Organization

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
        And selects OR from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed




    Scenario: Add Auction HYUNDAI US OR Organization

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
        And selects OR from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed




    Scenario: Add Dealer NISSAN US OR Organization

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
        And selects OR from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed




    Scenario: Add Auction NISSAN US OR Organization

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
        And selects OR from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed




    
    
    Scenario: Add Dealer ALLY US PA Organization

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
        And selects PA from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed




    Scenario: Add Auction ALLY US PA Organization

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
        And selects PA from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed



Scenario: Add Dealer VCI US PA Organization

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
        And selects PA from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed




    Scenario: Add Auction VCI US PA Organization

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
        And selects PA from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed




    

Scenario: Add Dealer MANHEIM US PA Organization

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
        And selects PA from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed




    Scenario: Add Auction MANHEIM US PA Organization

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
        And selects PA from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed



    Scenario: Add Dealer HYUNDAI US PA Organization

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
        And selects PA from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed




    Scenario: Add Auction HYUNDAI US PA Organization

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
        And selects PA from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed




    Scenario: Add Dealer NISSAN US PA Organization

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
        And selects PA from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed




    Scenario: Add Auction NISSAN US PA Organization

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
        And selects PA from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed




    
    
    Scenario: Add Dealer ALLY US PR Organization

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
        And selects PR from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed




    Scenario: Add Auction ALLY US PR Organization

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
        And selects PR from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed



Scenario: Add Dealer VCI US PR Organization

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
        And selects PR from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed




    Scenario: Add Auction VCI US PR Organization

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
        And selects PR from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed




    

Scenario: Add Dealer MANHEIM US PR Organization

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
        And selects PR from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed




    Scenario: Add Auction MANHEIM US PR Organization

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
        And selects PR from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed



    Scenario: Add Dealer HYUNDAI US PR Organization

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
        And selects PR from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed




    Scenario: Add Auction HYUNDAI US PR Organization

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
        And selects PR from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed




    Scenario: Add Dealer NISSAN US PR Organization

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
        And selects PR from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed




    Scenario: Add Auction NISSAN US PR Organization

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
        And selects PR from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed




    
    
    Scenario: Add Dealer ALLY US RI Organization

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
        And selects RI from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed




    Scenario: Add Auction ALLY US RI Organization

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
        And selects RI from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed



Scenario: Add Dealer VCI US RI Organization

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
        And selects RI from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed




    Scenario: Add Auction VCI US RI Organization

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
        And selects RI from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed




    

Scenario: Add Dealer MANHEIM US RI Organization

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
        And selects RI from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed




    Scenario: Add Auction MANHEIM US RI Organization

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
        And selects RI from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed



    Scenario: Add Dealer HYUNDAI US RI Organization

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
        And selects RI from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed




    Scenario: Add Auction HYUNDAI US RI Organization

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
        And selects RI from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed




    Scenario: Add Dealer NISSAN US RI Organization

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
        And selects RI from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed




    Scenario: Add Auction NISSAN US RI Organization

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
        And selects RI from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed




    
    
    Scenario: Add Dealer ALLY US SC Organization

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
        And selects SC from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed




    Scenario: Add Auction ALLY US SC Organization

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
        And selects SC from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed



Scenario: Add Dealer VCI US SC Organization

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
        And selects SC from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed




    Scenario: Add Auction VCI US SC Organization

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
        And selects SC from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed




    

Scenario: Add Dealer MANHEIM US SC Organization

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
        And selects SC from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed




    Scenario: Add Auction MANHEIM US SC Organization

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
        And selects SC from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed



    Scenario: Add Dealer HYUNDAI US SC Organization

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
        And selects SC from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed




    Scenario: Add Auction HYUNDAI US SC Organization

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
        And selects SC from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed




    Scenario: Add Dealer NISSAN US SC Organization

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
        And selects SC from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed




    Scenario: Add Auction NISSAN US SC Organization

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
        And selects SC from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed




    
    
    Scenario: Add Dealer ALLY US SD Organization

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
        And selects SD from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed




    Scenario: Add Auction ALLY US SD Organization

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
        And selects SD from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed



Scenario: Add Dealer VCI US SD Organization

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
        And selects SD from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed




    Scenario: Add Auction VCI US SD Organization

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
        And selects SD from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed




    

Scenario: Add Dealer MANHEIM US SD Organization

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
        And selects SD from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed




    Scenario: Add Auction MANHEIM US SD Organization

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
        And selects SD from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed



    Scenario: Add Dealer HYUNDAI US SD Organization

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
        And selects SD from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed




    Scenario: Add Auction HYUNDAI US SD Organization

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
        And selects SD from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed




    Scenario: Add Dealer NISSAN US SD Organization

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
        And selects SD from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed




    Scenario: Add Auction NISSAN US SD Organization

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
        And selects SD from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed




    
    
    Scenario: Add Dealer ALLY US TN Organization

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
        And selects TN from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed




    Scenario: Add Auction ALLY US TN Organization

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
        And selects TN from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed



Scenario: Add Dealer VCI US TN Organization

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
        And selects TN from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed




    Scenario: Add Auction VCI US TN Organization

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
        And selects TN from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed




    

Scenario: Add Dealer MANHEIM US TN Organization

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
        And selects TN from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed




    Scenario: Add Auction MANHEIM US TN Organization

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
        And selects TN from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed



    Scenario: Add Dealer HYUNDAI US TN Organization

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
        And selects TN from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed




    Scenario: Add Auction HYUNDAI US TN Organization

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
        And selects TN from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed




    Scenario: Add Dealer NISSAN US TN Organization

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
        And selects TN from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed




    Scenario: Add Auction NISSAN US TN Organization

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
        And selects TN from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed




    
    
    Scenario: Add Dealer ALLY US TX Organization

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
        And selects TX from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed




    Scenario: Add Auction ALLY US TX Organization

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
        And selects TX from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed



Scenario: Add Dealer VCI US TX Organization

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
        And selects TX from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed




    Scenario: Add Auction VCI US TX Organization

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
        And selects TX from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed




    

Scenario: Add Dealer MANHEIM US TX Organization

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
        And selects TX from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed




    Scenario: Add Auction MANHEIM US TX Organization

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
        And selects TX from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed



    Scenario: Add Dealer HYUNDAI US TX Organization

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
        And selects TX from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed




    Scenario: Add Auction HYUNDAI US TX Organization

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
        And selects TX from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed




    Scenario: Add Dealer NISSAN US TX Organization

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
        And selects TX from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed




    Scenario: Add Auction NISSAN US TX Organization

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
        And selects TX from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed




    
    
    Scenario: Add Dealer ALLY US UT Organization

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
        And selects UT from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed




    Scenario: Add Auction ALLY US UT Organization

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
        And selects UT from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed



Scenario: Add Dealer VCI US UT Organization

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
        And selects UT from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed




    Scenario: Add Auction VCI US UT Organization

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
        And selects UT from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed




    

Scenario: Add Dealer MANHEIM US UT Organization

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
        And selects UT from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed




    Scenario: Add Auction MANHEIM US UT Organization

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
        And selects UT from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed



    Scenario: Add Dealer HYUNDAI US UT Organization

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
        And selects UT from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed




    Scenario: Add Auction HYUNDAI US UT Organization

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
        And selects UT from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed




    Scenario: Add Dealer NISSAN US UT Organization

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
        And selects UT from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed




    Scenario: Add Auction NISSAN US UT Organization

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
        And selects UT from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed




    
    
    Scenario: Add Dealer ALLY US VT Organization

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
        And selects VT from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed




    Scenario: Add Auction ALLY US VT Organization

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
        And selects VT from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed



Scenario: Add Dealer VCI US VT Organization

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
        And selects VT from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed




    Scenario: Add Auction VCI US VT Organization

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
        And selects VT from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed




    

Scenario: Add Dealer MANHEIM US VT Organization

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
        And selects VT from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed




    Scenario: Add Auction MANHEIM US VT Organization

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
        And selects VT from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed



    Scenario: Add Dealer HYUNDAI US VT Organization

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
        And selects VT from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed




    Scenario: Add Auction HYUNDAI US VT Organization

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
        And selects VT from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed




    Scenario: Add Dealer NISSAN US VT Organization

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
        And selects VT from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed




    Scenario: Add Auction NISSAN US VT Organization

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
        And selects VT from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed




    
    
    Scenario: Add Dealer ALLY US VI Organization

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
        And selects VI from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed




    Scenario: Add Auction ALLY US VI Organization

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
        And selects VI from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed



Scenario: Add Dealer VCI US VI Organization

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
        And selects VI from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed




    Scenario: Add Auction VCI US VI Organization

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
        And selects VI from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed




    

Scenario: Add Dealer MANHEIM US VI Organization

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
        And selects VI from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed




    Scenario: Add Auction MANHEIM US VI Organization

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
        And selects VI from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed



    Scenario: Add Dealer HYUNDAI US VI Organization

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
        And selects VI from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed




    Scenario: Add Auction HYUNDAI US VI Organization

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
        And selects VI from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed




    Scenario: Add Dealer NISSAN US VI Organization

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
        And selects VI from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed




    Scenario: Add Auction NISSAN US VI Organization

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
        And selects VI from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed




    
    
    Scenario: Add Dealer ALLY US WA Organization

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
        And selects WA from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed




    Scenario: Add Auction ALLY US WA Organization

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
        And selects WA from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed



Scenario: Add Dealer VCI US WA Organization

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
        And selects WA from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed




    Scenario: Add Auction VCI US WA Organization

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
        And selects WA from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed




    

Scenario: Add Dealer MANHEIM US WA Organization

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
        And selects WA from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed




    Scenario: Add Auction MANHEIM US WA Organization

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
        And selects WA from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed



    Scenario: Add Dealer HYUNDAI US WA Organization

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
        And selects WA from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed




    Scenario: Add Auction HYUNDAI US WA Organization

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
        And selects WA from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed




    Scenario: Add Dealer NISSAN US WA Organization

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
        And selects WA from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed




    Scenario: Add Auction NISSAN US WA Organization

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
        And selects WA from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed




    
    
    Scenario: Add Dealer ALLY US WV Organization

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
        And selects WV from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed




    Scenario: Add Auction ALLY US WV Organization

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
        And selects WV from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed



Scenario: Add Dealer VCI US WV Organization

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
        And selects WV from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed




    Scenario: Add Auction VCI US WV Organization

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
        And selects WV from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed




    

Scenario: Add Dealer MANHEIM US WV Organization

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
        And selects WV from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed




    Scenario: Add Auction MANHEIM US WV Organization

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
        And selects WV from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed



    Scenario: Add Dealer HYUNDAI US WV Organization

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
        And selects WV from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed




    Scenario: Add Auction HYUNDAI US WV Organization

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
        And selects WV from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed




    Scenario: Add Dealer NISSAN US WV Organization

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
        And selects WV from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed




    Scenario: Add Auction NISSAN US WV Organization

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
        And selects WV from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed




    
    
    Scenario: Add Dealer ALLY US WI Organization

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
        And selects WI from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed




    Scenario: Add Auction ALLY US WI Organization

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
        And selects WI from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed



Scenario: Add Dealer VCI US WI Organization

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
        And selects WI from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed




    Scenario: Add Auction VCI US WI Organization

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
        And selects WI from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed




    

Scenario: Add Dealer MANHEIM US WI Organization

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
        And selects WI from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed




    Scenario: Add Auction MANHEIM US WI Organization

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
        And selects WI from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed



    Scenario: Add Dealer HYUNDAI US WI Organization

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
        And selects WI from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed




    Scenario: Add Auction HYUNDAI US WI Organization

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
        And selects WI from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed




    Scenario: Add Dealer NISSAN US WI Organization

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
        And selects WI from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed




    Scenario: Add Auction NISSAN US WI Organization

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
        And selects WI from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed




    
    
    Scenario: Add Dealer ALLY US WY Organization

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
        And selects WY from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed




    Scenario: Add Auction ALLY US WY Organization

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
        And selects WY from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed



Scenario: Add Dealer VCI US WY Organization

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
        And selects WY from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed




    Scenario: Add Auction VCI US WY Organization

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
        And selects WY from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed




    

Scenario: Add Dealer MANHEIM US WY Organization

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
        And selects WY from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed




    Scenario: Add Auction MANHEIM US WY Organization

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
        And selects WY from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed



    Scenario: Add Dealer HYUNDAI US WY Organization

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
        And selects WY from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed




    Scenario: Add Auction HYUNDAI US WY Organization

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
        And selects WY from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed




    Scenario: Add Dealer NISSAN US WY Organization

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
        And selects WY from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed




    Scenario: Add Auction NISSAN US WY Organization

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
        And selects WY from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed



    
    
    Scenario: Add Dealer ALLY MX BCS Organization

        Given current page is New Organization page 
        When User click Customer Dropdown menu
        And select Chase
        And click Organization Type Dropdown menu 
        And selects Dealer 
        And clicks Organization name field
        And enters Organization name
        And selects MX from Billing Address dropdown menu 
        And clicks Street 1 field
        And enters a valid Street
        And clicks City field
        And enters a valid City
        And clicks State dropdown menu 
        And selects BCS from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed




    Scenario: Add Auction ALLY MX BCS Organization

        Given current page is New Organization page 
        When User click Customer Dropdown menu
        And select Chase
        And click Organization Type Dropdown menu 
        And selects Auction 
        And clicks Organization name field
        And enters Organization name
        And selects MX from Billing Address dropdown menu 
        And clicks Street 1 field
        And enters a valid Street
        And clicks City field
        And enters a valid City
        And clicks State dropdown menu 
        And selects BCS from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed



Scenario: Add Dealer VCI MX BCS Organization

        Given current page is New Organization page 
        When User click Customer Dropdown menu
        And select VCI
        And click Organization Type Dropdown menu 
        And selects Dealer 
        And clicks Organization name field
        And enters Organization name
        And selects MX from Billing Address dropdown menu 
        And clicks Street 1 field
        And enters a valid Street
        And clicks City field
        And enters a valid City
        And clicks State dropdown menu 
        And selects BCS from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed




    Scenario: Add Auction VCI MX BCS Organization

        Given current page is New Organization page 
        When User click Customer Dropdown menu
        And select VCI
        And click Organization Type Dropdown menu 
        And selects Auction 
        And clicks Organization name field
        And enters Organization name
        And selects MX from Billing Address dropdown menu 
        And clicks Street 1 field
        And enters a valid Street
        And clicks City field
        And enters a valid City
        And clicks State dropdown menu 
        And selects BCS from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed




    

Scenario: Add Dealer MANHEIM MX BCS Organization

        Given current page is New Organization page 
        When User click Customer Dropdown menu
        And select MANHEIM
        And click Organization Type Dropdown menu 
        And selects Dealer 
        And clicks Organization name field
        And enters Organization name
        And selects MX from Billing Address dropdown menu 
        And clicks Street 1 field
        And enters a valid Street
        And clicks City field
        And enters a valid City
        And clicks State dropdown menu 
        And selects BCS from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed




    Scenario: Add Auction MANHEIM MX BCS Organization

        Given current page is New Organization page 
        When User click Customer Dropdown menu
        And select MANHEIM
        And click Organization Type Dropdown menu 
        And selects Auction 
        And clicks Organization name field
        And enters Organization name
        And selects MX from Billing Address dropdown menu 
        And clicks Street 1 field
        And enters a valid Street
        And clicks City field
        And enters a valid City
        And clicks State dropdown menu 
        And selects BCS from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed



    Scenario: Add Dealer HYUNDAI MX BCS Organization

        Given current page is New Organization page 
        When User click Customer Dropdown menu
        And select HYUNDAI
        And click Organization Type Dropdown menu 
        And selects Dealer 
        And clicks Organization name field
        And enters Organization name
        And selects MX from Billing Address dropdown menu 
        And clicks Street 1 field
        And enters a valid Street
        And clicks City field
        And enters a valid City
        And clicks State dropdown menu 
        And selects BCS from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed




    Scenario: Add Auction HYUNDAI MX BCS Organization

        Given current page is New Organization page 
        When User click Customer Dropdown menu
        And select HYUNDAI
        And click Organization Type Dropdown menu 
        And selects Auction 
        And clicks Organization name field
        And enters Organization name
        And selects MX from Billing Address dropdown menu 
        And clicks Street 1 field
        And enters a valid Street
        And clicks City field
        And enters a valid City
        And clicks State dropdown menu 
        And selects BCS from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed




    Scenario: Add Dealer NISSAN MX BCS Organization

        Given current page is New Organization page 
        When User click Customer Dropdown menu
        And select NISSAN
        And click Organization Type Dropdown menu 
        And selects Dealer 
        And clicks Organization name field
        And enters Organization name
        And selects MX from Billing Address dropdown menu 
        And clicks Street 1 field
        And enters a valid Street
        And clicks City field
        And enters a valid City
        And clicks State dropdown menu 
        And selects BCS from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed




    Scenario: Add Auction NISSAN MX BCS Organization

        Given current page is New Organization page 
        When User click Customer Dropdown menu
        And select NISSAN
        And click Organization Type Dropdown menu 
        And selects Auction 
        And clicks Organization name field
        And enters Organization name
        And selects MX from Billing Address dropdown menu 
        And clicks Street 1 field
        And enters a valid Street
        And clicks City field
        And enters a valid City
        And clicks State dropdown menu 
        And selects BCS from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed




    
    
    Scenario: Add Dealer ALLY MX CAM Organization

        Given current page is New Organization page 
        When User click Customer Dropdown menu
        And select Chase
        And click Organization Type Dropdown menu 
        And selects Dealer 
        And clicks Organization name field
        And enters Organization name
        And selects MX from Billing Address dropdown menu 
        And clicks Street 1 field
        And enters a valid Street
        And clicks City field
        And enters a valid City
        And clicks State dropdown menu 
        And selects CAM from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed




    Scenario: Add Auction ALLY MX CAM Organization

        Given current page is New Organization page 
        When User click Customer Dropdown menu
        And select Chase
        And click Organization Type Dropdown menu 
        And selects Auction 
        And clicks Organization name field
        And enters Organization name
        And selects MX from Billing Address dropdown menu 
        And clicks Street 1 field
        And enters a valid Street
        And clicks City field
        And enters a valid City
        And clicks State dropdown menu 
        And selects CAM from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed



Scenario: Add Dealer VCI MX CAM Organization

        Given current page is New Organization page 
        When User click Customer Dropdown menu
        And select VCI
        And click Organization Type Dropdown menu 
        And selects Dealer 
        And clicks Organization name field
        And enters Organization name
        And selects MX from Billing Address dropdown menu 
        And clicks Street 1 field
        And enters a valid Street
        And clicks City field
        And enters a valid City
        And clicks State dropdown menu 
        And selects CAM from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed




    Scenario: Add Auction VCI MX CAM Organization

        Given current page is New Organization page 
        When User click Customer Dropdown menu
        And select VCI
        And click Organization Type Dropdown menu 
        And selects Auction 
        And clicks Organization name field
        And enters Organization name
        And selects MX from Billing Address dropdown menu 
        And clicks Street 1 field
        And enters a valid Street
        And clicks City field
        And enters a valid City
        And clicks State dropdown menu 
        And selects CAM from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed




    

Scenario: Add Dealer MANHEIM MX CAM Organization

        Given current page is New Organization page 
        When User click Customer Dropdown menu
        And select MANHEIM
        And click Organization Type Dropdown menu 
        And selects Dealer 
        And clicks Organization name field
        And enters Organization name
        And selects MX from Billing Address dropdown menu 
        And clicks Street 1 field
        And enters a valid Street
        And clicks City field
        And enters a valid City
        And clicks State dropdown menu 
        And selects CAM from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed




    Scenario: Add Auction MANHEIM MX CAM Organization

        Given current page is New Organization page 
        When User click Customer Dropdown menu
        And select MANHEIM
        And click Organization Type Dropdown menu 
        And selects Auction 
        And clicks Organization name field
        And enters Organization name
        And selects MX from Billing Address dropdown menu 
        And clicks Street 1 field
        And enters a valid Street
        And clicks City field
        And enters a valid City
        And clicks State dropdown menu 
        And selects CAM from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed



    Scenario: Add Dealer HYUNDAI MX CAM Organization

        Given current page is New Organization page 
        When User click Customer Dropdown menu
        And select HYUNDAI
        And click Organization Type Dropdown menu 
        And selects Dealer 
        And clicks Organization name field
        And enters Organization name
        And selects MX from Billing Address dropdown menu 
        And clicks Street 1 field
        And enters a valid Street
        And clicks City field
        And enters a valid City
        And clicks State dropdown menu 
        And selects CAM from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed




    Scenario: Add Auction HYUNDAI MX CAM Organization

        Given current page is New Organization page 
        When User click Customer Dropdown menu
        And select HYUNDAI
        And click Organization Type Dropdown menu 
        And selects Auction 
        And clicks Organization name field
        And enters Organization name
        And selects MX from Billing Address dropdown menu 
        And clicks Street 1 field
        And enters a valid Street
        And clicks City field
        And enters a valid City
        And clicks State dropdown menu 
        And selects CAM from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed




    Scenario: Add Dealer NISSAN MX CAM Organization

        Given current page is New Organization page 
        When User click Customer Dropdown menu
        And select NISSAN
        And click Organization Type Dropdown menu 
        And selects Dealer 
        And clicks Organization name field
        And enters Organization name
        And selects MX from Billing Address dropdown menu 
        And clicks Street 1 field
        And enters a valid Street
        And clicks City field
        And enters a valid City
        And clicks State dropdown menu 
        And selects CAM from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed




    Scenario: Add Auction NISSAN MX CAM Organization

        Given current page is New Organization page 
        When User click Customer Dropdown menu
        And select NISSAN
        And click Organization Type Dropdown menu 
        And selects Auction 
        And clicks Organization name field
        And enters Organization name
        And selects MX from Billing Address dropdown menu 
        And clicks Street 1 field
        And enters a valid Street
        And clicks City field
        And enters a valid City
        And clicks State dropdown menu 
        And selects CAM from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed




    
    
    Scenario: Add Dealer ALLY MX COA Organization

        Given current page is New Organization page 
        When User click Customer Dropdown menu
        And select Chase
        And click Organization Type Dropdown menu 
        And selects Dealer 
        And clicks Organization name field
        And enters Organization name
        And selects MX from Billing Address dropdown menu 
        And clicks Street 1 field
        And enters a valid Street
        And clicks City field
        And enters a valid City
        And clicks State dropdown menu 
        And selects COA from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed




    Scenario: Add Auction ALLY MX COA Organization

        Given current page is New Organization page 
        When User click Customer Dropdown menu
        And select Chase
        And click Organization Type Dropdown menu 
        And selects Auction 
        And clicks Organization name field
        And enters Organization name
        And selects MX from Billing Address dropdown menu 
        And clicks Street 1 field
        And enters a valid Street
        And clicks City field
        And enters a valid City
        And clicks State dropdown menu 
        And selects COA from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed



Scenario: Add Dealer VCI MX COA Organization

        Given current page is New Organization page 
        When User click Customer Dropdown menu
        And select VCI
        And click Organization Type Dropdown menu 
        And selects Dealer 
        And clicks Organization name field
        And enters Organization name
        And selects MX from Billing Address dropdown menu 
        And clicks Street 1 field
        And enters a valid Street
        And clicks City field
        And enters a valid City
        And clicks State dropdown menu 
        And selects COA from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed




    Scenario: Add Auction VCI MX COA Organization

        Given current page is New Organization page 
        When User click Customer Dropdown menu
        And select VCI
        And click Organization Type Dropdown menu 
        And selects Auction 
        And clicks Organization name field
        And enters Organization name
        And selects MX from Billing Address dropdown menu 
        And clicks Street 1 field
        And enters a valid Street
        And clicks City field
        And enters a valid City
        And clicks State dropdown menu 
        And selects COA from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed




    

Scenario: Add Dealer MANHEIM MX COA Organization

        Given current page is New Organization page 
        When User click Customer Dropdown menu
        And select MANHEIM
        And click Organization Type Dropdown menu 
        And selects Dealer 
        And clicks Organization name field
        And enters Organization name
        And selects MX from Billing Address dropdown menu 
        And clicks Street 1 field
        And enters a valid Street
        And clicks City field
        And enters a valid City
        And clicks State dropdown menu 
        And selects COA from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed




    Scenario: Add Auction MANHEIM MX COA Organization

        Given current page is New Organization page 
        When User click Customer Dropdown menu
        And select MANHEIM
        And click Organization Type Dropdown menu 
        And selects Auction 
        And clicks Organization name field
        And enters Organization name
        And selects MX from Billing Address dropdown menu 
        And clicks Street 1 field
        And enters a valid Street
        And clicks City field
        And enters a valid City
        And clicks State dropdown menu 
        And selects COA from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed



    Scenario: Add Dealer HYUNDAI MX COA Organization

        Given current page is New Organization page 
        When User click Customer Dropdown menu
        And select HYUNDAI
        And click Organization Type Dropdown menu 
        And selects Dealer 
        And clicks Organization name field
        And enters Organization name
        And selects MX from Billing Address dropdown menu 
        And clicks Street 1 field
        And enters a valid Street
        And clicks City field
        And enters a valid City
        And clicks State dropdown menu 
        And selects COA from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed




    Scenario: Add Auction HYUNDAI MX COA Organization

        Given current page is New Organization page 
        When User click Customer Dropdown menu
        And select HYUNDAI
        And click Organization Type Dropdown menu 
        And selects Auction 
        And clicks Organization name field
        And enters Organization name
        And selects MX from Billing Address dropdown menu 
        And clicks Street 1 field
        And enters a valid Street
        And clicks City field
        And enters a valid City
        And clicks State dropdown menu 
        And selects COA from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed




    Scenario: Add Dealer NISSAN MX COA Organization

        Given current page is New Organization page 
        When User click Customer Dropdown menu
        And select NISSAN
        And click Organization Type Dropdown menu 
        And selects Dealer 
        And clicks Organization name field
        And enters Organization name
        And selects MX from Billing Address dropdown menu 
        And clicks Street 1 field
        And enters a valid Street
        And clicks City field
        And enters a valid City
        And clicks State dropdown menu 
        And selects COA from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed




    Scenario: Add Auction NISSAN MX COA Organization

        Given current page is New Organization page 
        When User click Customer Dropdown menu
        And select NISSAN
        And click Organization Type Dropdown menu 
        And selects Auction 
        And clicks Organization name field
        And enters Organization name
        And selects MX from Billing Address dropdown menu 
        And clicks Street 1 field
        And enters a valid Street
        And clicks City field
        And enters a valid City
        And clicks State dropdown menu 
        And selects COA from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed




    
    
    Scenario: Add Dealer ALLY MX COL Organization

        Given current page is New Organization page 
        When User click Customer Dropdown menu
        And select Chase
        And click Organization Type Dropdown menu 
        And selects Dealer 
        And clicks Organization name field
        And enters Organization name
        And selects MX from Billing Address dropdown menu 
        And clicks Street 1 field
        And enters a valid Street
        And clicks City field
        And enters a valid City
        And clicks State dropdown menu 
        And selects COL from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed




    Scenario: Add Auction ALLY MX COL Organization

        Given current page is New Organization page 
        When User click Customer Dropdown menu
        And select Chase
        And click Organization Type Dropdown menu 
        And selects Auction 
        And clicks Organization name field
        And enters Organization name
        And selects MX from Billing Address dropdown menu 
        And clicks Street 1 field
        And enters a valid Street
        And clicks City field
        And enters a valid City
        And clicks State dropdown menu 
        And selects COL from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed



Scenario: Add Dealer VCI MX COL Organization

        Given current page is New Organization page 
        When User click Customer Dropdown menu
        And select VCI
        And click Organization Type Dropdown menu 
        And selects Dealer 
        And clicks Organization name field
        And enters Organization name
        And selects MX from Billing Address dropdown menu 
        And clicks Street 1 field
        And enters a valid Street
        And clicks City field
        And enters a valid City
        And clicks State dropdown menu 
        And selects COL from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed




    Scenario: Add Auction VCI MX COL Organization

        Given current page is New Organization page 
        When User click Customer Dropdown menu
        And select VCI
        And click Organization Type Dropdown menu 
        And selects Auction 
        And clicks Organization name field
        And enters Organization name
        And selects MX from Billing Address dropdown menu 
        And clicks Street 1 field
        And enters a valid Street
        And clicks City field
        And enters a valid City
        And clicks State dropdown menu 
        And selects COL from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed




    

Scenario: Add Dealer MANHEIM MX COL Organization

        Given current page is New Organization page 
        When User click Customer Dropdown menu
        And select MANHEIM
        And click Organization Type Dropdown menu 
        And selects Dealer 
        And clicks Organization name field
        And enters Organization name
        And selects MX from Billing Address dropdown menu 
        And clicks Street 1 field
        And enters a valid Street
        And clicks City field
        And enters a valid City
        And clicks State dropdown menu 
        And selects COL from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed




    Scenario: Add Auction MANHEIM MX COL Organization

        Given current page is New Organization page 
        When User click Customer Dropdown menu
        And select MANHEIM
        And click Organization Type Dropdown menu 
        And selects Auction 
        And clicks Organization name field
        And enters Organization name
        And selects MX from Billing Address dropdown menu 
        And clicks Street 1 field
        And enters a valid Street
        And clicks City field
        And enters a valid City
        And clicks State dropdown menu 
        And selects COL from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed



    Scenario: Add Dealer HYUNDAI MX COL Organization

        Given current page is New Organization page 
        When User click Customer Dropdown menu
        And select HYUNDAI
        And click Organization Type Dropdown menu 
        And selects Dealer 
        And clicks Organization name field
        And enters Organization name
        And selects MX from Billing Address dropdown menu 
        And clicks Street 1 field
        And enters a valid Street
        And clicks City field
        And enters a valid City
        And clicks State dropdown menu 
        And selects COL from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed




    Scenario: Add Auction HYUNDAI MX COL Organization

        Given current page is New Organization page 
        When User click Customer Dropdown menu
        And select HYUNDAI
        And click Organization Type Dropdown menu 
        And selects Auction 
        And clicks Organization name field
        And enters Organization name
        And selects MX from Billing Address dropdown menu 
        And clicks Street 1 field
        And enters a valid Street
        And clicks City field
        And enters a valid City
        And clicks State dropdown menu 
        And selects COL from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed




    Scenario: Add Dealer NISSAN MX COL Organization

        Given current page is New Organization page 
        When User click Customer Dropdown menu
        And select NISSAN
        And click Organization Type Dropdown menu 
        And selects Dealer 
        And clicks Organization name field
        And enters Organization name
        And selects MX from Billing Address dropdown menu 
        And clicks Street 1 field
        And enters a valid Street
        And clicks City field
        And enters a valid City
        And clicks State dropdown menu 
        And selects COL from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed




    Scenario: Add Auction NISSAN MX COL Organization

        Given current page is New Organization page 
        When User click Customer Dropdown menu
        And select NISSAN
        And click Organization Type Dropdown menu 
        And selects Auction 
        And clicks Organization name field
        And enters Organization name
        And selects MX from Billing Address dropdown menu 
        And clicks Street 1 field
        And enters a valid Street
        And clicks City field
        And enters a valid City
        And clicks State dropdown menu 
        And selects COL from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed




    
    
    Scenario: Add Dealer ALLY MX CHP Organization

        Given current page is New Organization page 
        When User click Customer Dropdown menu
        And select Chase
        And click Organization Type Dropdown menu 
        And selects Dealer 
        And clicks Organization name field
        And enters Organization name
        And selects MX from Billing Address dropdown menu 
        And clicks Street 1 field
        And enters a valid Street
        And clicks City field
        And enters a valid City
        And clicks State dropdown menu 
        And selects CHP from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed




    Scenario: Add Auction ALLY MX CHP Organization

        Given current page is New Organization page 
        When User click Customer Dropdown menu
        And select Chase
        And click Organization Type Dropdown menu 
        And selects Auction 
        And clicks Organization name field
        And enters Organization name
        And selects MX from Billing Address dropdown menu 
        And clicks Street 1 field
        And enters a valid Street
        And clicks City field
        And enters a valid City
        And clicks State dropdown menu 
        And selects CHP from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed



Scenario: Add Dealer VCI MX CHP Organization

        Given current page is New Organization page 
        When User click Customer Dropdown menu
        And select VCI
        And click Organization Type Dropdown menu 
        And selects Dealer 
        And clicks Organization name field
        And enters Organization name
        And selects MX from Billing Address dropdown menu 
        And clicks Street 1 field
        And enters a valid Street
        And clicks City field
        And enters a valid City
        And clicks State dropdown menu 
        And selects CHP from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed




    Scenario: Add Auction VCI MX CHP Organization

        Given current page is New Organization page 
        When User click Customer Dropdown menu
        And select VCI
        And click Organization Type Dropdown menu 
        And selects Auction 
        And clicks Organization name field
        And enters Organization name
        And selects MX from Billing Address dropdown menu 
        And clicks Street 1 field
        And enters a valid Street
        And clicks City field
        And enters a valid City
        And clicks State dropdown menu 
        And selects CHP from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed




    

Scenario: Add Dealer MANHEIM MX CHP Organization

        Given current page is New Organization page 
        When User click Customer Dropdown menu
        And select MANHEIM
        And click Organization Type Dropdown menu 
        And selects Dealer 
        And clicks Organization name field
        And enters Organization name
        And selects MX from Billing Address dropdown menu 
        And clicks Street 1 field
        And enters a valid Street
        And clicks City field
        And enters a valid City
        And clicks State dropdown menu 
        And selects CHP from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed




    Scenario: Add Auction MANHEIM MX CHP Organization

        Given current page is New Organization page 
        When User click Customer Dropdown menu
        And select MANHEIM
        And click Organization Type Dropdown menu 
        And selects Auction 
        And clicks Organization name field
        And enters Organization name
        And selects MX from Billing Address dropdown menu 
        And clicks Street 1 field
        And enters a valid Street
        And clicks City field
        And enters a valid City
        And clicks State dropdown menu 
        And selects CHP from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed



    Scenario: Add Dealer HYUNDAI MX CHP Organization

        Given current page is New Organization page 
        When User click Customer Dropdown menu
        And select HYUNDAI
        And click Organization Type Dropdown menu 
        And selects Dealer 
        And clicks Organization name field
        And enters Organization name
        And selects MX from Billing Address dropdown menu 
        And clicks Street 1 field
        And enters a valid Street
        And clicks City field
        And enters a valid City
        And clicks State dropdown menu 
        And selects CHP from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed




    Scenario: Add Auction HYUNDAI MX CHP Organization

        Given current page is New Organization page 
        When User click Customer Dropdown menu
        And select HYUNDAI
        And click Organization Type Dropdown menu 
        And selects Auction 
        And clicks Organization name field
        And enters Organization name
        And selects MX from Billing Address dropdown menu 
        And clicks Street 1 field
        And enters a valid Street
        And clicks City field
        And enters a valid City
        And clicks State dropdown menu 
        And selects CHP from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed




    Scenario: Add Dealer NISSAN MX CHP Organization

        Given current page is New Organization page 
        When User click Customer Dropdown menu
        And select NISSAN
        And click Organization Type Dropdown menu 
        And selects Dealer 
        And clicks Organization name field
        And enters Organization name
        And selects MX from Billing Address dropdown menu 
        And clicks Street 1 field
        And enters a valid Street
        And clicks City field
        And enters a valid City
        And clicks State dropdown menu 
        And selects CHP from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed




    Scenario: Add Auction NISSAN MX CHP Organization

        Given current page is New Organization page 
        When User click Customer Dropdown menu
        And select NISSAN
        And click Organization Type Dropdown menu 
        And selects Auction 
        And clicks Organization name field
        And enters Organization name
        And selects MX from Billing Address dropdown menu 
        And clicks Street 1 field
        And enters a valid Street
        And clicks City field
        And enters a valid City
        And clicks State dropdown menu 
        And selects CHP from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed




    
    
    Scenario: Add Dealer ALLY MX CHH Organization

        Given current page is New Organization page 
        When User click Customer Dropdown menu
        And select Chase
        And click Organization Type Dropdown menu 
        And selects Dealer 
        And clicks Organization name field
        And enters Organization name
        And selects MX from Billing Address dropdown menu 
        And clicks Street 1 field
        And enters a valid Street
        And clicks City field
        And enters a valid City
        And clicks State dropdown menu 
        And selects CHH from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed




    Scenario: Add Auction ALLY MX CHH Organization

        Given current page is New Organization page 
        When User click Customer Dropdown menu
        And select Chase
        And click Organization Type Dropdown menu 
        And selects Auction 
        And clicks Organization name field
        And enters Organization name
        And selects MX from Billing Address dropdown menu 
        And clicks Street 1 field
        And enters a valid Street
        And clicks City field
        And enters a valid City
        And clicks State dropdown menu 
        And selects CHH from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed



Scenario: Add Dealer VCI MX CHH Organization

        Given current page is New Organization page 
        When User click Customer Dropdown menu
        And select VCI
        And click Organization Type Dropdown menu 
        And selects Dealer 
        And clicks Organization name field
        And enters Organization name
        And selects MX from Billing Address dropdown menu 
        And clicks Street 1 field
        And enters a valid Street
        And clicks City field
        And enters a valid City
        And clicks State dropdown menu 
        And selects CHH from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed




    Scenario: Add Auction VCI MX CHH Organization

        Given current page is New Organization page 
        When User click Customer Dropdown menu
        And select VCI
        And click Organization Type Dropdown menu 
        And selects Auction 
        And clicks Organization name field
        And enters Organization name
        And selects MX from Billing Address dropdown menu 
        And clicks Street 1 field
        And enters a valid Street
        And clicks City field
        And enters a valid City
        And clicks State dropdown menu 
        And selects CHH from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed




    

Scenario: Add Dealer MANHEIM MX CHH Organization

        Given current page is New Organization page 
        When User click Customer Dropdown menu
        And select MANHEIM
        And click Organization Type Dropdown menu 
        And selects Dealer 
        And clicks Organization name field
        And enters Organization name
        And selects MX from Billing Address dropdown menu 
        And clicks Street 1 field
        And enters a valid Street
        And clicks City field
        And enters a valid City
        And clicks State dropdown menu 
        And selects CHH from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed




    Scenario: Add Auction MANHEIM MX CHH Organization

        Given current page is New Organization page 
        When User click Customer Dropdown menu
        And select MANHEIM
        And click Organization Type Dropdown menu 
        And selects Auction 
        And clicks Organization name field
        And enters Organization name
        And selects MX from Billing Address dropdown menu 
        And clicks Street 1 field
        And enters a valid Street
        And clicks City field
        And enters a valid City
        And clicks State dropdown menu 
        And selects CHH from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed



    Scenario: Add Dealer HYUNDAI MX CHH Organization

        Given current page is New Organization page 
        When User click Customer Dropdown menu
        And select HYUNDAI
        And click Organization Type Dropdown menu 
        And selects Dealer 
        And clicks Organization name field
        And enters Organization name
        And selects MX from Billing Address dropdown menu 
        And clicks Street 1 field
        And enters a valid Street
        And clicks City field
        And enters a valid City
        And clicks State dropdown menu 
        And selects CHH from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed




    Scenario: Add Auction HYUNDAI MX CHH Organization

        Given current page is New Organization page 
        When User click Customer Dropdown menu
        And select HYUNDAI
        And click Organization Type Dropdown menu 
        And selects Auction 
        And clicks Organization name field
        And enters Organization name
        And selects MX from Billing Address dropdown menu 
        And clicks Street 1 field
        And enters a valid Street
        And clicks City field
        And enters a valid City
        And clicks State dropdown menu 
        And selects CHH from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed




    Scenario: Add Dealer NISSAN MX CHH Organization

        Given current page is New Organization page 
        When User click Customer Dropdown menu
        And select NISSAN
        And click Organization Type Dropdown menu 
        And selects Dealer 
        And clicks Organization name field
        And enters Organization name
        And selects MX from Billing Address dropdown menu 
        And clicks Street 1 field
        And enters a valid Street
        And clicks City field
        And enters a valid City
        And clicks State dropdown menu 
        And selects CHH from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed




    Scenario: Add Auction NISSAN MX CHH Organization

        Given current page is New Organization page 
        When User click Customer Dropdown menu
        And select NISSAN
        And click Organization Type Dropdown menu 
        And selects Auction 
        And clicks Organization name field
        And enters Organization name
        And selects MX from Billing Address dropdown menu 
        And clicks Street 1 field
        And enters a valid Street
        And clicks City field
        And enters a valid City
        And clicks State dropdown menu 
        And selects CHH from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed




    
    
    Scenario: Add Dealer ALLY MX DIF Organization

        Given current page is New Organization page 
        When User click Customer Dropdown menu
        And select Chase
        And click Organization Type Dropdown menu 
        And selects Dealer 
        And clicks Organization name field
        And enters Organization name
        And selects MX from Billing Address dropdown menu 
        And clicks Street 1 field
        And enters a valid Street
        And clicks City field
        And enters a valid City
        And clicks State dropdown menu 
        And selects DIF from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed




    Scenario: Add Auction ALLY MX DIF Organization

        Given current page is New Organization page 
        When User click Customer Dropdown menu
        And select Chase
        And click Organization Type Dropdown menu 
        And selects Auction 
        And clicks Organization name field
        And enters Organization name
        And selects MX from Billing Address dropdown menu 
        And clicks Street 1 field
        And enters a valid Street
        And clicks City field
        And enters a valid City
        And clicks State dropdown menu 
        And selects DIF from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed



Scenario: Add Dealer VCI MX DIF Organization

        Given current page is New Organization page 
        When User click Customer Dropdown menu
        And select VCI
        And click Organization Type Dropdown menu 
        And selects Dealer 
        And clicks Organization name field
        And enters Organization name
        And selects MX from Billing Address dropdown menu 
        And clicks Street 1 field
        And enters a valid Street
        And clicks City field
        And enters a valid City
        And clicks State dropdown menu 
        And selects DIF from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed




    Scenario: Add Auction VCI MX DIF Organization

        Given current page is New Organization page 
        When User click Customer Dropdown menu
        And select VCI
        And click Organization Type Dropdown menu 
        And selects Auction 
        And clicks Organization name field
        And enters Organization name
        And selects MX from Billing Address dropdown menu 
        And clicks Street 1 field
        And enters a valid Street
        And clicks City field
        And enters a valid City
        And clicks State dropdown menu 
        And selects DIF from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed




    

Scenario: Add Dealer MANHEIM MX DIF Organization

        Given current page is New Organization page 
        When User click Customer Dropdown menu
        And select MANHEIM
        And click Organization Type Dropdown menu 
        And selects Dealer 
        And clicks Organization name field
        And enters Organization name
        And selects MX from Billing Address dropdown menu 
        And clicks Street 1 field
        And enters a valid Street
        And clicks City field
        And enters a valid City
        And clicks State dropdown menu 
        And selects DIF from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed




    Scenario: Add Auction MANHEIM MX DIF Organization

        Given current page is New Organization page 
        When User click Customer Dropdown menu
        And select MANHEIM
        And click Organization Type Dropdown menu 
        And selects Auction 
        And clicks Organization name field
        And enters Organization name
        And selects MX from Billing Address dropdown menu 
        And clicks Street 1 field
        And enters a valid Street
        And clicks City field
        And enters a valid City
        And clicks State dropdown menu 
        And selects DIF from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed



    Scenario: Add Dealer HYUNDAI MX DIF Organization

        Given current page is New Organization page 
        When User click Customer Dropdown menu
        And select HYUNDAI
        And click Organization Type Dropdown menu 
        And selects Dealer 
        And clicks Organization name field
        And enters Organization name
        And selects MX from Billing Address dropdown menu 
        And clicks Street 1 field
        And enters a valid Street
        And clicks City field
        And enters a valid City
        And clicks State dropdown menu 
        And selects DIF from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed




    Scenario: Add Auction HYUNDAI MX DIF Organization

        Given current page is New Organization page 
        When User click Customer Dropdown menu
        And select HYUNDAI
        And click Organization Type Dropdown menu 
        And selects Auction 
        And clicks Organization name field
        And enters Organization name
        And selects MX from Billing Address dropdown menu 
        And clicks Street 1 field
        And enters a valid Street
        And clicks City field
        And enters a valid City
        And clicks State dropdown menu 
        And selects DIF from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed




    Scenario: Add Dealer NISSAN MX DIF Organization

        Given current page is New Organization page 
        When User click Customer Dropdown menu
        And select NISSAN
        And click Organization Type Dropdown menu 
        And selects Dealer 
        And clicks Organization name field
        And enters Organization name
        And selects MX from Billing Address dropdown menu 
        And clicks Street 1 field
        And enters a valid Street
        And clicks City field
        And enters a valid City
        And clicks State dropdown menu 
        And selects DIF from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed




    Scenario: Add Auction NISSAN MX DIF Organization

        Given current page is New Organization page 
        When User click Customer Dropdown menu
        And select NISSAN
        And click Organization Type Dropdown menu 
        And selects Auction 
        And clicks Organization name field
        And enters Organization name
        And selects MX from Billing Address dropdown menu 
        And clicks Street 1 field
        And enters a valid Street
        And clicks City field
        And enters a valid City
        And clicks State dropdown menu 
        And selects DIF from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed




    
    
    Scenario: Add Dealer ALLY MX DUR Organization

        Given current page is New Organization page 
        When User click Customer Dropdown menu
        And select Chase
        And click Organization Type Dropdown menu 
        And selects Dealer 
        And clicks Organization name field
        And enters Organization name
        And selects MX from Billing Address dropdown menu 
        And clicks Street 1 field
        And enters a valid Street
        And clicks City field
        And enters a valid City
        And clicks State dropdown menu 
        And selects DUR from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed




    Scenario: Add Auction ALLY MX DUR Organization

        Given current page is New Organization page 
        When User click Customer Dropdown menu
        And select Chase
        And click Organization Type Dropdown menu 
        And selects Auction 
        And clicks Organization name field
        And enters Organization name
        And selects MX from Billing Address dropdown menu 
        And clicks Street 1 field
        And enters a valid Street
        And clicks City field
        And enters a valid City
        And clicks State dropdown menu 
        And selects DUR from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed



Scenario: Add Dealer VCI MX DUR Organization

        Given current page is New Organization page 
        When User click Customer Dropdown menu
        And select VCI
        And click Organization Type Dropdown menu 
        And selects Dealer 
        And clicks Organization name field
        And enters Organization name
        And selects MX from Billing Address dropdown menu 
        And clicks Street 1 field
        And enters a valid Street
        And clicks City field
        And enters a valid City
        And clicks State dropdown menu 
        And selects DUR from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed




    Scenario: Add Auction VCI MX DUR Organization

        Given current page is New Organization page 
        When User click Customer Dropdown menu
        And select VCI
        And click Organization Type Dropdown menu 
        And selects Auction 
        And clicks Organization name field
        And enters Organization name
        And selects MX from Billing Address dropdown menu 
        And clicks Street 1 field
        And enters a valid Street
        And clicks City field
        And enters a valid City
        And clicks State dropdown menu 
        And selects DUR from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed




    

Scenario: Add Dealer MANHEIM MX DUR Organization

        Given current page is New Organization page 
        When User click Customer Dropdown menu
        And select MANHEIM
        And click Organization Type Dropdown menu 
        And selects Dealer 
        And clicks Organization name field
        And enters Organization name
        And selects MX from Billing Address dropdown menu 
        And clicks Street 1 field
        And enters a valid Street
        And clicks City field
        And enters a valid City
        And clicks State dropdown menu 
        And selects DUR from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed




    Scenario: Add Auction MANHEIM MX DUR Organization

        Given current page is New Organization page 
        When User click Customer Dropdown menu
        And select MANHEIM
        And click Organization Type Dropdown menu 
        And selects Auction 
        And clicks Organization name field
        And enters Organization name
        And selects MX from Billing Address dropdown menu 
        And clicks Street 1 field
        And enters a valid Street
        And clicks City field
        And enters a valid City
        And clicks State dropdown menu 
        And selects DUR from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed



    Scenario: Add Dealer HYUNDAI MX DUR Organization

        Given current page is New Organization page 
        When User click Customer Dropdown menu
        And select HYUNDAI
        And click Organization Type Dropdown menu 
        And selects Dealer 
        And clicks Organization name field
        And enters Organization name
        And selects MX from Billing Address dropdown menu 
        And clicks Street 1 field
        And enters a valid Street
        And clicks City field
        And enters a valid City
        And clicks State dropdown menu 
        And selects DUR from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed




    Scenario: Add Auction HYUNDAI MX DUR Organization

        Given current page is New Organization page 
        When User click Customer Dropdown menu
        And select HYUNDAI
        And click Organization Type Dropdown menu 
        And selects Auction 
        And clicks Organization name field
        And enters Organization name
        And selects MX from Billing Address dropdown menu 
        And clicks Street 1 field
        And enters a valid Street
        And clicks City field
        And enters a valid City
        And clicks State dropdown menu 
        And selects DUR from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed




    Scenario: Add Dealer NISSAN MX DUR Organization

        Given current page is New Organization page 
        When User click Customer Dropdown menu
        And select NISSAN
        And click Organization Type Dropdown menu 
        And selects Dealer 
        And clicks Organization name field
        And enters Organization name
        And selects MX from Billing Address dropdown menu 
        And clicks Street 1 field
        And enters a valid Street
        And clicks City field
        And enters a valid City
        And clicks State dropdown menu 
        And selects DUR from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed




    Scenario: Add Auction NISSAN MX DUR Organization

        Given current page is New Organization page 
        When User click Customer Dropdown menu
        And select NISSAN
        And click Organization Type Dropdown menu 
        And selects Auction 
        And clicks Organization name field
        And enters Organization name
        And selects MX from Billing Address dropdown menu 
        And clicks Street 1 field
        And enters a valid Street
        And clicks City field
        And enters a valid City
        And clicks State dropdown menu 
        And selects DUR from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed




    
    
    Scenario: Add Dealer ALLY MX  GUA  Organization

        Given current page is New Organization page 
        When User click Customer Dropdown menu
        And select Chase
        And click Organization Type Dropdown menu 
        And selects Dealer 
        And clicks Organization name field
        And enters Organization name
        And selects MX from Billing Address dropdown menu 
        And clicks Street 1 field
        And enters a valid Street
        And clicks City field
        And enters a valid City
        And clicks State dropdown menu 
        And selects  GUA  from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed




    Scenario: Add Auction ALLY MX  GUA  Organization

        Given current page is New Organization page 
        When User click Customer Dropdown menu
        And select Chase
        And click Organization Type Dropdown menu 
        And selects Auction 
        And clicks Organization name field
        And enters Organization name
        And selects MX from Billing Address dropdown menu 
        And clicks Street 1 field
        And enters a valid Street
        And clicks City field
        And enters a valid City
        And clicks State dropdown menu 
        And selects  GUA  from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed



Scenario: Add Dealer VCI MX  GUA  Organization

        Given current page is New Organization page 
        When User click Customer Dropdown menu
        And select VCI
        And click Organization Type Dropdown menu 
        And selects Dealer 
        And clicks Organization name field
        And enters Organization name
        And selects MX from Billing Address dropdown menu 
        And clicks Street 1 field
        And enters a valid Street
        And clicks City field
        And enters a valid City
        And clicks State dropdown menu 
        And selects  GUA  from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed




    Scenario: Add Auction VCI MX  GUA  Organization

        Given current page is New Organization page 
        When User click Customer Dropdown menu
        And select VCI
        And click Organization Type Dropdown menu 
        And selects Auction 
        And clicks Organization name field
        And enters Organization name
        And selects MX from Billing Address dropdown menu 
        And clicks Street 1 field
        And enters a valid Street
        And clicks City field
        And enters a valid City
        And clicks State dropdown menu 
        And selects  GUA  from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed




    

Scenario: Add Dealer MANHEIM MX  GUA  Organization

        Given current page is New Organization page 
        When User click Customer Dropdown menu
        And select MANHEIM
        And click Organization Type Dropdown menu 
        And selects Dealer 
        And clicks Organization name field
        And enters Organization name
        And selects MX from Billing Address dropdown menu 
        And clicks Street 1 field
        And enters a valid Street
        And clicks City field
        And enters a valid City
        And clicks State dropdown menu 
        And selects  GUA  from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed




    Scenario: Add Auction MANHEIM MX  GUA  Organization

        Given current page is New Organization page 
        When User click Customer Dropdown menu
        And select MANHEIM
        And click Organization Type Dropdown menu 
        And selects Auction 
        And clicks Organization name field
        And enters Organization name
        And selects MX from Billing Address dropdown menu 
        And clicks Street 1 field
        And enters a valid Street
        And clicks City field
        And enters a valid City
        And clicks State dropdown menu 
        And selects  GUA  from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed



    Scenario: Add Dealer HYUNDAI MX  GUA  Organization

        Given current page is New Organization page 
        When User click Customer Dropdown menu
        And select HYUNDAI
        And click Organization Type Dropdown menu 
        And selects Dealer 
        And clicks Organization name field
        And enters Organization name
        And selects MX from Billing Address dropdown menu 
        And clicks Street 1 field
        And enters a valid Street
        And clicks City field
        And enters a valid City
        And clicks State dropdown menu 
        And selects  GUA  from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed




    Scenario: Add Auction HYUNDAI MX  GUA  Organization

        Given current page is New Organization page 
        When User click Customer Dropdown menu
        And select HYUNDAI
        And click Organization Type Dropdown menu 
        And selects Auction 
        And clicks Organization name field
        And enters Organization name
        And selects MX from Billing Address dropdown menu 
        And clicks Street 1 field
        And enters a valid Street
        And clicks City field
        And enters a valid City
        And clicks State dropdown menu 
        And selects  GUA  from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed




    Scenario: Add Dealer NISSAN MX  GUA  Organization

        Given current page is New Organization page 
        When User click Customer Dropdown menu
        And select NISSAN
        And click Organization Type Dropdown menu 
        And selects Dealer 
        And clicks Organization name field
        And enters Organization name
        And selects MX from Billing Address dropdown menu 
        And clicks Street 1 field
        And enters a valid Street
        And clicks City field
        And enters a valid City
        And clicks State dropdown menu 
        And selects  GUA  from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed




    Scenario: Add Auction NISSAN MX  GUA  Organization

        Given current page is New Organization page 
        When User click Customer Dropdown menu
        And select NISSAN
        And click Organization Type Dropdown menu 
        And selects Auction 
        And clicks Organization name field
        And enters Organization name
        And selects MX from Billing Address dropdown menu 
        And clicks Street 1 field
        And enters a valid Street
        And clicks City field
        And enters a valid City
        And clicks State dropdown menu 
        And selects  GUA  from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed




    
    
    Scenario: Add Dealer ALLY MX GRO Organization

        Given current page is New Organization page 
        When User click Customer Dropdown menu
        And select Chase
        And click Organization Type Dropdown menu 
        And selects Dealer 
        And clicks Organization name field
        And enters Organization name
        And selects MX from Billing Address dropdown menu 
        And clicks Street 1 field
        And enters a valid Street
        And clicks City field
        And enters a valid City
        And clicks State dropdown menu 
        And selects GRO from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed




    Scenario: Add Auction ALLY MX GRO Organization

        Given current page is New Organization page 
        When User click Customer Dropdown menu
        And select Chase
        And click Organization Type Dropdown menu 
        And selects Auction 
        And clicks Organization name field
        And enters Organization name
        And selects MX from Billing Address dropdown menu 
        And clicks Street 1 field
        And enters a valid Street
        And clicks City field
        And enters a valid City
        And clicks State dropdown menu 
        And selects GRO from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed



Scenario: Add Dealer VCI MX GRO Organization

        Given current page is New Organization page 
        When User click Customer Dropdown menu
        And select VCI
        And click Organization Type Dropdown menu 
        And selects Dealer 
        And clicks Organization name field
        And enters Organization name
        And selects MX from Billing Address dropdown menu 
        And clicks Street 1 field
        And enters a valid Street
        And clicks City field
        And enters a valid City
        And clicks State dropdown menu 
        And selects GRO from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed




    Scenario: Add Auction VCI MX GRO Organization

        Given current page is New Organization page 
        When User click Customer Dropdown menu
        And select VCI
        And click Organization Type Dropdown menu 
        And selects Auction 
        And clicks Organization name field
        And enters Organization name
        And selects MX from Billing Address dropdown menu 
        And clicks Street 1 field
        And enters a valid Street
        And clicks City field
        And enters a valid City
        And clicks State dropdown menu 
        And selects GRO from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed




    

Scenario: Add Dealer MANHEIM MX GRO Organization

        Given current page is New Organization page 
        When User click Customer Dropdown menu
        And select MANHEIM
        And click Organization Type Dropdown menu 
        And selects Dealer 
        And clicks Organization name field
        And enters Organization name
        And selects MX from Billing Address dropdown menu 
        And clicks Street 1 field
        And enters a valid Street
        And clicks City field
        And enters a valid City
        And clicks State dropdown menu 
        And selects GRO from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed




    Scenario: Add Auction MANHEIM MX GRO Organization

        Given current page is New Organization page 
        When User click Customer Dropdown menu
        And select MANHEIM
        And click Organization Type Dropdown menu 
        And selects Auction 
        And clicks Organization name field
        And enters Organization name
        And selects MX from Billing Address dropdown menu 
        And clicks Street 1 field
        And enters a valid Street
        And clicks City field
        And enters a valid City
        And clicks State dropdown menu 
        And selects GRO from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed



    Scenario: Add Dealer HYUNDAI MX GRO Organization

        Given current page is New Organization page 
        When User click Customer Dropdown menu
        And select HYUNDAI
        And click Organization Type Dropdown menu 
        And selects Dealer 
        And clicks Organization name field
        And enters Organization name
        And selects MX from Billing Address dropdown menu 
        And clicks Street 1 field
        And enters a valid Street
        And clicks City field
        And enters a valid City
        And clicks State dropdown menu 
        And selects GRO from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed




    Scenario: Add Auction HYUNDAI MX GRO Organization

        Given current page is New Organization page 
        When User click Customer Dropdown menu
        And select HYUNDAI
        And click Organization Type Dropdown menu 
        And selects Auction 
        And clicks Organization name field
        And enters Organization name
        And selects MX from Billing Address dropdown menu 
        And clicks Street 1 field
        And enters a valid Street
        And clicks City field
        And enters a valid City
        And clicks State dropdown menu 
        And selects GRO from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed




    Scenario: Add Dealer NISSAN MX GRO Organization

        Given current page is New Organization page 
        When User click Customer Dropdown menu
        And select NISSAN
        And click Organization Type Dropdown menu 
        And selects Dealer 
        And clicks Organization name field
        And enters Organization name
        And selects MX from Billing Address dropdown menu 
        And clicks Street 1 field
        And enters a valid Street
        And clicks City field
        And enters a valid City
        And clicks State dropdown menu 
        And selects GRO from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed




    Scenario: Add Auction NISSAN MX GRO Organization

        Given current page is New Organization page 
        When User click Customer Dropdown menu
        And select NISSAN
        And click Organization Type Dropdown menu 
        And selects Auction 
        And clicks Organization name field
        And enters Organization name
        And selects MX from Billing Address dropdown menu 
        And clicks Street 1 field
        And enters a valid Street
        And clicks City field
        And enters a valid City
        And clicks State dropdown menu 
        And selects GRO from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed




    
    
    Scenario: Add Dealer ALLY MX HID Organization

        Given current page is New Organization page 
        When User click Customer Dropdown menu
        And select Chase
        And click Organization Type Dropdown menu 
        And selects Dealer 
        And clicks Organization name field
        And enters Organization name
        And selects MX from Billing Address dropdown menu 
        And clicks Street 1 field
        And enters a valid Street
        And clicks City field
        And enters a valid City
        And clicks State dropdown menu 
        And selects HID from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed




    Scenario: Add Auction ALLY MX HID Organization

        Given current page is New Organization page 
        When User click Customer Dropdown menu
        And select Chase
        And click Organization Type Dropdown menu 
        And selects Auction 
        And clicks Organization name field
        And enters Organization name
        And selects MX from Billing Address dropdown menu 
        And clicks Street 1 field
        And enters a valid Street
        And clicks City field
        And enters a valid City
        And clicks State dropdown menu 
        And selects HID from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed



Scenario: Add Dealer VCI MX HID Organization

        Given current page is New Organization page 
        When User click Customer Dropdown menu
        And select VCI
        And click Organization Type Dropdown menu 
        And selects Dealer 
        And clicks Organization name field
        And enters Organization name
        And selects MX from Billing Address dropdown menu 
        And clicks Street 1 field
        And enters a valid Street
        And clicks City field
        And enters a valid City
        And clicks State dropdown menu 
        And selects HID from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed




    Scenario: Add Auction VCI MX HID Organization

        Given current page is New Organization page 
        When User click Customer Dropdown menu
        And select VCI
        And click Organization Type Dropdown menu 
        And selects Auction 
        And clicks Organization name field
        And enters Organization name
        And selects MX from Billing Address dropdown menu 
        And clicks Street 1 field
        And enters a valid Street
        And clicks City field
        And enters a valid City
        And clicks State dropdown menu 
        And selects HID from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed




    

Scenario: Add Dealer MANHEIM MX HID Organization

        Given current page is New Organization page 
        When User click Customer Dropdown menu
        And select MANHEIM
        And click Organization Type Dropdown menu 
        And selects Dealer 
        And clicks Organization name field
        And enters Organization name
        And selects MX from Billing Address dropdown menu 
        And clicks Street 1 field
        And enters a valid Street
        And clicks City field
        And enters a valid City
        And clicks State dropdown menu 
        And selects HID from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed




    Scenario: Add Auction MANHEIM MX HID Organization

        Given current page is New Organization page 
        When User click Customer Dropdown menu
        And select MANHEIM
        And click Organization Type Dropdown menu 
        And selects Auction 
        And clicks Organization name field
        And enters Organization name
        And selects MX from Billing Address dropdown menu 
        And clicks Street 1 field
        And enters a valid Street
        And clicks City field
        And enters a valid City
        And clicks State dropdown menu 
        And selects HID from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed



    Scenario: Add Dealer HYUNDAI MX HID Organization

        Given current page is New Organization page 
        When User click Customer Dropdown menu
        And select HYUNDAI
        And click Organization Type Dropdown menu 
        And selects Dealer 
        And clicks Organization name field
        And enters Organization name
        And selects MX from Billing Address dropdown menu 
        And clicks Street 1 field
        And enters a valid Street
        And clicks City field
        And enters a valid City
        And clicks State dropdown menu 
        And selects HID from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed




    Scenario: Add Auction HYUNDAI MX HID Organization

        Given current page is New Organization page 
        When User click Customer Dropdown menu
        And select HYUNDAI
        And click Organization Type Dropdown menu 
        And selects Auction 
        And clicks Organization name field
        And enters Organization name
        And selects MX from Billing Address dropdown menu 
        And clicks Street 1 field
        And enters a valid Street
        And clicks City field
        And enters a valid City
        And clicks State dropdown menu 
        And selects HID from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed




    Scenario: Add Dealer NISSAN MX HID Organization

        Given current page is New Organization page 
        When User click Customer Dropdown menu
        And select NISSAN
        And click Organization Type Dropdown menu 
        And selects Dealer 
        And clicks Organization name field
        And enters Organization name
        And selects MX from Billing Address dropdown menu 
        And clicks Street 1 field
        And enters a valid Street
        And clicks City field
        And enters a valid City
        And clicks State dropdown menu 
        And selects HID from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed




    Scenario: Add Auction NISSAN MX HID Organization

        Given current page is New Organization page 
        When User click Customer Dropdown menu
        And select NISSAN
        And click Organization Type Dropdown menu 
        And selects Auction 
        And clicks Organization name field
        And enters Organization name
        And selects MX from Billing Address dropdown menu 
        And clicks Street 1 field
        And enters a valid Street
        And clicks City field
        And enters a valid City
        And clicks State dropdown menu 
        And selects HID from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed




    
    
    Scenario: Add Dealer ALLY MX JAL Organization

        Given current page is New Organization page 
        When User click Customer Dropdown menu
        And select Chase
        And click Organization Type Dropdown menu 
        And selects Dealer 
        And clicks Organization name field
        And enters Organization name
        And selects MX from Billing Address dropdown menu 
        And clicks Street 1 field
        And enters a valid Street
        And clicks City field
        And enters a valid City
        And clicks State dropdown menu 
        And selects JAL from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed




    Scenario: Add Auction ALLY MX JAL Organization

        Given current page is New Organization page 
        When User click Customer Dropdown menu
        And select Chase
        And click Organization Type Dropdown menu 
        And selects Auction 
        And clicks Organization name field
        And enters Organization name
        And selects MX from Billing Address dropdown menu 
        And clicks Street 1 field
        And enters a valid Street
        And clicks City field
        And enters a valid City
        And clicks State dropdown menu 
        And selects JAL from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed



Scenario: Add Dealer VCI MX JAL Organization

        Given current page is New Organization page 
        When User click Customer Dropdown menu
        And select VCI
        And click Organization Type Dropdown menu 
        And selects Dealer 
        And clicks Organization name field
        And enters Organization name
        And selects MX from Billing Address dropdown menu 
        And clicks Street 1 field
        And enters a valid Street
        And clicks City field
        And enters a valid City
        And clicks State dropdown menu 
        And selects JAL from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed




    Scenario: Add Auction VCI MX JAL Organization

        Given current page is New Organization page 
        When User click Customer Dropdown menu
        And select VCI
        And click Organization Type Dropdown menu 
        And selects Auction 
        And clicks Organization name field
        And enters Organization name
        And selects MX from Billing Address dropdown menu 
        And clicks Street 1 field
        And enters a valid Street
        And clicks City field
        And enters a valid City
        And clicks State dropdown menu 
        And selects JAL from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed




    

Scenario: Add Dealer MANHEIM MX JAL Organization

        Given current page is New Organization page 
        When User click Customer Dropdown menu
        And select MANHEIM
        And click Organization Type Dropdown menu 
        And selects Dealer 
        And clicks Organization name field
        And enters Organization name
        And selects MX from Billing Address dropdown menu 
        And clicks Street 1 field
        And enters a valid Street
        And clicks City field
        And enters a valid City
        And clicks State dropdown menu 
        And selects JAL from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed




    Scenario: Add Auction MANHEIM MX JAL Organization

        Given current page is New Organization page 
        When User click Customer Dropdown menu
        And select MANHEIM
        And click Organization Type Dropdown menu 
        And selects Auction 
        And clicks Organization name field
        And enters Organization name
        And selects MX from Billing Address dropdown menu 
        And clicks Street 1 field
        And enters a valid Street
        And clicks City field
        And enters a valid City
        And clicks State dropdown menu 
        And selects JAL from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed



    Scenario: Add Dealer HYUNDAI MX JAL Organization

        Given current page is New Organization page 
        When User click Customer Dropdown menu
        And select HYUNDAI
        And click Organization Type Dropdown menu 
        And selects Dealer 
        And clicks Organization name field
        And enters Organization name
        And selects MX from Billing Address dropdown menu 
        And clicks Street 1 field
        And enters a valid Street
        And clicks City field
        And enters a valid City
        And clicks State dropdown menu 
        And selects JAL from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed




    Scenario: Add Auction HYUNDAI MX JAL Organization

        Given current page is New Organization page 
        When User click Customer Dropdown menu
        And select HYUNDAI
        And click Organization Type Dropdown menu 
        And selects Auction 
        And clicks Organization name field
        And enters Organization name
        And selects MX from Billing Address dropdown menu 
        And clicks Street 1 field
        And enters a valid Street
        And clicks City field
        And enters a valid City
        And clicks State dropdown menu 
        And selects JAL from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed




    Scenario: Add Dealer NISSAN MX JAL Organization

        Given current page is New Organization page 
        When User click Customer Dropdown menu
        And select NISSAN
        And click Organization Type Dropdown menu 
        And selects Dealer 
        And clicks Organization name field
        And enters Organization name
        And selects MX from Billing Address dropdown menu 
        And clicks Street 1 field
        And enters a valid Street
        And clicks City field
        And enters a valid City
        And clicks State dropdown menu 
        And selects JAL from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed




    Scenario: Add Auction NISSAN MX JAL Organization

        Given current page is New Organization page 
        When User click Customer Dropdown menu
        And select NISSAN
        And click Organization Type Dropdown menu 
        And selects Auction 
        And clicks Organization name field
        And enters Organization name
        And selects MX from Billing Address dropdown menu 
        And clicks Street 1 field
        And enters a valid Street
        And clicks City field
        And enters a valid City
        And clicks State dropdown menu 
        And selects JAL from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed




    
    
    Scenario: Add Dealer ALLY MX MEX Organization

        Given current page is New Organization page 
        When User click Customer Dropdown menu
        And select Chase
        And click Organization Type Dropdown menu 
        And selects Dealer 
        And clicks Organization name field
        And enters Organization name
        And selects MX from Billing Address dropdown menu 
        And clicks Street 1 field
        And enters a valid Street
        And clicks City field
        And enters a valid City
        And clicks State dropdown menu 
        And selects MEX from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed




    Scenario: Add Auction ALLY MX MEX Organization

        Given current page is New Organization page 
        When User click Customer Dropdown menu
        And select Chase
        And click Organization Type Dropdown menu 
        And selects Auction 
        And clicks Organization name field
        And enters Organization name
        And selects MX from Billing Address dropdown menu 
        And clicks Street 1 field
        And enters a valid Street
        And clicks City field
        And enters a valid City
        And clicks State dropdown menu 
        And selects MEX from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed



Scenario: Add Dealer VCI MX MEX Organization

        Given current page is New Organization page 
        When User click Customer Dropdown menu
        And select VCI
        And click Organization Type Dropdown menu 
        And selects Dealer 
        And clicks Organization name field
        And enters Organization name
        And selects MX from Billing Address dropdown menu 
        And clicks Street 1 field
        And enters a valid Street
        And clicks City field
        And enters a valid City
        And clicks State dropdown menu 
        And selects MEX from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed




    Scenario: Add Auction VCI MX MEX Organization

        Given current page is New Organization page 
        When User click Customer Dropdown menu
        And select VCI
        And click Organization Type Dropdown menu 
        And selects Auction 
        And clicks Organization name field
        And enters Organization name
        And selects MX from Billing Address dropdown menu 
        And clicks Street 1 field
        And enters a valid Street
        And clicks City field
        And enters a valid City
        And clicks State dropdown menu 
        And selects MEX from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed




    

Scenario: Add Dealer MANHEIM MX MEX Organization

        Given current page is New Organization page 
        When User click Customer Dropdown menu
        And select MANHEIM
        And click Organization Type Dropdown menu 
        And selects Dealer 
        And clicks Organization name field
        And enters Organization name
        And selects MX from Billing Address dropdown menu 
        And clicks Street 1 field
        And enters a valid Street
        And clicks City field
        And enters a valid City
        And clicks State dropdown menu 
        And selects MEX from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed




    Scenario: Add Auction MANHEIM MX MEX Organization

        Given current page is New Organization page 
        When User click Customer Dropdown menu
        And select MANHEIM
        And click Organization Type Dropdown menu 
        And selects Auction 
        And clicks Organization name field
        And enters Organization name
        And selects MX from Billing Address dropdown menu 
        And clicks Street 1 field
        And enters a valid Street
        And clicks City field
        And enters a valid City
        And clicks State dropdown menu 
        And selects MEX from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed



    Scenario: Add Dealer HYUNDAI MX MEX Organization

        Given current page is New Organization page 
        When User click Customer Dropdown menu
        And select HYUNDAI
        And click Organization Type Dropdown menu 
        And selects Dealer 
        And clicks Organization name field
        And enters Organization name
        And selects MX from Billing Address dropdown menu 
        And clicks Street 1 field
        And enters a valid Street
        And clicks City field
        And enters a valid City
        And clicks State dropdown menu 
        And selects MEX from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed




    Scenario: Add Auction HYUNDAI MX MEX Organization

        Given current page is New Organization page 
        When User click Customer Dropdown menu
        And select HYUNDAI
        And click Organization Type Dropdown menu 
        And selects Auction 
        And clicks Organization name field
        And enters Organization name
        And selects MX from Billing Address dropdown menu 
        And clicks Street 1 field
        And enters a valid Street
        And clicks City field
        And enters a valid City
        And clicks State dropdown menu 
        And selects MEX from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed




    Scenario: Add Dealer NISSAN MX MEX Organization

        Given current page is New Organization page 
        When User click Customer Dropdown menu
        And select NISSAN
        And click Organization Type Dropdown menu 
        And selects Dealer 
        And clicks Organization name field
        And enters Organization name
        And selects MX from Billing Address dropdown menu 
        And clicks Street 1 field
        And enters a valid Street
        And clicks City field
        And enters a valid City
        And clicks State dropdown menu 
        And selects MEX from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed




    Scenario: Add Auction NISSAN MX MEX Organization

        Given current page is New Organization page 
        When User click Customer Dropdown menu
        And select NISSAN
        And click Organization Type Dropdown menu 
        And selects Auction 
        And clicks Organization name field
        And enters Organization name
        And selects MX from Billing Address dropdown menu 
        And clicks Street 1 field
        And enters a valid Street
        And clicks City field
        And enters a valid City
        And clicks State dropdown menu 
        And selects MEX from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed




    
    
    Scenario: Add Dealer ALLY MX MIC Organization

        Given current page is New Organization page 
        When User click Customer Dropdown menu
        And select Chase
        And click Organization Type Dropdown menu 
        And selects Dealer 
        And clicks Organization name field
        And enters Organization name
        And selects MX from Billing Address dropdown menu 
        And clicks Street 1 field
        And enters a valid Street
        And clicks City field
        And enters a valid City
        And clicks State dropdown menu 
        And selects MIC from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed




    Scenario: Add Auction ALLY MX MIC Organization

        Given current page is New Organization page 
        When User click Customer Dropdown menu
        And select Chase
        And click Organization Type Dropdown menu 
        And selects Auction 
        And clicks Organization name field
        And enters Organization name
        And selects MX from Billing Address dropdown menu 
        And clicks Street 1 field
        And enters a valid Street
        And clicks City field
        And enters a valid City
        And clicks State dropdown menu 
        And selects MIC from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed



Scenario: Add Dealer VCI MX MIC Organization

        Given current page is New Organization page 
        When User click Customer Dropdown menu
        And select VCI
        And click Organization Type Dropdown menu 
        And selects Dealer 
        And clicks Organization name field
        And enters Organization name
        And selects MX from Billing Address dropdown menu 
        And clicks Street 1 field
        And enters a valid Street
        And clicks City field
        And enters a valid City
        And clicks State dropdown menu 
        And selects MIC from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed




    Scenario: Add Auction VCI MX MIC Organization

        Given current page is New Organization page 
        When User click Customer Dropdown menu
        And select VCI
        And click Organization Type Dropdown menu 
        And selects Auction 
        And clicks Organization name field
        And enters Organization name
        And selects MX from Billing Address dropdown menu 
        And clicks Street 1 field
        And enters a valid Street
        And clicks City field
        And enters a valid City
        And clicks State dropdown menu 
        And selects MIC from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed




    

Scenario: Add Dealer MANHEIM MX MIC Organization

        Given current page is New Organization page 
        When User click Customer Dropdown menu
        And select MANHEIM
        And click Organization Type Dropdown menu 
        And selects Dealer 
        And clicks Organization name field
        And enters Organization name
        And selects MX from Billing Address dropdown menu 
        And clicks Street 1 field
        And enters a valid Street
        And clicks City field
        And enters a valid City
        And clicks State dropdown menu 
        And selects MIC from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed




    Scenario: Add Auction MANHEIM MX MIC Organization

        Given current page is New Organization page 
        When User click Customer Dropdown menu
        And select MANHEIM
        And click Organization Type Dropdown menu 
        And selects Auction 
        And clicks Organization name field
        And enters Organization name
        And selects MX from Billing Address dropdown menu 
        And clicks Street 1 field
        And enters a valid Street
        And clicks City field
        And enters a valid City
        And clicks State dropdown menu 
        And selects MIC from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed



    Scenario: Add Dealer HYUNDAI MX MIC Organization

        Given current page is New Organization page 
        When User click Customer Dropdown menu
        And select HYUNDAI
        And click Organization Type Dropdown menu 
        And selects Dealer 
        And clicks Organization name field
        And enters Organization name
        And selects MX from Billing Address dropdown menu 
        And clicks Street 1 field
        And enters a valid Street
        And clicks City field
        And enters a valid City
        And clicks State dropdown menu 
        And selects MIC from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed




    Scenario: Add Auction HYUNDAI MX MIC Organization

        Given current page is New Organization page 
        When User click Customer Dropdown menu
        And select HYUNDAI
        And click Organization Type Dropdown menu 
        And selects Auction 
        And clicks Organization name field
        And enters Organization name
        And selects MX from Billing Address dropdown menu 
        And clicks Street 1 field
        And enters a valid Street
        And clicks City field
        And enters a valid City
        And clicks State dropdown menu 
        And selects MIC from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed




    Scenario: Add Dealer NISSAN MX MIC Organization

        Given current page is New Organization page 
        When User click Customer Dropdown menu
        And select NISSAN
        And click Organization Type Dropdown menu 
        And selects Dealer 
        And clicks Organization name field
        And enters Organization name
        And selects MX from Billing Address dropdown menu 
        And clicks Street 1 field
        And enters a valid Street
        And clicks City field
        And enters a valid City
        And clicks State dropdown menu 
        And selects MIC from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed




    Scenario: Add Auction NISSAN MX MIC Organization

        Given current page is New Organization page 
        When User click Customer Dropdown menu
        And select NISSAN
        And click Organization Type Dropdown menu 
        And selects Auction 
        And clicks Organization name field
        And enters Organization name
        And selects MX from Billing Address dropdown menu 
        And clicks Street 1 field
        And enters a valid Street
        And clicks City field
        And enters a valid City
        And clicks State dropdown menu 
        And selects MIC from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed




    
    
    Scenario: Add Dealer ALLY MX MOR Organization

        Given current page is New Organization page 
        When User click Customer Dropdown menu
        And select Chase
        And click Organization Type Dropdown menu 
        And selects Dealer 
        And clicks Organization name field
        And enters Organization name
        And selects MX from Billing Address dropdown menu 
        And clicks Street 1 field
        And enters a valid Street
        And clicks City field
        And enters a valid City
        And clicks State dropdown menu 
        And selects MOR from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed




    Scenario: Add Auction ALLY MX MOR Organization

        Given current page is New Organization page 
        When User click Customer Dropdown menu
        And select Chase
        And click Organization Type Dropdown menu 
        And selects Auction 
        And clicks Organization name field
        And enters Organization name
        And selects MX from Billing Address dropdown menu 
        And clicks Street 1 field
        And enters a valid Street
        And clicks City field
        And enters a valid City
        And clicks State dropdown menu 
        And selects MOR from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed



Scenario: Add Dealer VCI MX MOR Organization

        Given current page is New Organization page 
        When User click Customer Dropdown menu
        And select VCI
        And click Organization Type Dropdown menu 
        And selects Dealer 
        And clicks Organization name field
        And enters Organization name
        And selects MX from Billing Address dropdown menu 
        And clicks Street 1 field
        And enters a valid Street
        And clicks City field
        And enters a valid City
        And clicks State dropdown menu 
        And selects MOR from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed




    Scenario: Add Auction VCI MX MOR Organization

        Given current page is New Organization page 
        When User click Customer Dropdown menu
        And select VCI
        And click Organization Type Dropdown menu 
        And selects Auction 
        And clicks Organization name field
        And enters Organization name
        And selects MX from Billing Address dropdown menu 
        And clicks Street 1 field
        And enters a valid Street
        And clicks City field
        And enters a valid City
        And clicks State dropdown menu 
        And selects MOR from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed




    

Scenario: Add Dealer MANHEIM MX MOR Organization

        Given current page is New Organization page 
        When User click Customer Dropdown menu
        And select MANHEIM
        And click Organization Type Dropdown menu 
        And selects Dealer 
        And clicks Organization name field
        And enters Organization name
        And selects MX from Billing Address dropdown menu 
        And clicks Street 1 field
        And enters a valid Street
        And clicks City field
        And enters a valid City
        And clicks State dropdown menu 
        And selects MOR from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed




    Scenario: Add Auction MANHEIM MX MOR Organization

        Given current page is New Organization page 
        When User click Customer Dropdown menu
        And select MANHEIM
        And click Organization Type Dropdown menu 
        And selects Auction 
        And clicks Organization name field
        And enters Organization name
        And selects MX from Billing Address dropdown menu 
        And clicks Street 1 field
        And enters a valid Street
        And clicks City field
        And enters a valid City
        And clicks State dropdown menu 
        And selects MOR from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed



    Scenario: Add Dealer HYUNDAI MX MOR Organization

        Given current page is New Organization page 
        When User click Customer Dropdown menu
        And select HYUNDAI
        And click Organization Type Dropdown menu 
        And selects Dealer 
        And clicks Organization name field
        And enters Organization name
        And selects MX from Billing Address dropdown menu 
        And clicks Street 1 field
        And enters a valid Street
        And clicks City field
        And enters a valid City
        And clicks State dropdown menu 
        And selects MOR from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed




    Scenario: Add Auction HYUNDAI MX MOR Organization

        Given current page is New Organization page 
        When User click Customer Dropdown menu
        And select HYUNDAI
        And click Organization Type Dropdown menu 
        And selects Auction 
        And clicks Organization name field
        And enters Organization name
        And selects MX from Billing Address dropdown menu 
        And clicks Street 1 field
        And enters a valid Street
        And clicks City field
        And enters a valid City
        And clicks State dropdown menu 
        And selects MOR from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed




    Scenario: Add Dealer NISSAN MX MOR Organization

        Given current page is New Organization page 
        When User click Customer Dropdown menu
        And select NISSAN
        And click Organization Type Dropdown menu 
        And selects Dealer 
        And clicks Organization name field
        And enters Organization name
        And selects MX from Billing Address dropdown menu 
        And clicks Street 1 field
        And enters a valid Street
        And clicks City field
        And enters a valid City
        And clicks State dropdown menu 
        And selects MOR from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed




    Scenario: Add Auction NISSAN MX MOR Organization

        Given current page is New Organization page 
        When User click Customer Dropdown menu
        And select NISSAN
        And click Organization Type Dropdown menu 
        And selects Auction 
        And clicks Organization name field
        And enters Organization name
        And selects MX from Billing Address dropdown menu 
        And clicks Street 1 field
        And enters a valid Street
        And clicks City field
        And enters a valid City
        And clicks State dropdown menu 
        And selects MOR from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed




    
    
    Scenario: Add Dealer ALLY MX NAY Organization

        Given current page is New Organization page 
        When User click Customer Dropdown menu
        And select Chase
        And click Organization Type Dropdown menu 
        And selects Dealer 
        And clicks Organization name field
        And enters Organization name
        And selects MX from Billing Address dropdown menu 
        And clicks Street 1 field
        And enters a valid Street
        And clicks City field
        And enters a valid City
        And clicks State dropdown menu 
        And selects NAY from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed




    Scenario: Add Auction ALLY MX NAY Organization

        Given current page is New Organization page 
        When User click Customer Dropdown menu
        And select Chase
        And click Organization Type Dropdown menu 
        And selects Auction 
        And clicks Organization name field
        And enters Organization name
        And selects MX from Billing Address dropdown menu 
        And clicks Street 1 field
        And enters a valid Street
        And clicks City field
        And enters a valid City
        And clicks State dropdown menu 
        And selects NAY from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed



Scenario: Add Dealer VCI MX NAY Organization

        Given current page is New Organization page 
        When User click Customer Dropdown menu
        And select VCI
        And click Organization Type Dropdown menu 
        And selects Dealer 
        And clicks Organization name field
        And enters Organization name
        And selects MX from Billing Address dropdown menu 
        And clicks Street 1 field
        And enters a valid Street
        And clicks City field
        And enters a valid City
        And clicks State dropdown menu 
        And selects NAY from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed




    Scenario: Add Auction VCI MX NAY Organization

        Given current page is New Organization page 
        When User click Customer Dropdown menu
        And select VCI
        And click Organization Type Dropdown menu 
        And selects Auction 
        And clicks Organization name field
        And enters Organization name
        And selects MX from Billing Address dropdown menu 
        And clicks Street 1 field
        And enters a valid Street
        And clicks City field
        And enters a valid City
        And clicks State dropdown menu 
        And selects NAY from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed




    

Scenario: Add Dealer MANHEIM MX NAY Organization

        Given current page is New Organization page 
        When User click Customer Dropdown menu
        And select MANHEIM
        And click Organization Type Dropdown menu 
        And selects Dealer 
        And clicks Organization name field
        And enters Organization name
        And selects MX from Billing Address dropdown menu 
        And clicks Street 1 field
        And enters a valid Street
        And clicks City field
        And enters a valid City
        And clicks State dropdown menu 
        And selects NAY from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed




    Scenario: Add Auction MANHEIM MX NAY Organization

        Given current page is New Organization page 
        When User click Customer Dropdown menu
        And select MANHEIM
        And click Organization Type Dropdown menu 
        And selects Auction 
        And clicks Organization name field
        And enters Organization name
        And selects MX from Billing Address dropdown menu 
        And clicks Street 1 field
        And enters a valid Street
        And clicks City field
        And enters a valid City
        And clicks State dropdown menu 
        And selects NAY from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed



    Scenario: Add Dealer HYUNDAI MX NAY Organization

        Given current page is New Organization page 
        When User click Customer Dropdown menu
        And select HYUNDAI
        And click Organization Type Dropdown menu 
        And selects Dealer 
        And clicks Organization name field
        And enters Organization name
        And selects MX from Billing Address dropdown menu 
        And clicks Street 1 field
        And enters a valid Street
        And clicks City field
        And enters a valid City
        And clicks State dropdown menu 
        And selects NAY from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed




    Scenario: Add Auction HYUNDAI MX NAY Organization

        Given current page is New Organization page 
        When User click Customer Dropdown menu
        And select HYUNDAI
        And click Organization Type Dropdown menu 
        And selects Auction 
        And clicks Organization name field
        And enters Organization name
        And selects MX from Billing Address dropdown menu 
        And clicks Street 1 field
        And enters a valid Street
        And clicks City field
        And enters a valid City
        And clicks State dropdown menu 
        And selects NAY from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed




    Scenario: Add Dealer NISSAN MX NAY Organization

        Given current page is New Organization page 
        When User click Customer Dropdown menu
        And select NISSAN
        And click Organization Type Dropdown menu 
        And selects Dealer 
        And clicks Organization name field
        And enters Organization name
        And selects MX from Billing Address dropdown menu 
        And clicks Street 1 field
        And enters a valid Street
        And clicks City field
        And enters a valid City
        And clicks State dropdown menu 
        And selects NAY from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed




    Scenario: Add Auction NISSAN MX NAY Organization

        Given current page is New Organization page 
        When User click Customer Dropdown menu
        And select NISSAN
        And click Organization Type Dropdown menu 
        And selects Auction 
        And clicks Organization name field
        And enters Organization name
        And selects MX from Billing Address dropdown menu 
        And clicks Street 1 field
        And enters a valid Street
        And clicks City field
        And enters a valid City
        And clicks State dropdown menu 
        And selects NAY from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed




    
    
    Scenario: Add Dealer ALLY MX NLE Organization

        Given current page is New Organization page 
        When User click Customer Dropdown menu
        And select Chase
        And click Organization Type Dropdown menu 
        And selects Dealer 
        And clicks Organization name field
        And enters Organization name
        And selects MX from Billing Address dropdown menu 
        And clicks Street 1 field
        And enters a valid Street
        And clicks City field
        And enters a valid City
        And clicks State dropdown menu 
        And selects NLE from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed




    Scenario: Add Auction ALLY MX NLE Organization

        Given current page is New Organization page 
        When User click Customer Dropdown menu
        And select Chase
        And click Organization Type Dropdown menu 
        And selects Auction 
        And clicks Organization name field
        And enters Organization name
        And selects MX from Billing Address dropdown menu 
        And clicks Street 1 field
        And enters a valid Street
        And clicks City field
        And enters a valid City
        And clicks State dropdown menu 
        And selects NLE from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed



Scenario: Add Dealer VCI MX NLE Organization

        Given current page is New Organization page 
        When User click Customer Dropdown menu
        And select VCI
        And click Organization Type Dropdown menu 
        And selects Dealer 
        And clicks Organization name field
        And enters Organization name
        And selects MX from Billing Address dropdown menu 
        And clicks Street 1 field
        And enters a valid Street
        And clicks City field
        And enters a valid City
        And clicks State dropdown menu 
        And selects NLE from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed




    Scenario: Add Auction VCI MX NLE Organization

        Given current page is New Organization page 
        When User click Customer Dropdown menu
        And select VCI
        And click Organization Type Dropdown menu 
        And selects Auction 
        And clicks Organization name field
        And enters Organization name
        And selects MX from Billing Address dropdown menu 
        And clicks Street 1 field
        And enters a valid Street
        And clicks City field
        And enters a valid City
        And clicks State dropdown menu 
        And selects NLE from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed




    

Scenario: Add Dealer MANHEIM MX NLE Organization

        Given current page is New Organization page 
        When User click Customer Dropdown menu
        And select MANHEIM
        And click Organization Type Dropdown menu 
        And selects Dealer 
        And clicks Organization name field
        And enters Organization name
        And selects MX from Billing Address dropdown menu 
        And clicks Street 1 field
        And enters a valid Street
        And clicks City field
        And enters a valid City
        And clicks State dropdown menu 
        And selects NLE from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed




    Scenario: Add Auction MANHEIM MX NLE Organization

        Given current page is New Organization page 
        When User click Customer Dropdown menu
        And select MANHEIM
        And click Organization Type Dropdown menu 
        And selects Auction 
        And clicks Organization name field
        And enters Organization name
        And selects MX from Billing Address dropdown menu 
        And clicks Street 1 field
        And enters a valid Street
        And clicks City field
        And enters a valid City
        And clicks State dropdown menu 
        And selects NLE from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed



    Scenario: Add Dealer HYUNDAI MX NLE Organization

        Given current page is New Organization page 
        When User click Customer Dropdown menu
        And select HYUNDAI
        And click Organization Type Dropdown menu 
        And selects Dealer 
        And clicks Organization name field
        And enters Organization name
        And selects MX from Billing Address dropdown menu 
        And clicks Street 1 field
        And enters a valid Street
        And clicks City field
        And enters a valid City
        And clicks State dropdown menu 
        And selects NLE from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed




    Scenario: Add Auction HYUNDAI MX NLE Organization

        Given current page is New Organization page 
        When User click Customer Dropdown menu
        And select HYUNDAI
        And click Organization Type Dropdown menu 
        And selects Auction 
        And clicks Organization name field
        And enters Organization name
        And selects MX from Billing Address dropdown menu 
        And clicks Street 1 field
        And enters a valid Street
        And clicks City field
        And enters a valid City
        And clicks State dropdown menu 
        And selects NLE from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed




    Scenario: Add Dealer NISSAN MX NLE Organization

        Given current page is New Organization page 
        When User click Customer Dropdown menu
        And select NISSAN
        And click Organization Type Dropdown menu 
        And selects Dealer 
        And clicks Organization name field
        And enters Organization name
        And selects MX from Billing Address dropdown menu 
        And clicks Street 1 field
        And enters a valid Street
        And clicks City field
        And enters a valid City
        And clicks State dropdown menu 
        And selects NLE from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed




    Scenario: Add Auction NISSAN MX NLE Organization

        Given current page is New Organization page 
        When User click Customer Dropdown menu
        And select NISSAN
        And click Organization Type Dropdown menu 
        And selects Auction 
        And clicks Organization name field
        And enters Organization name
        And selects MX from Billing Address dropdown menu 
        And clicks Street 1 field
        And enters a valid Street
        And clicks City field
        And enters a valid City
        And clicks State dropdown menu 
        And selects NLE from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed




    
    
    Scenario: Add Dealer ALLY MX OAX Organization

        Given current page is New Organization page 
        When User click Customer Dropdown menu
        And select Chase
        And click Organization Type Dropdown menu 
        And selects Dealer 
        And clicks Organization name field
        And enters Organization name
        And selects MX from Billing Address dropdown menu 
        And clicks Street 1 field
        And enters a valid Street
        And clicks City field
        And enters a valid City
        And clicks State dropdown menu 
        And selects OAX from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed




    Scenario: Add Auction ALLY MX OAX Organization

        Given current page is New Organization page 
        When User click Customer Dropdown menu
        And select Chase
        And click Organization Type Dropdown menu 
        And selects Auction 
        And clicks Organization name field
        And enters Organization name
        And selects MX from Billing Address dropdown menu 
        And clicks Street 1 field
        And enters a valid Street
        And clicks City field
        And enters a valid City
        And clicks State dropdown menu 
        And selects OAX from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed



Scenario: Add Dealer VCI MX OAX Organization

        Given current page is New Organization page 
        When User click Customer Dropdown menu
        And select VCI
        And click Organization Type Dropdown menu 
        And selects Dealer 
        And clicks Organization name field
        And enters Organization name
        And selects MX from Billing Address dropdown menu 
        And clicks Street 1 field
        And enters a valid Street
        And clicks City field
        And enters a valid City
        And clicks State dropdown menu 
        And selects OAX from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed




    Scenario: Add Auction VCI MX OAX Organization

        Given current page is New Organization page 
        When User click Customer Dropdown menu
        And select VCI
        And click Organization Type Dropdown menu 
        And selects Auction 
        And clicks Organization name field
        And enters Organization name
        And selects MX from Billing Address dropdown menu 
        And clicks Street 1 field
        And enters a valid Street
        And clicks City field
        And enters a valid City
        And clicks State dropdown menu 
        And selects OAX from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed




    

Scenario: Add Dealer MANHEIM MX OAX Organization

        Given current page is New Organization page 
        When User click Customer Dropdown menu
        And select MANHEIM
        And click Organization Type Dropdown menu 
        And selects Dealer 
        And clicks Organization name field
        And enters Organization name
        And selects MX from Billing Address dropdown menu 
        And clicks Street 1 field
        And enters a valid Street
        And clicks City field
        And enters a valid City
        And clicks State dropdown menu 
        And selects OAX from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed




    Scenario: Add Auction MANHEIM MX OAX Organization

        Given current page is New Organization page 
        When User click Customer Dropdown menu
        And select MANHEIM
        And click Organization Type Dropdown menu 
        And selects Auction 
        And clicks Organization name field
        And enters Organization name
        And selects MX from Billing Address dropdown menu 
        And clicks Street 1 field
        And enters a valid Street
        And clicks City field
        And enters a valid City
        And clicks State dropdown menu 
        And selects OAX from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed



    Scenario: Add Dealer HYUNDAI MX OAX Organization

        Given current page is New Organization page 
        When User click Customer Dropdown menu
        And select HYUNDAI
        And click Organization Type Dropdown menu 
        And selects Dealer 
        And clicks Organization name field
        And enters Organization name
        And selects MX from Billing Address dropdown menu 
        And clicks Street 1 field
        And enters a valid Street
        And clicks City field
        And enters a valid City
        And clicks State dropdown menu 
        And selects OAX from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed




    Scenario: Add Auction HYUNDAI MX OAX Organization

        Given current page is New Organization page 
        When User click Customer Dropdown menu
        And select HYUNDAI
        And click Organization Type Dropdown menu 
        And selects Auction 
        And clicks Organization name field
        And enters Organization name
        And selects MX from Billing Address dropdown menu 
        And clicks Street 1 field
        And enters a valid Street
        And clicks City field
        And enters a valid City
        And clicks State dropdown menu 
        And selects OAX from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed




    Scenario: Add Dealer NISSAN MX OAX Organization

        Given current page is New Organization page 
        When User click Customer Dropdown menu
        And select NISSAN
        And click Organization Type Dropdown menu 
        And selects Dealer 
        And clicks Organization name field
        And enters Organization name
        And selects MX from Billing Address dropdown menu 
        And clicks Street 1 field
        And enters a valid Street
        And clicks City field
        And enters a valid City
        And clicks State dropdown menu 
        And selects OAX from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed




    Scenario: Add Auction NISSAN MX OAX Organization

        Given current page is New Organization page 
        When User click Customer Dropdown menu
        And select NISSAN
        And click Organization Type Dropdown menu 
        And selects Auction 
        And clicks Organization name field
        And enters Organization name
        And selects MX from Billing Address dropdown menu 
        And clicks Street 1 field
        And enters a valid Street
        And clicks City field
        And enters a valid City
        And clicks State dropdown menu 
        And selects OAX from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed




    
    
    Scenario: Add Dealer ALLY MX PUE Organization

        Given current page is New Organization page 
        When User click Customer Dropdown menu
        And select Chase
        And click Organization Type Dropdown menu 
        And selects Dealer 
        And clicks Organization name field
        And enters Organization name
        And selects MX from Billing Address dropdown menu 
        And clicks Street 1 field
        And enters a valid Street
        And clicks City field
        And enters a valid City
        And clicks State dropdown menu 
        And selects PUE from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed




    Scenario: Add Auction ALLY MX PUE Organization

        Given current page is New Organization page 
        When User click Customer Dropdown menu
        And select Chase
        And click Organization Type Dropdown menu 
        And selects Auction 
        And clicks Organization name field
        And enters Organization name
        And selects MX from Billing Address dropdown menu 
        And clicks Street 1 field
        And enters a valid Street
        And clicks City field
        And enters a valid City
        And clicks State dropdown menu 
        And selects PUE from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed



Scenario: Add Dealer VCI MX PUE Organization

        Given current page is New Organization page 
        When User click Customer Dropdown menu
        And select VCI
        And click Organization Type Dropdown menu 
        And selects Dealer 
        And clicks Organization name field
        And enters Organization name
        And selects MX from Billing Address dropdown menu 
        And clicks Street 1 field
        And enters a valid Street
        And clicks City field
        And enters a valid City
        And clicks State dropdown menu 
        And selects PUE from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed




    Scenario: Add Auction VCI MX PUE Organization

        Given current page is New Organization page 
        When User click Customer Dropdown menu
        And select VCI
        And click Organization Type Dropdown menu 
        And selects Auction 
        And clicks Organization name field
        And enters Organization name
        And selects MX from Billing Address dropdown menu 
        And clicks Street 1 field
        And enters a valid Street
        And clicks City field
        And enters a valid City
        And clicks State dropdown menu 
        And selects PUE from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed




    

Scenario: Add Dealer MANHEIM MX PUE Organization

        Given current page is New Organization page 
        When User click Customer Dropdown menu
        And select MANHEIM
        And click Organization Type Dropdown menu 
        And selects Dealer 
        And clicks Organization name field
        And enters Organization name
        And selects MX from Billing Address dropdown menu 
        And clicks Street 1 field
        And enters a valid Street
        And clicks City field
        And enters a valid City
        And clicks State dropdown menu 
        And selects PUE from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed




    Scenario: Add Auction MANHEIM MX PUE Organization

        Given current page is New Organization page 
        When User click Customer Dropdown menu
        And select MANHEIM
        And click Organization Type Dropdown menu 
        And selects Auction 
        And clicks Organization name field
        And enters Organization name
        And selects MX from Billing Address dropdown menu 
        And clicks Street 1 field
        And enters a valid Street
        And clicks City field
        And enters a valid City
        And clicks State dropdown menu 
        And selects PUE from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed



    Scenario: Add Dealer HYUNDAI MX PUE Organization

        Given current page is New Organization page 
        When User click Customer Dropdown menu
        And select HYUNDAI
        And click Organization Type Dropdown menu 
        And selects Dealer 
        And clicks Organization name field
        And enters Organization name
        And selects MX from Billing Address dropdown menu 
        And clicks Street 1 field
        And enters a valid Street
        And clicks City field
        And enters a valid City
        And clicks State dropdown menu 
        And selects PUE from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed




    Scenario: Add Auction HYUNDAI MX PUE Organization

        Given current page is New Organization page 
        When User click Customer Dropdown menu
        And select HYUNDAI
        And click Organization Type Dropdown menu 
        And selects Auction 
        And clicks Organization name field
        And enters Organization name
        And selects MX from Billing Address dropdown menu 
        And clicks Street 1 field
        And enters a valid Street
        And clicks City field
        And enters a valid City
        And clicks State dropdown menu 
        And selects PUE from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed




    Scenario: Add Dealer NISSAN MX PUE Organization

        Given current page is New Organization page 
        When User click Customer Dropdown menu
        And select NISSAN
        And click Organization Type Dropdown menu 
        And selects Dealer 
        And clicks Organization name field
        And enters Organization name
        And selects MX from Billing Address dropdown menu 
        And clicks Street 1 field
        And enters a valid Street
        And clicks City field
        And enters a valid City
        And clicks State dropdown menu 
        And selects PUE from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed




    Scenario: Add Auction NISSAN MX PUE Organization

        Given current page is New Organization page 
        When User click Customer Dropdown menu
        And select NISSAN
        And click Organization Type Dropdown menu 
        And selects Auction 
        And clicks Organization name field
        And enters Organization name
        And selects MX from Billing Address dropdown menu 
        And clicks Street 1 field
        And enters a valid Street
        And clicks City field
        And enters a valid City
        And clicks State dropdown menu 
        And selects PUE from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed




    
    
    Scenario: Add Dealer ALLY MX QUE Organization

        Given current page is New Organization page 
        When User click Customer Dropdown menu
        And select Chase
        And click Organization Type Dropdown menu 
        And selects Dealer 
        And clicks Organization name field
        And enters Organization name
        And selects MX from Billing Address dropdown menu 
        And clicks Street 1 field
        And enters a valid Street
        And clicks City field
        And enters a valid City
        And clicks State dropdown menu 
        And selects QUE from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed




    Scenario: Add Auction ALLY MX QUE Organization

        Given current page is New Organization page 
        When User click Customer Dropdown menu
        And select Chase
        And click Organization Type Dropdown menu 
        And selects Auction 
        And clicks Organization name field
        And enters Organization name
        And selects MX from Billing Address dropdown menu 
        And clicks Street 1 field
        And enters a valid Street
        And clicks City field
        And enters a valid City
        And clicks State dropdown menu 
        And selects QUE from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed



Scenario: Add Dealer VCI MX QUE Organization

        Given current page is New Organization page 
        When User click Customer Dropdown menu
        And select VCI
        And click Organization Type Dropdown menu 
        And selects Dealer 
        And clicks Organization name field
        And enters Organization name
        And selects MX from Billing Address dropdown menu 
        And clicks Street 1 field
        And enters a valid Street
        And clicks City field
        And enters a valid City
        And clicks State dropdown menu 
        And selects QUE from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed




    Scenario: Add Auction VCI MX QUE Organization

        Given current page is New Organization page 
        When User click Customer Dropdown menu
        And select VCI
        And click Organization Type Dropdown menu 
        And selects Auction 
        And clicks Organization name field
        And enters Organization name
        And selects MX from Billing Address dropdown menu 
        And clicks Street 1 field
        And enters a valid Street
        And clicks City field
        And enters a valid City
        And clicks State dropdown menu 
        And selects QUE from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed




    

Scenario: Add Dealer MANHEIM MX QUE Organization

        Given current page is New Organization page 
        When User click Customer Dropdown menu
        And select MANHEIM
        And click Organization Type Dropdown menu 
        And selects Dealer 
        And clicks Organization name field
        And enters Organization name
        And selects MX from Billing Address dropdown menu 
        And clicks Street 1 field
        And enters a valid Street
        And clicks City field
        And enters a valid City
        And clicks State dropdown menu 
        And selects QUE from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed




    Scenario: Add Auction MANHEIM MX QUE Organization

        Given current page is New Organization page 
        When User click Customer Dropdown menu
        And select MANHEIM
        And click Organization Type Dropdown menu 
        And selects Auction 
        And clicks Organization name field
        And enters Organization name
        And selects MX from Billing Address dropdown menu 
        And clicks Street 1 field
        And enters a valid Street
        And clicks City field
        And enters a valid City
        And clicks State dropdown menu 
        And selects QUE from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed



    Scenario: Add Dealer HYUNDAI MX QUE Organization

        Given current page is New Organization page 
        When User click Customer Dropdown menu
        And select HYUNDAI
        And click Organization Type Dropdown menu 
        And selects Dealer 
        And clicks Organization name field
        And enters Organization name
        And selects MX from Billing Address dropdown menu 
        And clicks Street 1 field
        And enters a valid Street
        And clicks City field
        And enters a valid City
        And clicks State dropdown menu 
        And selects QUE from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed




    Scenario: Add Auction HYUNDAI MX QUE Organization

        Given current page is New Organization page 
        When User click Customer Dropdown menu
        And select HYUNDAI
        And click Organization Type Dropdown menu 
        And selects Auction 
        And clicks Organization name field
        And enters Organization name
        And selects MX from Billing Address dropdown menu 
        And clicks Street 1 field
        And enters a valid Street
        And clicks City field
        And enters a valid City
        And clicks State dropdown menu 
        And selects QUE from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed




    Scenario: Add Dealer NISSAN MX QUE Organization

        Given current page is New Organization page 
        When User click Customer Dropdown menu
        And select NISSAN
        And click Organization Type Dropdown menu 
        And selects Dealer 
        And clicks Organization name field
        And enters Organization name
        And selects MX from Billing Address dropdown menu 
        And clicks Street 1 field
        And enters a valid Street
        And clicks City field
        And enters a valid City
        And clicks State dropdown menu 
        And selects QUE from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed




    Scenario: Add Auction NISSAN MX QUE Organization

        Given current page is New Organization page 
        When User click Customer Dropdown menu
        And select NISSAN
        And click Organization Type Dropdown menu 
        And selects Auction 
        And clicks Organization name field
        And enters Organization name
        And selects MX from Billing Address dropdown menu 
        And clicks Street 1 field
        And enters a valid Street
        And clicks City field
        And enters a valid City
        And clicks State dropdown menu 
        And selects QUE from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed




    
    
    Scenario: Add Dealer ALLY MX ROO Organization

        Given current page is New Organization page 
        When User click Customer Dropdown menu
        And select Chase
        And click Organization Type Dropdown menu 
        And selects Dealer 
        And clicks Organization name field
        And enters Organization name
        And selects MX from Billing Address dropdown menu 
        And clicks Street 1 field
        And enters a valid Street
        And clicks City field
        And enters a valid City
        And clicks State dropdown menu 
        And selects ROO from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed




    Scenario: Add Auction ALLY MX ROO Organization

        Given current page is New Organization page 
        When User click Customer Dropdown menu
        And select Chase
        And click Organization Type Dropdown menu 
        And selects Auction 
        And clicks Organization name field
        And enters Organization name
        And selects MX from Billing Address dropdown menu 
        And clicks Street 1 field
        And enters a valid Street
        And clicks City field
        And enters a valid City
        And clicks State dropdown menu 
        And selects ROO from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed



Scenario: Add Dealer VCI MX ROO Organization

        Given current page is New Organization page 
        When User click Customer Dropdown menu
        And select VCI
        And click Organization Type Dropdown menu 
        And selects Dealer 
        And clicks Organization name field
        And enters Organization name
        And selects MX from Billing Address dropdown menu 
        And clicks Street 1 field
        And enters a valid Street
        And clicks City field
        And enters a valid City
        And clicks State dropdown menu 
        And selects ROO from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed




    Scenario: Add Auction VCI MX ROO Organization

        Given current page is New Organization page 
        When User click Customer Dropdown menu
        And select VCI
        And click Organization Type Dropdown menu 
        And selects Auction 
        And clicks Organization name field
        And enters Organization name
        And selects MX from Billing Address dropdown menu 
        And clicks Street 1 field
        And enters a valid Street
        And clicks City field
        And enters a valid City
        And clicks State dropdown menu 
        And selects ROO from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed




    

Scenario: Add Dealer MANHEIM MX ROO Organization

        Given current page is New Organization page 
        When User click Customer Dropdown menu
        And select MANHEIM
        And click Organization Type Dropdown menu 
        And selects Dealer 
        And clicks Organization name field
        And enters Organization name
        And selects MX from Billing Address dropdown menu 
        And clicks Street 1 field
        And enters a valid Street
        And clicks City field
        And enters a valid City
        And clicks State dropdown menu 
        And selects ROO from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed




    Scenario: Add Auction MANHEIM MX ROO Organization

        Given current page is New Organization page 
        When User click Customer Dropdown menu
        And select MANHEIM
        And click Organization Type Dropdown menu 
        And selects Auction 
        And clicks Organization name field
        And enters Organization name
        And selects MX from Billing Address dropdown menu 
        And clicks Street 1 field
        And enters a valid Street
        And clicks City field
        And enters a valid City
        And clicks State dropdown menu 
        And selects ROO from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed



    Scenario: Add Dealer HYUNDAI MX ROO Organization

        Given current page is New Organization page 
        When User click Customer Dropdown menu
        And select HYUNDAI
        And click Organization Type Dropdown menu 
        And selects Dealer 
        And clicks Organization name field
        And enters Organization name
        And selects MX from Billing Address dropdown menu 
        And clicks Street 1 field
        And enters a valid Street
        And clicks City field
        And enters a valid City
        And clicks State dropdown menu 
        And selects ROO from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed




    Scenario: Add Auction HYUNDAI MX ROO Organization

        Given current page is New Organization page 
        When User click Customer Dropdown menu
        And select HYUNDAI
        And click Organization Type Dropdown menu 
        And selects Auction 
        And clicks Organization name field
        And enters Organization name
        And selects MX from Billing Address dropdown menu 
        And clicks Street 1 field
        And enters a valid Street
        And clicks City field
        And enters a valid City
        And clicks State dropdown menu 
        And selects ROO from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed




    Scenario: Add Dealer NISSAN MX ROO Organization

        Given current page is New Organization page 
        When User click Customer Dropdown menu
        And select NISSAN
        And click Organization Type Dropdown menu 
        And selects Dealer 
        And clicks Organization name field
        And enters Organization name
        And selects MX from Billing Address dropdown menu 
        And clicks Street 1 field
        And enters a valid Street
        And clicks City field
        And enters a valid City
        And clicks State dropdown menu 
        And selects ROO from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed




    Scenario: Add Auction NISSAN MX ROO Organization

        Given current page is New Organization page 
        When User click Customer Dropdown menu
        And select NISSAN
        And click Organization Type Dropdown menu 
        And selects Auction 
        And clicks Organization name field
        And enters Organization name
        And selects MX from Billing Address dropdown menu 
        And clicks Street 1 field
        And enters a valid Street
        And clicks City field
        And enters a valid City
        And clicks State dropdown menu 
        And selects ROO from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed




    
    
    Scenario: Add Dealer ALLY MX SLP Organization

        Given current page is New Organization page 
        When User click Customer Dropdown menu
        And select Chase
        And click Organization Type Dropdown menu 
        And selects Dealer 
        And clicks Organization name field
        And enters Organization name
        And selects MX from Billing Address dropdown menu 
        And clicks Street 1 field
        And enters a valid Street
        And clicks City field
        And enters a valid City
        And clicks State dropdown menu 
        And selects SLP from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed




    Scenario: Add Auction ALLY MX SLP Organization

        Given current page is New Organization page 
        When User click Customer Dropdown menu
        And select Chase
        And click Organization Type Dropdown menu 
        And selects Auction 
        And clicks Organization name field
        And enters Organization name
        And selects MX from Billing Address dropdown menu 
        And clicks Street 1 field
        And enters a valid Street
        And clicks City field
        And enters a valid City
        And clicks State dropdown menu 
        And selects SLP from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed



Scenario: Add Dealer VCI MX SLP Organization

        Given current page is New Organization page 
        When User click Customer Dropdown menu
        And select VCI
        And click Organization Type Dropdown menu 
        And selects Dealer 
        And clicks Organization name field
        And enters Organization name
        And selects MX from Billing Address dropdown menu 
        And clicks Street 1 field
        And enters a valid Street
        And clicks City field
        And enters a valid City
        And clicks State dropdown menu 
        And selects SLP from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed




    Scenario: Add Auction VCI MX SLP Organization

        Given current page is New Organization page 
        When User click Customer Dropdown menu
        And select VCI
        And click Organization Type Dropdown menu 
        And selects Auction 
        And clicks Organization name field
        And enters Organization name
        And selects MX from Billing Address dropdown menu 
        And clicks Street 1 field
        And enters a valid Street
        And clicks City field
        And enters a valid City
        And clicks State dropdown menu 
        And selects SLP from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed




    

Scenario: Add Dealer MANHEIM MX SLP Organization

        Given current page is New Organization page 
        When User click Customer Dropdown menu
        And select MANHEIM
        And click Organization Type Dropdown menu 
        And selects Dealer 
        And clicks Organization name field
        And enters Organization name
        And selects MX from Billing Address dropdown menu 
        And clicks Street 1 field
        And enters a valid Street
        And clicks City field
        And enters a valid City
        And clicks State dropdown menu 
        And selects SLP from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed




    Scenario: Add Auction MANHEIM MX SLP Organization

        Given current page is New Organization page 
        When User click Customer Dropdown menu
        And select MANHEIM
        And click Organization Type Dropdown menu 
        And selects Auction 
        And clicks Organization name field
        And enters Organization name
        And selects MX from Billing Address dropdown menu 
        And clicks Street 1 field
        And enters a valid Street
        And clicks City field
        And enters a valid City
        And clicks State dropdown menu 
        And selects SLP from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed



    Scenario: Add Dealer HYUNDAI MX SLP Organization

        Given current page is New Organization page 
        When User click Customer Dropdown menu
        And select HYUNDAI
        And click Organization Type Dropdown menu 
        And selects Dealer 
        And clicks Organization name field
        And enters Organization name
        And selects MX from Billing Address dropdown menu 
        And clicks Street 1 field
        And enters a valid Street
        And clicks City field
        And enters a valid City
        And clicks State dropdown menu 
        And selects SLP from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed




    Scenario: Add Auction HYUNDAI MX SLP Organization

        Given current page is New Organization page 
        When User click Customer Dropdown menu
        And select HYUNDAI
        And click Organization Type Dropdown menu 
        And selects Auction 
        And clicks Organization name field
        And enters Organization name
        And selects MX from Billing Address dropdown menu 
        And clicks Street 1 field
        And enters a valid Street
        And clicks City field
        And enters a valid City
        And clicks State dropdown menu 
        And selects SLP from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed




    Scenario: Add Dealer NISSAN MX SLP Organization

        Given current page is New Organization page 
        When User click Customer Dropdown menu
        And select NISSAN
        And click Organization Type Dropdown menu 
        And selects Dealer 
        And clicks Organization name field
        And enters Organization name
        And selects MX from Billing Address dropdown menu 
        And clicks Street 1 field
        And enters a valid Street
        And clicks City field
        And enters a valid City
        And clicks State dropdown menu 
        And selects SLP from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed




    Scenario: Add Auction NISSAN MX SLP Organization

        Given current page is New Organization page 
        When User click Customer Dropdown menu
        And select NISSAN
        And click Organization Type Dropdown menu 
        And selects Auction 
        And clicks Organization name field
        And enters Organization name
        And selects MX from Billing Address dropdown menu 
        And clicks Street 1 field
        And enters a valid Street
        And clicks City field
        And enters a valid City
        And clicks State dropdown menu 
        And selects SLP from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed




    
    
    Scenario: Add Dealer ALLY MX SIN Organization

        Given current page is New Organization page 
        When User click Customer Dropdown menu
        And select Chase
        And click Organization Type Dropdown menu 
        And selects Dealer 
        And clicks Organization name field
        And enters Organization name
        And selects MX from Billing Address dropdown menu 
        And clicks Street 1 field
        And enters a valid Street
        And clicks City field
        And enters a valid City
        And clicks State dropdown menu 
        And selects SIN from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed




    Scenario: Add Auction ALLY MX SIN Organization

        Given current page is New Organization page 
        When User click Customer Dropdown menu
        And select Chase
        And click Organization Type Dropdown menu 
        And selects Auction 
        And clicks Organization name field
        And enters Organization name
        And selects MX from Billing Address dropdown menu 
        And clicks Street 1 field
        And enters a valid Street
        And clicks City field
        And enters a valid City
        And clicks State dropdown menu 
        And selects SIN from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed



Scenario: Add Dealer VCI MX SIN Organization

        Given current page is New Organization page 
        When User click Customer Dropdown menu
        And select VCI
        And click Organization Type Dropdown menu 
        And selects Dealer 
        And clicks Organization name field
        And enters Organization name
        And selects MX from Billing Address dropdown menu 
        And clicks Street 1 field
        And enters a valid Street
        And clicks City field
        And enters a valid City
        And clicks State dropdown menu 
        And selects SIN from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed




    Scenario: Add Auction VCI MX SIN Organization

        Given current page is New Organization page 
        When User click Customer Dropdown menu
        And select VCI
        And click Organization Type Dropdown menu 
        And selects Auction 
        And clicks Organization name field
        And enters Organization name
        And selects MX from Billing Address dropdown menu 
        And clicks Street 1 field
        And enters a valid Street
        And clicks City field
        And enters a valid City
        And clicks State dropdown menu 
        And selects SIN from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed




    

Scenario: Add Dealer MANHEIM MX SIN Organization

        Given current page is New Organization page 
        When User click Customer Dropdown menu
        And select MANHEIM
        And click Organization Type Dropdown menu 
        And selects Dealer 
        And clicks Organization name field
        And enters Organization name
        And selects MX from Billing Address dropdown menu 
        And clicks Street 1 field
        And enters a valid Street
        And clicks City field
        And enters a valid City
        And clicks State dropdown menu 
        And selects SIN from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed




    Scenario: Add Auction MANHEIM MX SIN Organization

        Given current page is New Organization page 
        When User click Customer Dropdown menu
        And select MANHEIM
        And click Organization Type Dropdown menu 
        And selects Auction 
        And clicks Organization name field
        And enters Organization name
        And selects MX from Billing Address dropdown menu 
        And clicks Street 1 field
        And enters a valid Street
        And clicks City field
        And enters a valid City
        And clicks State dropdown menu 
        And selects SIN from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed



    Scenario: Add Dealer HYUNDAI MX SIN Organization

        Given current page is New Organization page 
        When User click Customer Dropdown menu
        And select HYUNDAI
        And click Organization Type Dropdown menu 
        And selects Dealer 
        And clicks Organization name field
        And enters Organization name
        And selects MX from Billing Address dropdown menu 
        And clicks Street 1 field
        And enters a valid Street
        And clicks City field
        And enters a valid City
        And clicks State dropdown menu 
        And selects SIN from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed




    Scenario: Add Auction HYUNDAI MX SIN Organization

        Given current page is New Organization page 
        When User click Customer Dropdown menu
        And select HYUNDAI
        And click Organization Type Dropdown menu 
        And selects Auction 
        And clicks Organization name field
        And enters Organization name
        And selects MX from Billing Address dropdown menu 
        And clicks Street 1 field
        And enters a valid Street
        And clicks City field
        And enters a valid City
        And clicks State dropdown menu 
        And selects SIN from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed




    Scenario: Add Dealer NISSAN MX SIN Organization

        Given current page is New Organization page 
        When User click Customer Dropdown menu
        And select NISSAN
        And click Organization Type Dropdown menu 
        And selects Dealer 
        And clicks Organization name field
        And enters Organization name
        And selects MX from Billing Address dropdown menu 
        And clicks Street 1 field
        And enters a valid Street
        And clicks City field
        And enters a valid City
        And clicks State dropdown menu 
        And selects SIN from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed




    Scenario: Add Auction NISSAN MX SIN Organization

        Given current page is New Organization page 
        When User click Customer Dropdown menu
        And select NISSAN
        And click Organization Type Dropdown menu 
        And selects Auction 
        And clicks Organization name field
        And enters Organization name
        And selects MX from Billing Address dropdown menu 
        And clicks Street 1 field
        And enters a valid Street
        And clicks City field
        And enters a valid City
        And clicks State dropdown menu 
        And selects SIN from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed




    
    
    Scenario: Add Dealer ALLY MX SON Organization

        Given current page is New Organization page 
        When User click Customer Dropdown menu
        And select Chase
        And click Organization Type Dropdown menu 
        And selects Dealer 
        And clicks Organization name field
        And enters Organization name
        And selects MX from Billing Address dropdown menu 
        And clicks Street 1 field
        And enters a valid Street
        And clicks City field
        And enters a valid City
        And clicks State dropdown menu 
        And selects SON from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed




    Scenario: Add Auction ALLY MX SON Organization

        Given current page is New Organization page 
        When User click Customer Dropdown menu
        And select Chase
        And click Organization Type Dropdown menu 
        And selects Auction 
        And clicks Organization name field
        And enters Organization name
        And selects MX from Billing Address dropdown menu 
        And clicks Street 1 field
        And enters a valid Street
        And clicks City field
        And enters a valid City
        And clicks State dropdown menu 
        And selects SON from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed



Scenario: Add Dealer VCI MX SON Organization

        Given current page is New Organization page 
        When User click Customer Dropdown menu
        And select VCI
        And click Organization Type Dropdown menu 
        And selects Dealer 
        And clicks Organization name field
        And enters Organization name
        And selects MX from Billing Address dropdown menu 
        And clicks Street 1 field
        And enters a valid Street
        And clicks City field
        And enters a valid City
        And clicks State dropdown menu 
        And selects SON from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed




    Scenario: Add Auction VCI MX SON Organization

        Given current page is New Organization page 
        When User click Customer Dropdown menu
        And select VCI
        And click Organization Type Dropdown menu 
        And selects Auction 
        And clicks Organization name field
        And enters Organization name
        And selects MX from Billing Address dropdown menu 
        And clicks Street 1 field
        And enters a valid Street
        And clicks City field
        And enters a valid City
        And clicks State dropdown menu 
        And selects SON from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed




    

Scenario: Add Dealer MANHEIM MX SON Organization

        Given current page is New Organization page 
        When User click Customer Dropdown menu
        And select MANHEIM
        And click Organization Type Dropdown menu 
        And selects Dealer 
        And clicks Organization name field
        And enters Organization name
        And selects MX from Billing Address dropdown menu 
        And clicks Street 1 field
        And enters a valid Street
        And clicks City field
        And enters a valid City
        And clicks State dropdown menu 
        And selects SON from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed




    Scenario: Add Auction MANHEIM MX SON Organization

        Given current page is New Organization page 
        When User click Customer Dropdown menu
        And select MANHEIM
        And click Organization Type Dropdown menu 
        And selects Auction 
        And clicks Organization name field
        And enters Organization name
        And selects MX from Billing Address dropdown menu 
        And clicks Street 1 field
        And enters a valid Street
        And clicks City field
        And enters a valid City
        And clicks State dropdown menu 
        And selects SON from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed



    Scenario: Add Dealer HYUNDAI MX SON Organization

        Given current page is New Organization page 
        When User click Customer Dropdown menu
        And select HYUNDAI
        And click Organization Type Dropdown menu 
        And selects Dealer 
        And clicks Organization name field
        And enters Organization name
        And selects MX from Billing Address dropdown menu 
        And clicks Street 1 field
        And enters a valid Street
        And clicks City field
        And enters a valid City
        And clicks State dropdown menu 
        And selects SON from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed




    Scenario: Add Auction HYUNDAI MX SON Organization

        Given current page is New Organization page 
        When User click Customer Dropdown menu
        And select HYUNDAI
        And click Organization Type Dropdown menu 
        And selects Auction 
        And clicks Organization name field
        And enters Organization name
        And selects MX from Billing Address dropdown menu 
        And clicks Street 1 field
        And enters a valid Street
        And clicks City field
        And enters a valid City
        And clicks State dropdown menu 
        And selects SON from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed




    Scenario: Add Dealer NISSAN MX SON Organization

        Given current page is New Organization page 
        When User click Customer Dropdown menu
        And select NISSAN
        And click Organization Type Dropdown menu 
        And selects Dealer 
        And clicks Organization name field
        And enters Organization name
        And selects MX from Billing Address dropdown menu 
        And clicks Street 1 field
        And enters a valid Street
        And clicks City field
        And enters a valid City
        And clicks State dropdown menu 
        And selects SON from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed




    Scenario: Add Auction NISSAN MX SON Organization

        Given current page is New Organization page 
        When User click Customer Dropdown menu
        And select NISSAN
        And click Organization Type Dropdown menu 
        And selects Auction 
        And clicks Organization name field
        And enters Organization name
        And selects MX from Billing Address dropdown menu 
        And clicks Street 1 field
        And enters a valid Street
        And clicks City field
        And enters a valid City
        And clicks State dropdown menu 
        And selects SON from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed




    
    
    Scenario: Add Dealer ALLY MX TAB Organization

        Given current page is New Organization page 
        When User click Customer Dropdown menu
        And select Chase
        And click Organization Type Dropdown menu 
        And selects Dealer 
        And clicks Organization name field
        And enters Organization name
        And selects MX from Billing Address dropdown menu 
        And clicks Street 1 field
        And enters a valid Street
        And clicks City field
        And enters a valid City
        And clicks State dropdown menu 
        And selects TAB from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed




    Scenario: Add Auction ALLY MX TAB Organization

        Given current page is New Organization page 
        When User click Customer Dropdown menu
        And select Chase
        And click Organization Type Dropdown menu 
        And selects Auction 
        And clicks Organization name field
        And enters Organization name
        And selects MX from Billing Address dropdown menu 
        And clicks Street 1 field
        And enters a valid Street
        And clicks City field
        And enters a valid City
        And clicks State dropdown menu 
        And selects TAB from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed



Scenario: Add Dealer VCI MX TAB Organization

        Given current page is New Organization page 
        When User click Customer Dropdown menu
        And select VCI
        And click Organization Type Dropdown menu 
        And selects Dealer 
        And clicks Organization name field
        And enters Organization name
        And selects MX from Billing Address dropdown menu 
        And clicks Street 1 field
        And enters a valid Street
        And clicks City field
        And enters a valid City
        And clicks State dropdown menu 
        And selects TAB from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed




    Scenario: Add Auction VCI MX TAB Organization

        Given current page is New Organization page 
        When User click Customer Dropdown menu
        And select VCI
        And click Organization Type Dropdown menu 
        And selects Auction 
        And clicks Organization name field
        And enters Organization name
        And selects MX from Billing Address dropdown menu 
        And clicks Street 1 field
        And enters a valid Street
        And clicks City field
        And enters a valid City
        And clicks State dropdown menu 
        And selects TAB from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed




    

Scenario: Add Dealer MANHEIM MX TAB Organization

        Given current page is New Organization page 
        When User click Customer Dropdown menu
        And select MANHEIM
        And click Organization Type Dropdown menu 
        And selects Dealer 
        And clicks Organization name field
        And enters Organization name
        And selects MX from Billing Address dropdown menu 
        And clicks Street 1 field
        And enters a valid Street
        And clicks City field
        And enters a valid City
        And clicks State dropdown menu 
        And selects TAB from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed




    Scenario: Add Auction MANHEIM MX TAB Organization

        Given current page is New Organization page 
        When User click Customer Dropdown menu
        And select MANHEIM
        And click Organization Type Dropdown menu 
        And selects Auction 
        And clicks Organization name field
        And enters Organization name
        And selects MX from Billing Address dropdown menu 
        And clicks Street 1 field
        And enters a valid Street
        And clicks City field
        And enters a valid City
        And clicks State dropdown menu 
        And selects TAB from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed



    Scenario: Add Dealer HYUNDAI MX TAB Organization

        Given current page is New Organization page 
        When User click Customer Dropdown menu
        And select HYUNDAI
        And click Organization Type Dropdown menu 
        And selects Dealer 
        And clicks Organization name field
        And enters Organization name
        And selects MX from Billing Address dropdown menu 
        And clicks Street 1 field
        And enters a valid Street
        And clicks City field
        And enters a valid City
        And clicks State dropdown menu 
        And selects TAB from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed




    Scenario: Add Auction HYUNDAI MX TAB Organization

        Given current page is New Organization page 
        When User click Customer Dropdown menu
        And select HYUNDAI
        And click Organization Type Dropdown menu 
        And selects Auction 
        And clicks Organization name field
        And enters Organization name
        And selects MX from Billing Address dropdown menu 
        And clicks Street 1 field
        And enters a valid Street
        And clicks City field
        And enters a valid City
        And clicks State dropdown menu 
        And selects TAB from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed




    Scenario: Add Dealer NISSAN MX TAB Organization

        Given current page is New Organization page 
        When User click Customer Dropdown menu
        And select NISSAN
        And click Organization Type Dropdown menu 
        And selects Dealer 
        And clicks Organization name field
        And enters Organization name
        And selects MX from Billing Address dropdown menu 
        And clicks Street 1 field
        And enters a valid Street
        And clicks City field
        And enters a valid City
        And clicks State dropdown menu 
        And selects TAB from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed




    Scenario: Add Auction NISSAN MX TAB Organization

        Given current page is New Organization page 
        When User click Customer Dropdown menu
        And select NISSAN
        And click Organization Type Dropdown menu 
        And selects Auction 
        And clicks Organization name field
        And enters Organization name
        And selects MX from Billing Address dropdown menu 
        And clicks Street 1 field
        And enters a valid Street
        And clicks City field
        And enters a valid City
        And clicks State dropdown menu 
        And selects TAB from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed




    
    
    Scenario: Add Dealer ALLY MX TAM Organization

        Given current page is New Organization page 
        When User click Customer Dropdown menu
        And select Chase
        And click Organization Type Dropdown menu 
        And selects Dealer 
        And clicks Organization name field
        And enters Organization name
        And selects MX from Billing Address dropdown menu 
        And clicks Street 1 field
        And enters a valid Street
        And clicks City field
        And enters a valid City
        And clicks State dropdown menu 
        And selects TAM from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed




    Scenario: Add Auction ALLY MX TAM Organization

        Given current page is New Organization page 
        When User click Customer Dropdown menu
        And select Chase
        And click Organization Type Dropdown menu 
        And selects Auction 
        And clicks Organization name field
        And enters Organization name
        And selects MX from Billing Address dropdown menu 
        And clicks Street 1 field
        And enters a valid Street
        And clicks City field
        And enters a valid City
        And clicks State dropdown menu 
        And selects TAM from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed



Scenario: Add Dealer VCI MX TAM Organization

        Given current page is New Organization page 
        When User click Customer Dropdown menu
        And select VCI
        And click Organization Type Dropdown menu 
        And selects Dealer 
        And clicks Organization name field
        And enters Organization name
        And selects MX from Billing Address dropdown menu 
        And clicks Street 1 field
        And enters a valid Street
        And clicks City field
        And enters a valid City
        And clicks State dropdown menu 
        And selects TAM from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed




    Scenario: Add Auction VCI MX TAM Organization

        Given current page is New Organization page 
        When User click Customer Dropdown menu
        And select VCI
        And click Organization Type Dropdown menu 
        And selects Auction 
        And clicks Organization name field
        And enters Organization name
        And selects MX from Billing Address dropdown menu 
        And clicks Street 1 field
        And enters a valid Street
        And clicks City field
        And enters a valid City
        And clicks State dropdown menu 
        And selects TAM from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed




    

Scenario: Add Dealer MANHEIM MX TAM Organization

        Given current page is New Organization page 
        When User click Customer Dropdown menu
        And select MANHEIM
        And click Organization Type Dropdown menu 
        And selects Dealer 
        And clicks Organization name field
        And enters Organization name
        And selects MX from Billing Address dropdown menu 
        And clicks Street 1 field
        And enters a valid Street
        And clicks City field
        And enters a valid City
        And clicks State dropdown menu 
        And selects TAM from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed




    Scenario: Add Auction MANHEIM MX TAM Organization

        Given current page is New Organization page 
        When User click Customer Dropdown menu
        And select MANHEIM
        And click Organization Type Dropdown menu 
        And selects Auction 
        And clicks Organization name field
        And enters Organization name
        And selects MX from Billing Address dropdown menu 
        And clicks Street 1 field
        And enters a valid Street
        And clicks City field
        And enters a valid City
        And clicks State dropdown menu 
        And selects TAM from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed



    Scenario: Add Dealer HYUNDAI MX TAM Organization

        Given current page is New Organization page 
        When User click Customer Dropdown menu
        And select HYUNDAI
        And click Organization Type Dropdown menu 
        And selects Dealer 
        And clicks Organization name field
        And enters Organization name
        And selects MX from Billing Address dropdown menu 
        And clicks Street 1 field
        And enters a valid Street
        And clicks City field
        And enters a valid City
        And clicks State dropdown menu 
        And selects TAM from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed




    Scenario: Add Auction HYUNDAI MX TAM Organization

        Given current page is New Organization page 
        When User click Customer Dropdown menu
        And select HYUNDAI
        And click Organization Type Dropdown menu 
        And selects Auction 
        And clicks Organization name field
        And enters Organization name
        And selects MX from Billing Address dropdown menu 
        And clicks Street 1 field
        And enters a valid Street
        And clicks City field
        And enters a valid City
        And clicks State dropdown menu 
        And selects TAM from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed




    Scenario: Add Dealer NISSAN MX TAM Organization

        Given current page is New Organization page 
        When User click Customer Dropdown menu
        And select NISSAN
        And click Organization Type Dropdown menu 
        And selects Dealer 
        And clicks Organization name field
        And enters Organization name
        And selects MX from Billing Address dropdown menu 
        And clicks Street 1 field
        And enters a valid Street
        And clicks City field
        And enters a valid City
        And clicks State dropdown menu 
        And selects TAM from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed




    Scenario: Add Auction NISSAN MX TAM Organization

        Given current page is New Organization page 
        When User click Customer Dropdown menu
        And select NISSAN
        And click Organization Type Dropdown menu 
        And selects Auction 
        And clicks Organization name field
        And enters Organization name
        And selects MX from Billing Address dropdown menu 
        And clicks Street 1 field
        And enters a valid Street
        And clicks City field
        And enters a valid City
        And clicks State dropdown menu 
        And selects TAM from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed




    
    
    Scenario: Add Dealer ALLY MX TLA Organization

        Given current page is New Organization page 
        When User click Customer Dropdown menu
        And select Chase
        And click Organization Type Dropdown menu 
        And selects Dealer 
        And clicks Organization name field
        And enters Organization name
        And selects MX from Billing Address dropdown menu 
        And clicks Street 1 field
        And enters a valid Street
        And clicks City field
        And enters a valid City
        And clicks State dropdown menu 
        And selects TLA from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed




    Scenario: Add Auction ALLY MX TLA Organization

        Given current page is New Organization page 
        When User click Customer Dropdown menu
        And select Chase
        And click Organization Type Dropdown menu 
        And selects Auction 
        And clicks Organization name field
        And enters Organization name
        And selects MX from Billing Address dropdown menu 
        And clicks Street 1 field
        And enters a valid Street
        And clicks City field
        And enters a valid City
        And clicks State dropdown menu 
        And selects TLA from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed



Scenario: Add Dealer VCI MX TLA Organization

        Given current page is New Organization page 
        When User click Customer Dropdown menu
        And select VCI
        And click Organization Type Dropdown menu 
        And selects Dealer 
        And clicks Organization name field
        And enters Organization name
        And selects MX from Billing Address dropdown menu 
        And clicks Street 1 field
        And enters a valid Street
        And clicks City field
        And enters a valid City
        And clicks State dropdown menu 
        And selects TLA from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed




    Scenario: Add Auction VCI MX TLA Organization

        Given current page is New Organization page 
        When User click Customer Dropdown menu
        And select VCI
        And click Organization Type Dropdown menu 
        And selects Auction 
        And clicks Organization name field
        And enters Organization name
        And selects MX from Billing Address dropdown menu 
        And clicks Street 1 field
        And enters a valid Street
        And clicks City field
        And enters a valid City
        And clicks State dropdown menu 
        And selects TLA from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed




    

Scenario: Add Dealer MANHEIM MX TLA Organization

        Given current page is New Organization page 
        When User click Customer Dropdown menu
        And select MANHEIM
        And click Organization Type Dropdown menu 
        And selects Dealer 
        And clicks Organization name field
        And enters Organization name
        And selects MX from Billing Address dropdown menu 
        And clicks Street 1 field
        And enters a valid Street
        And clicks City field
        And enters a valid City
        And clicks State dropdown menu 
        And selects TLA from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed




    Scenario: Add Auction MANHEIM MX TLA Organization

        Given current page is New Organization page 
        When User click Customer Dropdown menu
        And select MANHEIM
        And click Organization Type Dropdown menu 
        And selects Auction 
        And clicks Organization name field
        And enters Organization name
        And selects MX from Billing Address dropdown menu 
        And clicks Street 1 field
        And enters a valid Street
        And clicks City field
        And enters a valid City
        And clicks State dropdown menu 
        And selects TLA from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed



    Scenario: Add Dealer HYUNDAI MX TLA Organization

        Given current page is New Organization page 
        When User click Customer Dropdown menu
        And select HYUNDAI
        And click Organization Type Dropdown menu 
        And selects Dealer 
        And clicks Organization name field
        And enters Organization name
        And selects MX from Billing Address dropdown menu 
        And clicks Street 1 field
        And enters a valid Street
        And clicks City field
        And enters a valid City
        And clicks State dropdown menu 
        And selects TLA from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed




    Scenario: Add Auction HYUNDAI MX TLA Organization

        Given current page is New Organization page 
        When User click Customer Dropdown menu
        And select HYUNDAI
        And click Organization Type Dropdown menu 
        And selects Auction 
        And clicks Organization name field
        And enters Organization name
        And selects MX from Billing Address dropdown menu 
        And clicks Street 1 field
        And enters a valid Street
        And clicks City field
        And enters a valid City
        And clicks State dropdown menu 
        And selects TLA from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed




    Scenario: Add Dealer NISSAN MX TLA Organization

        Given current page is New Organization page 
        When User click Customer Dropdown menu
        And select NISSAN
        And click Organization Type Dropdown menu 
        And selects Dealer 
        And clicks Organization name field
        And enters Organization name
        And selects MX from Billing Address dropdown menu 
        And clicks Street 1 field
        And enters a valid Street
        And clicks City field
        And enters a valid City
        And clicks State dropdown menu 
        And selects TLA from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed




    Scenario: Add Auction NISSAN MX TLA Organization

        Given current page is New Organization page 
        When User click Customer Dropdown menu
        And select NISSAN
        And click Organization Type Dropdown menu 
        And selects Auction 
        And clicks Organization name field
        And enters Organization name
        And selects MX from Billing Address dropdown menu 
        And clicks Street 1 field
        And enters a valid Street
        And clicks City field
        And enters a valid City
        And clicks State dropdown menu 
        And selects TLA from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed




    
    
    Scenario: Add Dealer ALLY MX VER Organization

        Given current page is New Organization page 
        When User click Customer Dropdown menu
        And select Chase
        And click Organization Type Dropdown menu 
        And selects Dealer 
        And clicks Organization name field
        And enters Organization name
        And selects MX from Billing Address dropdown menu 
        And clicks Street 1 field
        And enters a valid Street
        And clicks City field
        And enters a valid City
        And clicks State dropdown menu 
        And selects VER from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed




    Scenario: Add Auction ALLY MX VER Organization

        Given current page is New Organization page 
        When User click Customer Dropdown menu
        And select Chase
        And click Organization Type Dropdown menu 
        And selects Auction 
        And clicks Organization name field
        And enters Organization name
        And selects MX from Billing Address dropdown menu 
        And clicks Street 1 field
        And enters a valid Street
        And clicks City field
        And enters a valid City
        And clicks State dropdown menu 
        And selects VER from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed



Scenario: Add Dealer VCI MX VER Organization

        Given current page is New Organization page 
        When User click Customer Dropdown menu
        And select VCI
        And click Organization Type Dropdown menu 
        And selects Dealer 
        And clicks Organization name field
        And enters Organization name
        And selects MX from Billing Address dropdown menu 
        And clicks Street 1 field
        And enters a valid Street
        And clicks City field
        And enters a valid City
        And clicks State dropdown menu 
        And selects VER from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed




    Scenario: Add Auction VCI MX VER Organization

        Given current page is New Organization page 
        When User click Customer Dropdown menu
        And select VCI
        And click Organization Type Dropdown menu 
        And selects Auction 
        And clicks Organization name field
        And enters Organization name
        And selects MX from Billing Address dropdown menu 
        And clicks Street 1 field
        And enters a valid Street
        And clicks City field
        And enters a valid City
        And clicks State dropdown menu 
        And selects VER from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed




    

Scenario: Add Dealer MANHEIM MX VER Organization

        Given current page is New Organization page 
        When User click Customer Dropdown menu
        And select MANHEIM
        And click Organization Type Dropdown menu 
        And selects Dealer 
        And clicks Organization name field
        And enters Organization name
        And selects MX from Billing Address dropdown menu 
        And clicks Street 1 field
        And enters a valid Street
        And clicks City field
        And enters a valid City
        And clicks State dropdown menu 
        And selects VER from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed




    Scenario: Add Auction MANHEIM MX VER Organization

        Given current page is New Organization page 
        When User click Customer Dropdown menu
        And select MANHEIM
        And click Organization Type Dropdown menu 
        And selects Auction 
        And clicks Organization name field
        And enters Organization name
        And selects MX from Billing Address dropdown menu 
        And clicks Street 1 field
        And enters a valid Street
        And clicks City field
        And enters a valid City
        And clicks State dropdown menu 
        And selects VER from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed



    Scenario: Add Dealer HYUNDAI MX VER Organization

        Given current page is New Organization page 
        When User click Customer Dropdown menu
        And select HYUNDAI
        And click Organization Type Dropdown menu 
        And selects Dealer 
        And clicks Organization name field
        And enters Organization name
        And selects MX from Billing Address dropdown menu 
        And clicks Street 1 field
        And enters a valid Street
        And clicks City field
        And enters a valid City
        And clicks State dropdown menu 
        And selects VER from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed




    Scenario: Add Auction HYUNDAI MX VER Organization

        Given current page is New Organization page 
        When User click Customer Dropdown menu
        And select HYUNDAI
        And click Organization Type Dropdown menu 
        And selects Auction 
        And clicks Organization name field
        And enters Organization name
        And selects MX from Billing Address dropdown menu 
        And clicks Street 1 field
        And enters a valid Street
        And clicks City field
        And enters a valid City
        And clicks State dropdown menu 
        And selects VER from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed




    Scenario: Add Dealer NISSAN MX VER Organization

        Given current page is New Organization page 
        When User click Customer Dropdown menu
        And select NISSAN
        And click Organization Type Dropdown menu 
        And selects Dealer 
        And clicks Organization name field
        And enters Organization name
        And selects MX from Billing Address dropdown menu 
        And clicks Street 1 field
        And enters a valid Street
        And clicks City field
        And enters a valid City
        And clicks State dropdown menu 
        And selects VER from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed




    Scenario: Add Auction NISSAN MX VER Organization

        Given current page is New Organization page 
        When User click Customer Dropdown menu
        And select NISSAN
        And click Organization Type Dropdown menu 
        And selects Auction 
        And clicks Organization name field
        And enters Organization name
        And selects MX from Billing Address dropdown menu 
        And clicks Street 1 field
        And enters a valid Street
        And clicks City field
        And enters a valid City
        And clicks State dropdown menu 
        And selects VER from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed




    
    
    Scenario: Add Dealer ALLY MX YUC Organization

        Given current page is New Organization page 
        When User click Customer Dropdown menu
        And select Chase
        And click Organization Type Dropdown menu 
        And selects Dealer 
        And clicks Organization name field
        And enters Organization name
        And selects MX from Billing Address dropdown menu 
        And clicks Street 1 field
        And enters a valid Street
        And clicks City field
        And enters a valid City
        And clicks State dropdown menu 
        And selects YUC from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed




    Scenario: Add Auction ALLY MX YUC Organization

        Given current page is New Organization page 
        When User click Customer Dropdown menu
        And select Chase
        And click Organization Type Dropdown menu 
        And selects Auction 
        And clicks Organization name field
        And enters Organization name
        And selects MX from Billing Address dropdown menu 
        And clicks Street 1 field
        And enters a valid Street
        And clicks City field
        And enters a valid City
        And clicks State dropdown menu 
        And selects YUC from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed



Scenario: Add Dealer VCI MX YUC Organization

        Given current page is New Organization page 
        When User click Customer Dropdown menu
        And select VCI
        And click Organization Type Dropdown menu 
        And selects Dealer 
        And clicks Organization name field
        And enters Organization name
        And selects MX from Billing Address dropdown menu 
        And clicks Street 1 field
        And enters a valid Street
        And clicks City field
        And enters a valid City
        And clicks State dropdown menu 
        And selects YUC from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed




    Scenario: Add Auction VCI MX YUC Organization

        Given current page is New Organization page 
        When User click Customer Dropdown menu
        And select VCI
        And click Organization Type Dropdown menu 
        And selects Auction 
        And clicks Organization name field
        And enters Organization name
        And selects MX from Billing Address dropdown menu 
        And clicks Street 1 field
        And enters a valid Street
        And clicks City field
        And enters a valid City
        And clicks State dropdown menu 
        And selects YUC from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed




    

Scenario: Add Dealer MANHEIM MX YUC Organization

        Given current page is New Organization page 
        When User click Customer Dropdown menu
        And select MANHEIM
        And click Organization Type Dropdown menu 
        And selects Dealer 
        And clicks Organization name field
        And enters Organization name
        And selects MX from Billing Address dropdown menu 
        And clicks Street 1 field
        And enters a valid Street
        And clicks City field
        And enters a valid City
        And clicks State dropdown menu 
        And selects YUC from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed




    Scenario: Add Auction MANHEIM MX YUC Organization

        Given current page is New Organization page 
        When User click Customer Dropdown menu
        And select MANHEIM
        And click Organization Type Dropdown menu 
        And selects Auction 
        And clicks Organization name field
        And enters Organization name
        And selects MX from Billing Address dropdown menu 
        And clicks Street 1 field
        And enters a valid Street
        And clicks City field
        And enters a valid City
        And clicks State dropdown menu 
        And selects YUC from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed



    Scenario: Add Dealer HYUNDAI MX YUC Organization

        Given current page is New Organization page 
        When User click Customer Dropdown menu
        And select HYUNDAI
        And click Organization Type Dropdown menu 
        And selects Dealer 
        And clicks Organization name field
        And enters Organization name
        And selects MX from Billing Address dropdown menu 
        And clicks Street 1 field
        And enters a valid Street
        And clicks City field
        And enters a valid City
        And clicks State dropdown menu 
        And selects YUC from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed




    Scenario: Add Auction HYUNDAI MX YUC Organization

        Given current page is New Organization page 
        When User click Customer Dropdown menu
        And select HYUNDAI
        And click Organization Type Dropdown menu 
        And selects Auction 
        And clicks Organization name field
        And enters Organization name
        And selects MX from Billing Address dropdown menu 
        And clicks Street 1 field
        And enters a valid Street
        And clicks City field
        And enters a valid City
        And clicks State dropdown menu 
        And selects YUC from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed




    Scenario: Add Dealer NISSAN MX YUC Organization

        Given current page is New Organization page 
        When User click Customer Dropdown menu
        And select NISSAN
        And click Organization Type Dropdown menu 
        And selects Dealer 
        And clicks Organization name field
        And enters Organization name
        And selects MX from Billing Address dropdown menu 
        And clicks Street 1 field
        And enters a valid Street
        And clicks City field
        And enters a valid City
        And clicks State dropdown menu 
        And selects YUC from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed




    Scenario: Add Auction NISSAN MX YUC Organization

        Given current page is New Organization page 
        When User click Customer Dropdown menu
        And select NISSAN
        And click Organization Type Dropdown menu 
        And selects Auction 
        And clicks Organization name field
        And enters Organization name
        And selects MX from Billing Address dropdown menu 
        And clicks Street 1 field
        And enters a valid Street
        And clicks City field
        And enters a valid City
        And clicks State dropdown menu 
        And selects YUC from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed




    
    
    Scenario: Add Dealer ALLY MX ZAC Organization

        Given current page is New Organization page 
        When User click Customer Dropdown menu
        And select Chase
        And click Organization Type Dropdown menu 
        And selects Dealer 
        And clicks Organization name field
        And enters Organization name
        And selects MX from Billing Address dropdown menu 
        And clicks Street 1 field
        And enters a valid Street
        And clicks City field
        And enters a valid City
        And clicks State dropdown menu 
        And selects ZAC from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed




    Scenario: Add Auction ALLY MX ZAC Organization

        Given current page is New Organization page 
        When User click Customer Dropdown menu
        And select Chase
        And click Organization Type Dropdown menu 
        And selects Auction 
        And clicks Organization name field
        And enters Organization name
        And selects MX from Billing Address dropdown menu 
        And clicks Street 1 field
        And enters a valid Street
        And clicks City field
        And enters a valid City
        And clicks State dropdown menu 
        And selects ZAC from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed



Scenario: Add Dealer VCI MX ZAC Organization

        Given current page is New Organization page 
        When User click Customer Dropdown menu
        And select VCI
        And click Organization Type Dropdown menu 
        And selects Dealer 
        And clicks Organization name field
        And enters Organization name
        And selects MX from Billing Address dropdown menu 
        And clicks Street 1 field
        And enters a valid Street
        And clicks City field
        And enters a valid City
        And clicks State dropdown menu 
        And selects ZAC from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed




    Scenario: Add Auction VCI MX ZAC Organization

        Given current page is New Organization page 
        When User click Customer Dropdown menu
        And select VCI
        And click Organization Type Dropdown menu 
        And selects Auction 
        And clicks Organization name field
        And enters Organization name
        And selects MX from Billing Address dropdown menu 
        And clicks Street 1 field
        And enters a valid Street
        And clicks City field
        And enters a valid City
        And clicks State dropdown menu 
        And selects ZAC from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed




    

Scenario: Add Dealer MANHEIM MX ZAC Organization

        Given current page is New Organization page 
        When User click Customer Dropdown menu
        And select MANHEIM
        And click Organization Type Dropdown menu 
        And selects Dealer 
        And clicks Organization name field
        And enters Organization name
        And selects MX from Billing Address dropdown menu 
        And clicks Street 1 field
        And enters a valid Street
        And clicks City field
        And enters a valid City
        And clicks State dropdown menu 
        And selects ZAC from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed




    Scenario: Add Auction MANHEIM MX ZAC Organization

        Given current page is New Organization page 
        When User click Customer Dropdown menu
        And select MANHEIM
        And click Organization Type Dropdown menu 
        And selects Auction 
        And clicks Organization name field
        And enters Organization name
        And selects MX from Billing Address dropdown menu 
        And clicks Street 1 field
        And enters a valid Street
        And clicks City field
        And enters a valid City
        And clicks State dropdown menu 
        And selects ZAC from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed



    Scenario: Add Dealer HYUNDAI MX ZAC Organization

        Given current page is New Organization page 
        When User click Customer Dropdown menu
        And select HYUNDAI
        And click Organization Type Dropdown menu 
        And selects Dealer 
        And clicks Organization name field
        And enters Organization name
        And selects MX from Billing Address dropdown menu 
        And clicks Street 1 field
        And enters a valid Street
        And clicks City field
        And enters a valid City
        And clicks State dropdown menu 
        And selects ZAC from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed




    Scenario: Add Auction HYUNDAI MX ZAC Organization

        Given current page is New Organization page 
        When User click Customer Dropdown menu
        And select HYUNDAI
        And click Organization Type Dropdown menu 
        And selects Auction 
        And clicks Organization name field
        And enters Organization name
        And selects MX from Billing Address dropdown menu 
        And clicks Street 1 field
        And enters a valid Street
        And clicks City field
        And enters a valid City
        And clicks State dropdown menu 
        And selects ZAC from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed




    Scenario: Add Dealer NISSAN MX ZAC Organization

        Given current page is New Organization page 
        When User click Customer Dropdown menu
        And select NISSAN
        And click Organization Type Dropdown menu 
        And selects Dealer 
        And clicks Organization name field
        And enters Organization name
        And selects MX from Billing Address dropdown menu 
        And clicks Street 1 field
        And enters a valid Street
        And clicks City field
        And enters a valid City
        And clicks State dropdown menu 
        And selects ZAC from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed




    Scenario: Add Auction NISSAN MX ZAC Organization

        Given current page is New Organization page 
        When User click Customer Dropdown menu
        And select NISSAN
        And click Organization Type Dropdown menu 
        And selects Auction 
        And clicks Organization name field
        And enters Organization name
        And selects MX from Billing Address dropdown menu 
        And clicks Street 1 field
        And enters a valid Street
        And clicks City field
        And enters a valid City
        And clicks State dropdown menu 
        And selects ZAC from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed





    
    
    Scenario: Add Dealer ALLY CA MB Organization

        Given current page is New Organization page 
        When User click Customer Dropdown menu
        And select Chase
        And click Organization Type Dropdown menu 
        And selects Dealer 
        And clicks Organization name field
        And enters Organization name
        And selects CA from Billing Address dropdown menu 
        And clicks Street 1 field
        And enters a valid Street
        And clicks City field
        And enters a valid City
        And clicks State dropdown menu 
        And selects MB from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed




    Scenario: Add Auction ALLY CA MB Organization

        Given current page is New Organization page 
        When User click Customer Dropdown menu
        And select Chase
        And click Organization Type Dropdown menu 
        And selects Auction 
        And clicks Organization name field
        And enters Organization name
        And selects CA from Billing Address dropdown menu 
        And clicks Street 1 field
        And enters a valid Street
        And clicks City field
        And enters a valid City
        And clicks State dropdown menu 
        And selects MB from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed



Scenario: Add Dealer VCI CA MB Organization

        Given current page is New Organization page 
        When User click Customer Dropdown menu
        And select VCI
        And click Organization Type Dropdown menu 
        And selects Dealer 
        And clicks Organization name field
        And enters Organization name
        And selects CA from Billing Address dropdown menu 
        And clicks Street 1 field
        And enters a valid Street
        And clicks City field
        And enters a valid City
        And clicks State dropdown menu 
        And selects MB from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed




    Scenario: Add Auction VCI CA MB Organization

        Given current page is New Organization page 
        When User click Customer Dropdown menu
        And select VCI
        And click Organization Type Dropdown menu 
        And selects Auction 
        And clicks Organization name field
        And enters Organization name
        And selects CA from Billing Address dropdown menu 
        And clicks Street 1 field
        And enters a valid Street
        And clicks City field
        And enters a valid City
        And clicks State dropdown menu 
        And selects MB from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed




    

Scenario: Add Dealer MANHEIM CA MB Organization

        Given current page is New Organization page 
        When User click Customer Dropdown menu
        And select MANHEIM
        And click Organization Type Dropdown menu 
        And selects Dealer 
        And clicks Organization name field
        And enters Organization name
        And selects CA from Billing Address dropdown menu 
        And clicks Street 1 field
        And enters a valid Street
        And clicks City field
        And enters a valid City
        And clicks State dropdown menu 
        And selects MB from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed




    Scenario: Add Auction MANHEIM CA MB Organization

        Given current page is New Organization page 
        When User click Customer Dropdown menu
        And select MANHEIM
        And click Organization Type Dropdown menu 
        And selects Auction 
        And clicks Organization name field
        And enters Organization name
        And selects CA from Billing Address dropdown menu 
        And clicks Street 1 field
        And enters a valid Street
        And clicks City field
        And enters a valid City
        And clicks State dropdown menu 
        And selects MB from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed



    Scenario: Add Dealer HYUNDAI CA MB Organization

        Given current page is New Organization page 
        When User click Customer Dropdown menu
        And select HYUNDAI
        And click Organization Type Dropdown menu 
        And selects Dealer 
        And clicks Organization name field
        And enters Organization name
        And selects CA from Billing Address dropdown menu 
        And clicks Street 1 field
        And enters a valid Street
        And clicks City field
        And enters a valid City
        And clicks State dropdown menu 
        And selects MB from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed




    Scenario: Add Auction HYUNDAI CA MB Organization

        Given current page is New Organization page 
        When User click Customer Dropdown menu
        And select HYUNDAI
        And click Organization Type Dropdown menu 
        And selects Auction 
        And clicks Organization name field
        And enters Organization name
        And selects CA from Billing Address dropdown menu 
        And clicks Street 1 field
        And enters a valid Street
        And clicks City field
        And enters a valid City
        And clicks State dropdown menu 
        And selects MB from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed




    Scenario: Add Dealer NISSAN CA MB Organization

        Given current page is New Organization page 
        When User click Customer Dropdown menu
        And select NISSAN
        And click Organization Type Dropdown menu 
        And selects Dealer 
        And clicks Organization name field
        And enters Organization name
        And selects CA from Billing Address dropdown menu 
        And clicks Street 1 field
        And enters a valid Street
        And clicks City field
        And enters a valid City
        And clicks State dropdown menu 
        And selects MB from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed




    Scenario: Add Auction NISSAN CA MB Organization

        Given current page is New Organization page 
        When User click Customer Dropdown menu
        And select NISSAN
        And click Organization Type Dropdown menu 
        And selects Auction 
        And clicks Organization name field
        And enters Organization name
        And selects CA from Billing Address dropdown menu 
        And clicks Street 1 field
        And enters a valid Street
        And clicks City field
        And enters a valid City
        And clicks State dropdown menu 
        And selects MB from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed




    
    
    Scenario: Add Dealer ALLY CA NB Organization

        Given current page is New Organization page 
        When User click Customer Dropdown menu
        And select Chase
        And click Organization Type Dropdown menu 
        And selects Dealer 
        And clicks Organization name field
        And enters Organization name
        And selects CA from Billing Address dropdown menu 
        And clicks Street 1 field
        And enters a valid Street
        And clicks City field
        And enters a valid City
        And clicks State dropdown menu 
        And selects NB from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed




    Scenario: Add Auction ALLY CA NB Organization

        Given current page is New Organization page 
        When User click Customer Dropdown menu
        And select Chase
        And click Organization Type Dropdown menu 
        And selects Auction 
        And clicks Organization name field
        And enters Organization name
        And selects CA from Billing Address dropdown menu 
        And clicks Street 1 field
        And enters a valid Street
        And clicks City field
        And enters a valid City
        And clicks State dropdown menu 
        And selects NB from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed



Scenario: Add Dealer VCI CA NB Organization

        Given current page is New Organization page 
        When User click Customer Dropdown menu
        And select VCI
        And click Organization Type Dropdown menu 
        And selects Dealer 
        And clicks Organization name field
        And enters Organization name
        And selects CA from Billing Address dropdown menu 
        And clicks Street 1 field
        And enters a valid Street
        And clicks City field
        And enters a valid City
        And clicks State dropdown menu 
        And selects NB from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed




    Scenario: Add Auction VCI CA NB Organization

        Given current page is New Organization page 
        When User click Customer Dropdown menu
        And select VCI
        And click Organization Type Dropdown menu 
        And selects Auction 
        And clicks Organization name field
        And enters Organization name
        And selects CA from Billing Address dropdown menu 
        And clicks Street 1 field
        And enters a valid Street
        And clicks City field
        And enters a valid City
        And clicks State dropdown menu 
        And selects NB from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed




    

Scenario: Add Dealer MANHEIM CA NB Organization

        Given current page is New Organization page 
        When User click Customer Dropdown menu
        And select MANHEIM
        And click Organization Type Dropdown menu 
        And selects Dealer 
        And clicks Organization name field
        And enters Organization name
        And selects CA from Billing Address dropdown menu 
        And clicks Street 1 field
        And enters a valid Street
        And clicks City field
        And enters a valid City
        And clicks State dropdown menu 
        And selects NB from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed




    Scenario: Add Auction MANHEIM CA NB Organization

        Given current page is New Organization page 
        When User click Customer Dropdown menu
        And select MANHEIM
        And click Organization Type Dropdown menu 
        And selects Auction 
        And clicks Organization name field
        And enters Organization name
        And selects CA from Billing Address dropdown menu 
        And clicks Street 1 field
        And enters a valid Street
        And clicks City field
        And enters a valid City
        And clicks State dropdown menu 
        And selects NB from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed



    Scenario: Add Dealer HYUNDAI CA NB Organization

        Given current page is New Organization page 
        When User click Customer Dropdown menu
        And select HYUNDAI
        And click Organization Type Dropdown menu 
        And selects Dealer 
        And clicks Organization name field
        And enters Organization name
        And selects CA from Billing Address dropdown menu 
        And clicks Street 1 field
        And enters a valid Street
        And clicks City field
        And enters a valid City
        And clicks State dropdown menu 
        And selects NB from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed




    Scenario: Add Auction HYUNDAI CA NB Organization

        Given current page is New Organization page 
        When User click Customer Dropdown menu
        And select HYUNDAI
        And click Organization Type Dropdown menu 
        And selects Auction 
        And clicks Organization name field
        And enters Organization name
        And selects CA from Billing Address dropdown menu 
        And clicks Street 1 field
        And enters a valid Street
        And clicks City field
        And enters a valid City
        And clicks State dropdown menu 
        And selects NB from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed




    Scenario: Add Dealer NISSAN CA NB Organization

        Given current page is New Organization page 
        When User click Customer Dropdown menu
        And select NISSAN
        And click Organization Type Dropdown menu 
        And selects Dealer 
        And clicks Organization name field
        And enters Organization name
        And selects CA from Billing Address dropdown menu 
        And clicks Street 1 field
        And enters a valid Street
        And clicks City field
        And enters a valid City
        And clicks State dropdown menu 
        And selects NB from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed




    Scenario: Add Auction NISSAN CA NB Organization

        Given current page is New Organization page 
        When User click Customer Dropdown menu
        And select NISSAN
        And click Organization Type Dropdown menu 
        And selects Auction 
        And clicks Organization name field
        And enters Organization name
        And selects CA from Billing Address dropdown menu 
        And clicks Street 1 field
        And enters a valid Street
        And clicks City field
        And enters a valid City
        And clicks State dropdown menu 
        And selects NB from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed




    
    
    Scenario: Add Dealer ALLY CA NL Organization

        Given current page is New Organization page 
        When User click Customer Dropdown menu
        And select Chase
        And click Organization Type Dropdown menu 
        And selects Dealer 
        And clicks Organization name field
        And enters Organization name
        And selects CA from Billing Address dropdown menu 
        And clicks Street 1 field
        And enters a valid Street
        And clicks City field
        And enters a valid City
        And clicks State dropdown menu 
        And selects NL from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed




    Scenario: Add Auction ALLY CA NL Organization

        Given current page is New Organization page 
        When User click Customer Dropdown menu
        And select Chase
        And click Organization Type Dropdown menu 
        And selects Auction 
        And clicks Organization name field
        And enters Organization name
        And selects CA from Billing Address dropdown menu 
        And clicks Street 1 field
        And enters a valid Street
        And clicks City field
        And enters a valid City
        And clicks State dropdown menu 
        And selects NL from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed



Scenario: Add Dealer VCI CA NL Organization

        Given current page is New Organization page 
        When User click Customer Dropdown menu
        And select VCI
        And click Organization Type Dropdown menu 
        And selects Dealer 
        And clicks Organization name field
        And enters Organization name
        And selects CA from Billing Address dropdown menu 
        And clicks Street 1 field
        And enters a valid Street
        And clicks City field
        And enters a valid City
        And clicks State dropdown menu 
        And selects NL from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed




    Scenario: Add Auction VCI CA NL Organization

        Given current page is New Organization page 
        When User click Customer Dropdown menu
        And select VCI
        And click Organization Type Dropdown menu 
        And selects Auction 
        And clicks Organization name field
        And enters Organization name
        And selects CA from Billing Address dropdown menu 
        And clicks Street 1 field
        And enters a valid Street
        And clicks City field
        And enters a valid City
        And clicks State dropdown menu 
        And selects NL from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed




    

Scenario: Add Dealer MANHEIM CA NL Organization

        Given current page is New Organization page 
        When User click Customer Dropdown menu
        And select MANHEIM
        And click Organization Type Dropdown menu 
        And selects Dealer 
        And clicks Organization name field
        And enters Organization name
        And selects CA from Billing Address dropdown menu 
        And clicks Street 1 field
        And enters a valid Street
        And clicks City field
        And enters a valid City
        And clicks State dropdown menu 
        And selects NL from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed




    Scenario: Add Auction MANHEIM CA NL Organization

        Given current page is New Organization page 
        When User click Customer Dropdown menu
        And select MANHEIM
        And click Organization Type Dropdown menu 
        And selects Auction 
        And clicks Organization name field
        And enters Organization name
        And selects CA from Billing Address dropdown menu 
        And clicks Street 1 field
        And enters a valid Street
        And clicks City field
        And enters a valid City
        And clicks State dropdown menu 
        And selects NL from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed



    Scenario: Add Dealer HYUNDAI CA NL Organization

        Given current page is New Organization page 
        When User click Customer Dropdown menu
        And select HYUNDAI
        And click Organization Type Dropdown menu 
        And selects Dealer 
        And clicks Organization name field
        And enters Organization name
        And selects CA from Billing Address dropdown menu 
        And clicks Street 1 field
        And enters a valid Street
        And clicks City field
        And enters a valid City
        And clicks State dropdown menu 
        And selects NL from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed




    Scenario: Add Auction HYUNDAI CA NL Organization

        Given current page is New Organization page 
        When User click Customer Dropdown menu
        And select HYUNDAI
        And click Organization Type Dropdown menu 
        And selects Auction 
        And clicks Organization name field
        And enters Organization name
        And selects CA from Billing Address dropdown menu 
        And clicks Street 1 field
        And enters a valid Street
        And clicks City field
        And enters a valid City
        And clicks State dropdown menu 
        And selects NL from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed




    Scenario: Add Dealer NISSAN CA NL Organization

        Given current page is New Organization page 
        When User click Customer Dropdown menu
        And select NISSAN
        And click Organization Type Dropdown menu 
        And selects Dealer 
        And clicks Organization name field
        And enters Organization name
        And selects CA from Billing Address dropdown menu 
        And clicks Street 1 field
        And enters a valid Street
        And clicks City field
        And enters a valid City
        And clicks State dropdown menu 
        And selects NL from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed




    Scenario: Add Auction NISSAN CA NL Organization

        Given current page is New Organization page 
        When User click Customer Dropdown menu
        And select NISSAN
        And click Organization Type Dropdown menu 
        And selects Auction 
        And clicks Organization name field
        And enters Organization name
        And selects CA from Billing Address dropdown menu 
        And clicks Street 1 field
        And enters a valid Street
        And clicks City field
        And enters a valid City
        And clicks State dropdown menu 
        And selects NL from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed




    
    
    Scenario: Add Dealer ALLY CA NS Organization

        Given current page is New Organization page 
        When User click Customer Dropdown menu
        And select Chase
        And click Organization Type Dropdown menu 
        And selects Dealer 
        And clicks Organization name field
        And enters Organization name
        And selects CA from Billing Address dropdown menu 
        And clicks Street 1 field
        And enters a valid Street
        And clicks City field
        And enters a valid City
        And clicks State dropdown menu 
        And selects NS from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed




    Scenario: Add Auction ALLY CA NS Organization

        Given current page is New Organization page 
        When User click Customer Dropdown menu
        And select Chase
        And click Organization Type Dropdown menu 
        And selects Auction 
        And clicks Organization name field
        And enters Organization name
        And selects CA from Billing Address dropdown menu 
        And clicks Street 1 field
        And enters a valid Street
        And clicks City field
        And enters a valid City
        And clicks State dropdown menu 
        And selects NS from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed



Scenario: Add Dealer VCI CA NS Organization

        Given current page is New Organization page 
        When User click Customer Dropdown menu
        And select VCI
        And click Organization Type Dropdown menu 
        And selects Dealer 
        And clicks Organization name field
        And enters Organization name
        And selects CA from Billing Address dropdown menu 
        And clicks Street 1 field
        And enters a valid Street
        And clicks City field
        And enters a valid City
        And clicks State dropdown menu 
        And selects NS from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed




    Scenario: Add Auction VCI CA NS Organization

        Given current page is New Organization page 
        When User click Customer Dropdown menu
        And select VCI
        And click Organization Type Dropdown menu 
        And selects Auction 
        And clicks Organization name field
        And enters Organization name
        And selects CA from Billing Address dropdown menu 
        And clicks Street 1 field
        And enters a valid Street
        And clicks City field
        And enters a valid City
        And clicks State dropdown menu 
        And selects NS from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed




    

Scenario: Add Dealer MANHEIM CA NS Organization

        Given current page is New Organization page 
        When User click Customer Dropdown menu
        And select MANHEIM
        And click Organization Type Dropdown menu 
        And selects Dealer 
        And clicks Organization name field
        And enters Organization name
        And selects CA from Billing Address dropdown menu 
        And clicks Street 1 field
        And enters a valid Street
        And clicks City field
        And enters a valid City
        And clicks State dropdown menu 
        And selects NS from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed




    Scenario: Add Auction MANHEIM CA NS Organization

        Given current page is New Organization page 
        When User click Customer Dropdown menu
        And select MANHEIM
        And click Organization Type Dropdown menu 
        And selects Auction 
        And clicks Organization name field
        And enters Organization name
        And selects CA from Billing Address dropdown menu 
        And clicks Street 1 field
        And enters a valid Street
        And clicks City field
        And enters a valid City
        And clicks State dropdown menu 
        And selects NS from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed



    Scenario: Add Dealer HYUNDAI CA NS Organization

        Given current page is New Organization page 
        When User click Customer Dropdown menu
        And select HYUNDAI
        And click Organization Type Dropdown menu 
        And selects Dealer 
        And clicks Organization name field
        And enters Organization name
        And selects CA from Billing Address dropdown menu 
        And clicks Street 1 field
        And enters a valid Street
        And clicks City field
        And enters a valid City
        And clicks State dropdown menu 
        And selects NS from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed




    Scenario: Add Auction HYUNDAI CA NS Organization

        Given current page is New Organization page 
        When User click Customer Dropdown menu
        And select HYUNDAI
        And click Organization Type Dropdown menu 
        And selects Auction 
        And clicks Organization name field
        And enters Organization name
        And selects CA from Billing Address dropdown menu 
        And clicks Street 1 field
        And enters a valid Street
        And clicks City field
        And enters a valid City
        And clicks State dropdown menu 
        And selects NS from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed




    Scenario: Add Dealer NISSAN CA NS Organization

        Given current page is New Organization page 
        When User click Customer Dropdown menu
        And select NISSAN
        And click Organization Type Dropdown menu 
        And selects Dealer 
        And clicks Organization name field
        And enters Organization name
        And selects CA from Billing Address dropdown menu 
        And clicks Street 1 field
        And enters a valid Street
        And clicks City field
        And enters a valid City
        And clicks State dropdown menu 
        And selects NS from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed




    Scenario: Add Auction NISSAN CA NS Organization

        Given current page is New Organization page 
        When User click Customer Dropdown menu
        And select NISSAN
        And click Organization Type Dropdown menu 
        And selects Auction 
        And clicks Organization name field
        And enters Organization name
        And selects CA from Billing Address dropdown menu 
        And clicks Street 1 field
        And enters a valid Street
        And clicks City field
        And enters a valid City
        And clicks State dropdown menu 
        And selects NS from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed




    
    
    Scenario: Add Dealer ALLY CA ON Organization

        Given current page is New Organization page 
        When User click Customer Dropdown menu
        And select Chase
        And click Organization Type Dropdown menu 
        And selects Dealer 
        And clicks Organization name field
        And enters Organization name
        And selects CA from Billing Address dropdown menu 
        And clicks Street 1 field
        And enters a valid Street
        And clicks City field
        And enters a valid City
        And clicks State dropdown menu 
        And selects ON from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed




    Scenario: Add Auction ALLY CA ON Organization

        Given current page is New Organization page 
        When User click Customer Dropdown menu
        And select Chase
        And click Organization Type Dropdown menu 
        And selects Auction 
        And clicks Organization name field
        And enters Organization name
        And selects CA from Billing Address dropdown menu 
        And clicks Street 1 field
        And enters a valid Street
        And clicks City field
        And enters a valid City
        And clicks State dropdown menu 
        And selects ON from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed



Scenario: Add Dealer VCI CA ON Organization

        Given current page is New Organization page 
        When User click Customer Dropdown menu
        And select VCI
        And click Organization Type Dropdown menu 
        And selects Dealer 
        And clicks Organization name field
        And enters Organization name
        And selects CA from Billing Address dropdown menu 
        And clicks Street 1 field
        And enters a valid Street
        And clicks City field
        And enters a valid City
        And clicks State dropdown menu 
        And selects ON from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed




    Scenario: Add Auction VCI CA ON Organization

        Given current page is New Organization page 
        When User click Customer Dropdown menu
        And select VCI
        And click Organization Type Dropdown menu 
        And selects Auction 
        And clicks Organization name field
        And enters Organization name
        And selects CA from Billing Address dropdown menu 
        And clicks Street 1 field
        And enters a valid Street
        And clicks City field
        And enters a valid City
        And clicks State dropdown menu 
        And selects ON from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed




    

Scenario: Add Dealer MANHEIM CA ON Organization

        Given current page is New Organization page 
        When User click Customer Dropdown menu
        And select MANHEIM
        And click Organization Type Dropdown menu 
        And selects Dealer 
        And clicks Organization name field
        And enters Organization name
        And selects CA from Billing Address dropdown menu 
        And clicks Street 1 field
        And enters a valid Street
        And clicks City field
        And enters a valid City
        And clicks State dropdown menu 
        And selects ON from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed




    Scenario: Add Auction MANHEIM CA ON Organization

        Given current page is New Organization page 
        When User click Customer Dropdown menu
        And select MANHEIM
        And click Organization Type Dropdown menu 
        And selects Auction 
        And clicks Organization name field
        And enters Organization name
        And selects CA from Billing Address dropdown menu 
        And clicks Street 1 field
        And enters a valid Street
        And clicks City field
        And enters a valid City
        And clicks State dropdown menu 
        And selects ON from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed



    Scenario: Add Dealer HYUNDAI CA ON Organization

        Given current page is New Organization page 
        When User click Customer Dropdown menu
        And select HYUNDAI
        And click Organization Type Dropdown menu 
        And selects Dealer 
        And clicks Organization name field
        And enters Organization name
        And selects CA from Billing Address dropdown menu 
        And clicks Street 1 field
        And enters a valid Street
        And clicks City field
        And enters a valid City
        And clicks State dropdown menu 
        And selects ON from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed




    Scenario: Add Auction HYUNDAI CA ON Organization

        Given current page is New Organization page 
        When User click Customer Dropdown menu
        And select HYUNDAI
        And click Organization Type Dropdown menu 
        And selects Auction 
        And clicks Organization name field
        And enters Organization name
        And selects CA from Billing Address dropdown menu 
        And clicks Street 1 field
        And enters a valid Street
        And clicks City field
        And enters a valid City
        And clicks State dropdown menu 
        And selects ON from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed




    Scenario: Add Dealer NISSAN CA ON Organization

        Given current page is New Organization page 
        When User click Customer Dropdown menu
        And select NISSAN
        And click Organization Type Dropdown menu 
        And selects Dealer 
        And clicks Organization name field
        And enters Organization name
        And selects CA from Billing Address dropdown menu 
        And clicks Street 1 field
        And enters a valid Street
        And clicks City field
        And enters a valid City
        And clicks State dropdown menu 
        And selects ON from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed




    Scenario: Add Auction NISSAN CA ON Organization

        Given current page is New Organization page 
        When User click Customer Dropdown menu
        And select NISSAN
        And click Organization Type Dropdown menu 
        And selects Auction 
        And clicks Organization name field
        And enters Organization name
        And selects CA from Billing Address dropdown menu 
        And clicks Street 1 field
        And enters a valid Street
        And clicks City field
        And enters a valid City
        And clicks State dropdown menu 
        And selects ON from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed




    
    
    Scenario: Add Dealer ALLY CA PE Organization

        Given current page is New Organization page 
        When User click Customer Dropdown menu
        And select Chase
        And click Organization Type Dropdown menu 
        And selects Dealer 
        And clicks Organization name field
        And enters Organization name
        And selects CA from Billing Address dropdown menu 
        And clicks Street 1 field
        And enters a valid Street
        And clicks City field
        And enters a valid City
        And clicks State dropdown menu 
        And selects PE from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed




    Scenario: Add Auction ALLY CA PE Organization

        Given current page is New Organization page 
        When User click Customer Dropdown menu
        And select Chase
        And click Organization Type Dropdown menu 
        And selects Auction 
        And clicks Organization name field
        And enters Organization name
        And selects CA from Billing Address dropdown menu 
        And clicks Street 1 field
        And enters a valid Street
        And clicks City field
        And enters a valid City
        And clicks State dropdown menu 
        And selects PE from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed



Scenario: Add Dealer VCI CA PE Organization

        Given current page is New Organization page 
        When User click Customer Dropdown menu
        And select VCI
        And click Organization Type Dropdown menu 
        And selects Dealer 
        And clicks Organization name field
        And enters Organization name
        And selects CA from Billing Address dropdown menu 
        And clicks Street 1 field
        And enters a valid Street
        And clicks City field
        And enters a valid City
        And clicks State dropdown menu 
        And selects PE from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed




    Scenario: Add Auction VCI CA PE Organization

        Given current page is New Organization page 
        When User click Customer Dropdown menu
        And select VCI
        And click Organization Type Dropdown menu 
        And selects Auction 
        And clicks Organization name field
        And enters Organization name
        And selects CA from Billing Address dropdown menu 
        And clicks Street 1 field
        And enters a valid Street
        And clicks City field
        And enters a valid City
        And clicks State dropdown menu 
        And selects PE from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed




    

Scenario: Add Dealer MANHEIM CA PE Organization

        Given current page is New Organization page 
        When User click Customer Dropdown menu
        And select MANHEIM
        And click Organization Type Dropdown menu 
        And selects Dealer 
        And clicks Organization name field
        And enters Organization name
        And selects CA from Billing Address dropdown menu 
        And clicks Street 1 field
        And enters a valid Street
        And clicks City field
        And enters a valid City
        And clicks State dropdown menu 
        And selects PE from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed




    Scenario: Add Auction MANHEIM CA PE Organization

        Given current page is New Organization page 
        When User click Customer Dropdown menu
        And select MANHEIM
        And click Organization Type Dropdown menu 
        And selects Auction 
        And clicks Organization name field
        And enters Organization name
        And selects CA from Billing Address dropdown menu 
        And clicks Street 1 field
        And enters a valid Street
        And clicks City field
        And enters a valid City
        And clicks State dropdown menu 
        And selects PE from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed



    Scenario: Add Dealer HYUNDAI CA PE Organization

        Given current page is New Organization page 
        When User click Customer Dropdown menu
        And select HYUNDAI
        And click Organization Type Dropdown menu 
        And selects Dealer 
        And clicks Organization name field
        And enters Organization name
        And selects CA from Billing Address dropdown menu 
        And clicks Street 1 field
        And enters a valid Street
        And clicks City field
        And enters a valid City
        And clicks State dropdown menu 
        And selects PE from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed




    Scenario: Add Auction HYUNDAI CA PE Organization

        Given current page is New Organization page 
        When User click Customer Dropdown menu
        And select HYUNDAI
        And click Organization Type Dropdown menu 
        And selects Auction 
        And clicks Organization name field
        And enters Organization name
        And selects CA from Billing Address dropdown menu 
        And clicks Street 1 field
        And enters a valid Street
        And clicks City field
        And enters a valid City
        And clicks State dropdown menu 
        And selects PE from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed




    Scenario: Add Dealer NISSAN CA PE Organization

        Given current page is New Organization page 
        When User click Customer Dropdown menu
        And select NISSAN
        And click Organization Type Dropdown menu 
        And selects Dealer 
        And clicks Organization name field
        And enters Organization name
        And selects CA from Billing Address dropdown menu 
        And clicks Street 1 field
        And enters a valid Street
        And clicks City field
        And enters a valid City
        And clicks State dropdown menu 
        And selects PE from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed




    Scenario: Add Auction NISSAN CA PE Organization

        Given current page is New Organization page 
        When User click Customer Dropdown menu
        And select NISSAN
        And click Organization Type Dropdown menu 
        And selects Auction 
        And clicks Organization name field
        And enters Organization name
        And selects CA from Billing Address dropdown menu 
        And clicks Street 1 field
        And enters a valid Street
        And clicks City field
        And enters a valid City
        And clicks State dropdown menu 
        And selects PE from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed




    
    
    Scenario: Add Dealer ALLY CA QC Organization

        Given current page is New Organization page 
        When User click Customer Dropdown menu
        And select Chase
        And click Organization Type Dropdown menu 
        And selects Dealer 
        And clicks Organization name field
        And enters Organization name
        And selects CA from Billing Address dropdown menu 
        And clicks Street 1 field
        And enters a valid Street
        And clicks City field
        And enters a valid City
        And clicks State dropdown menu 
        And selects QC from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed




    Scenario: Add Auction ALLY CA QC Organization

        Given current page is New Organization page 
        When User click Customer Dropdown menu
        And select Chase
        And click Organization Type Dropdown menu 
        And selects Auction 
        And clicks Organization name field
        And enters Organization name
        And selects CA from Billing Address dropdown menu 
        And clicks Street 1 field
        And enters a valid Street
        And clicks City field
        And enters a valid City
        And clicks State dropdown menu 
        And selects QC from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed



Scenario: Add Dealer VCI CA QC Organization

        Given current page is New Organization page 
        When User click Customer Dropdown menu
        And select VCI
        And click Organization Type Dropdown menu 
        And selects Dealer 
        And clicks Organization name field
        And enters Organization name
        And selects CA from Billing Address dropdown menu 
        And clicks Street 1 field
        And enters a valid Street
        And clicks City field
        And enters a valid City
        And clicks State dropdown menu 
        And selects QC from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed




    Scenario: Add Auction VCI CA QC Organization

        Given current page is New Organization page 
        When User click Customer Dropdown menu
        And select VCI
        And click Organization Type Dropdown menu 
        And selects Auction 
        And clicks Organization name field
        And enters Organization name
        And selects CA from Billing Address dropdown menu 
        And clicks Street 1 field
        And enters a valid Street
        And clicks City field
        And enters a valid City
        And clicks State dropdown menu 
        And selects QC from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed




    

Scenario: Add Dealer MANHEIM CA QC Organization

        Given current page is New Organization page 
        When User click Customer Dropdown menu
        And select MANHEIM
        And click Organization Type Dropdown menu 
        And selects Dealer 
        And clicks Organization name field
        And enters Organization name
        And selects CA from Billing Address dropdown menu 
        And clicks Street 1 field
        And enters a valid Street
        And clicks City field
        And enters a valid City
        And clicks State dropdown menu 
        And selects QC from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed




    Scenario: Add Auction MANHEIM CA QC Organization

        Given current page is New Organization page 
        When User click Customer Dropdown menu
        And select MANHEIM
        And click Organization Type Dropdown menu 
        And selects Auction 
        And clicks Organization name field
        And enters Organization name
        And selects CA from Billing Address dropdown menu 
        And clicks Street 1 field
        And enters a valid Street
        And clicks City field
        And enters a valid City
        And clicks State dropdown menu 
        And selects QC from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed



    Scenario: Add Dealer HYUNDAI CA QC Organization

        Given current page is New Organization page 
        When User click Customer Dropdown menu
        And select HYUNDAI
        And click Organization Type Dropdown menu 
        And selects Dealer 
        And clicks Organization name field
        And enters Organization name
        And selects CA from Billing Address dropdown menu 
        And clicks Street 1 field
        And enters a valid Street
        And clicks City field
        And enters a valid City
        And clicks State dropdown menu 
        And selects QC from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed




    Scenario: Add Auction HYUNDAI CA QC Organization

        Given current page is New Organization page 
        When User click Customer Dropdown menu
        And select HYUNDAI
        And click Organization Type Dropdown menu 
        And selects Auction 
        And clicks Organization name field
        And enters Organization name
        And selects CA from Billing Address dropdown menu 
        And clicks Street 1 field
        And enters a valid Street
        And clicks City field
        And enters a valid City
        And clicks State dropdown menu 
        And selects QC from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed




    Scenario: Add Dealer NISSAN CA QC Organization

        Given current page is New Organization page 
        When User click Customer Dropdown menu
        And select NISSAN
        And click Organization Type Dropdown menu 
        And selects Dealer 
        And clicks Organization name field
        And enters Organization name
        And selects CA from Billing Address dropdown menu 
        And clicks Street 1 field
        And enters a valid Street
        And clicks City field
        And enters a valid City
        And clicks State dropdown menu 
        And selects QC from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed




    Scenario: Add Auction NISSAN CA QC Organization

        Given current page is New Organization page 
        When User click Customer Dropdown menu
        And select NISSAN
        And click Organization Type Dropdown menu 
        And selects Auction 
        And clicks Organization name field
        And enters Organization name
        And selects CA from Billing Address dropdown menu 
        And clicks Street 1 field
        And enters a valid Street
        And clicks City field
        And enters a valid City
        And clicks State dropdown menu 
        And selects QC from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed




    
    
    Scenario: Add Dealer ALLY CA SK Organization

        Given current page is New Organization page 
        When User click Customer Dropdown menu
        And select Chase
        And click Organization Type Dropdown menu 
        And selects Dealer 
        And clicks Organization name field
        And enters Organization name
        And selects CA from Billing Address dropdown menu 
        And clicks Street 1 field
        And enters a valid Street
        And clicks City field
        And enters a valid City
        And clicks State dropdown menu 
        And selects SK from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed




    Scenario: Add Auction ALLY CA SK Organization

        Given current page is New Organization page 
        When User click Customer Dropdown menu
        And select Chase
        And click Organization Type Dropdown menu 
        And selects Auction 
        And clicks Organization name field
        And enters Organization name
        And selects CA from Billing Address dropdown menu 
        And clicks Street 1 field
        And enters a valid Street
        And clicks City field
        And enters a valid City
        And clicks State dropdown menu 
        And selects SK from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed



Scenario: Add Dealer VCI CA SK Organization

        Given current page is New Organization page 
        When User click Customer Dropdown menu
        And select VCI
        And click Organization Type Dropdown menu 
        And selects Dealer 
        And clicks Organization name field
        And enters Organization name
        And selects CA from Billing Address dropdown menu 
        And clicks Street 1 field
        And enters a valid Street
        And clicks City field
        And enters a valid City
        And clicks State dropdown menu 
        And selects SK from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed




    Scenario: Add Auction VCI CA SK Organization

        Given current page is New Organization page 
        When User click Customer Dropdown menu
        And select VCI
        And click Organization Type Dropdown menu 
        And selects Auction 
        And clicks Organization name field
        And enters Organization name
        And selects CA from Billing Address dropdown menu 
        And clicks Street 1 field
        And enters a valid Street
        And clicks City field
        And enters a valid City
        And clicks State dropdown menu 
        And selects SK from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed




    

Scenario: Add Dealer MANHEIM CA SK Organization

        Given current page is New Organization page 
        When User click Customer Dropdown menu
        And select MANHEIM
        And click Organization Type Dropdown menu 
        And selects Dealer 
        And clicks Organization name field
        And enters Organization name
        And selects CA from Billing Address dropdown menu 
        And clicks Street 1 field
        And enters a valid Street
        And clicks City field
        And enters a valid City
        And clicks State dropdown menu 
        And selects SK from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed




    Scenario: Add Auction MANHEIM CA SK Organization

        Given current page is New Organization page 
        When User click Customer Dropdown menu
        And select MANHEIM
        And click Organization Type Dropdown menu 
        And selects Auction 
        And clicks Organization name field
        And enters Organization name
        And selects CA from Billing Address dropdown menu 
        And clicks Street 1 field
        And enters a valid Street
        And clicks City field
        And enters a valid City
        And clicks State dropdown menu 
        And selects SK from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed



    Scenario: Add Dealer HYUNDAI CA SK Organization

        Given current page is New Organization page 
        When User click Customer Dropdown menu
        And select HYUNDAI
        And click Organization Type Dropdown menu 
        And selects Dealer 
        And clicks Organization name field
        And enters Organization name
        And selects CA from Billing Address dropdown menu 
        And clicks Street 1 field
        And enters a valid Street
        And clicks City field
        And enters a valid City
        And clicks State dropdown menu 
        And selects SK from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed




    Scenario: Add Auction HYUNDAI CA SK Organization

        Given current page is New Organization page 
        When User click Customer Dropdown menu
        And select HYUNDAI
        And click Organization Type Dropdown menu 
        And selects Auction 
        And clicks Organization name field
        And enters Organization name
        And selects CA from Billing Address dropdown menu 
        And clicks Street 1 field
        And enters a valid Street
        And clicks City field
        And enters a valid City
        And clicks State dropdown menu 
        And selects SK from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed




    Scenario: Add Dealer NISSAN CA SK Organization

        Given current page is New Organization page 
        When User click Customer Dropdown menu
        And select NISSAN
        And click Organization Type Dropdown menu 
        And selects Dealer 
        And clicks Organization name field
        And enters Organization name
        And selects CA from Billing Address dropdown menu 
        And clicks Street 1 field
        And enters a valid Street
        And clicks City field
        And enters a valid City
        And clicks State dropdown menu 
        And selects SK from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed




    Scenario: Add Auction NISSAN CA SK Organization

        Given current page is New Organization page 
        When User click Customer Dropdown menu
        And select NISSAN
        And click Organization Type Dropdown menu 
        And selects Auction 
        And clicks Organization name field
        And enters Organization name
        And selects CA from Billing Address dropdown menu 
        And clicks Street 1 field
        And enters a valid Street
        And clicks City field
        And enters a valid City
        And clicks State dropdown menu 
        And selects SK from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed




    
    
    Scenario: Add Dealer ALLY CA NT Organization

        Given current page is New Organization page 
        When User click Customer Dropdown menu
        And select Chase
        And click Organization Type Dropdown menu 
        And selects Dealer 
        And clicks Organization name field
        And enters Organization name
        And selects CA from Billing Address dropdown menu 
        And clicks Street 1 field
        And enters a valid Street
        And clicks City field
        And enters a valid City
        And clicks State dropdown menu 
        And selects NT from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed




    Scenario: Add Auction ALLY CA NT Organization

        Given current page is New Organization page 
        When User click Customer Dropdown menu
        And select Chase
        And click Organization Type Dropdown menu 
        And selects Auction 
        And clicks Organization name field
        And enters Organization name
        And selects CA from Billing Address dropdown menu 
        And clicks Street 1 field
        And enters a valid Street
        And clicks City field
        And enters a valid City
        And clicks State dropdown menu 
        And selects NT from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed



Scenario: Add Dealer VCI CA NT Organization

        Given current page is New Organization page 
        When User click Customer Dropdown menu
        And select VCI
        And click Organization Type Dropdown menu 
        And selects Dealer 
        And clicks Organization name field
        And enters Organization name
        And selects CA from Billing Address dropdown menu 
        And clicks Street 1 field
        And enters a valid Street
        And clicks City field
        And enters a valid City
        And clicks State dropdown menu 
        And selects NT from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed




    Scenario: Add Auction VCI CA NT Organization

        Given current page is New Organization page 
        When User click Customer Dropdown menu
        And select VCI
        And click Organization Type Dropdown menu 
        And selects Auction 
        And clicks Organization name field
        And enters Organization name
        And selects CA from Billing Address dropdown menu 
        And clicks Street 1 field
        And enters a valid Street
        And clicks City field
        And enters a valid City
        And clicks State dropdown menu 
        And selects NT from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed




    

Scenario: Add Dealer MANHEIM CA NT Organization

        Given current page is New Organization page 
        When User click Customer Dropdown menu
        And select MANHEIM
        And click Organization Type Dropdown menu 
        And selects Dealer 
        And clicks Organization name field
        And enters Organization name
        And selects CA from Billing Address dropdown menu 
        And clicks Street 1 field
        And enters a valid Street
        And clicks City field
        And enters a valid City
        And clicks State dropdown menu 
        And selects NT from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed




    Scenario: Add Auction MANHEIM CA NT Organization

        Given current page is New Organization page 
        When User click Customer Dropdown menu
        And select MANHEIM
        And click Organization Type Dropdown menu 
        And selects Auction 
        And clicks Organization name field
        And enters Organization name
        And selects CA from Billing Address dropdown menu 
        And clicks Street 1 field
        And enters a valid Street
        And clicks City field
        And enters a valid City
        And clicks State dropdown menu 
        And selects NT from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed



    Scenario: Add Dealer HYUNDAI CA NT Organization

        Given current page is New Organization page 
        When User click Customer Dropdown menu
        And select HYUNDAI
        And click Organization Type Dropdown menu 
        And selects Dealer 
        And clicks Organization name field
        And enters Organization name
        And selects CA from Billing Address dropdown menu 
        And clicks Street 1 field
        And enters a valid Street
        And clicks City field
        And enters a valid City
        And clicks State dropdown menu 
        And selects NT from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed




    Scenario: Add Auction HYUNDAI CA NT Organization

        Given current page is New Organization page 
        When User click Customer Dropdown menu
        And select HYUNDAI
        And click Organization Type Dropdown menu 
        And selects Auction 
        And clicks Organization name field
        And enters Organization name
        And selects CA from Billing Address dropdown menu 
        And clicks Street 1 field
        And enters a valid Street
        And clicks City field
        And enters a valid City
        And clicks State dropdown menu 
        And selects NT from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed




    Scenario: Add Dealer NISSAN CA NT Organization

        Given current page is New Organization page 
        When User click Customer Dropdown menu
        And select NISSAN
        And click Organization Type Dropdown menu 
        And selects Dealer 
        And clicks Organization name field
        And enters Organization name
        And selects CA from Billing Address dropdown menu 
        And clicks Street 1 field
        And enters a valid Street
        And clicks City field
        And enters a valid City
        And clicks State dropdown menu 
        And selects NT from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed




    Scenario: Add Auction NISSAN CA NT Organization

        Given current page is New Organization page 
        When User click Customer Dropdown menu
        And select NISSAN
        And click Organization Type Dropdown menu 
        And selects Auction 
        And clicks Organization name field
        And enters Organization name
        And selects CA from Billing Address dropdown menu 
        And clicks Street 1 field
        And enters a valid Street
        And clicks City field
        And enters a valid City
        And clicks State dropdown menu 
        And selects NT from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed




    
    
    Scenario: Add Dealer ALLY CA NU Organization

        Given current page is New Organization page 
        When User click Customer Dropdown menu
        And select Chase
        And click Organization Type Dropdown menu 
        And selects Dealer 
        And clicks Organization name field
        And enters Organization name
        And selects CA from Billing Address dropdown menu 
        And clicks Street 1 field
        And enters a valid Street
        And clicks City field
        And enters a valid City
        And clicks State dropdown menu 
        And selects NU from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed




    Scenario: Add Auction ALLY CA NU Organization

        Given current page is New Organization page 
        When User click Customer Dropdown menu
        And select Chase
        And click Organization Type Dropdown menu 
        And selects Auction 
        And clicks Organization name field
        And enters Organization name
        And selects CA from Billing Address dropdown menu 
        And clicks Street 1 field
        And enters a valid Street
        And clicks City field
        And enters a valid City
        And clicks State dropdown menu 
        And selects NU from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed



Scenario: Add Dealer VCI CA NU Organization

        Given current page is New Organization page 
        When User click Customer Dropdown menu
        And select VCI
        And click Organization Type Dropdown menu 
        And selects Dealer 
        And clicks Organization name field
        And enters Organization name
        And selects CA from Billing Address dropdown menu 
        And clicks Street 1 field
        And enters a valid Street
        And clicks City field
        And enters a valid City
        And clicks State dropdown menu 
        And selects NU from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed




    Scenario: Add Auction VCI CA NU Organization

        Given current page is New Organization page 
        When User click Customer Dropdown menu
        And select VCI
        And click Organization Type Dropdown menu 
        And selects Auction 
        And clicks Organization name field
        And enters Organization name
        And selects CA from Billing Address dropdown menu 
        And clicks Street 1 field
        And enters a valid Street
        And clicks City field
        And enters a valid City
        And clicks State dropdown menu 
        And selects NU from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed




    

Scenario: Add Dealer MANHEIM CA NU Organization

        Given current page is New Organization page 
        When User click Customer Dropdown menu
        And select MANHEIM
        And click Organization Type Dropdown menu 
        And selects Dealer 
        And clicks Organization name field
        And enters Organization name
        And selects CA from Billing Address dropdown menu 
        And clicks Street 1 field
        And enters a valid Street
        And clicks City field
        And enters a valid City
        And clicks State dropdown menu 
        And selects NU from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed




    Scenario: Add Auction MANHEIM CA NU Organization

        Given current page is New Organization page 
        When User click Customer Dropdown menu
        And select MANHEIM
        And click Organization Type Dropdown menu 
        And selects Auction 
        And clicks Organization name field
        And enters Organization name
        And selects CA from Billing Address dropdown menu 
        And clicks Street 1 field
        And enters a valid Street
        And clicks City field
        And enters a valid City
        And clicks State dropdown menu 
        And selects NU from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed



    Scenario: Add Dealer HYUNDAI CA NU Organization

        Given current page is New Organization page 
        When User click Customer Dropdown menu
        And select HYUNDAI
        And click Organization Type Dropdown menu 
        And selects Dealer 
        And clicks Organization name field
        And enters Organization name
        And selects CA from Billing Address dropdown menu 
        And clicks Street 1 field
        And enters a valid Street
        And clicks City field
        And enters a valid City
        And clicks State dropdown menu 
        And selects NU from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed




    Scenario: Add Auction HYUNDAI CA NU Organization

        Given current page is New Organization page 
        When User click Customer Dropdown menu
        And select HYUNDAI
        And click Organization Type Dropdown menu 
        And selects Auction 
        And clicks Organization name field
        And enters Organization name
        And selects CA from Billing Address dropdown menu 
        And clicks Street 1 field
        And enters a valid Street
        And clicks City field
        And enters a valid City
        And clicks State dropdown menu 
        And selects NU from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed




    Scenario: Add Dealer NISSAN CA NU Organization

        Given current page is New Organization page 
        When User click Customer Dropdown menu
        And select NISSAN
        And click Organization Type Dropdown menu 
        And selects Dealer 
        And clicks Organization name field
        And enters Organization name
        And selects CA from Billing Address dropdown menu 
        And clicks Street 1 field
        And enters a valid Street
        And clicks City field
        And enters a valid City
        And clicks State dropdown menu 
        And selects NU from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed




    Scenario: Add Auction NISSAN CA NU Organization

        Given current page is New Organization page 
        When User click Customer Dropdown menu
        And select NISSAN
        And click Organization Type Dropdown menu 
        And selects Auction 
        And clicks Organization name field
        And enters Organization name
        And selects CA from Billing Address dropdown menu 
        And clicks Street 1 field
        And enters a valid Street
        And clicks City field
        And enters a valid City
        And clicks State dropdown menu 
        And selects NU from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed




    
    
    Scenario: Add Dealer ALLY CA YT Organization

        Given current page is New Organization page 
        When User click Customer Dropdown menu
        And select Chase
        And click Organization Type Dropdown menu 
        And selects Dealer 
        And clicks Organization name field
        And enters Organization name
        And selects CA from Billing Address dropdown menu 
        And clicks Street 1 field
        And enters a valid Street
        And clicks City field
        And enters a valid City
        And clicks State dropdown menu 
        And selects YT from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed




    Scenario: Add Auction ALLY CA YT Organization

        Given current page is New Organization page 
        When User click Customer Dropdown menu
        And select Chase
        And click Organization Type Dropdown menu 
        And selects Auction 
        And clicks Organization name field
        And enters Organization name
        And selects CA from Billing Address dropdown menu 
        And clicks Street 1 field
        And enters a valid Street
        And clicks City field
        And enters a valid City
        And clicks State dropdown menu 
        And selects YT from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed



Scenario: Add Dealer VCI CA YT Organization

        Given current page is New Organization page 
        When User click Customer Dropdown menu
        And select VCI
        And click Organization Type Dropdown menu 
        And selects Dealer 
        And clicks Organization name field
        And enters Organization name
        And selects CA from Billing Address dropdown menu 
        And clicks Street 1 field
        And enters a valid Street
        And clicks City field
        And enters a valid City
        And clicks State dropdown menu 
        And selects YT from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed




    Scenario: Add Auction VCI CA YT Organization

        Given current page is New Organization page 
        When User click Customer Dropdown menu
        And select VCI
        And click Organization Type Dropdown menu 
        And selects Auction 
        And clicks Organization name field
        And enters Organization name
        And selects CA from Billing Address dropdown menu 
        And clicks Street 1 field
        And enters a valid Street
        And clicks City field
        And enters a valid City
        And clicks State dropdown menu 
        And selects YT from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed




    

Scenario: Add Dealer MANHEIM CA YT Organization

        Given current page is New Organization page 
        When User click Customer Dropdown menu
        And select MANHEIM
        And click Organization Type Dropdown menu 
        And selects Dealer 
        And clicks Organization name field
        And enters Organization name
        And selects CA from Billing Address dropdown menu 
        And clicks Street 1 field
        And enters a valid Street
        And clicks City field
        And enters a valid City
        And clicks State dropdown menu 
        And selects YT from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed




    Scenario: Add Auction MANHEIM CA YT Organization

        Given current page is New Organization page 
        When User click Customer Dropdown menu
        And select MANHEIM
        And click Organization Type Dropdown menu 
        And selects Auction 
        And clicks Organization name field
        And enters Organization name
        And selects CA from Billing Address dropdown menu 
        And clicks Street 1 field
        And enters a valid Street
        And clicks City field
        And enters a valid City
        And clicks State dropdown menu 
        And selects YT from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed



    Scenario: Add Dealer HYUNDAI CA YT Organization

        Given current page is New Organization page 
        When User click Customer Dropdown menu
        And select HYUNDAI
        And click Organization Type Dropdown menu 
        And selects Dealer 
        And clicks Organization name field
        And enters Organization name
        And selects CA from Billing Address dropdown menu 
        And clicks Street 1 field
        And enters a valid Street
        And clicks City field
        And enters a valid City
        And clicks State dropdown menu 
        And selects YT from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed




    Scenario: Add Auction HYUNDAI CA YT Organization

        Given current page is New Organization page 
        When User click Customer Dropdown menu
        And select HYUNDAI
        And click Organization Type Dropdown menu 
        And selects Auction 
        And clicks Organization name field
        And enters Organization name
        And selects CA from Billing Address dropdown menu 
        And clicks Street 1 field
        And enters a valid Street
        And clicks City field
        And enters a valid City
        And clicks State dropdown menu 
        And selects YT from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed




    Scenario: Add Dealer NISSAN CA YT Organization

        Given current page is New Organization page 
        When User click Customer Dropdown menu
        And select NISSAN
        And click Organization Type Dropdown menu 
        And selects Dealer 
        And clicks Organization name field
        And enters Organization name
        And selects CA from Billing Address dropdown menu 
        And clicks Street 1 field
        And enters a valid Street
        And clicks City field
        And enters a valid City
        And clicks State dropdown menu 
        And selects YT from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed




    Scenario: Add Auction NISSAN CA YT Organization

        Given current page is New Organization page 
        When User click Customer Dropdown menu
        And select NISSAN
        And click Organization Type Dropdown menu 
        And selects Auction 
        And clicks Organization name field
        And enters Organization name
        And selects CA from Billing Address dropdown menu 
        And clicks Street 1 field
        And enters a valid Street
        And clicks City field
        And enters a valid City
        And clicks State dropdown menu 
        And selects YT from state
        And clicks zip field 
        And enters a valid zip
        And checks Default Inspection Location as same as billing address
        And click Organization Code dropdown menu
        And select Auction Code from dropdown menu
        And click Organization code field 
        And enters valid Organization code  
        And click submit 
        Then organization created notification message displayed




    
    