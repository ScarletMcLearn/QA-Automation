@DC-PROD
@PROD


Feature: PROD DC: WorldWide_SiteSelector


Scenario: 1. User is redirected from .com to the local site page when country link is clicked in the site-selector page and comparable page exists in the site selected.

  Given I am on page "https://www.autodesk.com/products/autocad/overview"
  And the site label "UNITED STATES" is present
  And the user navigates to the new site-selector page by clicking the country label in utility bar
  And clicks on a Country link "Canada - EN" from site-selector page on PROD
  Then I am redirected to "https://www.autodesk.ca/en/products/autocad/overview"
   