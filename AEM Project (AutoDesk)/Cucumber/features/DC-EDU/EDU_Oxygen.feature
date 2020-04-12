@DC
@DC-EDU
@REGRESSION
@SMOKE

Feature: Education Download complete flow using Oxygen sign-in  with different account type

#########  Scenario 1  ##########

  Scenario Outline: 1- EDU signed in user can see his user name on the page and on the utility bar.
    Given user is on EDU download page "<autocad_edu_new>"
    When user click on EDU sign in button
    And user add his EDU credential username "<username>" and password "test1234"
    Then user should see his EDU "<user_name>" on the page
    And user should see his EDU "<user_name>" on the utility bar

@SLE2
@SLE1
@PT
    Examples:
      | username | autocad_edu_new | user_name |
      | students@mailinator.com | /qa-automation/education/free-software/autocad-edu-new | STUDENT S |


#########  Scenario 2  ##########

  Scenario Outline: 2- EDU signed in user can access his account from My account link on the page.
    Given user is on EDU download page "<autocad_edu_new>"
    When user click on EDU sign in button
    And user add his EDU credential username "<username>" and password "test1234"
    And user click on EDU My account link on the page
    Then user should be redirected to his EDU account profile page "<edu_profile_page>"
    And user should be able to come back to EDU page

  @SLE2
  @SLE1
    Examples:
      | username | autocad_edu_new | edu_profile_page |
      | students@mailinator.com | /qa-automation/education/free-software/autocad-edu-new | /users/studentsTQDBW/view?ReturnToUrl=https://www-sle2.awsism.autodesk.com/qa-automation/education/free-software/autocad-edu-new |

  @PT
    Examples:
      | username | autocad_edu_new | edu_profile_page |
      | students@mailinator.com | /qa-automation/education/free-software/autocad-edu-new | /users/studentsTQDBW/view?ReturnToUrl=https://www-pt.autodesk.com/qa-automation/education/free-software/autocad-edu-new |

#########  Scenario 3  ##########

  Scenario Outline: 3- EDU signed in user can access his account from My account link on the utility bar
    Given user is on EDU download page "<autocad_edu_new>"
    When user click on EDU sign in button
    And user add his EDU credential username "<username>" and password "test1234"
    And user click on his EDU user name on the utility bar
    And user click on My Account link on panel
    Then user should be redirected to his EDU account profile page "<edu_profile_page>"
    And user should be able to come back to EDU page

  @SLE2
  @SLE1
    Examples:
      | username | autocad_edu_new | edu_profile_page                                                                                                            |
      | students@mailinator.com | /qa-automation/education/free-software/autocad-edu-new | /users/studentsTQDBW/view?ReturnToUrl=https://www-sle2.awsism.autodesk.com/qa-automation/education/free-software/autocad-edu-new |

  @PT
    Examples:
      | username | autocad_edu_new | edu_profile_page                                                                                                            |
      | students@mailinator.com | /qa-automation/education/free-software/autocad-edu-new | /users/studentsTQDBW/view?ReturnToUrl=https://www-pt.autodesk.com/qa-automation/education/free-software/autocad-edu-new |



#########  Scenario 4  ##########

  Scenario Outline: 4- EDU signed in user can log out by clicking on EDU Sign out link on the page.
    Given user is on EDU download page "<autocad_edu_new>"
    When user click on EDU sign in button
    And user add his EDU credential username "students@mailinator.com" and password "test1234"
    And user click on EDU Sign out link on the page
    Then user should see the EDU Sign in button on the page

@SLE2
@SLE1
@PT
    Examples:
      | autocad_edu_new                                        |
      | /qa-automation/education/free-software/autocad-edu-new |


#########  Scenario 5  ##########

  Scenario Outline: 5- Anonymous user navigate to EDU downlaod page and can access the account creation page from EDU button.
    Given user is on EDU download page "<autocad_edu_new>"
    When user click on EDU CREATE ACCOUNT button
    Then user should see the EDU account creation page

@SLE2
@SLE1
@PT
    Examples:
      | autocad_edu_new                                        |
      | /qa-automation/education/free-software/autocad-edu-new |


#########  Scenario 5  ##########

  #Scenario: User with an incomplete EDU profile should not be signed in in the EDU component
  #  Given user is on EDU download page "/qa-automation/education/free-software/product-design-suite-personal"
  #  When user signs in with username "trialreg@mailinator.com" and password "test1234" by clicking on the Sign In on the utility bar
  #  Then user click on EDU sign in button
