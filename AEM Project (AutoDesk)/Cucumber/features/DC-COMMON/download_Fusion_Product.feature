@REGRESSION
#@SLE2
#@PT


Feature: Download Fusion Product

Scenario: Fusion Product Center - EDU Download
Given I am on fusion page "/products/fusion-360/students-teachers-educators"
And I click on EDU Sign In button
And I log in with oxygen user "students@mailinator.com" password "test1234"
When I click on DOWNLOAD button
Then I download Fusion successfully


Scenario: Fusion Promo code
Given I am on fusion page "/products/fusion-360/promo"
When I enter Promocode "hackrod2015" and click ACTIVATE
Then I get "The server is currently unreachable. Please try again later." error
