
Given(/^I am on page "([^"]*)"$/) do |url|
  visit(url)
  sleep 3
  browser = Capybara.current_session.driver.browser
  browser.manage.delete_all_cookies
  sleep 1
  #document.cookie = "fsr.s={'v2':-2,'v1':1,'rid':'d036702-53702257-2645-8fd6-921ea','to':3,'c':'.autodesk.com','pv':1,'lc':{'d0':{'v':1,'s':true}},'cd':0,'sd':0,'l':'en','i':-1}"
  #browser.manage.add_cookie :name => "fsr.s", :value => ",'rid':'d44bc26-85362431-9db2-8aeb-d3b00','to':10,'pv':5,'lc':{'d1':{'v':5,'s':true,'e':3}},'cd':1,'sd':1,'cp':{'nm':'Y'},'f':1494523290292,'l':'en','i':-1}"
  browser.manage.add_cookie :name => "fsr.s", :value => "{'v2':-2,'v1':1,'rid':'d036702-53702257-2645-8fd6-921ea','to':3,'c':'.autodesk.com','pv':1,'lc':{'d0':{'v':1,'s':true}},'cd':0,'sd':0,'l':'en','i':-1}"
  browser.manage.add_cookie :name => "_4c_", :value => "{'v2':-2,'v1':1,'rid':'d036702-53702257-2645-8fd6-921ea','to':3,'c':'.autodesk.com','pv':1,'lc':{'d0':{'v':1,'s':true}},'cd':0,'sd':0,'l':'en','i':-1}"
  browser.manage.add_cookie :name => "QSI_SI_a5BqMX9yVExX3Br_intercept", :value => "true"
  visit(url)
  sleep 2
  el = first(:xpath, "//img[@id='_evh-ric-c']", maximum: 1)
  el.click unless el.nil?
  el = first(:xpath, "//a[@class='close close-pbl-overlay']", maximum: 1)
  el.click unless el.nil?
end

Given(/^I am on prod page "([^"]*)" for "([^"]*)"$/) do |url , site|
  visit(url)
  eprivacy_yes_to_all(site)
end

Given(/^I am on page "([^"]*)" for "([^"]*)"$/) do |url , site|
  visit(url+site)
  eprivacy_yes_to_all(site)
end

Given(/^Set cookie name "([^"]*)" value "([^"]*)" here$/) do |cookie_name, cookie_value|
  browser = Capybara.current_session.driver.browser
  browser.manage.add_cookie :name => cookie_name, :value => cookie_value
  browser.navigate.refresh
  sleep 4
end

Given(/^I continue navigate to "([^"]*)"$/) do |url|
  visit(url)
  sleep 3
end

Given(/^I continue navigate to "([^"]*)" for "([^"]*)"$/) do |url , site|
  visit(url+site)
  sleep 3
  eprivacy_yes_to_all(site)
end

Given(/^I am on page "([^"]*)" \# Collection page$/) do |url|
  visit(url)
end

Given(/^I click on Trial "([^"]*)" button$/) do |signin|
  within(:xpath,"//*[@data-automation-id='adsk-oxygen-welcome-signin-component']") do
    click_on(signin)
  end
  sleep 5
end

Given (/^I log in with oxygen user "([^"]*)" password "([^"]*)"$/) do |user, password|
  fill_in 'UserName', :with => user
  click_on('verify_user_btn')
  fill_in 'password', :with => password
  click_on('btnSubmit')
  sleep 10
end


Given(/^I click on EDU Sign In button$/) do
  find(:xpath,"//a[@class='sign-in-btn']").click
  sleep 5
end



When (/^I select Release "([^"]*)", OS "([^"]*)", Language "([^"]*)"$/) do |release,os,language|
  within(:xpath,"//select[contains(@class,'edu-dl-v')]") do
    select(release)
  end
  within(:xpath,"//select[contains(@class,'edu-dl-os')]") do
    select(os)
  end
  within(:xpath,"//select[contains(@class,'edu-dl-la')]") do
    select(language)
  end
  sleep 5
end


Then(/^I get Serial Number "([^"]*)"$/) do |serial|
  expect(find(:xpath, "//div[contains(@class,'edu-dropdown-serial-number')]").text).to eq(serial)
end


