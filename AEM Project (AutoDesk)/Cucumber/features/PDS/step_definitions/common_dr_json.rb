# Common functions related to DR json

# Function to read the DR json file and parse it and store it in the @data_hash_dr table and read the response code of the json. 

Given(/^the user is on a DR URL for "([^"]*)" and "([^"]*)" and "([^"]*)"$/) do |product, locale, apiKey|
  #source = 'https://api.digitalriver.com/v1/shoppers/me/products.json?apiKey='+(apiKey)+'&locale='+(locale)+'&externalReferenceId='+(product)+'&expand=product.displayableProduct,product.purchasable,product.pricing,product.variations,product.variations.product.customAttributes.duration,product.variations.product.customAttributes.renewal%20term,product.variations.product.customAttributes.advanced%20support&quantity=1'
  source = 'https://api.digitalriver.com/v1/shoppers/me/products.json?apiKey='+(apiKey)+'&locale='+(locale)+'&externalReferenceId='+(product)+
      '&expand=product.displayableProduct,product.purchasable,product.pricing,product.variations.product.pricing,product.variations,product.variations.product.customAttributes.duration,product.variations.product.customAttributes.renewal%20term,product.variations.product.customAttributes.advanced%20support&quantity=1'
  response = HTTParty.get(source, :verify => false) #verify option to disable SSL verification;
  @data_hash_dr = JSON.parse(response.body)
  @responseCodedr = response.code
end

Given(/^the user is on a DR URL for "([^"]*)" and "([^"]*)" and "([^"]*)" and Quantity "([^"]*)"$/) do |product, locale, apiKey, quantity|
  source = 'https://api.digitalriver.com/v1/shoppers/me/products.json?apiKey='+(apiKey)+'&locale='+(locale)+'&externalReferenceId='+(product)+
      '&expand=product.displayableProduct,product.purchasable,product.pricing,product.variations.product.pricing,product.variations,product.variations.product.customAttributes.duration,product.variations.product.customAttributes.renewal%20term,product.variations.product.customAttributes.advanced%20support&quantity='+(quantity)
  response = HTTParty.get(source, :verify => false) #verify option to disable SSL verification;
  @data_hash_dr = JSON.parse(response.body)
  @responseCodedr = response.code
end

# Function to read the response code and check if it is 200 or not.

When(/^the DR response code is equal to (\d+)$/) do |arg1|
  if (@responseCodedr != (arg1.to_i))
    fail(ArgumentError.new('Invalid Response Code'))

  end
end
