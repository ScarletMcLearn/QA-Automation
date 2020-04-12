Given(/^user is on the trial page "([^"]*)" for "([^"]*)" and opting in$/) do |page , site|
    url = Env_Url.environment_links(site)
    visit(url+page)
    eprivacy_yes_to_all(site)
    sleep 5
end

Given(/^user is on the trial page "([^"]*)" for "([^"]*)" and opting out$/) do |page , site|
    url = Env_Url.environment_links(site)
    visit(url+page)
    eprivacy_no_to_all(site)
    sleep 5
end

And(/^finds marketing checkbox for category B is selected$/) do
    checkbox = find(:xpath,$PATH['categoryB_checkbox'])
    checkbox.should be_checked
end


And(/^finds marketing checkbox for category C is not selected$/) do
    checkbox = find(:xpath,$PATH['categoryC_checkbox'])
    checkbox.should_not be_checked
end

And(/^finds marketing text from PN as "([^"]*)"$/) do |text|
    find(:xpath,$PATH['PN_text']).text.should match(text)
end


Given(/^user is on a page "([^"]*)"$/) do |page|
  #url = Env_Url.environment_links(localsite)
  visit(page)
  expect(title).to_not eq('404')
  sleep 5
end


Then(/^finds 'Begin Download' button is enabled$/) do
    find(:xpath,$PATH['begin_download_button_enable']).should be_visible
    #find_field('BEGIN DOWNLOAD', disabled: false)
end

And(/^'Use Download Manager' link is enabled$/) do
    find(:xpath,$PATH['download_link_enable']).should be_visible
end

When(/^user clicks on above link$/) do
  find(:xpath,$PATH['download_link_enable']).click
  sleep 3
end

And(/user visits trial page "([^"]*)" for "([^"]*)"$/) do |page , site|
    url = Env_Url.environment_links(site)
    visit(url+page)
end

Then(/^eprivacy page is not seen$/) do
    find(:xpath,"//div[@id='adsk-eprivacy-alternate-display-controller']",:visible => false)
end