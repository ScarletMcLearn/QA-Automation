# Common Steps across your project's feature files

############################ COMMON Actions #############################

Given(/^User clicks on Download button$/) do
  find(:xpath,$PATH['download_button']).click
end

And(/^clicks on prod select 'Next' button$/) do
    find(:xpath,"//a[@id='bodycontent-oxygentrialflow2f-productselectioncta']").click
end

Given(/^clicks on prodinfo 'Next' button$/) do
  find(:xpath,$PATH['prodinfo_next']).click
end

Given(/^clicks on usertype 'Next' button$/) do
  find(:xpath,$PATH['usertype_next']).click
end

Given(/^user signs in to his account$/) do
  begin
  sign_in_oxygen_account_form_trial
  rescue
    begin
      find(:xpath,"//div[@style='position: absolute; top: 0px; left: 0px; width: 160px; height: 28px; overflow: hidden; display: block;']").click
    rescue
    #no alert
    end
    $FreeTrialPage.freeTrialSigninIframe do |frame|
      frame.sign_in_email.click
      frame.sign_in_email.set "students@mailinator.com"
      frame.next_on_signin.click
      frame.wait_until_sign_in_password_visible
      frame.sign_in_password.set "test1234"
      frame.signin_button.click
      sleep 20
    end
  end
end

Given(/^clicks on companyinformationMarketo1 'Next' button$/) do
  find(:xpath,$PATH['companyinformationMarketo1_next']).click
end

Given(/^clicks on companyinformationMarketo2 'Next' button$/) do
  find(:xpath,$PATH['companyinformationMarketo2_next']).click
end

Given (/^user waits for (\d+) seconds$/) do |n|
  sleep(n.to_i)
end

When(/^user selects usertype option as "([^"]*)"$/) do |option|
	within(:xpath,"//*[contains(@class,'otfdl-user-types-box')]") do
		select(option)
	end
end

And(/^selects country as "([^"]*)"$/) do |country|
	within(:xpath,$PATH['country_selection']) do
        select(country)
  end
end

And(/^enters required information$/) do
  field = find(:xpath,$PATH['companyinformationMarketo_company'])
  field.set("info")
end



################################################################################
