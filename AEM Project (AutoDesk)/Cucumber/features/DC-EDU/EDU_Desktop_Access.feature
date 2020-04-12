@DC
@DC-EDU
@SLE2
@PT
@REGRESSION
@ClearCookies
@SLE1
@fogaltest

Feature: Desktop Product - Download Access


#------------------------------Scenario 1 - Desktop download for german release (Verified Personal account) -----------------------#
@StorageClear

Scenario Outline: 1 -Validate a successfully verified user has access to EDU Download feature and can successfully download a german product (Personal account)
    Given the user navigates to the EDU page "<edu_page>" for the "<site>"
    When user click on SignIn edu button
    And user enter edu user login email "<username>" and password "<password>"
    And user should see "Welcome back" "<user_full_name>" message
    And user select "<release>" from release dropdown, "<os>" from OS dropdown, "<language>" from Language dropdown
    And user click on the Install Now button
    And user see "Your file is downloading" message as confirmation that download is starting
    Then user's machine should have downloaded file "<filename>"
    @AddWinOSExtension
    @FFH
    Examples:
      | site         | edu_page                                                     | username                              | password  | user_full_name              | release     | os             |   language |                     filename                                   |
      | .com         | /qa-automation/education-veritas/education/autocad-baseline  |student_us_verified@yopmail.com        | test1234  | student us_verified         | Mango 2018  | Windows 64-bit |  Deutsch   | AutoCAD_2018_German_Win_32_64bit_wi_de-DE_Setup_webinstall.exe |
      | .ca/en       | /qa-automation/education-veritas/education/autocad-baseline  |educator1a_uk_verified@yopmail.com     | test1234  | rejected uk_verified        | Mango 2018  | Windows 64-bit |  Deutsch   | AutoCAD_2018_German_Win_32_64bit_wi_de-DE_Setup_webinstall.exe |

#------------------------------Scenario 2 -  Desktop download for english release (Verified Hybrid educator account) -----------------------#
@StorageClear

Scenario Outline: 2 -Validate a successfully verified user has access to EDU Download feature and can successfully download an english product (Hybrid educator account)
    Given the user navigates to the EDU page "<edu_page>" for the "<site>"
    When user click on SignIn edu button
    And user enter edu user login email "<username>" and password "<password>"
    And user should see "Welcome back" "<user_full_name>" message
    And user should be able to select "<license_type>" from license type dropdown
    And user select "<release>" from release dropdown, "<os>" from OS dropdown, "<language>" from Language dropdown
    And user click on the Install Now button
    And user see "Your file is downloading" message as confirmation that download is starting
    Then user's machine should have downloaded file "<filename>"
    @AddWinOSExtension
    @FFH
    Examples:
      | site         | edu_page                                                     | username                              | password  | user_full_name              | license_type                 | release     |  os              |   language  |                     filename                                          |
      | .com         | /qa-automation/education-veritas/education/autocad-baseline  |educator1b_ca_verified@yopmail.com     | test1234  | rejected ca_verified        | Personal or individual use   | Mango 2020  | Windows 64-bit   |   English   | AutoCAD_2017_English_Win_32_64bit_Trial_en-us_Setup_webinstall.exe    |

  #------------------------------Scenario 3 - Download access to education download feature (verified itadmin account) -----------------------#
@StorageClear

Scenario Outline: 3 -Validate a successfully verified user has access to EDU Download feature (itadmin account)
    Given the user navigates to the EDU page "<edu_page>" for the "<site>"
    When user click on SignIn edu button
    And user enter edu user login email "<username>" and password "<password>"
    Then user should see "Welcome back" "<user_full_name>" message
    And user should be able to select "<license_type>" from license type dropdown
    And user should be able to select "<release>" from release dropdown

    Examples:
      | site         | edu_page                                                     | username                              | password  | user_full_name  | license_type                           | release     |
      | .com         | /qa-automation/education-veritas/education/autocad-baseline  |itadmin_us_verified@yopmail.com        | test1234  | it_ad us        | School: Deploy with network server     | Mango 2018  |

#------------------------------Scenario 4 - Failed User does not have access to education download feature  -----------------------#
@StorageClear


Scenario Outline: 4 -Validate a failed verified user does not have access to EDU Download feature
    Given the user navigates to the EDU page "<edu_page>" for the "<site>"
    When user click on SignIn edu button
    And user enter edu user login email "<username>" and password "<password>"
    Then user should see "Welcome back" "<user_full_name>" message
    And user should see the verification failed status message "We're sorry"

    Examples:
      | site         | edu_page                                                     | username                      | password |  user_full_name       |
      | .com         | /qa-automation/education-veritas/education/autocad-baseline  |student_us_failed@yopmail.com  | test1234 | rejected us_failed    |
      | .ca/en       | /qa-automation/education-veritas/education/autocad-baseline  |student_us_failed@yopmail.com  | test1234 | rejected us_failed    |

#------------------------------ Scenario 5 - Bypass User has access to education download feature  -----------------------#
@StorageClear

Scenario Outline: 5 -Validate a bypass user account has access to EDU Download feature
    Given the user navigates to the EDU page "<edu_page>" for the "<site>"
    When user click on SignIn edu button
    And user enter edu user login email "<username>" and password "<password>"
    Then user should see "Welcome back" "<user_full_name>" message
    And user should be able to select "<release>" from release dropdown

    Examples:
      | site         | edu_page                                                     | username                      | password |  user_full_name       | release      |
      | .com         | /qa-automation/education-veritas/education/autocad-baseline  |student_it_bypass@yopmail.com  | test1234 | student it_bypass     | Mango 2020   |
      | .ca/en       | /qa-automation/education-veritas/education/autocad-baseline  |student_it_bypass@yopmail.com  | test1234 | student it_bypass     | Mango 2020   |
      | .com         | /qa-automation/education-veritas/education/autocad-baseline  |mentor1a_us_bypass@yopmail.com | test1234 | mentor1a us_bypass    | Mango 2020   |
