Given(/^I am on fusion page "([^"]*)"$/) do |url|
  visit($BASE_URL+(url))
  sleep 3
end
