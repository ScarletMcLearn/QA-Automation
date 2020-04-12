When (/^user select Release "([^"]*)", OS "([^"]*)", Language "([^"]*)"$/) do |release,os,language|
  within(:xpath,$EDU_PATH['release_selection']) do
    select(release)
  end
  within(:xpath,$EDU_PATH['os_selection']) do
    select(os)
  end
  within(:xpath,$EDU_PATH['language_selection']) do
    select(language)
  end
  sleep 5
end

When (/^user select License "([^"]*)"$/) do |license_type|
  within(:xpath,$EDU_PATH['license_type_selection']) do
    select(license_type)
  end
end

Then(/^user should get Serial Number "([^"]*)", Product Key "([^"]*)", File Size "([^"]*)", Usage Rights "([^"]*)"$/) do |serial_number,product_key,file_size,usage_rights|
  wait_for_product_load()
  
  expect(find(:xpath,$EDU_PATH['serial_number']).text).to eq(serial_number)
  expect(find(:xpath,$EDU_PATH['product_key']).text).to eq(product_key)
  expect(find(:xpath,$EDU_PATH['file_size']).text).to eq(file_size)
  expect(find(:xpath,$EDU_PATH['usage_rights']).text).to eq(usage_rights)
end

Then(/^user should download successfully from "([^"]*)" with "([^"]*)"$/) do |button,confirmation|
  page.execute_script('window.scrollTo(0,500)')
  click_on(button)
  sleep 5
  ## Below lines are only applicable for Windows
  if( button == "Install Now")
    find(:xpath, $EDU_PATH['accept_radio_button']).set(true)
    find(:xpath, $EDU_PATH['install_now_button']).click
  end
  sleep 5
  expect(find(:xpath, $EDU_PATH['subtitle']).text).to eq(confirmation)
end

And(/^user is able to see the help link$/) do
   find(:xpath,$EDU_PATH['help_link']).should be_visible
end

Then(/^version dropdown, os dropdown and language dropdown is disabled$/) do
   find(:xpath,$EDU_PATH['release_selection']).disabled?
   find(:xpath,$EDU_PATH['os_selection']).disabled?
   find(:xpath,$EDU_PATH['language_selection']).disabled?
end

And(/^user is able to see the additional benefit link as "([^"]*)"$/) do |benefit_link|
   expect(find(:xpath,$EDU_PATH['benefit_link']).text).to eq(benefit_link)
end

Then(/^the Sign In form should read "([^"]*)"$/) do |sign_in|
  expect(find(:xpath,$EDU_PATH['account_creation']).text).to eq(sign_in)
end
