@DC-PROD
@PROD



Feature: PROD DC: Geo-Popup

Scenario: 1. US user is not presented with a Geo-Popup

  Given I am on page "https://www.autodesk.com"
  Then the 'geo-popup' is not displayed
  


Scenario: 2. User Interacts with the link: 'VISIT LOCAL SITE'
# Popup Closes + (Revisits .com - Popup has been shown and does not display again)

  Given I am on page "https://www.autodesk.com/products/autocad/overview"
  And Set cookie name "userCountry" value "CA" here
  Then a 'geo-popup' is displayed
  And displays the localized "Visit our Canada site"
  When user clicks on his local site link
  Then I am redirected to "https://www.autodesk.ca/en/products/autocad/overview"
  When I continue navigate to "https://www.autodesk.com/products/autocad/overview"
  Then the 'geo-popup' is no longer displayed
