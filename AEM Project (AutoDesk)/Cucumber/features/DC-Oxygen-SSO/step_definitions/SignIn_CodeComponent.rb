When(/^user click on Sign In from the utility bar$/) do
 find(:xpath,$SSO_PATH['oxygen_sign_in_button']).click
 sleep 2
end

Then(/^the sign in panel should open$/) do
  find(:xpath,$SSO_PATH['oxygen_sign_in_panel'])
  sleep 2
end

Then(/^user click on Autodesk Account$/) do
  find(:xpath,$SSO_PATH['oxygen_autodesk_account_link']).click
  sleep 4
end

Then(/^user click on Education Community$/) do
  find(:xpath,$SSO_PATH['oxygen_education_link']).click
  sleep 4
end

Then(/^user click on My Account$/) do
  find(:xpath,$SSO_PATH['oxygen_my_account_link']).click
  sleep 4
end

When(/^user add his credential username "([^"]*)" and password "([^"]*)"$/) do |username, password|
  oxygen_signin(username,password)
end

Then (/^user should be redirected to oxygen profile page "([^"]*)"$/) do |oxygen_user_profile_page|
  current_url.should == ($OXYGEN_URL+(oxygen_user_profile_page))
end

Then (/^user should be redirected to EDU home page "([^"]*)"$/) do |education_home_page|
  current_url.should == ($BASE_URL+(education_home_page))
end

Then (/^user shouldn't be redirected "([^"]*)"$/) do |education_all_page|
  current_url.should == ($BASE_URL+(education_all_page))
end

Then(/^user should see his user name in the utility bar$/) do
  page.should have_xpath("//a[@class='toggle-sign-in signin-topnav visibility-hidden']", :exact_text => 'STUDENT S')
end

Then(/^user should see the Sign Out button in the utility bar$/) do
  page.should have_xpath("//a[@id='adsk-signout-control']", :exact_text => 'SIGN OUT')
end

When(/^user click on the user name$/) do
  find(:xpath, "//a[@class='toggle-sign-in signin-topnav visibility-hidden']").click
  sleep 4
end

When(/^user clicks on a link that opens the page on a new tab$/) do
  find(:xpath, $SSO_PATH['free_trial_link']).click
   sleep 3
  window = page.driver.browser.window_handles

  if window.size > 1
    page.driver.browser.switch_to.window(window.last)
    sleep 3
   end
end

When (/^user signs in on Accounts$/) do
  login_from_Oxygen_site_edu("facultyis@mailinator.com","test1234")
end

Then(/^user should be signed in on Accounts$/) do
  find(:xpath,$SSO_PATH['accounts_signed_in']).text.should match('Faculty I S')
end

When (/^user signs out on Accounts$/) do
  find(:xpath,$SSO_PATH['accounts_signed_in']).click
  find(:xpath,$SSO_PATH['accounts_sign_out']).click
end

Then(/^user should see the Sign In button on Accounts$/) do
  find(:xpath,$SSO_PATH['accounts_sign_in']).should be_visible
end

Then(/^user should see the Sign In form on Accounts$/) do
  sleep 5
  find(:xpath,$SSO_PATH['new_user_signin_form']).should be_visible
end

Given(/^user clears cookies for domain "([^"]*)"$/) do |domain|
  url = Env_Url.environment_links(domain)
  clear_cookies_domain(url)
end

Given(/^user clears cookies for site "([^"]*)"$/) do |site|
  clear_cookies_domain(site)
end
