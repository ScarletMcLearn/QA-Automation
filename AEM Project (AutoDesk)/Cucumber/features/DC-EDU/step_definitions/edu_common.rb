Given(/^user is on EDU download page "([^"]*)"$/) do |url|
  visit($BASE_URL+(url))
  sleep 8
end

And(/^user click on EDU sign in button$/) do
  expect(page).to have_xpath($EDU_PATH['sign_in'])
  find(:xpath,$EDU_PATH['sign_in']).click
  sleep 4
end

When(/^user add his EDU credential username "([^"]*)" and password "([^"]*)"$/) do |username, password|
  oxygen_signin(username,password)
  sleep 4
end

#New Login structure to use as done part of Page Object work
When(/^user enter edu user login email "([^"]*)" and password "([^"]*)"$/) do |username,password|
  $OxygenLandingPage.oxygen_Signin_Form.signin(username, password)
  sleep 4
end

Given(/^user is on EDU_CN download page "([^"]*)"$/) do |url|
  visit($CN_BASE_URL+(url))
  sleep 8
end

Then(/^user should have downloaded file "([^"]*)"$/) do |file_downloaded|
  file_download_validation(file_downloaded)
end

Given(/^the user navigates to the EDU page "([^"]*)" for the "([^"]*)"$/) do |page, localsite|
 sleep 2
 url = Env_Url.environment_links(localsite)
 visit(url+page)
 expect(title).to_not eq('404')
 eprivacy_yes_to_all(localsite)
end
