########## funtion to assert the correct Oxygen url
sleep 4
Given(/^I confirm I am on the Oxygen page$/) do
    current_host.should == $OXYGEN_URL
end

Then(/^I am directed to the Create Account form$/) do
  sleep 4
  current_host.should == $OXYGEN_URL
  current_path.should == '/register'
  ### current_query.should == '...'
end


########## Function to login to oxygen account using "world_extensions.rb"
# used with: features\DC-Oxygen-Trial-Download\support\world_extensions.rb
# FROM: https://www.varvet.com/blog/simple-tricks-to-clean-up-your-capybara-tests/
Given(/^I log in with my oxygen account$/) do
  fill_in_oxygen_account_form
end

########## Function to validate element on Oxygen Page
Given(/^the Oxygen page header is localized: "([^"]*)"$/) do |pageheader|
#    expect(find('adsk-header')).to have_content(pageheader)
    find(:xpath,"//*[@class='adsk-header']").text.should match(pageheader)
end


########## Functions on the "Create account" button
When(/^I click on the 'Create Account' button$/) do
#  find(:xpath,"//*[@data-automation-id='adsk-oxygen-welcome-register-button']").click
  find(:xpath,"//*[@class='oxygenbutton-register button']").click
  sleep 5
end

Then(/^I see the 'Create Account' button$/) do
find(:xpath,"//*[@class='oxygenbutton-register button']").should be_visible
end


########## Functions on the "Sign In" button
When(/^I click on the 'Sign In' button$/) do
#  find(:xpath,"//*[@data-automation-id='adsk-oxygen-signin-button']").click
  find(:xpath,"//*[@class='oxygenbutton-signin button']").click
  sleep 5
end

Then(/^I see the 'Sign In' button$/) do
find(:xpath,"//*[@class='oxygenbutton-signin button']").should be_visible
end


########## Functions on the "Begin Download" button
When(/^I click on the 'Begin Download' button$/) do
  find(:xpath,"//*[@data-automation-id='adsk-trial-download-button']").click
  sleep 6
end

Then(/^I see the 'Begin Download' button$/) do
  find(:xpath,"//*[@data-automation-id='adsk-trial-download-button']").should be_visible
end


########## Function for Welcome User message

Then(/^I should see a welcome UserName message$/) do
  find(:xpath,"//*[@data-automation-id='adsk-oxygen-welcome']").should be_visible
end


########## Function on the Language Dropdown

Then(/^I see the 'Language' dropdown$/) do
  find(:xpath,"//*[@data-automation-id='adsk-oxygen-trial-download-language-select']").should be_visible
end

When(/^I select a Language from the dropdown:"([^"]*)"$/) do |language|
    within(:xpath,"//*[@data-automation-id='adsk-oxygen-trial-download-language-select']") do
        select(language)
        sleep 4
      end
end


########## Functions to download product trial

When(/^I click on the 'Continue' lightbox button$/) do
  find(:xpath,"//*[@data-automation-id='adsk-oxygen-trial-download-lightbox-continue']").click
end

Then(/^the trial product downloaded appears for my selected language$/) do
  find(:xpath, "//div[@id='subTitle']")
end


########## Functions for DOWNLOAD MANAGER

Then(/^Confirm the 'Download Manager' link is present$/) do
  find(:xpath,"//*[@data-automation-id='adsk-oxygen-trial-download-manager-link']").should be_visible
end

Then(/^confirm the 'download Manager' tooltip is present$/) do
  find(:xpath,"//*[@data-automation-id='adsk-oxygen-trial-download-manager-tooltip-icon']").should be_visible
end

Then(/^click on the tooltip and confirm content$/) do
  find(:xpath,"//*[@data-automation-id='adsk-oxygen-trial-download-manager-tooltip-icon']").click
  expect(find(:xpath,"//*[@data-automation-id='adsk-oxygen-trial-download-downloadManagertext']")).to have_content
end

And(/^user fills Marketo form$/) do
  companyField = find(:xpath,$PATH['companyinformationMarketo_company'])
  companyField.set("xinfo")
  phoneField = find(:xpath,$PATH['companyinformationMarketo_phone'])
  phoneField.set("1231231231")
  zipField = find(:xpath,$PATH['companyinformationMarketo_zip'])
  zipField.set("info")

  countryField = find(:xpath,$PATH['companyinformationMarketo_country']).value

  if(countryField == "US" || countryField == "CA") #Countries which have dropdowns are US, Brazil, Canada, China, India, Ireland, Italy, Japan, Malaysia, Mexico, Switzerland, Taiwan and Thailand, but no need to check them all since scripts don't use them.

    find(:xpath,$PATH['companyinformationMarketo_state_dropdown']).find(:xpath, 'option[2]').select_option
  else
    stateField = find(:xpath,$PATH['companyinformationMarketo_state_field'])
    stateField.set("info")
  end
end

And(/^user begins the download$/) do
  find(:xpath,$PATH['begin_download']).click
  sleep 3
end
