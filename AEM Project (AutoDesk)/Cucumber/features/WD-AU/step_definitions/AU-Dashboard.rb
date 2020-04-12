#########  Scenario 1  ##########
Then(/^I should see the text "([^"]*)" in user banner area for a not logged in user$/) do |au_introbar_text|
find(:xpath, "//*[@class= 'full-user-name']").text.should match(au_introbar_text)
end

Then(/^I should see "([^"]*)" login link in user banner area for a not logged in user$/) do |au_introbar_signin_link|
find(:xpath, "//*[@id= 'oxygenSignInLink']").text.should match(au_introbar_signin_link)
end


Then(/^I should see a silhouette image in the user banner area for a not logged in user$/) do
expect(page).to have_xpath("//*[@class= 'profile-pic']")
end

#########  Scenario 2  ##########
Given(/^I click on the first tab labelled as 'Overview'$/) do
find(:xpath,"//*[@data-wat-linkname= 'tabs_component_overview']").click
end

Then(/^I should see overview listed in the dashboard url "([^"]*)"$/) do |au_dashboard_overview|
  current_url.should == $AU_URL+(au_dashboard_overview)
end

Then(/^I should see content of "([^"]*)" in overview for a logged out user$/) do |au_dashboard_logged_out_overview_content|
find(:xpath, "//*[text()[contains(.,'Make AU all about you. Save classes, keep track of your activity, and more.')]]").text.should match(au_dashboard_logged_out_overview_content)
end

Then(/^I should see "([^"]*)" link in overview for a logged out user$/) do |au_dashboard_overview_signin_link|
find(:xpath, "//*[text()[contains(.,'Sign in or sign up to get started.')]]").text.should match(au_dashboard_overview_signin_link)
end


#########  Scenario 3  ##########
Given(/^I click on the second tab labelled as 'Saved Classes'$/) do
find(:xpath,"//*[@data-wat-linkname='tabs_component_savedclasses']").click
end

Then(/^I should see content of "([^"]*)" in saved classes for a logged out user$/) do |au_dashboard_logged_out_saved_classes_content|
find(:xpath, "//*[text()[contains(.,'to save classes.')]]").text.should match(au_dashboard_logged_out_saved_classes_content)
end


#########  Scenario 4  ##########
Given(/^I click on the third tab labelled as 'Viewed Classes'$/) do
  find(:xpath,"//*[@data-wat-linkname='tabs_component_viewedclasses']").click
end

Then(/^I should see content of "([^"]*)" in viewed classes for a logged out user$/) do |au_dashboard_logged_out_viewed_classes_content|
find(:xpath, "//*[text()[contains(.,'to see classes')]]").text.should match(au_dashboard_logged_out_viewed_classes_content)
end

#########  Scenario 5  ##########
#Then(/^I should not see fourth tab with label "([^"]*)"$/) do |au_dashboard_logged_out_viewed_lasvegas_tab|
#expect(page).to have_no_content('au_dashboard_logged_out_viewed_lasvegas_tab') works but not ACCURATE

#expect(page).to have_content('au_dashboard_logged_out_viewed_lasvegas_tab')   BAD!!

#page.find_by_id('tabs_component_viewedclasses', visible: false) NOT SURE THIS WORK PROPERLY, ALTHOUGHT IT PASSES
#page.find_by_id('tabs_component_lasvegasclasses', visible: false)  WORKS
#page.find_by_id('au_dashboard_logged_out_viewed_lasvegas_tab', visible: false)  FAILS

#find('#tabs_component_lasvegasclasses', :visible => false).value
#find('#tabs_component_viewedclasses', display: none).value

 #it { should have_css('#tabs_component_lasvegasclasses', :visible => true) }
# page.has_css?('#tabs_component_lasvegasclasses', :text => 'Las Vegas Classes', :visible => false)

#css_text = find(:xpath, "//*[@id='tabs_component_viewedclasses']")['class']
#puts css_text
#    expect(css_text).to include("Display:None")


