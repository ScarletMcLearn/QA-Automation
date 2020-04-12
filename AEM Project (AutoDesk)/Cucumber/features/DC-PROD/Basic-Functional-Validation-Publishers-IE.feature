@IE
@DC-PROD
@PROD

Feature: PROD DC: Basic funcitonal validation on PROD - Publishers (IE)


Scenario: Access product center by hamburger
Given I continue navigate to "https://www.autodesk" for ".de"
When I select Products Autocad from MENU
Then I am redirected to "/products/autocad/overview"
