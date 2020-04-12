
# Function to compare the pricing source key received from the Pds Json to the pricing source key passed in the feature file.
Then(/^the pricing source key should be "([^"]*)"$/) do |pricingSource|

pdsPricingSrc = @data_hash['pricingSource']
expect(pdsPricingSrc).to eq(pricingSource)
  
end

Then(/^the applicationKey is blank$/) do
	#puts @data_hash['applicationKey']
  expect(@data_hash['applicationKey']).to eq('')
end