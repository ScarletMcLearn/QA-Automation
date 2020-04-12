@DC-PROD
@PROD

Feature: PROD DC: Basic funcitonal validation on PROD (Fusion) - Publishers


Scenario: Fusion Product Center - EDU Download
Given I am on page "https://www.autodesk.com/products/fusion-360/students-teachers-educators"
And I click on EDU Sign In button
And I log in with oxygen user "studentss@mailinator.com" password "test1234"
When I click on DOWNLOAD button
Then I download Fusion successfully



#Scenario: Fusion Product Center - Free Trial
#Given I am on page "https://www.autodesk.com/products/fusion-360/free-trial"
#And I click on Fusion DOWNLOAD FREE TRIAL button
#And I enter my email and click DOWNLOAD FREE TRIAL
#Then I download Fusion successfully



Scenario: Fusion Promo code
Given I am on page "https://www.autodesk.com/products/fusion-360/promo"
And I click on EDU Promo Sign In button
And I log in with oxygen user "dumas.carl+prodfusionpromo2@gmail.com" password "test1234"
When I enter Promocode "hackrod2015" and click ACTIVATE
Then I get "This promo code was already used." error
