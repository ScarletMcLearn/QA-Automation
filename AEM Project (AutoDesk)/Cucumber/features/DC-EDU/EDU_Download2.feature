@DC
@DC-EDU
@SLE2
@PT
@REGRESSION
@ClearCookies
@SLE1
@WIP

Feature: Education Download complete flow using different EDU account type - 2.

  Scenario Outline: 2- As different user accounts, I'd like to be able to download releases with different license type.
    Given user is on EDU download page "<edu_page>"
    When user click on EDU sign in button
    And user add his EDU credential username "<username>" and password "test1234"
    And user select License "<license_type>"
    And user select Release "<release>", OS "<os>", Language "<language>"
    Then user should get Serial Number "<serial_number>", Product Key "<product_key>", File Size "<file_size>", Usage Rights "<usage_rights>"
    And user is able to see the help link
    And user should download successfully from "<button>" with "<confirmation>"

    Examples:
      | username                     | edu_page                                                                  | license_type                                      | release                            | os             | language | serial_number | product_key | file_size    | usage_rights                    | button      | confirmation             |
      | test_educator@mailinator.com | /qa-automation/education/free-software/autocad-edu-new                    | Stand-alone license                               | Product Design Suite Ultimate 2016 | Windows 64-bit | English  | 901-00772817  | 426H1       | 33.4 GB | For use on personal device only | Install Now | Your file is downloading |
      | facultyis@mailinator.com     | /qa-automation/education/free-software/autocad-edu-new                    | Stand-alone license                               | Product Design Suite Ultimate 2016 | Windows 64-bit | English   | 900-62373539  | 426H1       | 33.4 GB   | For use on personal device only        | Install Now | Your file is downloading |
      | facultyis@mailinator.com     | /qa-automation/education/free-software/autocad-edu-new                    | Deploy for school - Multi-seat Standalone license | Product Design Suite Ultimate 2016 | Windows 64-bit | English   | 560-16464376  | 426H1       | 33.4 GB   | Installation on up to 1,250 devices    | Download Now | Your file is downloading |
      | facultyis@mailinator.com     | /qa-automation/education/free-software/autocad-edu-new                    | Deploy for school - Network license               | Product Design Suite Ultimate 2016 | Windows 64-bit | English   | 560-16537820  | 426H1       | 33.4 GB   | Access by up to 3,000 concurrent users | Download Now | Your file is downloading |
      | itas@mailinator.com          | /qa-automation/education/free-software/autocad-edu-new                    | Deploy for school - Multi-seat Standalone license | Product Design Suite Ultimate 2016 | Windows 64-bit | English   | 560-16464475  | 426H1       | 33.4 GB   | Installation on up to 1,250 devices    | Download Now | Your file is downloading |
      | itas@mailinator.com          | /qa-automation/education/free-software/autocad-edu-new                    | Deploy for school - Network license               | Product Design Suite Ultimate 2016 | Windows 64-bit | English   | 560-16537919  | 426H1       | 33.4 GB   | Access by up to 3,000 concurrent users | Download Now | Your file is downloading |
      | facultyis@mailinator.com     | /qa-automation/education/free-software/product-design-suite-institutional | Deploy for school - Multi-seat Standalone license | QA Automation Product Design Suite Institutional 2016 | Windows 64-bit | English   | 560-61883241  | 766H1 | 33.4 GB   | Installation on up to 1,250 devices | Download Now | Your file is downloading |
      | itas@mailinator.com          | /qa-automation/education/free-software/product-design-suite-institutional | Deploy for school - Multi-seat Standalone license | QA Automation Product Design Suite Institutional 2016 | Windows 64-bit | English   | 560-61883340  | 766H1 | 33.4 GB   | Installation on up to 1,250 devices | Download Now | Your file is downloading |
      | facultyis@mailinator.com     | /qa-automation/education/free-software/product-design-suite-both          | Deploy for school - Multi-seat Standalone license | QA Automation Product Design Suite Both 2016 | Windows 64-bit | English   | 560-61883241  | 766H1 | 33.4 GB   | Installation on up to 1,250 devices | Download Now | Your file is downloading |
      | itas@mailinator.com          | /qa-automation/education/free-software/product-design-suite-both          | Deploy for school - Multi-seat Standalone license | QA Automation Product Design Suite Both 2016 | Windows 64-bit | English   | 560-61883340  | 766H1 | 33.4 GB   | Installation on up to 1,250 devices | Download Now | Your file is downloading |
