######################## COMMON STEPS FOR ALL FEATURES #########################

Given(/^the user is on the fsb support buy page "([^"]*)"$/) do |url|
  visit($BASE_URL+url)
  sleep(2)
end
