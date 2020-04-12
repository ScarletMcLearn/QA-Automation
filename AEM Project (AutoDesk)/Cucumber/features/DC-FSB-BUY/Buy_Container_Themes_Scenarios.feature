@DC
@FSBBUY
@SLE2
@PT
@REGRESSION
@SLE1

Feature: FSB Online Buy Container Theme Term and Theme Monthly validation.




#----------------------------      Scenario 1 - Theme Term site level configuration   --------------------------#


Scenario: 1. Theme Term site level configuration

Given the user navigates to the DC Subscription page "/qa-automation/fsb-buy/autorenewable" for the ".in"
Then the term price text appears as ""
And Subhead text for term theme appears
And Best Value flag appears
And Autorenewal text apperas as "- Renewal"

#----------------------------      Scenario 2 - Theme Monthly site level configuration   --------------------------#


Scenario: 2. Theme Monthly site level configuration

Given the user navigates to the DC Subscription page "/qa-automation/fsb-buy/buy-container-with-online-values" for the ".de"
Then the monthly price text appears as "Monat"
And Subhead text for monthly theme appears
And Best Value flag appears
And Autorenewal text apperas as "- Automatische Erneuerung"

#----------------------------      Scenario 3 - Theme Term page level configuration   --------------------------#


Scenario: 3. Theme Term page level configuration

Given the user navigates to the DC Subscription page "/qa-automation/fsb-buy/page-level" for the ".de"
Then the term price text appears as ""
And Subhead text for term theme appears
And Best Value flag does not appear
And Autorenewal text apperas as "- 1 Year Text Override"

#----------------------------      Scenario 4 - Theme Monthly page level configuration   --------------------------#


Scenario: 4. Theme Monthly page level configuration

Given the user navigates to the DC Subscription page "/qa-automation/fsb-buy/page-level" for the ".in"
Then the monthly price text appears as "/Month"
And Subhead text for monthly theme does not appear
And Best Value flag appears

#----------------------------      Scenario 5 - Theme Term global level configuration   --------------------------#


Scenario: 5. Theme Term global level configuration

Given the user navigates to the DC Subscription page "/products/autocad/subscribe" for the ".fr"
Then the term price text appears as ""
And Subhead text for monthly theme does not appear
And Best Value flag does not appear
And Autorenewal text does not appear

#----------------------------      Scenario 6 - Theme Monthly page level configuration   --------------------------#


Scenario: 6. Theme Monthly page level configuration

Given the user navigates to the DC Subscription page "/qa-automation/fsb-buy/page-level" for the ".fr"
Then the monthly price text appears as "/Mois"
And Subhead text for monthly theme appears
And Best Value flag does not appear
And Autorenewal text does not appear

#----------------------------      Scenario 7 - Verify Best Value Tag has the lowest price   ----------------------#


Scenario Outline: Verify Best Value Tag has the lowest price

Given the user navigates to the DC Subscription page "<url>" for the "<site>"
Then Best Value tag should only be on the lowest price


 Examples:
      | site | url                                   |
      | .com | /products/motionbuilder/subscribe     |
