Then(/^user should see "([^"]*)" button label$/) do |get_access_label|
  $EDUDownloadPage.edu_Dropdown.get_access_button.text.should match(%r{#{get_access_label}}i)
end

Then(/^user should see message "([^"]*)" from the adsk-education-cloud-access-not-entitled key$/) do |not_entitled_label|
  $EDUDownloadPage.edu_Dropdown.not_entitled_cloud_msg.text.should match(%r{#{not_entitled_label}}i)
end
