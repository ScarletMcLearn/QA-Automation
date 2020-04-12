@DC
@DC-EDU
@SLE2
@PT
@REGRESSION
@ClearCookies
@SLE1
@fogaltest

Feature: Cloud Product -  Access

#------------------------------Scenario 1 - Verified User has access to education download feature - CLOUD (Personal account)  -----------------------#
@StorageClear

Scenario Outline: 1 -Validate a successfully verified user has access to EDU Download feature for CLOUD (Personal account)
    Given the user navigates to the EDU page "<edu_page>" for the "<site>"
    When user click on SignIn edu button
    And user enter edu user login email "<username>" and password "<password>"
    Then user should see "Welcome back" "<user_full_name>" message
    And user should see "GET ACCESS" button label

    Examples:
      | site         | edu_page                                                       | username                              | password |   user_full_name       |
      | .com         | /qa-automation/education-veritas/education/cloud-baseline1     |student_us_verified@yopmail.com        | test1234 |   student us_verified  |
      | .ca/en       | /qa-automation/education-veritas/education/cloud-baseline1     |student_us_verified@yopmail.com        | test1234 |   student us_verified  |
      | .com         | /qa-automation/education-veritas/education/cloud-baseline1     |educator1a_uk_verified@yopmail.com     | test1234 |   rejected uk_verified |


#------------------------------Scenario 2 - Verified User has access to education download feature - CLOUD (Hybrid educator account) -----------------------#
@StorageClear

Scenario Outline: 2 -Validate a successfully verified user has access to EDU Download feature for CLOUD  (Hybrid educator account)
    Given the user navigates to the EDU page "<edu_page>" for the "<site>"
    When user click on SignIn edu button
    And user enter edu user login email "<username>" and password "<password>"
    Then user should see "Welcome back" "<user_full_name>" message
    And user should see "GET ACCESS" button label


    Examples:
      | site         | edu_page                                                       | username                              | password |   user_full_name       |
      | .com         | /qa-automation/education-veritas/education/cloud-baseline1     |educator1b_ca_verified@yopmail.com     | test1234  | rejected ca_verified  |


#------------------------------Scenario 3 - Verified User does not have access to education download feature - CLOUD (Itadmin account) -----------------------#
@StorageClear

Scenario Outline: 3 -Validate a successfully verified user does not have access to EDU Download feature for CLOUD  (Hybrid educator account)
    Given the user navigates to the EDU page "<edu_page>" for the "<site>"
    When user click on SignIn edu button
    And user enter edu user login email "<username>" and password "<password>"
    Then user should see "Welcome back" "<user_full_name>" message
    And user should see message "We're sorry. This product is for students and educators only." from the adsk-education-cloud-access-not-entitled key

    Examples:
      | site         | edu_page                                                       | username                              | password  |   user_full_name       |
      | .com         | /qa-automation/education-veritas/education/cloud-baseline1     |itadmin_us_verified@yopmail.com        | test1234  | it_ad us               |



#------------------------------ Scenario 4 -  Failed User does not have access to education download feature- CLOUD  -----------------------#
@StorageClear

Scenario Outline: 4 -Validate a failed verified user does not have access to EDU Download feature for CLOUD
    Given the user navigates to the EDU page "<edu_page>" for the "<site>"
    When user click on SignIn edu button
    And user enter edu user login email "<username>" and password "<password>"
    Then user should see "Welcome back" "<user_full_name>" message
    And user should see the verification failed status message "We're sorry"

    Examples:
      | site         | edu_page                                                   | username                     | password | user_full_name      |
      | .com         | /qa-automation/education-veritas/education/cloud-baseline1 |student_us_failed@yopmail.com | test1234 | rejected us_failed  |
      | .ca/en       | /qa-automation/education-veritas/education/cloud-baseline1 |student_us_failed@yopmail.com | test1234 | rejected us_failed  |


#------------------------------ Scenario 5 - Bypass User has access to education download feature - CLOUD  -----------------------#
@StorageClear

Scenario Outline: 5 -Validate a bypass user account has access to EDU Download feature for CLOUD
    Given the user navigates to the EDU page "<edu_page>" for the "<site>"
    When user click on SignIn edu button
    And user enter edu user login email "<username>" and password "<password>"
    Then user should see "Welcome back" "<user_full_name>" message
    And user should see "GET ACCESS" button label

    Examples:
      | site         | edu_page                                                   | username                       | password | user_full_name      |
      | .com         | /qa-automation/education-veritas/education/cloud-baseline1 |student_it_bypass@yopmail.com   | test1234 | student it_bypass   |
      | .ca/en       | /qa-automation/education-veritas/education/cloud-baseline1 |student_it_bypass@yopmail.com   | test1234 | student it_bypass   |
      | .com         | /qa-automation/education-veritas/education/cloud-baseline1 |mentor1a_us_bypass@yopmail.com  | test1234 | mentor1a us_bypass  |
