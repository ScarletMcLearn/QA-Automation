@DC
@DC-EDU
@SLE2
@PT
@REGRESSION
@ClearCookies
@SLE1


Feature: Education Download complete flow using different EDU account type - 3.

  Scenario Outline: 3- As different user accounts, I shouldn't be able to download releases of a product
    Given user is on EDU download page "<edu_page>"
    When user click on EDU sign in button
    And user add his EDU credential username "<username>" and password "test1234"
    Then version dropdown, os dropdown and language dropdown is disabled

    Examples:
      | username | edu_page |
      | itas@mailinator.com | /qa-automation/education/free-software/product-design-suite-personal |
      | mentors@mailinator.com | /qa-automation/education/free-software/product-design-suite-institutional |
      | facultys@mailinator.com | /qa-automation/education/free-software/product-design-suite-institutional |


# Scenario Outline: 4- For CN local as different user accounts, I'd like to be able to download releases.
#    Given user is on EDU_CN download page "<edu_page>"
#    When user click on EDU sign in button
#    And user add his EDU credential username "<username>" and password "test1234"
#    And user select License "<license_type>"
#    And user select Release "<release>", OS "<os>", Language "<language>"
#    Then user should get Serial Number "<serial_number>", Product Key "<product_key>", File Size "<file_size>", Usage Rights "<usage_rights>"
#    And user is able to see the help link
#    And user is able to see the additional benefit link as "<benefit_link>"
#    And user should download successfully from "<button>" with "<confirmation>"
#
#   @DONOT
#    Examples:
#      | username | edu_page | license_type | release | os | language  | serial_number | product_key | file_size | usage_rights | benefit_link | button  | confirmation |
#      | facultyis@mailinator.com | /qa-automation/education/free-software/autocad-edu-new | Deploy for school - Multi-seat Standalone license - ZH | Product Design Suite Ultimate 2009 | Windows 64位 | English | 560-61883439 | 766H1 | 33.4 GB | Installation on up to 1,250 devices - ZN | 我的优势链接在 2016 年 4 月 | 立即下载 | 您的文件正在下载 |


@SMOKE
Scenario: 5- The Sign In form should appear in the correct local language.
Given the user navigates to ".com.cn" "/qa-automation/education/free-software/product-design-suite-personal"
When user click on EDU sign in button
Then the Sign In form should read "登录"


@SMOKE
Scenario Outline: 6- Validate expected file is downloaded (validate by name).
    Given user is on EDU download page "<edu_page>"
    When user click on EDU sign in button
    And user add his EDU credential username "<username>" and password "test1234"
    And user select Release "<release>", OS "<os>", Language "<language>"
    Then user should get Serial Number "<serial_number>", Product Key "<product_key>", File Size "<file_size>", Usage Rights "<usage_rights>"
    Then user should download successfully from "<button>" with "<confirmation>"
    Then user should have downloaded file "<downloaded-file>"
    
    Examples:
      | username                | edu_page                                                | release                            |  os            | language  | serial_number | product_key | file_size | usage_rights                    | button      | confirmation             | downloaded-file |
      | test_student@mailinator.com | /qa-automation/education/free-software/autocad-edu-new  | Product Design Suite Ultimate 2016 | Windows 64-bit | English   | 901-00771027  | 426H1       | 33.4 GB   | For use on personal device only | Install Now | Your file is downloading | PRDSU_2016_Enu_Win_64bit_wi_en-us_Setup_webinstall.exe         |
      | mentors@mailinator.com  | /qa-automation/education/free-software/autocad-edu-new  | Product Design Suite Ultimate 2016 | Windows 64-bit | English   | 900-62373531  | 426H1       | 33.4 GB   | For use on personal device only | Install Now | Your file is downloading | PRDSU_2016_Enu_Win_64bit_wi_en-us_Setup_webinstall.exe         |
