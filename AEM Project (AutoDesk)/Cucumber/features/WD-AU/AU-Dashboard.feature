@AU
@WD
@QA-AU-DASHBOARD
@PT
@REGRESSION


Feature: AU DASHBOARD page validation


#########  Scenario 1  ##########
  Scenario: 1- Validate Sign Out State for Introbar
    Given I am on AU dashboard page "/qa-automation/au-online/dashboard-new"
    Then I should see the text "Don't be a stranger" in user banner area for a not logged in user
    And I should see "Sign in or sign up" login link in user banner area for a not logged in user
    And I should see a silhouette image in the user banner area for a not logged in user

#########  Scenario 2  ##########
  @SLE2
  Scenario: 2- Validate Sign Out State for OVERVIEW tab component on the Dashboard page
    Given I am on AU dashboard page "/qa-automation/au-online/dashboard-new"
    And I click on the first tab labelled as 'Overview'
    Then I should see overview listed in the dashboard url "/qa-automation/au-online/dashboard-new#/tabs_component_overview"
  # Use the above rb step to refactor other AU tests for when validating on the landed URL ------------------------------
    And I should see content of "Make AU all about you. Save classes, keep track of your activity, and more." in overview for a logged out user
    And I should see "Sign in or sign up to get started." link in overview for a logged out user


#########  Scenario 3  ##########
  @SLE2
  Scenario: 3- Validate Sign Out State for SAVED CLASSES tab component on the Dashboard page
    Given I am on AU dashboard page "/qa-automation/au-online/dashboard-new"
    And I click on the second tab labelled as 'Saved Classes'
    Then I should see overview listed in the dashboard url "/qa-automation/au-online/dashboard-new#/tabs_component_savedclasses"
    And I should see content of "Sign in or sign up to save classes." in saved classes for a logged out user


#########  Scenario 4  ##########
  @SLE2
  Scenario: 4- Validate Sign Out State for VIEWED CLASSES tab component on the Dashboard page
    Given I am on AU dashboard page "/qa-automation/au-online/dashboard-new"
    And I click on the third tab labelled as 'Viewed Classes'
    Then I should see overview listed in the dashboard url "/qa-automation/au-online/dashboard-new#/tabs_component_viewedclasses"
    And I should see content of "Sign in or sign up to see classes you've viewed." in viewed classes for a logged out user


#########  Scenario 5  ##########
  @WIP @MANUAL
  Scenario: 5- Validate Sign Out State for Las Vegas Classes tab not being present on the Dashboard page
    Given I am on AU dashboard page "/qa-automation/au-online/dashboard-new"
    Then I should not see fourth tab with label 'Las Vegas Classes'
# For now test the step above MANUALLY
#Note: Since no future support for AU.----------
# This TEST will remain as Manual and work on---------------------------
#ONLY if we continue to support in a future sprint----------------------


#########  Scenario 6  ##########
  @SLE2
  Scenario: 6- Validate Sign Out State for the fifth user defined tab component on the Dashboard page
    Given I am on AU dashboard page "/qa-automation/au-online/dashboard-new"
    And I click on the fifth tab labelled as "Viewed tab classes TAB 5"
    Then I should see overview listed in the dashboard url "/qa-automation/au-online/dashboard-new#/tabs_component_viewedtabclassestab5"
    And I should see content of "Tab 5" in fifth tab for a logged out user


#########  Scenario 7  ##########
  @SLE2
  Scenario: 7- Validate Sign Out State for the sixth user defined tab component on the Dashboard page
    Given I am on AU dashboard page "/qa-automation/au-online/dashboard-new"
    And I click on the sixth tab labelled as "Viewed tab classes TAB 6"
    Then I should see overview listed in the dashboard url "/qa-automation/au-online/dashboard-new#/tabs_component_viewedclassestab6"
    And I should see content of "Tab 6" in sixth tab for a logged out user

#########  Scenario 8  ##########
  @SLE2
  Scenario: 8- Validate user can signin from IntroBar (Sign in State in User banner)
    Given I am on AU dashboard page "/qa-automation/au-online/dashboard-new"
    And I click on the 'Sign in or sign up' link for au test user
    Then I should land on AU dashboard page "/qa-automation/au-online/dashboard-new"
    And I should see username "Test Test" in the introbar
    And I click on my username in the utility bar
    And I click on the 'Sign Out' in the dropdown to signout

#########  Scenario 9  ##########
  @SLE2
  Scenario: 9- Validate logged in content is displayed under Overview Tab (Sign in State)
    Given I am on AU dashboard page "/qa-automation/au-online/dashboard-new"
    And I click on the 'Sign in or sign up' link for au test user
    Then under overview tab, I should see first line as "Hi Test,"
    And I should see a second line as "QA Local overwrite: Logged in intro text"
    And I should see third line as "1 saved class QA Local overwrite: see saved classes text"
    And I should see fourth line as "6 viewed classes QA Local overwrite: see viewed classes text"
    And I should see recently saved section with label "Recently saved:"
    And in recently saved section, I should see a "See all saved" link
    And I should see recently viewed section with label "Recently viewed:"
    And in recently viewed section, I should see a "See all viewed" link
    And I click on my username in the utility bar
    And I click on the 'Sign Out' in the dropdown to signout

