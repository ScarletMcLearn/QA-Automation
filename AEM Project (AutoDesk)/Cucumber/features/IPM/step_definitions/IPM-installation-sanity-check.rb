
PARAMS_SANITY1 = "country=US&lang=en-US&link=http%3A%2F%2Fwww.autodesk.com%2Fstore%2Ffusion-360%3Fmktvar004%3Dipd_wwm_amer_us_nc___Fusion360___&type=flyout&release=2015&closeX=true&licenseType=TRL&daysLeft=1"

PARAMS_SANITY2 = "country=US&lang=en-US&link=http%3A%2F%2Fwww.autodesk.com%2Fstore%2Ffusion-360%3Fmktvar004%3Dipd_wwm_amer_us_nc___Fusion360___&type=flyout&release=2015&licenseType=TRL"

PARAMS_SANITY3 = "country=US&lang=en-US&type=flyout&release=2015&licenseType=TRL"


When (/^I am on IPM_Sanity1_Url "([^"]*)"$/) do |page|
  visit($IPM_URL.to_s+(page.to_s)+PARAMS_SANITY1.to_s)
  sleep 5
end

When (/^I am on IPM_Sanity3_Url "([^"]*)"$/) do |page|
  visit($IPM_URL.to_s+(page.to_s)+PARAMS_SANITY3.to_s)
  sleep 5
end

When (/^I am on IPM_Sanity_Url "([^"]*)"$/) do |page|
  visit($IPM_URL.to_s+(page.to_s))
  sleep 5
end

When (/^I am on IPM_Sanity2_Url "([^"]*)"$/) do |page|
  visit($IPM_URL.to_s+(page.to_s)+PARAMS_SANITY2.to_s)
  sleep 5
end

Then(/^given page is not found$/) do
    page.should have_content 'Error'
end