################################ to try
Then(/^I should not see fourth tab with label 'Las Vegas Classes'$/) do
page.has_xpath?("//*[@data-wat-linkname='tabs_component_lasvegasclasses']", :text => 'Las Vegas Classes', :visible => true)
##################
end

#//*[@data-wat-linkname='tabs_component_lasvegasclasses']

#//*[@style='display: none']
#//*[text()[contains(.,'Las Vegas Classes')]]



#########  Scenario 6  ##########
Given(/^I click on the fifth tab labelled as "([^"]*)"$/) do |au_dashboard_fifth_tab|
  find(:xpath,"//*[@data-wat-linkname='tabs_component_viewedtabclassestab5']").click
end

Then(/^I should see content of "([^"]*)" in fifth tab for a logged out user$/) do |au_dashboard_fifth_tab_content|
  find(:xpath, "//*[text()[contains(.,'Tab 5')]]").text.should match(au_dashboard_fifth_tab_content)
end



#########  Scenario 7  ##########
Given(/^I click on the sixth tab labelled as "([^"]*)"$/) do |au_dashboard_sixth_tab|
  find(:xpath,"//*[@data-wat-linkname='tabs_component_viewedclassestab6']").click
end

Then(/^I should see content of "([^"]*)" in sixth tab for a logged out user$/) do |au_dashboard_sixth_tab_content|
  find(:xpath, "//*[text()[contains(.,'Tab 6')]]").text.should match(au_dashboard_sixth_tab_content)
end


#########  Scenario 8  ##########
Given(/^I click on the 'Sign in or sign up' link for au test user$/) do
  find(:xpath,"//a[@id='oxygenSignInLink']").click
  fill_in_oxygen_account_form_au_user_with_saved_viewed_profile
end

Then(/^I should see username "([^"]*)" in the introbar$/) do |au_dashboard_login_username_introbar|
find(:xpath, "//*[@class= 'full-user-name']").text.should match(au_dashboard_login_username_introbar)
end

#########  Scenario 9  ##########
#user = qatrialuser@mailinator.com
#pwd = test1234
Then(/^under overview tab, I should see first line as "([^"]*)"$/) do |au_dashboard_loggedin_overview_firstline|
  find(:xpath, "//*[text()[contains(.,'Hi ')]]").text.should match(au_dashboard_loggedin_overview_firstline)
end

Then(/^I should see a second line as "([^"]*)"$/) do |au_dashboard_loggedin_overview_secondline|
  find(:xpath, "//*[text()[contains(.,'intro ')]]").text.should match(au_dashboard_loggedin_overview_secondline)
end

Then(/^I should see third line as "([^"]*)"$/) do |au_dashboard_loggedin_overview_thirdline|
find(:xpath, "//*[@class= 'wd-font-24 wd-ma-0  wd-ml-16 dashboard-saved-classes-counter']").text.should match(au_dashboard_loggedin_overview_thirdline)
end

Then(/^I should see fourth line as "([^"]*)"$/) do |au_dashboard_loggedin_overview_fourthline|
find(:xpath, "//*[@class= 'wd-font-24 wd-ma-0  wd-ml-16 dashboard-viewed-classes-counter']").text.should match(au_dashboard_loggedin_overview_fourthline)
end

Then(/^I should see recently saved section with label "([^"]*)"$/) do |au_dashboard_loggedin_overview_recent_saved_section|
find(:xpath, "//*[@class='widget widget-saved dashboard-saved-classes']").text.should match(au_dashboard_loggedin_overview_recent_saved_section)
end

Then(/^in recently saved section, I should see a "([^"]*)" link$/) do |au_dashboard_loggedin_overview_recent_saved_section_link|
find(:xpath, "//*[text()[contains(.,'See all saved')]]").text.should match(au_dashboard_loggedin_overview_recent_saved_section_link)
end

Then(/^I should see recently viewed section with label "([^"]*)"$/) do |au_dashboard_loggedin_overview_recent_viewed_section|
find(:xpath, "//*[@class='widget widget-viewed dashboard-viewed-classes']").text.should match(au_dashboard_loggedin_overview_recent_viewed_section)
end

