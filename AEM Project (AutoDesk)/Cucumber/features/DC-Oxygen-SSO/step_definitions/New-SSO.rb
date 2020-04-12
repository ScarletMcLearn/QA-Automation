
Given(/^user clicks on SIGN OUT link$/) do
  find(:xpath,$SSO_PATH['sign_out']).click
  #sign out takes time to reflect on pages
  sleep 6

end

And(/^user clicks on SIGNED IN icon on the utility bar$/) do
 find(:xpath,$SSO_PATH['signed_in_icon']).click
end

When(/^user clicks on SIGN IN icon on the utility bar$/) do
  find(:xpath,$SSO_PATH['sign_in_icon']).click
end

When(/^user clicks on SIGN IN link from dropdown of utility bar$/) do
  find(:xpath,$SSO_PATH['sign_in_icon']).click
  sleep 5
  find(:xpath,$SSO_PATH['sign_in_link']).click
end

Then(/^user should be redirected to oxygen "([^"]*)"$/) do |page|
  expect(current_url).to include($OXYGEN_URL+page)
end

When(/^user signs in with username "([^"]*)" and password "([^"]*)"$/) do |username, password|
  sleep 2
  oxygen_signin(username,password)
end

When(/^user clicks on ACCOUNT SETTINGS link$/) do
  find(:xpath,$SSO_PATH['account_settings']).click
end

Then(/^the user should see a SIGN IN icon on the utility bar$/) do
  find(:xpath, $SSO_PATH['sign_in_icon']).should be_visible
end

Then(/^the user should see a SIGNED IN icon on the utility bar$/) do
  find(:xpath, $SSO_PATH['signed_in_icon']).should be_visible
end

Then(/^the signed in panel should open with the correct links as "([^"]*)","([^"]*)" and "([^"]*)" when signed in$/) do |manage_products,account_settings,sign_out|
  expect(find(:xpath,$SSO_PATH['user_name'])).to have_content('Trial User')
  expect(find(:xpath,$SSO_PATH['manage_products'])).to have_content(manage_products)
  expect(find(:xpath,$SSO_PATH['account_settings'])).to have_content(account_settings)
  expect(find(:xpath,$SSO_PATH['sign_out'])).to have_content(sign_out)
end

Then(/^the signed in panel should open with the correct links as "([^"]*)","([^"]*)" and "([^"]*)" when not signed in$/) do |manage_products,account_settings,sign_in|
  expect(find(:xpath,$SSO_PATH['default_name'])).to have_content(manage_products)
  expect(find(:xpath,$SSO_PATH['manage_products_unauth'])).to have_content(account_settings)
  expect(find(:xpath,$SSO_PATH['account_settings_unauth'])).to have_content(sign_in)
  find(:xpath,$SSO_PATH['sign_in_link']).should be_visible
end

When(/^navigates to an external site and returns back to the Dotcom page "([^"]*)" for the "([^"]*)"$/) do |page, localsite|
  visit("https://www.google.com")
  sleep 2
  url = Env_Url.environment_links(localsite)
  visit(url+page)
  expect(title).to_not eq('404')
end

Then(/^user is still signed on when navigating back to the Dotcom page with "([^"]*)"$/) do |localsite|
  url = Env_Url.environment_links(localsite)
  visit(url)
  expect(title).to_not eq('404')
  find(:xpath, $SSO_PATH['signed_in_icon']).should be_visible
end

And(/^user clicks on the link in the context nav, which opens link in new tab$/) do
  find(:xpath, $SSO_PATH['free_trial_link']).click
  sleep 3
  window = page.driver.browser.window_handles
    if window.size > 1
      page.driver.browser.switch_to.window(window.last)
      sleep 3
    end
end

Then(/^user sees the Marketo form$/) do
  find(:xpath,$PATH['companyinformationMarketo_company']).should be_visible
end

And(/^correct url should be listed for the links 'Manage Products','Account Settings' and 'Sign In'$/) do
  manage_product_url = 'https://customer-stg.autodesk.com'
  account_setting_url = 'https://accounts-staging.autodesk.com/LogOn?'
  sign_in_url = '/services/adsk/c/oxygen/tool.do/connect.resp?'
  find(:xpath,$SSO_PATH['manage_products_unauth'])['href'].should match(manage_product_url)
  find(:xpath,$SSO_PATH['account_settings_unauth'])['href'].should match(account_setting_url)
  find(:xpath,$SSO_PATH['sign_in_link'])['href'].should match(sign_in_url)
end

Then(/^the Sign In form should read header as "([^"]*)"$/) do |sign_in|
  find(:xpath,$SSO_PATH['sign_in_text']).text.should match(sign_in)
end

Then(/^the data-wat-val for "([^"]*)" should be "([^"]*)"$/) do |link,value|
    find(:xpath,($SSO_PATH['link_path']+"\"#{link}\""+")]"))['data-wat-val'].should match(value)
end

Then(/^the data-wat-val for unauth "([^"]*)" should be "([^"]*)"$/) do |link,value|
    find(:xpath,($SSO_PATH['link_path_unauth']+"\"#{link}\""+")]"))['data-wat-val'].should match(value)
end

And(/^user clicks on unauth link "([^"]*)"$/) do |link|
   find(:xpath,($SSO_PATH['link_path_unauth']+"\"#{link}\""+")]")).click
end

And(/^user clicks on link "([^"]*)"$/) do |link|
   find(:xpath,($SSO_PATH['link_path']+"\"#{link}\""+")]")).click
end

Then(/^user is redirected to "([^"]*)" page$/) do |redirect_url|
    expect(current_url).to include(redirect_url)
end
