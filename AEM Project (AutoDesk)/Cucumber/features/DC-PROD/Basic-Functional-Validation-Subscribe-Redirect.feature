#@DC-PROD
#@PROD


Feature: PROD DC: Subscribe-Redirect


Scenario: 1. User is redirected to local subscribe page. - PAGE EXISTS IN LOCAL

   Given I am on page "https://www.autodesk.fr/products/autocad/subscribe"
   And Set cookie name "userCountry" value "FR" here
   When I continue navigate to "https://www.autodesk.com/products/autocad/subscribe"
   And Set cookie name "userCountry" value "FR" here
   And I continue navigate to "https://www.autodesk.com/products/autocad/subscribe"
   Then I am redirected to "https://www.autodesk.fr/products/autocad/subscribe"
   