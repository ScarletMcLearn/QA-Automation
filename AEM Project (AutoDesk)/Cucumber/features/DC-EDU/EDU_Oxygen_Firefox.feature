@DC
@DC-EDU
@SLE2
@PT
#@REGRESSION
#@SMOKE
@FF
@SLE1

Feature: Education Download complete flow using different EDU account type on Firefox


  Scenario Outline: 1- EDU signed in user can see his user name on the page and on the utility bar.
    Given user is on EDU download page "<autocad_edu_new>"
    When user click on EDU sign in button
    And user add his EDU credential username "<username>" and password "test1234"
    Then user should see his EDU "<user_name>" on the page
    And user should see his EDU "<user_name>" on the utility bar
    And user click on EDU Sign out link on the page

    Examples:
      | username | autocad_edu_new | user_name |
      | students@mailinator.com | /qa-automation/education/free-software/autocad-edu-new | STUDENT S |


  Scenario Outline: 2- As different user accounts, I'd like to be able to download releases with Stand-alone license.
    Given user is on EDU download page "<edu_page>"
    When user click on EDU sign in button
    And user add his EDU credential username "<username>" and password "test1234"
    And user select Release "<release>", OS "<os>", Language "<language>"
    Then user should see Serial Number "<serial_number>", Product Key "<product_key>", Usage Rights "<usage_rights>"
    And user should download successfully from "<button>"

    Examples:
      | username                | edu_page                                                | release                            |  os            | language  | serial_number | product_key | usage_rights                    | button           |
      | students@mailinator.com | /qa-automation/education/free-software/autocad-edu-new  | Product Design Suite Ultimate 2009 | Windows 64-bit | English   | 901-00111259  | 766H1       | For use on personal device only | Browser Download |
