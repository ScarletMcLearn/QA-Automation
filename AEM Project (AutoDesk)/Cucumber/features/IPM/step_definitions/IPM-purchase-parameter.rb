
Given(/^I am on IPM_Url1 "([^"]*)"$/) do |page|
  visit($IPM_URL.to_s+page.to_s)
  sleep 5
end

Then(/^purchase text yes as "([^"]*)"$/) do |purchase_text|
    find(:xpath,$IPM_XPATH['purchase-yes']).text.should match(purchase_text)
end

Then(/^purchase text no as "([^"]*)"$/) do |purchase_text|
    find(:xpath,$IPM_XPATH['purchase-no']).text.should match(purchase_text)
end

And(/^cannot see renewal button$/) do
    find(:xpath,$IPM_XPATH['renewal-button-hide'],:visible =>false)
end

And(/^can see renewal button$/) do
    find(:xpath,$IPM_XPATH['renewal-button'],:visible =>true)
end
