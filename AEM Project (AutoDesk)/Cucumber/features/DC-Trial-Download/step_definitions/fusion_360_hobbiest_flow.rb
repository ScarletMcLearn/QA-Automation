Given(/^I test on page "([^"]*)" and "([^"]*)"$/) do |site,url|
  #BASE_URL
  full_url = Env_Url.environment_links(site)+url
  visit(full_url)
  sleep 5

end

When(/^I click on sign in link$/) do
  $FusionHobbyistPage.get_started_button.click
  $FusionHobbyistPage.sign_in_button.click
  sleep 5
end

And(/^user sign in with "([^"]*)" and "([^"]*)"$/) do |email,password|
  $FusionHobbyistPage.wait_until_user_name_visible
  $FusionHobbyistPage.user_name.set email
  $FusionHobbyistPage.next_after_enter_username.click
  $FusionHobbyistPage.pass_word.set password
  $FusionHobbyistPage.login_button.click
sleep 5
end

Then(/^fusion 360 download link should be display$/) do
  $FusionHobbyistPage.wait_until_get_download_button_visible
  $FusionHobbyistPage.get_download_button.click
  $FusionHobbyistPage.wait_until_confirmation_msg_visible

end

Then(/^Get started link should be display$/) do
  $FusionHobbyistPage.wait_until_get_started_for_eligible_user_visible
 

end