#########  Scenario 10  ##########
  @SLE2
  Scenario: 10- Validate logged in content is displayed under Saved Classes Tab (Sign in State).
  #Notes: Initially we should see 1 saved class for existing user and then
  #we should be able to update by removing and re-adding a saved class via COD page, that should be
  #reflected in the dashboard

    Given I am on AU dashboard page "/qa-automation/au-online/dashboard-new"
    And I click on the 'Sign in or sign up' link for au test user
    And I click on the second tab labelled as 'Saved Classes'
    Then under saved classes tab, I should see first line as "1 saved class"
    And I should see my saved class in the list with title "3ds Max Design Visualization in VR"
    And I navigate to URL "/au-online/classes-on-demand/class-catalog/2017/3ds-max/lo-me08"
    And I click on 'Saved' button to unsave the page to my dashboard
    And I navigate to URL "/qa-automation/au-online/dashboard-new"
    And I click on the second tab labelled as 'Saved Classes'
    And under saved classes tab, I should see first line as "Your saved classes will appear here. QA Local overwrite: browse online classes text under Saved classes" for having no saved classes
    And I navigate to URL "/au-online/classes-on-demand/class-catalog/2017/3ds-max/lo-me08"
    And I click on 'My AU button' to save the page to my dashboard
    And I click on my username in the utility bar
    And I click on the 'Sign Out' in the dropdown to signout

#########  Scenario 11  ##########
  @SLE2
  Scenario: 11- Viewed Classes Tab (Sign in State). ScenarioA: Where no classes were VIEWED by user
    Given I am on AU dashboard page "/qa-automation/au-online/dashboard-new"
    And I click on the 'Sign in or sign up' link with user with no au class views
    And I click on the third tab labelled as 'Viewed Classes'
    Then under viewed classes tab, I should see first line as "Your viewed classes will appear here. QA Local overwrite: browse online classes text under viewed classes" for having no viewed classes
    And I click on my username in the utility bar
    And I click on the 'Sign Out' in the dropdown to signout

#########  Scenario 12  ##########
  @SLE2
  Scenario: 12- Viewed Classes Tab (Sign in State). ScenarioB: Where classes were VIEWED by user
    Given I am on AU dashboard page "/qa-automation/au-online/dashboard-new"
    And I click on the 'Sign in or sign up' link for au test user
    And I click on the third tab labelled as 'Viewed Classes'
    Then under viewed classes tab, I should see first line as "6 viewed classes"
    And I click on my username in the utility bar
    And I click on the 'Sign Out' in the dropdown to signout

#########  Scenario 13  ##########
  @SLE2
  Scenario: 13- Las Vegas Tab (Sign in State). ScenarioA: Where tab is available to user who attended Las Vegas event
    Given I am on AU dashboard page "/qa-automation/au-online/dashboard-new"
    And I click on the 'Sign in or sign up' link with user who is an attendee of au las vegas
    And I click on the fourth tab labelled as 'Las Vegas Classes'
    Then under las vegas classes tab, I should see first line as "Tab 4"
    And I should see "Your AU 2015 classes" section for event attended recently
    And I should see "Your AU 2014 classes" section for event attended in the past
    And I click on my username in the utility bar
    And I click on the 'Sign Out' in the dropdown to signout

#########  Scenario 14  ##########
  @WIP @MANUAL
  Scenario: 14- Las Vegas Tab (Sign in State). ScenarioB: Where tab is NOT available to user who did not attend Las Vegas event
    Given I am on AU dashboard page "/qa-automation/au-online/dashboard-new"
    And I click on the 'Sign in or sign up' link
    Then I should not see fourth tab with label 'Las Vegas Classes'
# For now test the step above MANUALLY
#Note: Since no future support for AU.--------------------
# This TEST will remain as Manual and work on---------------------------
#ONLY if we continue to support in a future sprint----------------------


#########  Scenario 15  ##########
  @SLE2
  Scenario: 15- Tab 5 content for Signed in state should be the same as logged out user
    Given I am on AU dashboard page "/qa-automation/au-online/dashboard-new"
    And I click on the 'Sign in or sign up' link
    And I click on the fifth tab labelled as "Viewed tab classes TAB 5"
    Then I should see content of "Tab 5" in fifth tab for a logged out user
    And I click on my username in the utility bar
    And I click on the 'Sign Out' in the dropdown to signout

#########  Scenario 16  ##########
  @SLE2
  Scenario: 16- Tab 6 content for Signed in state should be the same as logged out user
    Given I am on AU dashboard page "/qa-automation/au-online/dashboard-new"
    And I click on the 'Sign in or sign up' link
    And I click on the sixth tab labelled as "Viewed tab classes TAB 6"
    Then I should see content of "Tab 6" in sixth tab for a logged out user
    And I click on my username in the utility bar
    And I click on the 'Sign Out' in the dropdown to signout
