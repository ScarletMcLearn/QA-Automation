@DC-PROD
@PROD



Feature: EDU download for Desktop product

Scenario Outline: 1 - EDU Desktop Download - Verify a bypass user account has access to EDU Download feature

  Given user clears cookies for domain "<site>"
  And userA navigates to the EDU page "<edu_page>" for the "<site>"
  And userA click on SignIn edu button
  When userA enter edu user login email "<username>" and password "<password>"
  And userA should see "Welcome back" "<user_full_name>" message
  And userA should be able to select Autocad 2020 from release dropdown
  And userA select Win64bit from OS dropdown
  And userA select English from language dropdown
  And userA click on the Install Now button
  And userA sees "Your file is downloading" message
  Then edu user should have downloaded file "AutoCAD_2020_English_win_64bit_r1_wi_en-us_Setup_webinstall.exe"

    Examples:
      | site         | edu_page                         | username                      | password |  user_full_name              |
      | .com         | /education/free-software/autocad  |bypass_user_italy@yopmail.com  | test1234 | bypass_student prod_italy    |
  #    | .ca/en       | /qa-automation/education-veritas/education/autocad-baseline  |student_it_bypass@yopmail.com  | test1234 | student it_bypass     |
