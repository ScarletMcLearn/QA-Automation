
Given(/^I test on page "([^"]*)"$/) do |url|
  
  visit($BASE_URL+(url))
  sleep 3
  $FreeTrialPage.commercial_use_box.click 
  sleep 3
  begin
  $FreeTrialPage.freeTrialPopup.next_button.click
  rescue
  end
  sleep 3
end

And(/^I enter "([^"]*)" and "([^"]*)"$/) do |username,password|
  expect($FreeTrialPage).to have_freeTrialSigninIframe
  $FreeTrialPage.freeTrialSigninIframe do |frame|
       frame.sign_in_email.click
       frame.sign_in_email.set username
       frame.next_on_signin.click
       frame.wait_until_sign_in_password_visible
       frame.sign_in_password.set password
       frame.signin_button.click
       sleep 20
  end
end  

And(/^I use "([^"]*)" with incorrect format$/) do |phone_number|
  #$FreeTrialPage.freeTrialPopup.wait_until_company_name_visible
  sleep 6
  #$FreeTrialPage.freeTrialPopup.company_name.send_keys("test")
  $FreeTrialPage.freeTrialPopup.country_of_residence_US.click
  $FreeTrialPage.freeTrialPopup.phone_input_box.send_keys(phone_number)
  sleep 3

end

Then(/^error message should be displayed$/) do
  $FreeTrialPage.freeTrialPopup.message_invalid_phone_number.should be_visible
  
end
