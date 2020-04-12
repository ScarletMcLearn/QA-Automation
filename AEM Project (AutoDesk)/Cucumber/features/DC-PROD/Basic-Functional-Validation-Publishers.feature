@DC-PROD
@PROD

Feature: PROD DC: Basic funcitonal validation on PROD - Publishers


Scenario: Marketo forms displays fields and submitted to pages.autodesk.com
Given I am on page "https://www.autodesk.com/campaigns/makegames/get-updates"
When I complete all fields of the form with test data and submit it
Then I am redirected to "https://www.autodesk.com/campaigns/makegames/get-updates/thank-you"


Scenario: Subscriber hub feeds
Given I am on page "http://www.autodesk.com/subscribers/autocad/whats-new"
Then I get first card on first and second blocks



Scenario: Reseller locators
Given I am on page "http://www.autodesk.com/training-and-certification/authorized-training-centers/locate-an-atc?partnerType=Training%20Center"
When I select City "San Francisco CA" and click Search button
Then I get results of Partner Locator search displayed


 Scenario: Career page
 Given I am on page "https://www.autodesk.com/careers"
 When I click on Taleo link for San Francisco jobs
 Then I should see San Francisco jobs
