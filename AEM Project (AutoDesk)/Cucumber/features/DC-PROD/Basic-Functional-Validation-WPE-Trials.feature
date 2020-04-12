@DC-PROD
@PROD


Feature: PROD DC: Basic functional validation on PROD (Trials) - WPE


  @StorageClear
  Scenario Outline: 1. New Trial Download with Oxygen
    Given I am on page "<url>"
    When I click on DOWNLOAD FREE TRIAL button
    And On IFrame select product "AutoCAD"
    And select user type as "A business user"
    And On IFrame log in with oxygen user "students@mailinator.com" password "test1234" and begin download
    Then On IFrame "Your download has started." text appears
    Examples:
      | url                                                    | signin       | Country  |
      | https://www.autodesk.com/products/autocad/free-trial   | sign in      | US       |


 #@StorageClear
# Scenario: 2. Verify user can download product from collections page
#    Given I am on page "https://www.autodesk.com/collections/media-entertainment/included-software#0"
#    When I click on first card DOWNLOAD FREE TRIAL button
#    And On IFrame click Next button
#    And select user type for card as "A business user"
#    And On IFrame1 log in with oxygen user "students@mailinator.com" password "test1234" and begin download
#    Then On IFrame1 "Your download has started." text appears



  @StorageClear
  Scenario Outline: 3. Verify user retains place in trial workflow when returning
    Given I am on page "<url>"
    When I click on DOWNLOAD FREE TRIAL button
    And On IFrame select product "AutoCAD"
    And select user type as "A business user"
    And I click on close X icon
    And I click on DOWNLOAD FREE TRIAL button
    Then the sign in screen is displayed
    Examples:
      | url                                                  |
      | https://www.autodesk.com/products/autocad/free-trial |

