######################## COMMON STEPS #########################
Then(/^the Subscription benefits accordion will be "([^"]*)"$/) do |accordion_state|
    title = all(:xpath, $PATH['subscription_benefits_accordion_status'])[1]['class']
    expect(title).to include(accordion_state)
end

Then(/^the System requirements accordion will be "([^"]*)"$/) do |accordion_state|
  title = all(:xpath, $PATH['system_requirements_accordion_status'])[1]['class']
  expect(title).to include(accordion_state)
end

Then(/^the Available languages accordion will be "([^"]*)"$/) do |accordion_state|
  title = all(:xpath, $PATH['available_languages_accordion_status'])[1]['class']
  expect(title).to include(accordion_state)
end

######################## SCENARIO 1 #########################

Given(/^the subscription benefits accordion is open$/) do
  find(:xpath, $PATH['subscription_benefits_anchor_link']).click
  sleep 15
end

######################## SCENARIO 2 #########################

When(/^the user clicks on the Subscription benefits anchor link$/) do
  find(:xpath, $PATH['subscription_benefits_anchor_link']).click
  sleep 4
end

######################## SCENARIO 3 #########################

When(/^the user clicks on the System requirements anchor link$/) do
  find(:xpath, $PATH['system_requirements_anchor_link']).click
  sleep 4
end

######################## SCENARIO 4 #########################

When(/^the user clicks on the Available languages anchor link$/) do
  find(:xpath, $PATH['available_languages_anchor_link']).click
  sleep 4
end

######################## SCENARIO 5 #########################

Given(/^the user is on the fsb support buy page containing only three anchor links and two accordions$/) do
  visit($BASE_URL+'/qa-automation/fsb-buy/buy-container/sys-req/anchor-links')
end

Then(/^for this scenario the System requirements accordion will be "([^"]*)"$/) do |accordion_state|
  title = all(:xpath, $PATH['subscription_benefits_accordion_status'])[1]['class']
  expect(title).to include(accordion_state)
end

Then(/^for this scenario the Available languages accordion will be "([^"]*)"$/) do |accordion_state|
  title = all(:xpath, $PATH['system_requirements_accordion_status'])[1]['class']
  expect(title).to include(accordion_state)
end

######################## SCENARIO 6 #########################
# reuse code
######################## SCENARIO 7 #########################

# reuse code
######################## SCENARIO 8 #########################

Given(/^the user is on the fsb support buy page containing only one anchor link and one accordion$/) do
  visit($BASE_URL+'/qa-automation/fsb-buy/buy-container/sys-req/product-info')
end

When(/^the user clicks on the Product Information anchor link$/) do
  find(:xpath, $PATH['product_info_anchor_link']).click
  sleep 4
end
