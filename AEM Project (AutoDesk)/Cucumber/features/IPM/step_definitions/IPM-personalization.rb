
Given(/^I am on IPM_Url "([^"]*)"$/) do |page|
  visit($IPM_URL.to_s+page.to_s)
  sleep 10
end

Then(/^subscribe text as "([^"]*)"$/) do |subscribe_text|
    find(:xpath,$IPM_XPATH['subscribe-text']).text.should match(subscribe_text)
end

Then(/^default GB as "([^"]*)"$/) do |default_GB|
    find(:xpath,$IPM_XPATH['default-GB']).text.should match(default_GB)
end

When(/^user checks window sizing servlet for "([^"]*)" with "([^"]*)"$/) do |page_type,url|
  
  
  source= $IPM_URL.to_s+url.to_s
  puts source
  response = HTTParty.get(source)  #verify option to disable SSL verification;
  @data_hash = JSON.parse(response.body)
  @responseCodepds = response.code
  

end
Then(/^window sizing servlet should return size of "([^"]*)" and "([^"]*)"$/) do |size_height,size_width|

  pram1 = "height"
  pram2 = "width"

  expect(@data_hash.fetch(pram1).to_s).to eq(size_height)
  expect(@data_hash.fetch(pram2).to_s).to eq(size_width)
  expect(@responseCodepds.to_s).to eq("200")
  

end