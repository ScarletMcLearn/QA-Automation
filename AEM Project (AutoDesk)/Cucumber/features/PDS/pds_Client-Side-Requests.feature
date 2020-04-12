# PDS SLE2: https://web-sle-engineering-svc.awsism.autodesk.com/products/ACDIST?country=US&app=SRP&language=en
# PDS PT: https://web-pt-engineering-svc.autodesk.com/products/ACDIST?country=US&app=SRP&language=en
# PDS PROD: https://web-engineering-svc.autodesk.com/products/ACDIST?country=FR&app=ONLINE&language=fr

# https://jira.autodesk.com/browse/PL-3895
# Test page: http://www-sle2.awsism.autodesk.com/qa-automation/pds/pl-3895
# MANUAL STEPS: go to URL, inspect with Firebug, select console, reload page
## RESULTS you should see:
### BATCH_START,
### REQUEST_COMPLETE 3 1 (request 1 of 3 completed),
### REQUEST_COMPLETE 3 2 (request 2 of 3 completed),
### REQUEST_COMPLETE 3 3 (request 3 of 3 completed),
### BATCH_COMPLETE 3 3
#***********************************************************************

@PDS
@PL-3895
@WIP

Feature: pds_Client-Side-Requests.feature: Track PDS Client-side requests progress

  As a PDS consumer, I want to track the progress of requests to PDS, specifically:

    - How many current requests are pending
    - How many requests are complete
    - Whether all calls have been completed successfully



Scenario: First request starts
Given an AEM page that makes one or more requests to PDS
When the first request starts
Then a request complete event is triggered


Scenario: Individual request completed
Given an AEM page that makes one or more requests to PDS
When an individual PDS request is complete
Then a request complete event is triggered
And information about the progress (quantity of completed requests and total requests is available)


Scenario: All requests completed
Given an AEM page that makes one or more requests to PDS
When all requests are complete
Then a request complete event is triggered
And information about the progress (quantity of completed requests and total requests is available)
