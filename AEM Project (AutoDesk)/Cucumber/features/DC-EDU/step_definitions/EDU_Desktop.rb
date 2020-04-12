When(/^user click on SignIn edu button$/) do
  begin
  $EDUDownloadPage.edu_Signin.Signin_button.click
  sleep 5
  rescue
  js_signin=first(:xpath,".//*[@class='sign-in-btn']")
  page.execute_script("arguments[0].click();", js_signin)
  sleep 5
  end
end

Then(/^user should see "([^"]*)" "([^"]*)" message$/) do |welcome_msg, user_fullname|
  $EDUDownloadPage.edu_Signin.welcome_message.text.should match(%r{#{welcome_msg}}i)
  $EDUDownloadPage.edu_Signin.displayed_username.text.should match(%r{#{user_fullname}}i)
end

When(/^user click on the Install Now button$/) do
  sleep 5
  page.execute_script('window.scrollTo(0,800)')
  $EDUDownloadPage.edu_DownloadButton.download_dropdown_list.click
  $EDUDownloadPage.edu_DownloadButton.install_now.click
  sleep 5
  $EDUDownloadPage.edu_Websdk_popup.accept_terms.click
  $EDUDownloadPage.edu_Websdk_popup.intall_button.click
  sleep 5
end

When(/^user see "([^"]*)" message as confirmation that download is starting$/) do |download_msg|
  $EDUDownloadPage.edu_Websdk_browser_msg.thankyou_screen.click
  $EDUDownloadPage.edu_Websdk_browser_msg.file_is_downloading_msg.text.should match(%r{#{download_msg}}i)
end

Then(/^user's machine should have downloaded file "([^"]*)"$/) do |file_downloaded|
  file_download_validation(file_downloaded)
end

When(/^I see "([^"]*)" message$/) do |download_msg|
  $EDUDownloadPage.edu_Websdk_browser_msg.thankyou_screen.click
  $EDUDownloadPage.edu_Websdk_browser_msg.file_is_downloading_msg.text.should match(%r{#{download_msg}}i)
end

When(/^user should be able to select "([^"]*)" from license type dropdown$/) do |license_type|
  within($EDUDownloadPage.edu_Dropdown.license_type_dropdown.click) do
  select(license_type)
  end
end

When(/^user should be able to select "([^"]*)" from release dropdown$/) do |release|
  within($EDUDownloadPage.edu_Dropdown.version_dropdown.click) do
    select(release)
  end
  sleep 5
end

When(/^user select "([^"]*)" from release dropdown, "([^"]*)" from OS dropdown, "([^"]*)" from Language dropdown$/) do |release,os,language|
  within($EDUDownloadPage.edu_Dropdown.version_dropdown.click) do
    select(release)
  end

  within($EDUDownloadPage.edu_Dropdown.operating_system_dropdown.click) do
    select(os)
  end

  within($EDUDownloadPage.edu_Dropdown.language_dropdown.click) do
    select(language)
  end
  sleep 5
end

Then(/^user should see the verification failed status message "([^"]*)"$/) do |status_msg|
  $EDUDownloadPage.edu_Veritas_Verification_Message.verification_link_message.text.should match(%r{#{status_msg}}i)
end
