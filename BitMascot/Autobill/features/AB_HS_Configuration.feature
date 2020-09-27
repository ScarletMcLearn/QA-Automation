Feature: HubSpot testing

Scenario: 2 HubSpot Integration Models are shown

    When the User navigates to Autobill site
    And enters Username and Password
    And clicks Implementer Icon
    And clicks Settings
    And clicks Configuration
    And clicks 'Select HubSpot Integration Model'
    Then 2 HubSpot Integration Models are shown.





Scenario: Company Integration Model options are shown

    When the User navigates to Autobill site
    And enters Username and Password
    And clicks Implementer Icon
    And clicks Settings
    And clicks Configuration
    And clicks 'Select HubSpot Integration Model'
    And toggles Company model On
    Then Company model options are shown
    


Scenario: Company Integration Model options are shown

    When the User navigates to Autobill site
    And enters Username and Password
    And clicks Implementer Icon
    And clicks Settings
    And clicks Configuration
    And clicks 'Select HubSpot Integration Model'
    And toggles Company model On
    Then click Save
    And saved successfully




Scenario: Deal Integration Model options are shown

When the User navigates to Autobill site
And enters Username and Password
And clicks Implementer Icon
And clicks Settings
And clicks Configuration
And clicks 'Select HubSpot Integration Model'
And toggles Deal model On
Then Deal model options are shown
And click Save
Then saved successfully



Scenario: Integration Models are mutually exclusive

When the User navigates to Autobill site
And enters Username and Password
And clicks Implementer Icon
And clicks Settings
And clicks Configuration
And clicks 'Select HubSpot Integration Model'
And toggles Company model On
Then Company model options are shown
And toggles Deal model On
Then Error message to select one model is shown




Scenario: Export Company from AutoBill to Hub Spot are shown

When the User navigates to Autobill site
And enters Username and Password
And clicks Implementer Icon
And clicks Settings
And clicks Configuration
And clicks 'Select HubSpot Integration Model'
And toggles Company model On
Then Company model options are shown
And toggles On Export Company from AutoBill to Hub Spot
Then Export Company from AutoBill to Hub Spot options are shown
And click Save
Then saved successfully




Scenario: Toggle On Export Contact from AutoBill to Hub Spot

When the User navigates to Autobill site
And enters Username and Password
And clicks Implementer Icon
And clicks Settings
And clicks Configuration
And clicks 'Select HubSpot Integration Model'
And toggles Company model On
Then Company model options are shown
And toggles On Export Company from AutoBill to Hub Spot
And toggles On Export Contact from AutoBill to Hub Spot
And click Save
Then saved successfully



Scenario: Toggle On Export (update only) Deal from AutoBill to Hub Spot

When the User navigates to Autobill site
And enters Username and Password
And clicks Implementer Icon
And clicks Settings
And clicks Configuration
And clicks 'Select HubSpot Integration Model'
And toggles Company model On
Then Company model options are shown
And toggles On Export Company from AutoBill to Hub Spot
And toggles On Export (update only) Deal from AutoBill to Hub Spot
And click Save
Then saved successfully




Scenario: Import Company from Hub Spot to AutoBill options are shown

When the User navigates to Autobill site
And enters Username and Password
And clicks Implementer Icon
And clicks Settings
And clicks Configuration
And clicks 'Select HubSpot Integration Model'
And toggles Company model On
Then Company model options are shown
And toggles On Import Company from Hub Spot to AutoBill
Then Import Company from Hub Spot to AutoBill options are shown


Scenario: Select which HubSpot field to use as Account ID in Autobill

When the User navigates to Autobill site
And enters Username and Password
And clicks Implementer Icon
And clicks Settings
And clicks Configuration
And clicks 'Select HubSpot Integration Model'
And toggles Company model On
Then Company model options are shown
And toggles On Import Company from Hub Spot to AutoBill
Then click field Dropdown menu
And select field from Dropdown menu
And click Save
Then saved successfully



Scenario: Enable Import Contact from Hub Spot to AutoBill

When the User navigates to Autobill site
And enters Username and Password
And clicks Implementer Icon
And clicks Settings
And clicks Configuration
And clicks 'Select HubSpot Integration Model'
And toggles Company model On
Then Company model options are shown
And toggles On Import Company from Hub Spot to AutoBill
And toggles On Import Contact from Hub Spot to AutoBill
And click Save
Then saved successfully



