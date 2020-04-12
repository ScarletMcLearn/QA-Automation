When(/^the test data is posted into the reseller affiliate table using "([^"]*)", "([^"]*)", "([^"]*)", "([^"]*)"$/) do |id, page, plc, email|
  @response = HTTParty.post($PDS_BASE_AEM_URL+"/affiliateSubmission",
:body => {
  "affiliateId": id,
  "submissionDate": DateTime.now,
  "pageName": page,
  "plc": plc,
  "email": email
}.to_json,
:headers => { 'Content-Type' => 'application/json'} )
end

Then(/^the response should be (\d+)$/) do |status|
  expect(@response.code.to_s).to eq(status)
 end
