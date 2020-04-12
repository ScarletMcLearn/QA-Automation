
Given(/^an AEM page that makes one or more requests to PDS$/) do
	visit($BASE_URL_SHORT+'.com/qa-automation/pds/pl-3895') do
  		expect(page).to have_current_path
	end
end

When(/^the first request starts$/) do
  pending # Write code here that turns the phrase above into concrete actions
end

Then(/^a request complete event is triggered$/) do
  pending # Write code here that turns the phrase above into concrete actions
end

When(/^an individual PDS request is complete$/) do
  pending # Write code here that turns the phrase above into concrete actions
end

Then(/^information about the progress \(quantity of completed requests and total requests is available\)$/) do
  pending # Write code here that turns the phrase above into concrete actions
end

When(/^all requests are complete$/) do
  pending # Write code here that turns the phrase above into concrete actions
end