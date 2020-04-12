@DC
@SLE2
@PT
@PROD
@EDU
@REGRESSION
@SMOKE
@MaximizeBrowser


Feature: EDU sample objects checks

Scenario: 1 - checking Signin object mapping

  Given I test EDU on page "https://www.autodesk.com/education/free-software/autocad"
  When I click on SignIn edu button
  And I enter my edu user login email "facultyis@mailinator.com" and password "test1234"
  And I should see "Welcome back, Faculty Is" message
  And I select standalone from license type dropdown
  And I select Autocad 2020 from release dropdown
  And I select Win64bit from OS dropdown
  And I select English from language dropdown
  And I click on the Install Now button
  And I see "Your file is downloading" message
  Then edu user should have downloaded file "AutoCAD_2020_English_win_64bit_r1_wi_en-us_Setup_webinstall.exe"
