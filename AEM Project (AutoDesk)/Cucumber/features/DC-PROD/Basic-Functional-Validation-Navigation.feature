@DC-PROD
@PROD

Feature: PROD DC: Basic functional validation on Navigation


Scenario: 1 - Validate navigation from Free Trial Page
  Given user is on page "https://www.autodesk.com/"
  And user clicks on Free Trials link
  Then user is landed on Free Trial Page
  And user is able to view header options 'Search','SignIn' and 'Menu'

Scenario: 2 - Validate navigation from All Products Page
  Given user is on page "https://www.autodesk.com/"
  And user clicks on All Products link
  Then user is landed on All Products Page
  And user is able to view header options 'Cart','Search','SignIn','Geo' and 'Menu'

Scenario: 3 - Validate navigation from Buy Page
  Given user is on page "https://www.autodesk.com/"
  And user clicks on Buy link
  Then user is landed on Buy Page
  And user is able to view header options 'Cart','Search','SignIn','Geo' and 'Menu'

Scenario: 4 - Validate navigation from Shopping Cart Page
  Given user is on page "https://www.autodesk.com/"
  And user clicks on Cart icon
  Then user is landed on Checkout page

Scenario: 5 - Validate navigation from Search Page
  Given user is on page "https://www.autodesk.com/"
  And user enters 'Maya' in search box and clicks on search icon
  Then user is landed on Search Page
  And user is able to view all header options

#Scenario: 6 - Validate navigation from Sign In Page
  #Given user is on page "https://www.autodesk.com/"
  #And user clicks on Sign In link
  #And clicks on 'Autodesk Account' link
  #And user log in with oxygen user "students@mailinator.com" password "test1234"
  #Then user can see her name on the page

Scenario: 7 - Validate navigation from Site selector Page
  Given user is on page "https://www.autodesk.com/"
  And user clicks on Country name
  Then user is landed on worldwide sites page
  And user is able to view header options 'Cart','Search','SignIn','Geo' and 'Menu'

Scenario: 8 - Validate links under menu
  Given user is on page "https://www.autodesk.com/"
  And user clicks on Menu link
  Then user can view 'Products','Support & learning','Downloads','Buy','About Autodesk' links
