@PWA
@PROD

Feature: Validating PWA features

Scenario: 1- Validating Need help section, feedback section and notify section
  Given user is on pwa site "https://www.autodesk.in/products/autocad-lt/subscribe"
  Then user can see Need Help section
  #And user can see Notify section as "Notify me of special offers: Get push notifications about special offers, and new products. (You can turn off notifications at any time.)"
  And user should not see Feedback section

#Scenario: 2- Validating Add to cart
  #Given user is on pwa site "https://www.autodesk.in/products/autocad-lt/subscribe"
  #And user goes offline and refresh the page (script for offline need to be added)
  #And user clicks on Add To Cart button
  #Then user is landed to 404 page


