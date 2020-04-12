# Common functions related to Search API

# Function to read the DR json file and parse it and store it in the @data_hash_dr table and read the response code of the json.

Given(/^the user sends request with "([^"]*)"$/) do |parameters|
  url = $BASE_URL + "/qa-automation/fsb-buy/buy-container/sys-req.contenthub.json?" + parameters
  response = HTTParty.get(url, :verify => false) #verify option to disable SSL verification;
  @metadata = JSON.parse(response.body)
end

Then(/^the API returns (\d+) results$/) do |number|
  temp = Baseclass.metadataResults(@metadata)
  expect(number).to eq(temp.to_s)
end

Then(/^the metadata result has pds information$/) do
  temp = Baseclass.metadataPdsInfo(@metadata)
  expect(temp).to eq(true)
end