#  @StorageClear @DO
#  Scenario Outline: 4. Verify user retains place in Maya and Revit trial workflow when returning
#    Given I am on prod page "<url>" for "<site>"
#    When I click on DOWNLOAD FREE TRIAL button "<button>"
#    And user selects usertype option as "<option>" from frame
#    And I click on close X icon
#    And I click on DOWNLOAD FREE TRIAL button
#    Then the "<signinText>" is displayed
#    Examples:
#       | url                                                        | site    | button                                        |userType                          | signinText  |
#       | https://www.autodesk.com/products/revit-family/free-trial  | .com    | Download Free Trial                           | An individual or business user   | Sign in     |
#       | https://www.autodesk.fr/products/maya/free-trial           | .fr     | Telechargez une version d'evaluation gratuite | Un particulier ou une entreprise | Se connecter|
#       | https://www.autodesk.com.cn/products/maya/free-trial       | .com.cn | 下载免费试用版                                  | 个人或企业用户                     | 登录         |
#       | https://www.autodesk.ru/products/maya/free-trial           | .ru     | Бесплатная демоверсия                         | Отдельный пользователь           | Вход        |


  @ClearCookies @StorageClear
  Scenario Outline: 5. Validate trial download oxygen flow when user opts in (BEGIN DOWNLOAD button)
    Given user clears cookies for domain "<site>"
    And I am on the prod trial page "<url>" for "<site>" with opt in
    When user clicks on Download Free Trial button
    And clicks on the prod select 'Next' button
    And clicks on prodinfo 'Next' button
    And user selects usertype option as "<option>"
    And clicks on usertype 'Next' button
    When user signs in to his account
    And user fills Marketo form
    And selects country as "<country>"
    And clicks on 'Begin Download' button
    Then 2 On IFrame "<download_text>" text appears
    Then user should have downloaded file "<downloaded-file>"
    Examples:
       | site | url                                                    | option             | country       | download_text                | downloaded-file                                                    |
       #| .com | https://www.autodesk.com/products/autocad/free-trial#0 | A business user    | United States | Your download has started.   | AutoCAD_2019_English_Win_32_64bit_Trial_en-us_Setup_webinstall.exe |
        | .de  | https://www.autodesk.de/products/autocad/free-trial#0  | Firmenkunde        | Germany       | Ihr Download wurde gestartet | AutoCAD_2021_German_Win_64bit_r1_wi_de-DE_Setup_webinstall        |


  @ClearCookies @StorageClear
  Scenario Outline: 6. Validate trial download oxygen flow when user opts in (USE DOWNALOAD MANAGER link)
    Given user clears cookies for domain "<site>"
    And I am on the prod trial page "<url>" for "<site>" with opt in
    When user clicks on Download Free Trial button
    And clicks on the prod select 'Next' button
    And clicks on prodinfo 'Next' button
    And user selects usertype option as "<option>"
    And clicks on usertype 'Next' button
    When user signs in to his account
    And user fills Marketo form
    And selects country as "<country>"
    Then 'Use Download Manager' link is enabled
    When user clicks on above link
    Then 2 On IFrame "<download_text>" text appears
    Then user should have downloaded file "<downloaded-file>"
    Examples:
       | site | url                                                    | option           | country       | download_text                 | downloaded-file                        |
       #| .com | https://www.autodesk.com/products/autocad/free-trial#0 | A business user  | United States | Your download has started.    | AutodeskDownloadManager_webinstall.exe |
       | .de  | https://www.autodesk.de/products/autocad/free-trial#0  | Firmenkunde      | Germany       | Ihr Download wurde gestartet. |AutoCAD_2021_German_Win_64bit_wi_de-DE_Setup_webinstall|


  @ClearCookies @StorageClear
  Scenario Outline: 7. Validate trial download oxygen flow when user opts out (BEGIN DOWNLOAD button)
    Given user clears cookies for domain "<site>"
    And I am on the prod trial page "<url>" for "<site>" with opt out
    When user clicks on Download Free Trial button
    And clicks on the prod select 'Next' button
    And clicks on prodinfo 'Next' button
    And user selects usertype option as "<option>"
    And clicks on usertype 'Next' button
    When user signs in to his account
    And user fills Marketo form
    And selects country as "<country>"
    And clicks on 'Begin Download' button
    Then 2 On IFrame "<download_text>" text appears
    Then user should have downloaded file "<downloaded-file>"
    Examples:
       | site | url                                                    | option             | country       | download_text                | downloaded-file                                                    |
       #| .com | https://www.autodesk.com/products/autocad/free-trial#0 | A business user    | United States | Your download has started.   | AutoCAD_2019_English_Win_32_64bit_Trial_en-us_Setup_webinstall.exe |
        | .de  | https://www.autodesk.de/products/autocad/free-trial#0  | Firmenkunde        | Germany       | Ihr Download wurde gestartet | AutoCAD_2021_German_Win_64bit_r1_wi_de-DE_Setup_webinstall.exe        |


  @ClearCookies @StorageClear
  Scenario Outline: 8. Validate trial download oxygen flow when user opts out (USE DOWNALOAD MANAGER link)
    Given user clears cookies for domain "<site>"
    And I am on the prod trial page "<url>" for "<site>" with opt out
    When user clicks on Download Free Trial button
    And clicks on the prod select 'Next' button
    And clicks on prodinfo 'Next' button
    And user selects usertype option as "<option>"
    And clicks on usertype 'Next' button
    When user signs in to his account
    And user fills Marketo form
    And selects country as "<country>"
    Then 'Use Download Manager' link is enabled
    When user clicks on above link
    Then 2 On IFrame "<download_text>" text appears
    Then user should have downloaded file "<downloaded-file>"
    Examples:
       | site | url                                                    | option           | country       | download_text                 | downloaded-file                        |
       | .com | https://www.autodesk.com/products/autocad/free-trial#0 | A business user  | United States | Your download has started.    | webinstall                             |
       #| .de  | https://www.autodesk.de/products/autocad/free-trial#0  | Firmenkunde      | Germany       | Ihr Download wurde gestartet. | webinstall                             |
