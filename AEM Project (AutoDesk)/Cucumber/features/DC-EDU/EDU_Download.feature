@DC
@DC-EDU
@SLE2
@PT
@REGRESSION
@ClearCookies
@SLE1
@WIP

Feature: Education Download complete flow using different EDU account type.

  Scenario Outline: 1- As different user accounts, I'd like to be able to download releases with Stand-alone license.
    Given user is on EDU download page "<edu_page>"
    When user click on EDU sign in button
    And user add his EDU credential username "<username>" and password "test1234"
    And user select Release "<release>", OS "<os>", Language "<language>"
    Then user should get Serial Number "<serial_number>", Product Key "<product_key>", File Size "<file_size>", Usage Rights "<usage_rights>"
    And user should download successfully from "<button>" with "<confirmation>"

    Examples:
      | username                    | edu_page                                                             | release                                          | os             | language | serial_number | product_key | file_size | usage_rights                    | button      | confirmation             |
      | test_student@mailinator.com | /qa-automation/education/free-software/autocad-edu-new               | Product Design Suite Ultimate 2016               | Windows 64-bit | English  | 901-00771027  | 426H1       | 33.4 GB   | For use on personal device only | Install Now | Your file is downloading |
      | test_mentor@mailinator.com  | /qa-automation/education/free-software/autocad-edu-new               | Product Design Suite Ultimate 2016               | Windows 64-bit | English  | 901-00772800  | 426H1       | 33.4 GB   | For use on personal device only | Install Now | Your file is downloading |
      | facultys@mailinator.com     | /qa-automation/education/free-software/autocad-edu-new               | Product Design Suite Ultimate 2016               | Windows 64-bit | English  | 900-62373534  | 426H1       | 33.4 GB   | For use on personal device only | Install Now | Your file is downloading |
     #| facultys@mailinator.com     | /qa-automation/education/free-software/product-design-suite-personal | QA Automation Product Design Suite Personal 2016 | Windows 64-bit | English  | 900-62373534  | 766H1       | 33.4 GB   | For use on personal device only | Install Now | Your file is downloading |
     #| facultyis@mailinator.com    | /qa-automation/education/free-software/product-design-suite-personal | QA Automation Product Design Suite Personal 2016 | Windows 64-bit | English  | 900-62373539  | 766H1       | 33.4 GB   | For use on personal device only | Install Now | Your file is downloading |
      | facultys@mailinator.com     | /qa-automation/education/free-software/product-design-suite-both     | QA Automation Product Design Suite Both 2015     | Windows 64-bit | English  | 900-62373534  | 766H1       | 33.4 GB   | For use on personal device only | Install Now | Your file is downloading |
