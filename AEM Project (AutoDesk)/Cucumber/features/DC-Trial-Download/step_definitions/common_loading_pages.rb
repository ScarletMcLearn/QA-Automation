
Given(/^I am on the trial page "([^"]*)"$/) do |page|
  visit($BASE_URL+(page))
  sleep 5
end

Given(/^I am on the trial MAC page "([^"]*)"$/) do |page|
  visit($BASE_URL+(page))
  sleep 5
end

# for local sites

Given(/^I am on a "([^"]*)" "([^"]*)"$/) do |localsite, trialpage|
  url = Env_Url.environment_links(localsite)
  visit(url+trialpage)
  expect(title).to_not eq('404')
  sleep 5
end


Given(/^I am on a "([^"]*)" page "([^"]*)"$/) do |localsite, page|
  url = Env_Url.environment_links(localsite)
  visit(url+page)
  expect(title).to_not eq('404')
  sleep 5
end
