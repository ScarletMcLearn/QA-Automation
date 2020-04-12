
Given(/^I test on page "([^"]*)" and "([^"]*)" on "([^"]*)" device$/) do |site,url,device_name|
  #BASE_URL
  full_url = Env_Url.environment_links(site)+url
  visit(full_url)
  sleep 5

end

When(/^I enter "([^"]*)" and click on SEND LINK$/) do |email|
  $FreeTrialPage.wait_until_download_free_trial_button_visible
  $FreeTrialPage.download_free_trial_button.click

  begin
    $FreeTrialPage.decline_push_notification.click
  rescue
  end
  $FreeTrialPage.freeTrialPopup.wait_until_email_checkbox_for_send_download_instruction_visible
  $FreeTrialPage.freeTrialPopup.email_checkbox_for_send_download_instruction.set email
  $FreeTrialPage.freeTrialPopup.term_condition_checkbox.click
  sleep 5
  $FreeTrialPage.freeTrialPopup.send_email_button_for_download_instruction.click
  
end  


When(/^I enter incorrect "([^"]*)" for send download instruction$/) do |email|
  $FreeTrialPage.wait_until_download_free_trial_button_visible
  $FreeTrialPage.download_free_trial_button.click

  begin
   $FreeTrialPage.decline_push_notification.click
  rescue
  end
  $FreeTrialPage.freeTrialPopup.wait_until_email_checkbox_for_send_download_instruction_visible
  $FreeTrialPage.freeTrialPopup.email_checkbox_for_send_download_instruction.set email

end

When(/^I uncheck agree to terms$/) do 
  $FreeTrialPage.wait_until_download_free_trial_button_visible
  $FreeTrialPage.download_free_trial_button.click

  begin
   $FreeTrialPage.decline_push_notification.click
  rescue
  end
  $FreeTrialPage.freeTrialPopup.wait_until_email_checkbox_for_send_download_instruction_visible
  $FreeTrialPage.freeTrialPopup.term_condition_checkbox.click
  sleep 1
  $FreeTrialPage.freeTrialPopup.term_condition_checkbox.click

end

Then(/^email should be sent for free trial with "([^"]*)"$/) do |text|
 sleep 5
 puts 
 expect($FreeTrialPage.freeTrialPopup.confirmation_message_after_send_email.text).to include(text)
 sleep 3

end


Then(/^invalid email message should be displayed$/) do

  sleep 5
  expect($FreeTrialPage.freeTrialPopup).to have_message_invalid_email
  sleep 5
end

Then(/^please check terms message should be displayed$/) do

  sleep 5
  expect($FreeTrialPage.freeTrialPopup).to have_message_agree_to_terms
  sleep 5
end