Then(/^I download successfully from "([^"]*)" with "([^"]*)"$/) do |button,confirmation|
  page.execute_script('window.scrollTo(0,300)')
  click_on(button)
  sleep 5
  ## Below lines are only applicable for Windows
  find(:xpath, "//*[@id='eulardaccept']").set(true)
  find(:xpath, "//button[@id='eulaaccept']").click
  sleep 5
  expect(find(:xpath, "//span[@id='tySubTitle']").text).to eq(confirmation)
end


# DC-PROD\Basic-Fuctional-Validation-WPE.feature
When(/^I search for string "([^"]*)"$/) do |search|
#  sleep 1
#  fill_in 'site-search-qt', :with => search
#  find(:xpath,"//*[@id='site-search-qt']").native.send_keys(:return)
#  sleep 5
  within(:xpath, "//*[@class='navigation-bar-search-inline']") do
    find(:xpath,"//*[@id='site-search-qt']").native.send_keys(search)
    find(:xpath,"//*[@id='site-search-qt']").native.send_keys(:return)
  end
end


Then(/^I get first match containing string "([^"]*)"$/) do |search|
  sleep 4
  expect(find(:xpath, "//div[@class='wd-google-search-success-results wd-bc-smoke wd-bbw-1 wd-pb-16']/div[1]/h3/a").text.downcase).to have_content(search)
end


Then(/^I get first card on first and second blocks$/) do
  find(:xpath, "//*[@class='wistia_embed wistia_async_shkde1qu8t popover=true popoverAnimateThumbnail=true videoFoam=true wistia_embed_initialized']") # thumbnail img tag(User Interface Enhancements)
  #find(:xpath, "//div[@class='row row wd-ph-20 wp-card-row whatsnew-row-1']/div[@class='small-12 medium-4 large-4 wp-card-row-padding grid-columns'][1]//div[@class='parbase image section']/a/img")
end


When (/^I select City "([^"]*)" and click Search button$/) do |city|
  sleep 2
  within_frame(0) do
    sleep 2
    find(:xpath,"//*[@id='city']").native.send_keys(city)
    sleep 2
    find(:xpath,"//*[@id='city']").native.send_keys(:arrow_down)
    find(:xpath,"//*[@id='city']").native.send_keys(:return)
    sleep 2
    find(:xpath,"//input[@value='SEARCH']").click
  end
  sleep 3
end


Then(/^I get results of Partner Locator search displayed$/) do
  within_frame(0) do
    find(:xpath, "//*[@id='notierHeader']/div[@class='view_more_link']")
  end
end


When(/^I click on DOWNLOAD button$/) do
  #click_on('wp_student_download_button')
  find(:xpath, "//a[@data-wat-linkname='download free trial']").click
  sleep 5
end


Then(/^I download Fusion successfully$/) do
  expect(find(:xpath, "//*[@class='thank_info']").text).to include("Thank you for downloading")
end


Given(/^I click on Fusion DOWNLOAD FREE TRIAL button$/) do
  find(:xpath,"//a[@data-wat-cloud='fusion 360']").click
  sleep 8
end


Given(/^I enter my email and click DOWNLOAD FREE TRIAL$/) do
  within_frame(0) do
    #find(:xpath,"//*[@id='field_LastName']").send_keys("DPE")
    #find(:xpath,"//*[@id='LastName']").send_keys("DPE")
    #find(:xpath,"//*[@id='Company']").send_keys("AutoDeskDPE")
    #find(:xpath,"//*[@id='Country']").send_keys("United States")
    find(:xpath,"//*[@id='Email']").native.send_keys("test@test.com")
    find(:xpath,"//a[@data-wat-cloud='fusion 360']").click
  end
  sleep 5
end


Given(/^I click on EDU Promo Sign In button$/) do
  find(:xpath,"//a[@data-o2='signin']").click
  sleep 5
end


When(/^I enter Promocode "([^"]*)" and click ACTIVATE$/) do | promo |
  sleep 2
  find(:xpath,"//input[@class='promo_input']").native.send_keys(promo)
  find(:xpath,"//span[contains(@class,'activate_button')]").click
  sleep 5
end


Then(/^I get "([^"]*)" error$/) do | error |
  expect(find(:xpath,"//p[@class='error_text']").text).to eq(error)
end


Then(/^I click on Taleo link for San Francisco jobs$/) do
  page.execute_script('window.scrollTo(0,3500)')
  #find(:xpath,".//*[contains(text(), 'BY LOCATION')]").click # For small screen
  sleep 3
  find(:xpath,".//*[contains(text(), 'San Francisco')]").click
  sleep 6
