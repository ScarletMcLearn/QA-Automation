@DC
@Oxygen
@PT
@SLE2
@REGRESSION
@SMOKE
@SLE1


Feature: Trial Oxygen Flow: GDPR

  Validating trial oxygen flow when GDPR switch is enabled

  @ClearCookies
  Scenario Outline: 1- Validate trial oxygen flow when user opts in with BEGIN DOWNLOAD button
    Given user clears cookies for domain "<site>"
    And user is on the trial page "<url>" for "<site>" and opting in
    When User clicks on Download button
    And clicks on prodinfo 'Next' button
    And user selects usertype option as "<option>"
    And clicks on usertype 'Next' button
    When user signs in to his account
    And user fills Marketo form
    And selects country as "<country>"
    Then finds 'Begin Download' button is enabled
    When user begins the download
    Then 2 On IFrame "Your download has started." text appears
    Then user should have downloaded file "<downloaded-file>"
    

    Examples:
      | site | url                                                | option                | country       | downloaded-file                                                    |
      | .com |/qa-automation/oxygen-trial-download/privacy-author | A business user       | United States | 2017_English_Win_32bit_Trial.sfx.exe |
      | .de  |/qa-automation/oxygen-trial-download/privacy-author | Firmenkunde           | Germany       | AutoCAD_2017_German_Win_32           |
       #AutoCAD_2017_English_Win_32_64bit_Trial_en-us_Setup_webinstall.exe
  
  @ClearCookies
  Scenario Outline: 2- Validate trial oxygen flow when user opts in with USE DOWNALOAD MANAGER link
    Given user clears cookies for domain "<site>"
    And user is on the trial page "<url>" for "<site>" and opting in
    When User clicks on Download button
    And clicks on prodinfo 'Next' button
    And user selects usertype option as "<option>"
    And clicks on usertype 'Next' button
    When user signs in to his account
    And user fills Marketo form
    And selects country as "<country>"
    Then 'Use Download Manager' link is enabled
    When user clicks on above link
    Then 2 On IFrame "Your download has started." text appears
    Then user should have downloaded file "<downloaded-file>"

    Examples:
      | site | url                                                 | option                | country       | downloaded-file                        |
      | .com | /qa-automation/oxygen-trial-download/privacy-author | A business user       | United States | 2017_English_Win_32bit_Trial           |
      #| .de  | /qa-automation/oxygen-trial-download/privacy-author | Ein Geschäftsbenutzer | Germany       | AutodeskDownloadManager_webinstall.exe |


  @ClearCookies
    Scenario Outline: 3- Validate trial oxygen flow when user opts out with BEGIN DOWNLOAD button
      Given user clears cookies for domain "<site>"
      And user is on the trial page "<url>" for "<site>" and opting out
      When User clicks on Download button
      And clicks on prodinfo 'Next' button
      And user selects usertype option as "<option>"
      And clicks on usertype 'Next' button
      When user signs in to his account
      And user fills Marketo form
      And selects country as "<country>"
      Then finds 'Begin Download' button is enabled
      When user begins the download
      Then 2 On IFrame "Your download has started." text appears
      Then user should have downloaded file "<downloaded-file>"


      Examples:
        | site | url                                                | option                | country       | downloaded-file                                     |
        | .com |/qa-automation/oxygen-trial-download/privacy-author | A business user       | United States | AutoCAD_2017_English_Win_32 |
        | .de  |/qa-automation/oxygen-trial-download/privacy-author | Firmenkunde           | Germany       | AutoCAD_2017_German_Win_32  |



    @ClearCookies
    Scenario Outline: 4- Validate trial oxygen flow when user opts out with USE DOWNALOAD MANAGER link
      Given user clears cookies for domain "<site>"
      And user is on the trial page "<url>" for "<site>" and opting out
      When User clicks on Download button
      And clicks on prodinfo 'Next' button
      And user selects usertype option as "<option>"
      And clicks on usertype 'Next' button
      When user signs in to his account
      And user fills Marketo form
      And selects country as "<country>"
      Then 'Use Download Manager' link is enabled
      When user clicks on above link
      Then 2 On IFrame "Your download has started." text appears
      Then user should have downloaded file "<downloaded-file>"

      Examples:
        | site | url                                                 | option                | country       | downloaded-file                        |
        | .com | /qa-automation/oxygen-trial-download/privacy-author | A business user       | United States | AutoCAD_2017_English_Win_32            |
        #| .de  | /qa-automation/oxygen-trial-download/privacy-author | Ein Geschäftsbenutzer | Germany       | AutodeskDownloadManager_webinstall.exe |


  @ClearCookies @SessionStorageClear
  Scenario: 5- Validate ePrivacy page should not be shown again once user opts in before expiration
    Given user clears cookies for domain ".de"
    Given user is on the trial page "/qa-automation/oxygen-trial-download/privacy-author" for ".de" and opting in
    And User clicks on Download button
    And clicks on prodinfo 'Next' button
    And user selects usertype option as "Firmenkunde"
    And clicks on usertype 'Next' button
    When user navigates to "https://www.google.com"
    And user visits trial page "/qa-automation/oxygen-trial-download/privacy-author" for ".de"
    Then eprivacy page is not seen