Then(/^in recently viewed section, I should see a "([^"]*)" link$/) do |au_dashboard_loggedin_overview_recent_viewed_section_link|
find(:xpath, "//*[text()[contains(.,'See all viewed')]]").text.should match(au_dashboard_loggedin_overview_recent_viewed_section_link)
end

#########  Scenario 10  ##########
Then(/^under saved classes tab, I should see first line as "([^"]*)"$/) do |au_dashboard_loggedin_savedclassed_firstline|
find(:xpath, "//*[@class= 'wd-font-24 wd-ma-0 wd-ml-16 dashboard-classes-counter']//*[text()[contains(.,'1 saved class')]]").text.should match(au_dashboard_loggedin_savedclassed_firstline)
end

Then(/^I should see my saved class in the list with title "([^"]*)"$/) do |au_dashboard_loggedin_savedclassed_title|
  find(:xpath, "//*[@class='widget widget-nodash widget-saved dashboard-classes']//*[text()[contains(.,'VR')]]").text.should match(au_dashboard_loggedin_savedclassed_title)
end

Then(/^I navigate to URL "([^"]*)"$/) do |au_url|
  visit($AU_URL+(au_url))
  sleep 5
end

Then (/^under saved classes tab, I should see first line as "([^"]*)" for having no saved classes$/) do |au_dashboard_loggedin_no_saved_classes_default_text|
find(:xpath, "//*[text()[contains(.,'Your saved')]]").text.should match(au_dashboard_loggedin_no_saved_classes_default_text)
end

Then (/^I click on 'My AU button' to save the page to my dashboard$/) do
  click_my_au_save_button_to_save
end

Then (/^I click on 'Saved' button to unsave the page to my dashboard$/) do
  click_my_au_save_button_to_unsave
end


#########  Scenario 11  ##########
Given(/^I click on the 'Sign in or sign up' link with user with no au class views$/) do
  find(:xpath,"//a[@id='oxygenSignInLink']").click
  fill_in_oxygen_account_form_au_user_with_no_class_views
end

Then(/^under viewed classes tab, I should see first line as "([^"]*)" for having no viewed classes$/) do |au_dashboard_loggedin_no_viewed_classes_default_text|
find(:xpath, "//*[text()[contains(.,'Your viewed')]]").text.should match(au_dashboard_loggedin_no_viewed_classes_default_text)
end


#########  Scenario 12  ##########
Then(/^under viewed classes tab, I should see first line as "([^"]*)"$/) do |au_dashboard_loggedin_viewedclasses_firstline|
find(:xpath, "//*[@class= 'wd-font-24 wd-ma-0 wd-ml-16 dashboard-classes-counter']//*[text()[contains(.,'viewed class')]]").text.should match(au_dashboard_loggedin_viewedclasses_firstline)
end


#########  Scenario 13  ##########
Given(/^I click on the 'Sign in or sign up' link with user who is an attendee of au las vegas$/) do
  find(:xpath,"//a[@id='oxygenSignInLink']").click
  fill_in_oxygen_account_form_au_user_with_las_vegas_profile
end

Given(/^I click on the fourth tab labelled as 'Las Vegas Classes'$/) do
find(:xpath,"//*[@data-wat-linkname='tabs_component_lasvegasclasses']").click
end

Then(/^under las vegas classes tab, I should see first line as "([^"]*)"$/) do |au_dashboard_loggedin_lasvegas_classes_firstline|
find(:xpath, "//*[text()[contains(.,'Tab 4')]]").text.should match(au_dashboard_loggedin_lasvegas_classes_firstline)
end

Then(/^I should see "([^"]*)" section for event attended recently$/) do |au_las_vegas_2015_section|
find(:xpath, "//*[text()[contains(.,'Your AU 2015')]]").text.should match(au_las_vegas_2015_section)
end

Then(/^I should see "([^"]*)" section for event attended in the past$/) do |au_las_vegas_2014_section|
find(:xpath, "//*[text()[contains(.,'Your AU 2014')]]").text.should match(au_las_vegas_2014_section)
end
