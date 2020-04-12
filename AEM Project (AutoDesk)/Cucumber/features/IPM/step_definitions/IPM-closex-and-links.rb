
PARAMS_CLOSE = "daysLeft=3&country=US&lang=en-US&link=clic://frame?value%3D%7b%22closeFrame%22:true%2c%22width%22:860%2c%22height%22:500%2c%22url%22:%22https://ipp-stg.aws.autodesk.com/r?userId%3DPXGARVTH6WYN%26country%3DUS%26subId%3D2457871%26partner%3Dclic%26timestamp%3D2015-12-04T19%253A48%253A23Z%26signature%3DyAQ72zYXtoxWXNjOqK1zLev6FZfeuPGFtNEk3ilf7NQ%25253D%22%7d&type=flyout&release=2015&licenseType=TRL"

When (/^I am on IPM_Links page as "([^"]*)" and "([^"]*)"$/) do |page, parameter|
  final_url = $IPM_URL.to_s+(page.to_s)+PARAMS_CLOSE.to_s+parameter.to_s
  visit(final_url)
  sleep 10
end

And(/^I should (view|hide) close button$/) do |view_or_hide|
  find(:xpath,$IPM_XPATH['close-button'],:visible=> false) if(view_or_hide)=='hide'
  find(:xpath,$IPM_XPATH['close-button'],:visible=> true) if(view_or_hide)=='view'
end