

## SEE: features\DC-PByL\step_definitions\common_steps.rb
## SEE: features\DC-PByL\step_definitions\common_set_userCountry_cookie.rb

################### SEESION STORAGE: POPUP VIEWED ####################

## Scenario 5 and 6 ###
#   And session storage stored a "geoNavigationPopupViewed" as "true"
Then(/^session storage stored a "([^"]*)" as "([^"]*)"$/) do |key, value|
  popupviewed = page.evaluate_script("sessionStorage.getItem('geoNavigationPopupViewed')")
  expect(popupviewed).to eq(value)
end


##### GEO POPUP is displayed #####

Then(/^a 'geo\-popup' is displayed$/) do
  find(:xpath, "//*[starts-with(@class,'geo-navigation-popup-container wd')]").should be_visible
end

##### GEO POPUP is closed or not Displayed #####

Then(/^the 'geo\-popup' is (?:closed|not displayed again|no longer displayed)$/) do
    should have_no_selector(:xpath, "//*[starts-with(@class,'geo-navigation-popup-container wd')]")
end

Then(/^the 'geo\-popup' is not displayed$/) do
  within(:xpath,$PATH['utility_bar']) do
  should have_no_selector(:xpath,$PATH['geopopup'])
  end
end

##### Local Site link #####

When(/^user clicks on his local site link$/) do
  find(:xpath, "//*[starts-with(@class,'geo-navigation-popup-redirect')]").click
  sleep 5
end



#################### Scenario 2 #######################

Then(/^displays the English text "([^"]*)"$/) do |linktext|
    find(:xpath, "//*[starts-with(@class,'geo-navigation-popup-stay-on-site wd')]").text.should match(linktext)
end

#################### Scenario 3 #######################


When(/^user clicks on link 'Stay on U\.S\. site' to remain on the \.com site$/) do
  find(:xpath, "//*[starts-with(@class,'geo-navigation-popup-stay-on-site')]").click
  sleep 5
end

#################### Scenario 5 #######################

Then(/^displays the localized "([^"]*)"$/) do |linktext|
#  within(:xpath, "//*[@class='geo-navigation-popup-content']") do
    find(:xpath, "//*[starts-with(@class,'geo-navigation-popup-redirect')]").text.should match(linktext)
#  end
end

#################### Scenario 7 #######################

When(/^user clicks on the 'close' icon$/) do
  find(:xpath, "//*[@class='geo-navigation-popup-container-close']").click
end



#################### Scenario 11 #######################

Then(/^the URL directs user to appropriate latinoamerica "([^"]*)"$/) do |destinationpage|
    domain_page_validation_latinoamerica(destinationpage)
end