end

Then(/^I should see San Francisco jobs$/) do
  expect(URI.parse(current_url).host).to eq("autodesk.taleo.net") # verify url contain taleo text
  expect(find(:xpath, "//*[@id='filterList']").text).to eq("San Francisco") # verify filter text contain San Francisco
  expect(all(:xpath, "//*[@class='multiline-data-container']").length).to be > 1 # verify sf should have more then 1 jobs

end


When (/^I select Products Autocad from MENU$/) do
  find(:xpath,"//a[contains(@class,'toggle-global-menu')]").click
  sleep 1

  find(:xpath,"//nav[@class='global-navigation']/ul/li[1]/a").click
  sleep 1
  find(:xpath,"//nav[@class='global-navigation']/ul/li/ul/li/a[text()='AutoCAD']").click
  sleep 1
end



Then (/^I am redirected to "([^"]*)"$/) do | path |
  expect(current_url.include?(path))
end



Then(/^I can go from Subscription to Cart$/) do
  page.execute_script('window.scrollTo(0,100)')
  el = find(:xpath,"//*[@data-automation-id='buy-container-term-billing-plan-1-month']//*[@data-automation-id='buy-container-term-billing-plan-price']")
  price = el.text
  el.click
  all(:xpath,"//*[@data-automation-id='buy-container-call-to-action']").first.click
  sleep 10
  find(:xpath,"//*[contains(text(),'View/Edit cart')]").click
  price_in_guac = find(:css,".checkout--cart-section--summary--total-price-text").text

  expect(price_in_guac).to include(price)
end

When (/^I click on DOWNLOAD FREE TRIAL button$/) do
  sleep 2
  find(:xpath,"//a[contains(@data-trial-trigger,'oxygen-trial-flow')]").click
  sleep 5
end

When (/^I click on DOWNLOAD FREE TRIAL button "([^"]*)"$/) do | button |
  sleep 2
  click_on(button)
  sleep 5
end

When(/^user selects usertype option as "([^"]*)" from frame$/) do |option|
    find(:xpath, "//a[contains(@class,'otfdl-button-product-information')]").click
    within(:xpath,"//div[@id='lightbox-id-0']//select[contains(@class,'otfdl-user-types-box')]") do
       select(option)
    end
    find(:xpath,"//div[@id='lightbox-id-0']//a[contains(@class,'otfdl-button-user-type')]").click
end

Then(/^the "([^"]*)" is displayed$/) do |signin_text|
    expect(find(:xpath,'').text.include?(signin_text))
end

When(/^I click on first card DOWNLOAD FREE TRIAL button$/) do
  page.execute_script('window.scrollTo(0,500)')
  sleep 5
  page.all(:xpath,"//a[@data-wat-content-type='waf-fst-try']")[0].click
  sleep 2
end

And (/^On IFrame select product "([^"]*)"$/) do |product|
  within(:xpath, "//div[@id='lightbox-id-0']") do
    find(:xpath,"//a[contains(@class,'otfdl-button-product-selection')]").click
    sleep 2
    find(:xpath,"//a[contains(@class,'otfdl-button-product-information')]").click
    sleep 2
  end
end

And(/^select user type as "([^"]*)"$/) do |usertype|
  within(:xpath, "//div[@id='lightbox-id-0']") do
    within(:xpath,"//*[contains(@class,'otfdl-user-types-box')]") do
      select(usertype)
    end
    sleep 1
    find(:xpath,"//*[contains(@class,'otfdl-button-user-type')]").click
    sleep 5
  end
end

And(/^select user type for card as "([^"]*)"$/) do |usertype|
  within(:xpath, "//div[@id='lightbox-id-1']") do
    within(:xpath,"//*[contains(@class,'otfdl-user-types-box')]") do
      select(usertype)
    end
    sleep 1
    find(:xpath,"//*[contains(@class,'otfdl-button-user-type')]").click
    sleep 5
  end
end

When(/^I click on the download free trial button$/) do
  page.execute_script('window.scrollTo(0,500)')
  sleep 5
  find(:xpath,"//*[@id='oxygen-trial-flow-df-b528-cta']/span[1]").click
  sleep 2
end

And (/^On IFrame click Next button$/) do
  within(:xpath, "//div[@id='lightbox-id-1']") do
    sleep 2
    find(:xpath,"//a[contains(@class,'otfdl-button-product-information')]").click
    sleep 2
  end
end


