

# to Validate the reseller url link in the PDS jason file
Then(/^validate the correct resellerurl "([^"]*)" for the Local Country is displayed$/) do |resellerurl|
 expect(@data_hash['resellerUrl']).to eq(resellerurl)
end


################ SCENARIO 3 #####################

Given(/^the user is on a Reseller Page "([^"]*)"$/) do |resellerurl|
  visit(resellerurl)
end

Then(/^I should be redirected to correct domain: "([^"]*)"$/) do |resellerpage|
  current_url.should == (resellerpage)

### below will validate domain only. ie. "http://www.autodesk.de"
#  current_host.should == (resellerpage)
end
