@DC-PROD
@PROD
@FSBBUYSUPPORT

Feature: PROD DC: Basic funcitonal validation on FSB-PROD - WPE


Scenario: - 1. Validate that Flyout can open
## Implementaion is inside Fsb_Flyout.rb (DC-FSB-SUPPORT )
Given I am on page "https://www.autodesk.mx/products/inventor/subscribe"
And the flyout is close
When the user clicks on the flyout tab
Then the flyout tab should open



Scenario Outline: - 2. Validate that Flyout can close
## Implementaion is inside Fsb_Flyout.rb (DC-FSB-SUPPORT )
Given I am on page "https://www.autodesk.mx/products/inventor/subscribe"
And the flyout is open
When the user clicks on the flyout tab
Then the flyout tab should close
And the page load with telium tag "<global-utag>"

Examples:
| global-utag |
| //tags.tiqcdn.com/utag/autodesk/global-sites/prod/utag.js |

Scenario: - 3. Validate that Universal Help Module can open
## Implementaion is inside Fsb_Flyout.rb (DC-FSB-SUPPORT )
Given I am on page "https://www.autodesk.com/products/maya/subscribe"
And the universal help module is close
When the user clicks on the universal help module tab
Then the universal help module tab should open




Scenario Outline: Subscribe to Cart with the same price
Given I am on page "<url>"
Then I can go from Subscription to Cart
Examples:
    | url                                                     |
    | https://www.autodesk.com/products/maya/subscribe        |