And (/^On IFrame log in with oxygen user "([^"]*)" password "([^"]*)" and begin download$/) do |user, password|


    $FreeTrialPage.freeTrialSigninIframe do |frame|
      frame.sign_in_email.click
      frame.sign_in_email.set user
      frame.next_on_signin.click
      frame.wait_until_sign_in_password_visible
      frame.sign_in_password.set password
      frame.signin_button.click
      sleep 6
 end
  #below script has been failing, added a temp script
  #within_frame(0) do
  #sleep 5
    #fill_in 'UserName', :with => user
    #click_on('verify_user_btn')
    #sleep 5

    #fill_in 'password', :with => password
    #click_on('btnSubmit')
    #sleep 5
  #end
  within(:xpath, "//*[@id='lightbox-id-0']") do
    find(:xpath,'//*[@id="Company"]').send_keys("AutoDeskWPE").click
    sleep 2
    find(:xpath,'//*[@id="Phone"]').send_keys("415 356-0700").click
    sleep 1
    countryField = find(:xpath,$PATH['companyinformationMarketo_country']).value
    if(countryField == "US" || countryField == "CA") #Countries which have dropdowns are US, Brazil, Canada, China, India, Ireland, Italy, Japan, Malaysia, Mexico, Switzerland, Taiwan and Thailand, but no need to check them all since scripts don't use them.
      find(:xpath,"//*[@id='company-information-State']").find(:xpath, 'option[2]').select_option
    else
      stateField = find(:xpath,"//*[@id='company-information-State']").set("info")
    end
    sleep 1
    find(:xpath,"//*[@id='PostalCode']").send_keys("94016")
    sleep 1
    #find(:xpath,"//a[contains(@class,'otfdl-button-company-information')]").click
    #sleep 7
    find(:xpath,"//a[contains(@class,'otfdl-button-download')]").click
    sleep 5
  end
end

And (/^On IFrame1 log in with oxygen user "([^"]*)" password "([^"]*)" and begin download$/) do |user, password|
  within_frame(0) do
    sleep 10
    fill_in 'UserName', :with => user
    click_on('verify_user_btn')
    fill_in 'password', :with => password
    click_on('btnSubmit')
    sleep 10
  end
  within(:xpath, "//*[@id='lightbox-id-1']") do
    find(:xpath,'//*[@id="Company"]').send_keys("AutoDeskWPE").click
    sleep 2
    find(:xpath,'//*[@id="Phone"]').send_keys("415 356-0700").click
    sleep 1
    countryField = find(:xpath,$PATH['companyinformationMarketo_country']).value
    if(countryField == "US" || countryField == "CA") #Countries which have dropdowns are US, Brazil, Canada, China, India, Ireland, Italy, Japan, Malaysia, Mexico, Switzerland, Taiwan and Thailand, but no need to check them all since scripts don't use them.
      find(:xpath,"//*[@id='company-information-State']").find(:xpath, 'option[2]').select_option
    else
      stateField = find(:xpath,"//*[@id='company-information-State']").set("info")
    end
    sleep 1
    find(:xpath,'//*[@id="PostalCode"]').send_keys("94016")
    sleep 1
    #find(:xpath,"//a[contains(@class,'otfdl-button-company-information')]").click
    #sleep 7
    find(:xpath,"//a[contains(@class,'otfdl-button-download')]").click
    sleep 5
  end
end

Then (/^On IFrame1 "([^"]*)" text appears$/) do | confirmation |
  within(:xpath, "//div[@id='lightbox-id-1']") do
    expect(find(:xpath, "//div[contains(@class,'otfdl-panel-body')]").text.include?(confirmation))
  end
end


Then (/^On IFrame "([^"]*)" text appears$/) do | confirmation |
  within(:xpath, "//div[@id='lightbox-id-0']") do
    expect(find(:xpath, "//div[contains(@class,'otfdl-panel-body')]").text.include?(confirmation))
  end
end



#Marketo Form
When (/^I complete all fields of the form with test data and submit it$/) do
  within_frame(0) do
    fill_in 'FirstName', :with => "test"
    fill_in 'LastName', :with => "test"
    fill_in 'Email', :with => "test@test.com"
    find(:xpath,"//select[@id='Country']").select("Canada")
    find(:xpath, "//*[@id='privacycb']").set(true)
    click_on('SUBMIT')
    sleep 5
  end
end


