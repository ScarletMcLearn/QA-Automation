

# function to post the json with data using the api

When(/^the test data is posted into the serialnumberpromotions table using the "([^"]*)"$/) do |url|
  @response = HTTParty.post(url, 
:body => {
  "plc": "ACDLT",
  "productName": "AutoCADLT",
  "term": "YEAR_1",
  "firstName": "Sridevi",
  "lastName": "Shah",
  "email": "john.doe@autodesk.com",
  "serialNumber": "123-12345678",
  "userIpAddress": "127.0.0.1",
  "phoneNumber": "123-456-7890",
  "userOptInFlag": "NO",
  "country": "country is EUROPE",
  "affiliateId": "Affliate ID 999",
  "affiliateName": "Affliate name is name today",
  "other": "this is test with char limit of 65.535000",
}.to_json, 
:headers => { 'Content-Type' => 'application/json'} )
end


#function to validate the response of the post call is 201 ( entry created in DB)
Then(/^confirm the response received is (\d+)$/) do |status|
 expect(@response.code.to_s).to eq(status)
end

# function to post the json with data using the api
When(/^the "([^"]*)" is posted for the "([^"]*)" into the serialnumber promotions table using the "([^"]*)"$/) do |data,  field, url|
  @response = HTTParty.post(url, 
:body => {
  field => data
}.to_json, 
:headers => { 'Content-Type' => 'application/json'} )
end


Then(/^confirm the error response received is (\d+)$/) do |status|
  expect(@response.code.to_s).to eq(status)
end