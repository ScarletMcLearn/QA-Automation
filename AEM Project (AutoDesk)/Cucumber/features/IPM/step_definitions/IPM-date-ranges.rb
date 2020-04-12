
PARAMS_DATE = "country=US&lang=en-US&link=http%3A%2F%2Fwww.autodesk.com%2Fstore%2Ffusion-360%3Fmktvar004%3Dipd_wwm_amer_us_nc___Fusion360___&type=flyout&release=2015&licenseType=TRL"

When (/^I am on IPM page "([^"]*)"$/) do |page|
  visit($IPM_URL.to_s+(page.to_s)+PARAMS_DATE.to_s)
  sleep 5
end