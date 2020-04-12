@DC
@FSBSUPPORT
@SLE2
@PT
@REGRESSION
@SLE1

Feature: FSB Support

  @SMOKE
  Scenario: 1 - Validate "System requirements" link, section and "System Requirements" table in it
    Given the user is on the fsb support buy page "/qa-automation/fsb-buy/buy-container/demo-buy"
    And user clicks on System requirements link
    Then user would see System requirements table
    And OS label as "OPERATING SYSTEM" with some values
    And Browser label as "BROWSER" with some values


  @SMOKE
  Scenario: 2 - Validate "Available languages" link, section and presence of "English" in it
    Given the user is on the fsb support buy page "/qa-automation/fsb-buy/buy-container/demo-buy"
    And user clicks on Available languages link
    Then user would see "English" language in the list


  # Ensure that the system requirement and product language components show data based on the PLC of the Buy Container when it only has one PLC configured
  Scenario Outline: 3. Show System Requirements and Product Language Components in Buy Container for Single PLC configured
    Given the user navigates to the DC Subscription page "<page>" for the "<site>"
    And user clicks on System requirements link
    Then user would see System requirements table
    And user clicks on Available languages link
    Then user would see "English" language in the list
    Then user would see "简体中文" language in the list

  @SMOKE
    Examples:
      | site | page                                                    |
      | .com | /qa-automation/fsb-buy/buy-container/sys-req/single-plc |
      | .de  | /qa-automation/fsb-buy/buy-container/sys-req/single-plc |


  # Ensure that the system requirement and product language components show data based on the PLC of the Buy Container when it has multiple PLCs configured
  Scenario Outline: 4. Show System Requirements and Product Language Components in Buy Container for Multiple PLCs configured
    Given the user navigates to the DC Subscription page "<page>" for the "<site>"
    And user clicks on System requirements link
    Then user would see System requirements table
    And user clicks on Available languages link
    Then user would see "English" language in the list
    And user selects a PLC "Maya" in PLC dropdown selector
    And user clicks on System requirements link
    Then user would see System requirements table
    And user clicks on Available languages link
    Then user would see "English" language in the list

  @SMOKE
    Examples:
      | site | page                                                       |
      | .com | /qa-automation/fsb-buy/buy-container/sys-req/multiple-plcs |


 # Ensure that the system requirement and product language components ignore the Buy Container and show data based their own PLC configurations
  Scenario Outline: 5. Show the pre-configured System Requirements and Product Language values in Buy Container
    Given the user navigates to the DC Subscription page "<page>" for the "<site>"
    And user clicks on System requirements link
    Then user would see System requirements table
    And user clicks on Available languages link
    Then user would see "English" language in the list

  @SMOKE
    Examples:
      | site | page                                                 |
      | .com | /qa-automation/fsb-buy/buy-container/sys-req/set-plc |


  # Ensure that the error message is displayed in the correct language
  Scenario Outline: 6. Ensure that the error message is displayed in the correct language in Buy Container when there is no PLC configured
    Given the user navigates to the DC Subscription page "<page>" for the "<site>"
    And user clicks on System requirements link
    Then user would see System requirements section contains relevant text for "<countrycode>"

  @SMOKE
    Examples:
      | site | countrycode | page                                                |
      | .com | EN          | /qa-automation/fsb-buy/buy-container/sys-req/no-plc |
      | .de  | DE          | /qa-automation/fsb-buy/buy-container/sys-req/no-plc |
      #| .fi  | FI          | /qa-automation/fsb-buy/buy-container/sys-req/no-plc |
      #| .fr  | FR          | /qa-automation/fsb-buy/buy-container/sys-req/no-plc |
      #| .nl  | NL          | /qa-automation/fsb-buy/buy-container/sys-req/no-plc |
