## Common method

Given(/^user is on page dotorg site$/) do
  visit($DOTORG_URL)
end

Then(/^user is directed to this url "([^"]*)"$/) do |url|
 expect(current_url).to eq($DOTORG_URL+url)
end


When(/^user clicks on "([^"]*)" link$/) do |link|
  click_on(link)
end

##Scenario 1
Then(/^user see page title "([^"]*)"$/) do |page_title|
  expect(title).to eq(page_title)
end
