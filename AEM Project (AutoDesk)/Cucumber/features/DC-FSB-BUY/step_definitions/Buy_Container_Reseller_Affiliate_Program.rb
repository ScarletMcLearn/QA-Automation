When(/^the user enters email "([^"]*)" in reseller affiliate popup$/) do |email|
  find(:xpath, $PATH['reseller_affiliate_email']).set(email)
end

Then(/^the user should see the reseller logo$/) do
  resellerLogo = find(:xpath, $PATH['reseller_affiliate_logo'])
  expect(resellerLogo['src']).to eq("https://damassets.autodesk.net/content/dam/autodesk/www/products/autodesk-maya/images/badges/Maya-2016-badge-75x75.png")
end

Then(/^the user should see the popup welcome header text as "([^"]*)"$/) do |header|
  find(:xpath, $PATH['reseller_affiliate_welcome_header']).text.should match(header)
end

Then(/^the user should see the popup description text as "([^"]*)"$/) do |description|
  find(:xpath, $PATH['reseller_affiliate_description']).text.should match(description)
end

Then(/^the user should see the popup No Thanks text as "([^"]*)"$/) do |no_thanks|
  find(:xpath, $PATH['reseller_affiliate_no_thanks']).text.should match(no_thanks)
end

When(/^the user clicks on the Agree button$/) do
  find(:xpath, $PATH['reseller_affiliate_agree']).click
end

When(/^the user clicks on the No Thanks button$/) do
  find(:xpath, $PATH['reseller_affiliate_no_thanks']).click
end

When(/^the user clicks on the Close button$/) do
  find(:xpath, $PATH['reseller_affiliate_close']).click
end

Then(/^the invalid email error "([^"]*)" appears$/) do |message|
  find(:xpath,$PATH['reseller_affiliate_invalid_email_error']).text.should match(message)
end

Then(/^the required email error "([^"]*)" appears$/) do |message|
  find(:xpath,$PATH['reseller_affiliate_required_email_error']).text.should match(message)
end
