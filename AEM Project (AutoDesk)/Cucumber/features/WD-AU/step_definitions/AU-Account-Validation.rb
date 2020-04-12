#########  Scenario 1  ##########
Given(/^I click on the 'Create Account' link the utility bar to create a new account$/) do
find(:xpath, "//*[@class='au-masthead-create-account au-masthead-inline']").click
end

Given(/^I fill in a random account$/) do
  pending # Write code here that turns the phrase above into concrete actions
end

#########  Scenario 2  ##########
Given(/^I click on the 'Sign In' link the utility bar to signin$/) do
find(:xpath, "//*[@class='au-masthead-sign-in au-masthead-inline']").click
end

Given(/^I fill in the AU signin form with an existing user account$/) do
fill_in_oxygen_account_form
end


#########  Scenario 3  ##########
Then(/^I click on my username in the utility bar$/) do
  find(:xpath, "//*[@class= 'au-masthead-user-name']").click
end

Then(/^I click on the 'Sign Out' in the dropdown to signout$/) do
find(:xpath, "//*[text()[contains(.,'Sign out')]]").click
end
Then(/^I see "([^"]*)" and "([^"]*)" in the utility bar for signed out user$/) do |au_utility_create_account_menu, au_utility_signin_menu|

  find(:xpath, "//*[@data-wat-val= 'create account']").text.should match(au_utility_create_account_menu)
  find(:xpath, "//*[@data-wat-val= 'sign in']").text.should match(au_utility_signin_menu)
end


#########  Scenario 4  ##########
Then(/^I click on the 'Account Settings' in the dropdown$/) do
find(:xpath, "//*[@data-wat-val='account settings']").click
end

Then(/^I should land on the account settings page "([^"]*)"$/) do |account_settings_url|
current_url.should == (account_settings_url)
end
