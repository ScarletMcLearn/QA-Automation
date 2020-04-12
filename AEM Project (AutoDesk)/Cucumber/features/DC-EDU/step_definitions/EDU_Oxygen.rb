
############################# Scenario 1 ###########################################

Then(/^user should see his EDU "([^"]*)" on the page$/) do |user_name|
  find(:xpath,$EDU_PATH['user_name_on_page']).should match(%r{#{user_name}}i)
end

Then(/^user should see his EDU "([^"]*)" on the utility bar$/) do |user_name|
  find(:xpath,$EDU_PATH['user_name_on_utility_bar']).should match(%r{#{user_name}}i)
end

############################# Scenario 2 ###########################################

When(/^user click on EDU My account link on the page$/) do
  find(:xpath,$EDU_PATH['my_account_link']).click
  sleep 4
end

Then (/^user should be redirected to his EDU account profile page "([^"]*)"$/) do |edu_profile_page|
  current_url.should == ($OXYGEN_URL+(edu_profile_page))
end

Then(/^user should be able to come back to EDU page$/) do
  find(:xpath,$EDU_PATH['done_button']).click
  current_url.should == ($BASE_URL+"/qa-automation/education/free-software/autocad-edu-new")
end

############################# Scenario 3 ###########################################

And(/^user click on his EDU user name on the utility bar$/) do
  find(:xpath,$EDU_PATH['user_name_on_utility_bar']).click
end

When(/^user click on My Account link on panel$/) do
  find(:xpath,$EDU_PATH['my_account_link_on_panel']).click
  sleep 4
end

############################# Scenario 4 ###########################################

When(/^user click on EDU Sign out link on the page$/) do
  find(:xpath,$EDU_PATH['sign_out_link']).click
  sleep 4
end

Then(/^user should see the EDU Sign in button on the page$/) do
  find(:xpath,$EDU_PATH['sign-in_button']).text.should match('SIGN IN')
end

############################# Scenario 5 ###########################################

When(/^user click on EDU CREATE ACCOUNT button$/) do
  find(:xpath,$EDU_PATH['create_account']).click
end

Then(/^user should see the EDU account creation page$/) do
  find(:xpath,$EDU_PATH['account_creation']).text.should match('Get Education Benefits')
end
