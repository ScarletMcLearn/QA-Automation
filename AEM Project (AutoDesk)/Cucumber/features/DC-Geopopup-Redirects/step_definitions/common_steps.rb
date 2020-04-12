####### GIVEN steps in: \Cucumber\features\support\common\step_definitions\common_loading_pages.rb #######

# Given the "<subscribe_page>" exists on "<dest_localsite>"
# Given the "<page>" does not exist on "<destination_site>"

#------------------- UTILITY BAR steps -------------------#

When(/^the site label "([^"]*)" is present$/) do |sitelabel|
sleep 5
  within(:xpath,$PATH['utility_bar']) do
  expect(find(:xpath, $PATH['site_selector_link']).text).to include(sitelabel)
 end
end


Then(/^the site displays the appropriate Country "([^"]*)"$/) do |label|
sleep 5
  within(:xpath,$PATH['utility_bar']) do
  expect(find(:xpath, $PATH['site_selector_link']).text).to include(label)
 end
end

When(/^the user navigates to the new site\-selector page by clicking the country label in utility bar$/) do
  within(:xpath,$PATH['utility_bar']) do
   find(:xpath, $PATH['site_selector_link']).click
   sleep 6
 end
end

#------------------- SITE-SELECTOR page steps -------------------#


When(/^clicks on (?:his|a) Country link "([^"]*)" from site\-selector page$/) do |country|
#  within(:xpath,$PATH['site_selector_page_country_container']) do
    find(:xpath,"//a/span[contains(text(),'"+country+"')]").click
  sleep 5
#  end
end

#----------- PROD SITE-SELECTOR: features\DC-PROD\Basic-Functional-Validation-Site-Selector.feature ----------#

#--- step for PROD scenario since $PATH['site_selector_page_country_container'] only works on SLE2/PT - due to controlled content
When(/^clicks on (?:his|a) Country link "([^"]*)" from site\-selector page on PROD$/) do |country|
      #sleep 5
    find(:xpath,"//a/span[contains(text(),'"+country+"')]").click
  sleep 5
end


#------------------- COMMON - User is redirected to destination site page -------------------#

Then(/^the (?:URL|link) directs user to appropriate "([^"]*)" "([^"]*)"$/) do |site_destination, destinationpage|
  host_page_validation(site_destination, destinationpage)
end


Then(/^the (?:URL|link) directs user to appropriate site page: "([^"]*)" "([^"]*)"$/) do |site_destination, destinationpage|
  sleep 5
  host_page_validation(site_destination, destinationpage)
  sleep 5
end


# Use "detected" in Gherkin when no geoNavigationPreferredSite is set.
Then(/^the user is automatically redirected to the (?:detected|preferred) country site "([^"]*)" "([^"]*)"$/) do |localsite, page|
  sleep 5
  host_page_validation(localsite, page)
end

#When(/^the referrer parameter appears in the URL$/) do
#  sleep 5
#  referrer = '?referrer='
#  host_page_validation(localsite, page)
  #current_path.should == people_path(:search => 'name')
#  expect(page).to have_current_path(page, url: true)
#end


#--------------- userCountry Cookie ---------------#

# see:  features\DC-PByL\step_definitions\common_set_userCountry_cookie.rb


#--------------- SESSION STORAGE 'PREFERRED SITE'---------------#

Given(/^the user is on .com page without a preferred site$/) do
  preferredsite = page.evaluate_script("sessionStorage.getItem('geoNavigationPreferredSite')")
  expect(preferredsite).to eq(nil)

end


Then(/^session storage should NOT contain a Preferred site for \.com$/) do
  localsite =".com"
  url = Env_Url.environment_links(localsite)
  visit(url+'/')
  preferredsite = page.evaluate_script("sessionStorage.getItem('geoNavigationPreferredSite')")
  expect(preferredsite).to eq(nil)
  #puts"\n -------pref site is "+preferredsite
end


Then(/^session storage should NOT store a Preferred site on \.com$/) do
  preferredsite = page.evaluate_script("sessionStorage.getItem('geoNavigationPreferredSite')")
  expect(preferredsite).to eq(nil)
end


#--------------- SESSION STORAGE 'PREFERRED SITE': EVALUATE 'GEOKEY' VALUE (GetItem)---------------#

#### GOOD STEP!
# Once user is redirected to local site, this step below is to go back to .com to check preferred site
Then(/^session storage should now contain a Preferred site: 'geoNavigationPreferredSite' with Geokey: "([^"]*)" on \.com$/) do |geokey|
  localsite =".com"
  url = Env_Url.environment_links(localsite)
  visit(url+'/')
  preferredsite = page.evaluate_script("sessionStorage.getItem('geoNavigationPreferredSite')")
  expect(preferredsite).to eq(geokey)
  #puts"\n -------pref site is "+geokey
end


Then(/^the preferred site (?:is|remains) stored as "([^"]*)" in the \.com page$/) do |geokey|
  localsite =".com"
  url = Env_Url.environment_links(localsite)
  visit(url)
  preferredsite = page.evaluate_script("sessionStorage.getItem('geoNavigationPreferredSite')")
    expect(preferredsite).to eq(geokey)
    #puts"\n -------pref site is "+geokey
end


#--------------- SESSION STORAGE 'PREFERRED SITE': SETS the 'GEOKEY' VALUE (SetItem)---------------#

Given(/^the user is on \.com page with "([^"]*)" set as the preferred site$/) do |geokey|
  localsite =".com"
  url = Env_Url.environment_links(localsite)
  visit(url+'/')
  page.execute_script('sessionStorage.setItem("geoNavigationPreferredSite","'+geokey+'")')
    preferredsite = page.evaluate_script("sessionStorage.getItem('geoNavigationPreferredSite')")
    #puts "\n\n the preferred storage afer setting is ------> "+preferredsite
end



# -------- used by subscribe_redirects and worldwide_siteSelector -------#

When(/^user clicks on 'choose another local site' from the subscribe redirect alert$/) do
  within(:xpath,$PATH['subscribe_redirect_alert_choose-site']) do
    link1 =find(:xpath,"//a[contains(text(),'Choose a different local site')]").should be_visible
    link =find(:xpath,"//a[contains(text(),'Choose a different local site')]").click
    sleep 5
  end
end
