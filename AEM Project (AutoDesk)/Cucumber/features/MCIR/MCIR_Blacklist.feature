@MCIR
@SMOKE
@SLE2
@PT
@SLE1

Feature: MCIR BlackList Domain

  Scenario: 1- Verify that blacklist domain is set and present in json file for publish instance
    When user visits json page "/etc/static-content/security-privacy/linked-domain-blacklist.domainblacklist.json"
    Then user verifies that sites "test.com" and "www.test.com" are listed


  Scenario: 2- Verify that the blacklisted domain URL’S are stripped out on Publish page
    When user visits page "/qa-automation/blacklist-domain/restricted-links"
    Then user verifies the all links does not have target URL


  Scenario: 3- Verify that blacklisted domain can be BYPASSED and accessible on a page that is set as a TEST page
    When user visits page "/qa-automation/blacklist-domain/bypass-restricted-links"
    Then user verifies the all links have target URL
