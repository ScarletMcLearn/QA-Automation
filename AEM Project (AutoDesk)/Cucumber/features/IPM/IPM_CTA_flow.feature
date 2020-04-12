@DC-PROD
@PROD
@PT
@FSBBUYSUPPORT
Feature: Verify IPM CTA flow when product belongs to Sorrento family 




Scenario Outline: 1- Validate that contents with CTA point to web cart when products are Sorrento
## Comments- locales do not work in staging

Given I am on IPM_Url1 "<access_url>"
And user clicks subscribe button on page
Then system should redirect to "<redirect_link>" with the correct data from PDS
Examples:
    |access_url                                                          | product        | country       | language |      redirect_link           |
    |en-US/ACD/trl.html?country=US&lang=en-US&firstDay=YES&daysLeft=30   | AutoCAD        | United States |  EN      |    checkout.autodesk.com      |
    |en-US/ACD/trl.html?country=US&link=%2Fservices%2Festore%2Fredirect&lang=en-US&firstDay=YES&daysLeft=30   | AutoCAD        | United States |  EN      |    checkout.autodesk.com      | 
    #|en-US/ACDLT/trl.html?country=US&lang=en-US&firstDay=YES&daysLeft=30 | AutoCAD LT     | United States |  EN       |   checkout.autodesk.com      |      
    |fr-FR/ACD/trl.html?country=FR&link=%2Fservices%2Festore%2Fredirect&lang=fr-FR&firstDay=YES&daysLeft=30   | AutoCAD        |   France      |  FR       |    checkout.autodesk.com     |
    |de-DE/ACD/trl.html?country=DE&link=%2Fservices%2Festore%2Fredirect&lang=de-DE&firstDay=YES&daysLeft=30   | AutoCAD        |   Germany     |  DE       |   checkout.autodesk.com      |


Scenario Outline: 2- Validate that contents with CTA point to subscribe when products are not Sorrento
## Comments-
Given I am on IPM_Url1 "<access_url>"
And user clicks subscribe button on page
Then system should redirect to "<redirect_link>" with the correct data from PDS
Examples:
    |access_url                                                                                                   | product  | country       | language | link_param                   |  redirect_link   |
    |en-US/MAYA/trl.html?country=US&lang=en-US&firstDay=YES&daysLeft=30&link=%2Fservices%2Fecommerce%2Fredirect   | Maya     | United States |  EN      | /services/ecommerce/redirect |   subscribe      |
 


 Scenario Outline: 3- Validate that contents with CTA point to subscribe when link has ecommerce or estore
## Comments-
Given I am on IPM_Url1 "<access_url>"
And user clicks subscribe button on page
Then system should redirect to "<redirect_link>" with the correct data from PDS
Examples:
     |access_url                                                                                                   | product       | country       | language  |link_param                   |  redirect_link   |
     |en-US/MAYA/trl.html?country=US&lang=en-US&firstDay=YES&daysLeft=30&link=%2Fservices%2Fecommerce%2Fredirect   | Maya          | United States |  EN       |/services/ecommerce/redirect |   subscribe      |
     |en-US/MAYA/trl.html?country=US&lang=en-US&firstDay=YES&daysLeft=30&link=%2Fservices%2Festore%2Fredirect      | Maya          | United States |  EN       |/services/estore/redirect    |   subscribe      |
     |fr-FR/3DSMAX/trl.html?country=FR&lang=fr-FR&firstDay=YES&daysLeft=30&link=%2Fservices%2Fecommerce%2Fredirect | 3ds Max       | France        |  FR       |/services/ecommerce/redirect |   subscribe      |
    


Scenario Outline: 4- Validate that system redirects to account page when click on expiring rental page
## Comments-
#Given user is on IPM test harness page "<url>" 
#When user selects "<product>" and "<env>" and "<country>" and "<language>"
#And User selects "<license_type>" as license type
Given I am on IPM_Url1 "<access_url>"
And user turns on auto-renew on page
Then system should redirect to "<redirect_link>" with the correct data from PDS
Examples:
    |access_url                                                         | product        | country       | language |license_type|         redirect_link              |
    |en-US/A250/rtl.html?link=https%3A%2F%2Faccounts.autodesk.com&country=US&lang=en-US&firstDay=YES&daysLeft=30 | Flame          | United States |  EN      |    Rental  |      accounts.autodesk.com         |


