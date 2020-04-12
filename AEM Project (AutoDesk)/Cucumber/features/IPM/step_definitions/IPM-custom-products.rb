
PARAMS_CUSTOM = "lang=en-US&country=US&link=clic://frame?value%3D%7b%22closeFrame%22:true%2c%22width%22:860%2c%22height%22:500%2c%22url%22:%22https://ipp-stg.aws.autodesk.com/r?userId%3DPXGARVTH6WYN%26country%3DUS%26subId%3D2457871%26partner%3Dclic%26timestamp%3D2015-12-04T19%253A48%253A23Z%26signature%3DyAQ72zYXtoxWXNjOqK1zLev6FZfeuPGFtNEk3ilf7NQ%25253D%22%7d&type=flyout&prodKey=923G1&prodKeyVer=2015.0.0.F&featureId=mayalt&prodName=Maya+LT&licenseType=TRL"

When (/^I am on IPM page as "([^"]*)"$/) do |page|
  visit($IPM_URL.to_s+(page.to_s)+PARAMS_CUSTOM.to_s)
  sleep 5
end

Then(/^page vertical breakpoint text as "([^"]*)"$/) do |page_brkpnt|
    find(:xpath,$IPM_XPATH['brkpoint-text']).text.should match(page_brkpnt)
end