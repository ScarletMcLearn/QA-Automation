#########  Scenario 1  ##########

Given(/^I am on AU dashboard page "([^"]*)"$/) do |au_dashboard_url|
  visit($AU_URL+(au_dashboard_url))
  sleep 5
end

Given(/^I click on the 'Sign in or sign up' link$/) do
  find(:xpath,"//a[@id='oxygenSignInLink']").click
  fill_in_oxygen_account_form
end


Then(/^I should land on AU dashboard page "([^"]*)"$/) do |au_dashboard_url|
  current_url.should == $AU_URL+(au_dashboard_url)
end

Then(/^I see myself logged in with my AU username "([^"]*)" in the utility bar$/) do |au_nav_username|
find(:xpath,$PATH['au_signin_topnav_username']).text.should match(au_nav_username)
end

#########  Scenario 2  ##########
Then(/^I click on the 'Saved Classes' tab$/) do
within(:xpath,"//*[@class='tabs-navigation-list wd-inline-list']") do
    click_on('Saved classes')
   sleep 3
  end
end

Then(/^I should see "([^"]*)" for the logged in user$/)  do |au_saved_classes_content|
find(:xpath,$PATH['au_dashboard_saved_classes_content1']).text.should match(au_saved_classes_content)
end
