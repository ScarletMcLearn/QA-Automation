# encoding: utf-8

#FOR: PbyL_Currency-Format-LOCAL-SITES.feature


#Given(/^the user is on a "([^"]*)" Product page$/) do |localsite|
#  visit($BASE_URL_SHORT+(localsite)+'/qa-automation/geolocation/product-data-component-1-2014_responsive-general-page')
#  url = Env_Url.environment_links(localsite)
#  visit(url+'/qa-automation/geolocation/product-data-component-1-2014_responsive-general-page')
#  expect(title).to_not eq('404')
#end


Given(/^the user is on a "([^"]*)" Product page "([^"]*)"$/) do |localsite, page|
  url = Env_Url.environment_links(localsite)
  visit(url+page)
  sleep 5
  expect(title).to_not eq('404')
end


When(/^using the correct "([^"]*)"$/) do |currencycode|
  sleep 3
#  expect(find(:xpath,"//*[@data-product-currency-code='adsk-product-qa-automation-product-1-2014-currency-code']")).to have_content(currencycode)
  expect(find(:xpath, "//*[@data-product-currency-code='adsk-product-qa-automation-product-1-2014-currency-code']").text).to include(currencycode)
end

Then(/^the "([^"]*)" Price format for my local country is displayed$/) do |currency|
expect(find(:xpath,"//*[@data-product-buy-price-no-disclaimer='adsk-product-qa-automation-product-1-2014-buy-price-no-disclaimer']")).to have_content(currency)
end


############ SCENARIO 2 #############
Then(/^the Country "([^"]*)" is displayed next to the price$/) do |disclaimer|
  expect(find(:xpath,"//*[@data-disclaimer-country-disclaimer='adsk-disclaimer-country-disclaimer']")).to have_content(disclaimer)
end


############ SCENARIO 3 #############
Then(/^the Price and Disclaimer from my Local Country is displayed "([^"]*)"\.$/) do |pricedisclaimer|
  expect(find(:xpath,"//*[@data-product-buy-price='adsk-product-qa-automation-product-1-2014-buy-price']")).to have_content(pricedisclaimer)
end

#####################################



##### UserLocation-UserSetLocation - Currency - Format.feature #######


When(/^the product-1-2014 page is loaded$/) do
  visit($BASE_URL_SHORT+'.com'+'/qa-automation/geolocation/product-data-component-1-2014_responsive-general-page')
end


###### --> TO DELETE IF NO LONGER USED ANYWHERE!
#Then(/^the "([^"]*)" from my country is displayed$/) do |currency|
#expect(find(:xpath,"//*[@data-product-subscription-price='adsk-product-qa-automation-product-1-2014-subscription-price']")).to have_content(currency)
#end



Then(/^the "([^"]*)" from my country is displayed with the correct format$/) do |currency|
expect(find(:xpath,"//*[@data-product-buy-price='adsk-product-qa-automation-product-1-2014-buy-price']")).to have_content(currency)
end



############### Scenario 9 -@CAD ###########################

When(/^the product-2-2014 page is loaded$/) do
  visit($BASE_URL_SHORT+'.com'+'/qa-automation/geolocation/product-data-component-2-2014_responsive-general-page')
end


Then(/^the "([^"]*)" for CA is displayed with the correct format$/) do |currency|
  expect(find(:xpath,"//*[@data-product-buy-price='adsk-product-qa-automation-product-2-2014-buy-price']")).to have_content(currency)
end
