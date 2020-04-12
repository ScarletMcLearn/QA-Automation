#-------------- FOR ALL LOCAL SITES --------------#

# Example: Geo-popup.feature: When the user navigates to ".com" "/qa-automation/home"
# Example: Subscribe-Redirect.feature: When the user navigates to ".com" "<subscribe_page>"


Given(/^the user navigates to "([^"]*)" "([^"]*)"$/) do |site, page|
  url = Env_Url.environment_links(site)
  visit(url+page)
#  expect(title).to_not eq('404')
  sleep 5
  if((url).include?("pt"))
      eprivacy_yes_to_all(site)
  end
  sleep 4
end


Given(/^the user navigates to the "([^"]*)" "([^"]*)"$/) do |site, page|
  url = Env_Url.environment_links(site)
  visit(url+page)
  expect(title).to_not eq('404')
  sleep 5
  if((url).include?("pt"))
      eprivacy_yes_to_all(site)
  end
end


#-------------- .COM ONLY --------------#

# Example: Given user is on a DOTCOM page: "/qa-automation/autocad"

Given(/^user is on a DOTCOM page: "([^"]*)"$/) do |page|
  visit($BASE_URL+(page))
    expect(title).to_not eq('404')
end


Given(/^the user navigates to the Dotcom page "([^"]*)"$/) do|page|
  visit($BASE_URL_SHORT+'.com'+(page))
  sleep 3
  browser = Capybara.current_session.driver.browser
  browser.manage.delete_all_cookies
  sleep 1
  # set up four see cookie
  browser.manage.add_cookie :name => "_4c_", :value => "{'v2':-2,'v1':1,'rid':'d036702-53702257-2645-8fd6-921ea','to':3,'c':'.autodesk.com','pv':1,'lc':{'d0':{'v':1,'s':true}},'cd':0,'sd':0,'l':'en','i':-1}"
  visit($BASE_URL_SHORT+'.com'+(page))
  sleep 2
  expect(title).to_not eq('404')
end


#-------------- LATINOAMERICA --------------#

Given(/^a user on LatinoAmerica site "([^"]*)"$/) do |page|
  visit($LATINOAMERICA_URL+(page))
  expect(title).to_not eq('404')
end

Given(/^the user navigates to LatinoAmerica site page "([^"]*)"$/) do |page|
  visit($LATINOAMERICA_URL+(page))
  expect(title).to_not eq('404')
end

#---------------- Checking if page exists or not ----------------#


Given(/^the "([^"]*)" exists on "([^"]*)"$/) do |page, localsite|
    url = Env_Url.environment_links(localsite)
    visit(url+page)
    expect(title).to_not eq('404')
end


Given(/^the "([^"]*)" does not exist on "([^"]*)"$/) do |page, localsite|
    url = Env_Url.environment_links(localsite)
    visit(url+page)
    expect(title).to eq('404')
end


Given(/^the "([^"]*)" exists on latinoamerica site$/) do |page|
    visit($LATINOAMERICA_URL+(page))
    expect(title).to_not eq('404')
end
