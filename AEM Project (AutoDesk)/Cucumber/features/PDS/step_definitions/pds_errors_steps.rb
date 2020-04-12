require 'httparty'

HTTParty::Basement.default_options.update(verify: false)

#Given(/^the the PDS url has a valid "([^"]*)"  and "([^"]*)" and "([^"]*)"$/) do |arg1, arg2, arg3|
Given(/^the PDS url has a valid "([^"]*)"  and "([^"]*)" and "([^"]*)"$/) do |product, appKey, country|
#  source = 'http://web-sle-engineering-svc.awsism.autodesk.com/products/'+(product)+'?app='+(appKey)+'&country='+(country)
  source = $PDS_BASE_URL+(product)+'?app='+(appKey)+'&country='+(country)
  response = HTTParty.get(source)
  @data_hash = JSON.parse(response.body)
  @responseCodepds = response.code
  @responseBodypds = response.body
#  @responseStatus = response.status
#  @responseTitle = response.title
#  @responseDetails = response.details
#  @responseMessage = response.message
#  HTTParty.get("http://google.com/blahblah").parsed_response
end

######################## Scenario 1, 2 "Given" Step ##########################

Given(/^the PDS url has an Invalid "([^"]*)"  or "([^"]*)" or "([^"]*)"$/) do |product, appKey, country|
#  source = 'http://web-sle-engineering-svc.awsism.autodesk.com/products/'+(product)+'?app='+(appKey)+'&country='+(country)
  source = $PDS_BASE_URL+(product)+'?app='+(appKey)+'&country='+(country)
#  response = HTTParty.get(source,:verify => false)  #verify option to disable SSL verification;
  response = HTTParty.get(source)
  @data_hash = JSON.parse(response.body)
  @responseCodepds = response.code
end


######################## Scenario 3 "Given" Step ##########################

Given(/^the PDS url has a valid "([^"]*)","([^"]*)","([^"]*)" but an Invalid language parameter "([^
"]*)"$/) do |product, appKey, country, language|
  source = $PDS_BASE_URL+(product)+'?app='+(appKey)+'&country='+(country)+'&language='+(language)
  response = HTTParty.get(source)
  @data_hash = JSON.parse(response.body)
  @responseCodepds = response.code
end

######################## Step for Response code ##########################

Then(/^the response code is equal to "([^"]*)"$/) do |arg1|
  if (@responseCodepds != (arg1.to_i))
    fail(ArgumentError.new('Invalid Response Code'))
       puts @data_hash['message']
 end
end

##################### Step for Error message text ########################

# to combine the 2 scenarios into one
# USE:

Then(/^the error message should equal to "([^"]*)"$/) do |errormsg|

# if (@responseCodepelican != 200)

if (@responseCodepds == 400)
@data_hash['errors'].each do |loop1|
puts loop1
expect(loop1).to eq(errormsg)
end
end


if (@responseCodepds == 404)
expect(@data_hash['message']).to eq(errormsg)
puts @data_hash['message']
end

end

#############################################################################
