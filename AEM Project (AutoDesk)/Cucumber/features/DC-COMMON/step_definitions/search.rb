#------------------ COMMON LOADING PAGES ------------------#

Given(/^the user navigates to a "([^"]*)" with (?:Search Utility|a Search Box) on the "([^"]*)"$/) do |page, site|
  url = Env_Url.environment_links(site)
  visit(url+page)
  expect(title).to_not eq('404')
  sleep 4
end



Given(/^the user navigates to a "([^"]*)" with Search Utility on the "([^"]*)" with a "([^"]*)" in the url$/) do |page, site, script|
  url = Env_Url.environment_links(site)
  visit(url+page+script)
  expect(title).to_not eq('404')
  sleep 5
end


#------------------ COMMON SEARCH ACTIONS ------------------#

#------------------ Search from Utility bar ------------------#

When(/^user searches for a "([^"]*)" from the Utility bar$/) do |query|
#  fill_in 'site-search-qt', with: (query)
  find(:xpath, $PATH['dc_search_utilitybar']).native.send_keys(query)
  sleep 5
end


#------------------ Search from Search Box code component ------------------#

When(/^user enters a "([^"]*)" on the search box$/) do |query|
  within(:xpath, $PATH['dc_search_box']) do
 fill_in 'qt', with: (query)
 sleep 5
 end
end


When(/^user enters a "([^"]*)" on the search box and clicks the enter key$/) do |query|
  within(:xpath, $PATH['dc_search_form_section']) do
    fill_in 'qt', with: (query)
    sleep 3
    find(:xpath, $PATH['dc_search_box_field']).native.send_keys(:return)
  sleep 5
end
end


#------------------ Action to click keyboard 'ENTER' key ------------------#

# From Utility bar search component
When(/^clicks the keyboard enter key on the utility bar search$/) do
  within(:xpath, $PATH['dc_search_utilitybar']) do
    find(:xpath, $PATH['dc_search_utilitybar']).native.send_keys(:return)
  sleep 4
  end
end

# From Search Results page search box component
When(/^clicks the keyboard enter key from the search box$/) do
  within(:xpath, $PATH['dc_search_box']) do
  find(:xpath, $PATH['dc_search_box_field']).native.send_keys(:return)
  sleep 4
end
end


#------------------ COMMON VALIDATION ------------------#

#------------------ validation of successful search result: ------------------#


Then(/^the search results returns the correct "([^"]*)" term$/) do |query|
sleep 4
begin
  within(:xpath, $PATH['dc_search_results_content_area']) do
    within(:xpath, $PATH['dc_search_success_results_query']) do
    expect(page).to have_content((query))
  end
  end
  rescue
    expect(page).to have_content("Results for \""+query)
  end
end

#------------------ validation of Error search result: ------------------#

Then(/^the search results returns the error message "([^"]*)"$/) do |message|
sleep 4
  within(:xpath, $PATH['dc_search_results_content_area']) do
    within(:xpath, $PATH['dc_search_results_failure']) do
      expect(page).to have_content((message))
    end
  end
end

#------------------ search result from Search box component in page ------------------#

Then(/^the "([^"]*)" URL contains the "([^"]*)", the query: "([^"]*)" and the sn: "([^"]*)"$/) do |site, page2, query, sn|
#Then(/^the URL contains the "([^"]*)", the query: "([^"]*)" and the sn: "([^"]*)"$/) do |page, query, sn|
# URL will look like: .../qa-automation/search-results?qt=Maya&sn=en_US&p=0
  url = Env_Url.environment_links(site)
#  expect(page).to have_current_path('/'+(page)+'?qt='+(query)+'&sn='+(sn)+'&p=0')
  current_url.should == (url)+(page2)+'?qt='+(query)+'&sn='+(sn)+'&p=0'
end



#------------------ validation of correct URL format ------------------#

### search result from Utility bar in Nav

Then(/^the "([^"]*)" URL contains the "([^"]*)", the sn: "([^"]*)" and the query: "([^"]*)"$/) do |site, page2, sn, query|
  url = Env_Url.environment_links(site)
  current_url.should == (url)+(page2)+'?sn='+(sn)+'&qt='+(query)+'&p=0'
end



#------------------ OTHER STEPS FOR PROD SCENARIO ------------------#

Given(/^the user is on the Prod home page$/) do
  visit($BASE_URL_PROD)
end


# https://www.autodesk.com/search?sn=en_US&qt=autocad&p=0
Then(/^the PROD URL contains the "([^"]*)" and the "([^"]*)"$/) do |sn, query|
expect(page).to have_current_path('/search'+'?sn='+(sn)+'&qt='+(query)+'&p=0')
end

#---------------------------- END ----------------------------#
