Given(/^I am on the collection page "([^"]*)"$/) do |url|
  	visit($BASE_URL+(url))
  	sleep 5
end

##############################################################################
#For Sc-1

When(/^I click on download free trial button for first card widget$/) do
	find(:xpath,$PATH['first_card_widget']).click
	sleep 2
end

Then(/^I should see Download trial lightbox for first card widget$/) do
	find(:xpath,$PATH['first_download_lightbox']).should be_visible
end

Then(/^I enter valid email id inside lightbox for first card widget$/) do
 	find(:xpath,$PATH['email_textbox_lightbox_for_first_card']).set("test@test.com")
 	sleep 2
end

Then(/^I click on continue button for first card widget$/) do
     page.execute_script('window.scrollTo(0,200)')
     find(:xpath,$PATH['continue_button_lightbox_for_first_card']).click
     sleep 3 ## it takes time to load
end

And(/^I agree for the terms and conditions for first card widget$/) do
	find(:xpath,$PATH['accept_service_agreement_checkbox_for_first_card']).click
	sleep 2
	find(:xpath,$PATH['accept_privacy_policy_checkbox_for_first_card']).click
	sleep 2
end


Then(/^Continue button should be enabled for first card widget$/) do
	within(:xpath,$PATH['first_product_download_lightbox']) do
		all(:xpath,$PATH['continue_button_download_lightbox'])[0].should be_visible
	end
end

###########################################################################################
#For Sc-2

When(/^I click on download free trial button for second card widget$/) do
	find(:xpath,$PATH['second_card_widget']).click
	sleep 2
end

Then(/^I should see Download trial lightbox for second card widget$/) do
	find(:xpath,$PATH['second_download_lightbox']).should be_visible
end

Then(/^I enter valid email id inside lightbox for second card widget$/) do
	find(:xpath,$PATH['email_textbox_lightbox_for_second_card']).set("test@test.com")
	sleep 2
end

Then(/^I click on continue button for second card widget$/) do
	find(:xpath,$PATH['continue_button_lightbox_for_second_card']).click
	sleep 3 ## it takes time to load
end

And(/^I agree for the terms and conditions for second card widget$/) do
	find(:xpath,$PATH['accept_service_agreement_checkbox_for_second_card']).click
	sleep 2
	find(:xpath,$PATH['accept_privacy_policy_checkbox_for_second_card']).click
	sleep 2
end


Then(/^Continue button should be enabled for second card widget$/) do
	within(:xpath,$PATH['second_product_download_lightbox']) do
		all(:xpath,$PATH['continue_button_download_lightbox'])[0].should be_visible
	end
end

#####################################################################################
#For Sc 3

When(/^I click on DOWNLOAD FREE TRIAL for first card widget$/) do
    find(:xpath,$PATH['first_products_free_trials_button']).click
end

And(/^click on NEXT button for first card widget$/) do
    find(:xpath,"//div[@id='lightbox-id-0']//a[contains(@class,'otfdl-button-product-information')]").click
end

And(/^select user type as "([^"]*)" and click on NEXT button for first card widget$/) do |option|
    within(:xpath,"//div[@id='lightbox-id-0']//select[contains(@class,'otfdl-user-types-box')]") do
        select(option)
    end
    find(:xpath,"//div[@id='lightbox-id-0']//a[contains(@class,'otfdl-button-user-type')]").click
end

And(/^fills Marketo form for first card widget$/) do
    companyField = find(:xpath,"//div[@id='lightbox-id-0']//input[@id='Company']")
    companyField.set("xinfo")
    phoneField = find(:xpath,"//div[@id='lightbox-id-0']//input[@id='Phone']")
    phoneField.set("info")
    zipField = find(:xpath,"//div[@id='lightbox-id-0']//input[@id='PostalCode']")
    zipField.set("info")
    countryField = find(:xpath,"//div[@id='lightbox-id-0']//select[@data-wat-form-field-required='country-selector']").value
    if(countryField == "US" || countryField == "CA")
    #Countries which have dropdowns are US, Brazil, Canada, China, India, Ireland, Italy, Japan, Malaysia, Mexico, Switzerland, Taiwan and Thailand, but no need to check them all since scripts don't use them.
       find(:xpath,"//div[@id='lightbox-id-0']//select[@id='company-information-State']").find(:xpath, 'option[2]').select_option
    else
       stateField = find(:xpath,"//div[@id='lightbox-id-0']//input[@id='State']")
       stateField.set("info")
    end
end

Then(/^BEGIN DOWNLOAD button should be enabled for first card widget$/) do
    find(:xpath,"//div[@id='lightbox-id-0']//a[contains(@class,'otfdl-button-download')]").should be_visible
end

#####################################################################################
#For Sc 4

When(/^I click on DOWNLOAD FREE TRIAL for second card widget$/) do
    find(:xpath,$PATH['second_products_free_trials_button']).click
end

And(/^click on NEXT button for second card widget$/) do
    find(:xpath,"//div[@id='lightbox-id-1']//a[contains(@class,'otfdl-button-product-information')]").click
end

And(/^select user type as "([^"]*)" and click on NEXT button for second card widget$/) do |option|
    within(:xpath,"//div[@id='lightbox-id-1']//select[contains(@class,'otfdl-user-types-box')]") do
        select(option)
    end
    find(:xpath,"//div[@id='lightbox-id-1']//a[contains(@class,'otfdl-button-user-type')]").click
end

And(/^fills Marketo form for second card widget$/) do
    companyField = find(:xpath,"//div[@id='lightbox-id-1']//input[@id='Company']")
    companyField.set("xinfo")
    phoneField = find(:xpath,"//div[@id='lightbox-id-1']//input[@id='Phone']")
    phoneField.set("info")
    zipField = find(:xpath,"//div[@id='lightbox-id-1']//input[@id='PostalCode']")
    zipField.set("info")
    countryField = find(:xpath,"//div[@id='lightbox-id-1']//select[@data-wat-form-field-required='country-selector']").value
    if(countryField == "US" || countryField == "CA") #Countries which have dropdowns are US, Brazil, Canada, China, India, Ireland, Italy, Japan, Malaysia, Mexico, Switzerland, Taiwan and Thailand, but no need to check them all since scripts don't use them.
       find(:xpath,"//div[@id='lightbox-id-1']//select[@id='company-information-State']").find(:xpath, 'option[2]').select_option
    else
       stateField = find(:xpath,"//div[@id='lightbox-id-1']//input[@id='State']")
       stateField.set("info")
    end
end

Then(/^BEGIN DOWNLOAD button should be enabled for second card widget$/) do
    find(:xpath,"//div[@id='lightbox-id-1']//a[contains(@class,'otfdl-button-download')]").should be_visible
end

