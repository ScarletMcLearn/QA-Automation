@DC
@FSBSUPPORT
@Anchorlinks
@SLE2
@PT
@REGRESSION
@SLE1


Feature: Fsb_Anchor_Link_And_Accordion

The focus of testing anchor links and accordions are the following:
1) If there is an open accordion, it will be closed as soon as another one is selected
2) Checking only that Subscription benefit accordion is the only one open
3) Checking only that System requirements accordion is the only one open
4) Checking only that Available languages accordion is the only one open
5) Validate scenario when clicking on Subscription benefits anchor link when only 3 anchor links and two accordions exists
6) Validate scenario when clicking on System requirements anchor link when only 3 anchor links and two accordions exists
7) Validate scenario when clicking on Subscription benefits anchor link when only 3 anchor links and two accordions exists
8) Validate scenario when there is only one accordion link
 
@SMOKE
Scenario: 1- Validate that if open accordion exists, it will be closed as soon as another accordion is openend

Given the user is on the fsb support buy page "/qa-automation/fsb-buy/buy-container/demo-buy"
And the subscription benefits accordion is open
And the user will scroll up to page
When the user clicks on the System requirements anchor link
Then the Subscription benefits accordion will be "hidden"

@SMOKE
Scenario: 2- Validate clicking on Subscription benefits anchor link will open up the Subscription benefits accordion only

Given the user is on the fsb support buy page "/qa-automation/fsb-buy/buy-container/demo-buy"
When the user clicks on the Subscription benefits anchor link
Then the Subscription benefits accordion will be "visible"
And  the System requirements accordion will be "hidden"
And  the Available languages accordion will be "hidden"


Scenario: 3- Validate clicking on System requirements anchor link will open up the System requirements accordion only

Given the user is on the fsb support buy page "/qa-automation/fsb-buy/buy-container/demo-buy"
When the user clicks on the System requirements anchor link
Then the Subscription benefits accordion will be "hidden"
And  the System requirements accordion will be "visible"
And  the Available languages accordion will be "hidden"


Scenario: 4- Validate clicking on Available requirements anchor link will open up the Available requirements accordion only

Given the user is on the fsb support buy page "/qa-automation/fsb-buy/buy-container/demo-buy"
When the user clicks on the Available languages anchor link
Then the Subscription benefits accordion will be "hidden"
And  the System requirements accordion will be "hidden"
And  the Available languages accordion will be "visible"


Scenario: 5- Validate clicking on Subscription benefits anchor link on a page that only has two accordions

# Since there are only 2 accordions, please note the following:
# the xpath used for System Requirements accordion will be the xpath of Subscription benefits accordion
# the xpath used for Available Languages accordion will the the xpath for System requirements accordion

Given the user is on the fsb support buy page containing only three anchor links and two accordions
When the user clicks on the Subscription benefits anchor link
Then for this scenario the System requirements accordion will be "visible"
And for this scenario the Available languages accordion will be "hidden"


Scenario: 6- Validate clicking on System requirements anchor link on a page that only has two accordions

# Since there are only 2 accordions, please note the following:
# the xpath used for System Requirements accordion will be the xpath of Subscription benefits accordion
# the xpath used for Available Languages accordion will the the xpath for System requirements accordion

Given the user is on the fsb support buy page containing only three anchor links and two accordions
When the user clicks on the System requirements anchor link
Then for this scenario the System requirements accordion will be "hidden"
And for this scenario the Available languages accordion will be "visible"


Scenario: 7- Validate clicking on Available languages anchor link on a page that only has two accordions

# Since there are only 2 accordions, please note the following:
# the xpath used for System Requirements accordion will be the xpath of Subscription benefits accordion
# the xpath used for Available Languages accordion will the the xpath for System requirements accordion

Given the user is on the fsb support buy page containing only three anchor links and two accordions
When the user clicks on the Available languages anchor link
Then for this scenario the System requirements accordion will be "hidden"
And for this scenario the Available languages accordion will be "hidden"


Scenario: 8- Validate clicking on product information anchor link on a page that only has one accordion
Given the user is on the fsb support buy page containing only one anchor link and one accordion
When the user clicks on the Product Information anchor link
Then the Subscription benefits accordion will be "visible"
