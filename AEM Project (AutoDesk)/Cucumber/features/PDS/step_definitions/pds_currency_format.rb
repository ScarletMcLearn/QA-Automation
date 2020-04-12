


# to Validate the currency in the PDS json file
Then(/^validate that the correct Currency "([^"]*)" for the Local Country is displayed$/) do |currency|
 expect(@data_hash['currency']).to eq(currency)
 end


Then(/^the correct amount is formatted as expected: "([^"]*)"$/) do |currencyformat|
  expect(@data_hash['currencyFormat']['pattern']).to eq(currencyformat)
end



