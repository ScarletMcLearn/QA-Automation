Then(/^I should see verification message$/) do
  $EDUDownloadPage.edu_Veritas_Verification_Message.verification_link_message.should be_visible
end

Then(/^I click on verification_button$/) do
  $EDUDownloadPage.edu_Veritas_Verification_Message.verification_button.click
  sleep 1
end

Then(/^I should see the confirm information form content$/) do
  $EDUDownloadPage.edu_Veritas_Verification_Form.confirm_info_form_email.should be_visible
  $EDUDownloadPage.edu_Veritas_Verification_Form.confirm_info_form_Fname.should be_visible
  $EDUDownloadPage.edu_Veritas_Verification_Form.confirm_info_form_Lname.should be_visible
  $EDUDownloadPage.edu_Veritas_Verification_Form.confirm_info_form_Country.should be_visible
  $EDUDownloadPage.edu_Veritas_Verification_Form.confirm_info_form_InstitutionType.should be_visible
  $EDUDownloadPage.edu_Veritas_Verification_Form.confirm_info_form_InstitutionName.should be_visible
  #$EDUDownloadPage.edu_Veritas_Verification_Form.date_of_birth.should be_visible
  $EDUDownloadPage.edu_Veritas_Verification_Form.verify_button.should be_visible
  $EDUDownloadPage.edu_Veritas_Verification_Form.cancel_button.should be_visible
  $EDUDownloadPage.edu_Veritas_Verification_Form.faqs.should be_visible
  #$EDUDownloadPage.edu_Veritas_Verification_Form.qualified_educational_institution.should be_visible
  $EDUDownloadPage.edu_Veritas_Verification_Form.alternate_link.should be_visible
end

#add school clicked

When(/^I enter my add school flow username and password$/) do
  $OxygenLandingPage.oxygen_Signin_Form.add_school_signin
end

Then(/^I click on add school verification_button$/) do
  $EDUDownloadPage.edu_Veritas_Verification_Message.verification_add_school_button.click
end

Then(/^I enter name of education institution$/) do
  $EDUDownloadPage.edu_Veritas_Verification_Form.confirm_info_form_InstitutionName_field.set 'z'
end

Then(/^I click on add school link$/) do
  $EDUDownloadPage.edu_Veritas_Verification_Form.add_school.click
end

Then(/^I redirect to a new tab$/) do
  page.driver.browser.switch_to.window(page.driver.browser.window_handles.last)
end

Then(/^I see add school form content$/) do
  $EDUDownloadPage.edu_Veritas_Verification_AddSchool.add_school_title.should be_visible
  $EDUDownloadPage.edu_Veritas_Verification_AddSchool.add_school_description.should be_visible
  $EDUDownloadPage.edu_Veritas_Verification_AddSchool.add_school_email.should be_visible
  $EDUDownloadPage.edu_Veritas_Verification_AddSchool.add_school_fname.should be_visible
  $EDUDownloadPage.edu_Veritas_Verification_AddSchool.add_school_lname.should be_visible
  $EDUDownloadPage.edu_Veritas_Verification_AddSchool.add_school_country.should be_visible
  $EDUDownloadPage.edu_Veritas_Verification_AddSchool.add_school_eduInstitution.should be_visible
  $EDUDownloadPage.edu_Veritas_Verification_AddSchool.add_school_eduInstitution_website.should be_visible
  $EDUDownloadPage.edu_Veritas_Verification_AddSchool.add_school_submit_button.should be_visible
end
