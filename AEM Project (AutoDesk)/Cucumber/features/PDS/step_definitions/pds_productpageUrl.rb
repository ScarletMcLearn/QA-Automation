
# to Validate the productPageUrl url link in the PDS jason file 
Then(/^validate that the correct productPageUrl "([^"]*)" for the Local Country is displayed$/) do |productPageUrl|
  expect(@data_hash['productPageUrl']).to eq(productPageUrl)
end