#Before ('@RefreshPage') do |scenario|
#  browser = Capybara.current_session.driver.browser
#  browser.navigate.refresh
#  sleep 4
#end


And(/^I click on close X icon$/) do
  find(:xpath,$PATH['close_icon']).click
  sleep 10
end

Then(/^the sign in screen is displayed$/) do
  sleep 10
  expect($FreeTrialPage).to have_freeTrialSigninIframe
end

Given(/^I am on the prod trial page "([^"]*)" for "([^"]*)" with opt in$/) do |url , site|
    visit(url)
    eprivacy_yes_to_all(site)
end

Given(/^I am on the prod trial page "([^"]*)" for "([^"]*)" with opt out$/) do |url , site|
    visit(url)
    eprivacy_no_to_all(site)
end

When(/^user clicks on Download Free Trial button$/) do
    find(:xpath,$PATH['download_free_button']).click
end

And(/^clicks on the prod select 'Next' button$/) do
    find(:xpath,"//a[contains(@class,'otfdl-button-product-selection')]").click
end

And(/^clicks on 'Begin Download' button$/) do
    find(:xpath,"//a[contains(@class,'otfdl-button-download')]").click
    sleep 5
end
Given(/^the universal help module is close$/) do

  find(:xpath, "//iframe[contains(@class,'uhm-iframe')]").should be_visible
  sleep 4

end
When(/^the user clicks on the universal help module tab$/) do
  find(:xpath, "//iframe[contains(@class,'uhm-iframe')]").click
  sleep 4
end
Then(/^the universal help module tab should open$/) do
  begin
  page.driver.browser.switch_to.frame(3)
  rescue
  page.driver.browser.switch_to.frame(4)
  find(:xpath, "//span[@class='header__title' and contains(text(),'GET HELP')]").should be_visible
  end
end




#====================Education page Section====================
When(/^userA navigates to the EDU page "([^"]*)" for the "([^"]*)"$/) do |page, localsite|
 sleep 2
 url = Env_Url.environment_links(localsite)
 visit(url+page)
 expect(title).to_not eq('404')
 eprivacy_yes_to_all(localsite)
end


#New Login structure to use as done part of Page Object work
When(/^userA enter edu user login email "([^"]*)" and password "([^"]*)"$/) do |username,password|
  $OxygenLandingPage.oxygen_Signin_Form.signin(username, password)
  sleep 4
end

When(/^userA click on SignIn edu button$/) do
  $EDUDownloadPage.edu_Signin.Signin_button.click
  sleep 5
end

Then(/^userA should see "([^"]*)" "([^"]*)" message$/) do |welcome_msg, user_fullname|
  $EDUDownloadPage.edu_Signin.welcome_message.text.should match(%r{#{welcome_msg}}i)
  $EDUDownloadPage.edu_Signin.displayed_username.text.should match(%r{#{user_fullname}}i)
end


When(/^userA should be able to select Autocad 2020 from release dropdown$/) do
  $EDUDownloadPage.edu_Dropdown.version_dropdown.click
  $EDUDownloadPage.edu_Dropdown.version_dropdown_Autocad2020.click
end

When(/^userA select Win64bit from OS dropdown$/) do
  $EDUDownloadPage.edu_Dropdown.operating_system_dropdown.click
  $EDUDownloadPage.edu_Dropdown.operating_system_dropdown_windows64bit.click
end

When(/^userA select English from language dropdown$/) do
  $EDUDownloadPage.edu_Dropdown.language_dropdown.click
  $EDUDownloadPage.edu_Dropdown.language_dropdown_english.click
end

When(/^userA sees "([^"]*)" message$/) do |download_msg|
  $EDUDownloadPage.edu_Websdk_browser_msg.thankyou_screen.click
  $EDUDownloadPage.edu_Websdk_browser_msg.file_is_downloading_msg.text.should match(%r{#{download_msg}}i)
end

When(/^userA click on the Install Now button$/) do
  page.execute_script('window.scrollTo(0,800)')
  $EDUDownloadPage.edu_DownloadButton.download_dropdown_list.click
  $EDUDownloadPage.edu_DownloadButton.install_now.click
  sleep 5
  $EDUDownloadPage.edu_Websdk_popup.accept_terms.click
  $EDUDownloadPage.edu_Websdk_popup.intall_button.click
  sleep 5
end


Then(/^edu user should have downloaded file "([^"]*)"$/) do |file_downloaded|
  file_download_validation(file_downloaded)
end
