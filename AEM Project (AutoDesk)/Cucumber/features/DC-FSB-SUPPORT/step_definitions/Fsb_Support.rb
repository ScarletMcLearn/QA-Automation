#################### Scenario 1 ######################################

Given(/^user clicks on System requirements link$/) do
  sleep(5)
  find(:xpath,"//a[@name='accordion-requirements']/following-sibling::span[3]").click
  #page.execute_script("arguments[0].scrollIntoView()", system_req_accordion)
  #system_req_accordion.click
  sleep(5)
end

Then(/^user would see System requirements section contains relevant text for "([^"]*)"$/) do |countrycode|
  expect(find(:xpath,$PATH['sys_req_content'])).to have_content("See System Requirements " + countrycode)
end

Then(/^user would see System requirements table$/) do
  # page.execute_script('window.scrollTo(0,600)')
  sys_req_table = find(:xpath,$PATH['sys_table'])
  #page.execute_script("arguments[0].scrollIntoView()", sys_req_heading)
  #expect(sys_req_heading.text).to have_content(heading)
end

Then(/^OS label as "([^"]*)" with some values$/) do |os_label|
  expect($SubscribePage.os.text).to include(os_label)
end

Then(/^CPU label as "([^"]*)" with some values$/) do |cpu_label|
  expect(find(:xpath,$PATH['cpu']).text).to eq(cpu_label)
end

Then(/^Memory label as "([^"]*)" with some values$/) do |memory_label|
  expect(find(:xpath,$PATH['memory']).text).to eq(memory_label)
end

Then(/^Resolution label as "([^"]*)" with some values$/) do |resolution_label|
  expect(find(:xpath,$PATH['resolution']).text).to eq(resolution_label)
end

Then(/^Card as "([^"]*)" with some values$/) do |card_label|
  expect(find(:xpath,$PATH['card']).text).to eq(card_label)
end

Then(/^Disk Space label as "([^"]*)" with some values$/) do |disk_space_label|
  expect(find(:xpath,$PATH['disk_space']).text).to eq(disk_space_label)
end

Then(/^Browser label as "([^"]*)" with some values$/) do |browser_label|
  expect($SubscribePage.browser.text).to include(browser_label)
 
end

Then(/^Pointing device label as "([^"]*)" with some values$/) do |pointing_device_label|
  expect(find(:xpath,$PATH['pointing_device']).text).to eq(pointing_device_label)
end

Then(/^Digitizer label as "([^"]*)" with some values$/) do |digitizer_label|
  expect(find(:xpath,$PATH['digitizer']).text).to eq(digitizer_label)
end

Then(/^Media label as "([^"]*)" with some values$/) do |media_label|
  expect(find(:xpath,$PATH['media']).text).to eq(media_label)
end

Then(/^Media Player label as "([^"]*)" with some values$/) do |media_player_label|
  expect(find(:xpath,$PATH['media_player']).text).to eq(media_player_label)
end

Then(/^Network label as "([^"]*)" with some values$/) do |network_label|
  expect(find(:xpath,$PATH['network']).text).to eq(network_label)
end

Then(/^Framework label as "([^"]*)" with some values$/) do |framework_label|
  expect(find(:xpath,$PATH['framework']).text).to eq(framework_label)
end

#################### Scenario 2 ######################################

Then(/^user would see Additional Requirements heading as "([^"]*)"$/) do |heading|
  page.execute_script('window.scrollTo(0,1500)')
  sleep(2)
  expect(find(:xpath,$PATH['add_heading']).text).to eq(heading)
end

Then(/^Memory label2 as "([^"]*)" with some values$/) do |memory_label|
  expect(find(:xpath,$PATH['memory2']).text).to eq(memory_label)
end

Then(/^Card2 as "([^"]*)" with some values$/) do |card_label|
  expect(find(:xpath,$PATH['card2']).text).to eq(card_label)
end

Then(/^Disk Space label2 as "([^"]*)" with some values$/) do |disk_space_label|
  expect(find(:xpath,$PATH['disk_space2']).text).to eq(disk_space_label)
end

#################### Scenario 3 ######################################

Given(/^user clicks on Available languages link$/) do
  page.execute_script('window.scrollTo(0,1500)')
  sleep(5)
  find(:xpath,"//a[@name='accordion-languages']/following-sibling::span[3]").click
  #page.execute_script("arguments[0].scrollIntoView()", language_accordion )
  #language_accordion.click
  #page.execute_script("arguments[0].scrollIntoView()", language_accordion )
  sleep(5)
end

Then(/^user would see "([^"]*)" language in the list$/) do |keyword|
  expect(find(:xpath,$PATH['language'])).to have_content(keyword)
end

Then(/^user would not see "([^"]*)" language in the list$/) do |keyword|
  expect(find(:xpath,$PATH['language'])).to have_no_content(keyword)
end

Then(/^user would see "([^"]*)" in the language section$/) do |keyword|
  expect(find(:xpath,$PATH['language_section_content'])).to have_content(keyword)
end

####################### Scenario 4 ######################################


Then(/^user selects a PLC "([^"]*)" in PLC dropdown selector$/) do |plc_to_select|
  within(:xpath,"//select[@data-automation-id='buy-container-plc-selector']") do
  		select(plc_to_select)
  end
end
