@IPM
@PROD
@PT
@REGRESSION

Feature: IPM: Personalization

Scenario Outline: 1. Personalized experience base on the QueryParam
Given I am on IPM_Url "<access_url>"
Then I see days left header as "<days_left>"
And subscribe text as "<subscribe_text>"
And default GB as "<default_GB>"
  Examples:
  | access_url | days_left | subscribe_text | default_GB |
  | qa-QA/qa-automation-personalization/trl.html?daysLeft=29&country=US&lang=en-US | 29 DAYS LEFT OF TRIAL | SUBSCRIBE NOW  | Make the most of your trial - Default |
  | qa-QA/qa-automation-personalization/trl.html?daysLeft=1&country=GB&lang=en-US  | 1 DAYS LEFT OF TRIAL  | SUBSCRIBE NOW  | Make the most of your trial - Segment GB |


Scenario Outline: 2. Verify window sizing servlet 
When user checks window sizing servlet for "<page_type>" with "<url>"
Then window sizing servlet should return size of "<size_height>" and "<size_width>"

  Examples:
  | page_type                                            |url                                                                   |size_height |size_width|
  |    Small window with date ranges and inheritance     |qa-QA/product-2/rtl.details.json?daysLeft=1&contentCategory=reseller  | 170        |300       | 
  |    Small window param returned for MAYA              |en-US/MAYA/trl.details.json?daysLeft=1&contentCategory=standard       | 170        |300       | 
  |    Small window param returned for MAYA LT           |en-US/MAYALT/trl.details.json?daysLeft=1&contentCategory=standard     | 170        |300       | 
 