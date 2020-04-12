Given(/^I test EDU on page "([^"]*)"$/)  do |url|
  visit(url)
  sleep 2
end

=begin  Commenting out below step definition while migrating this to EDU folder

When(/^I click on SignIn edu button$/) do
  $EDUDownloadPage.edu_Signin.Signin_button.click
  sleep 5
end

When(/^I click on the Install Now button$/) do
  page.execute_script('window.scrollTo(0,800)')
  $EDUDownloadPage.edu_DownloadButton.download_dropdown_list.click
  $EDUDownloadPage.edu_DownloadButton.install_now.click
  sleep 5
  $EDUDownloadPage.edu_Websdk_popup.accept_terms.click
  $EDUDownloadPage.edu_Websdk_popup.intall_button.click
  sleep 5
end

When(/^I enter my edu user login email "([^"]*)" and password "([^"]*)"$/) do |username,password|
  $OxygenLandingPage.oxygen_Signin_Form.signin(username, password)
  sleep 4
end

When(/^I see "([^"]*)" message$/) do |download_msg|
  $EDUDownloadPage.edu_Websdk_browser_msg.thankyou_screen.click
  $EDUDownloadPage.edu_Websdk_browser_msg.file_is_downloading_msg.text.should match(%r{#{download_msg}}i)
end

When(/^I select Autocad 2020 from release dropdown$/) do
  $EDUDownloadPage.edu_Dropdown.version_dropdown.click
  $EDUDownloadPage.edu_Dropdown.version_dropdown_Autocad2020.click
end

When(/^I select English from language dropdown$/) do
  $EDUDownloadPage.edu_Dropdown.language_dropdown.click
  $EDUDownloadPage.edu_Dropdown.language_dropdown_english.click
end

When(/^I select standalone from license type dropdown$/) do
  $EDUDownloadPage.edu_Dropdown.license_type_dropdown.click
  $EDUDownloadPage.edu_Dropdown.license_type_dropdown_standalone.click
  sleep 2
end

When(/^I select Win64bit from OS dropdown$/) do
  $EDUDownloadPage.edu_Dropdown.operating_system_dropdown.click
  $EDUDownloadPage.edu_Dropdown.operating_system_dropdown_windows64bit.click
end

When(/^I should see "([^"]*)" message$/) do |welcome_msg|
  $EDUDownloadPage.edu_Signin.welcome_message.text.should match(%r{#{welcome_msg}}i)
end

Then(/^edu user should have downloaded file "([^"]*)"$/) do |file_downloaded|
  file_download_validation(file_downloaded)
end

=end
