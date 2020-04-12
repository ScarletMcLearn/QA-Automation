
# Common functions related to Pelican json

# Function to read the Pelican json file and parse it and store it in the @data_hash_pelican table and read the response code of the json.

 Given(/^the user is on a Pelican URL for "([^"]*)" and "([^"]*)" and "([^"]*)"$/) do |product, country, store|
#  source1 = 'https://cart-stg.aws.autodesk.com/services/v1/offerings?store='+(store)+'&productline='+(product)+'&country='+(country)
  source1 = $PELICAN_BASE_URL+'store='+(store)+'&productline='+(product)+'&country='+(country)+'&qty=1'
  response1 = HTTParty.get(source1,:verify => false)  #verify option to disable SSL verification;
  @data_hash_pelican = JSON.parse(response1.body)
  @responseCodepelican = response1.code
  @pelican_country = country
 end


# Function to read the response code and check if it is 200 or not.
When(/^the Pelican response code is equal to (\d+)$/) do |arg1|
  if (@responseCodepelican != (arg1.to_i))
    fail(ArgumentError.new('Invalid Response Code '+ @responseCodepelican.to_s))
  end
end

When(/^the Pelican response contains "([^"]*)" for "([^"]*)" support level$/) do |subscription, supportLevel|
  doesPelicanResponseContain = false
  @data_hash_pelican['items'][subscription].each do |billingPlan|
    if(billingPlan['supportLevel'] == supportLevel)
      doesPelicanResponseContain = true
    end
  end
  if (doesPelicanResponseContain == false)
    fail(ArgumentError.new('Pelican Response does not contain '+subscription+' for support level: '+supportLevel))
  end
end
