
PARAMS_GEO = "daysLeft=3&type=flyout&release=2015&licenseType=TRL&link=clic%3A%2F%2Fframe%3Fvalue%3D%7B%22closeFrame%22%3Atrue%2C%22width%22%3A860%2C%22height%22%3A500%2C%22url%22%3A%22http%3A%2F%2Fipp-dev.aws.autodesk.com%2Fr%3FuserId%3DAGGGJBJ2MVTJ%26country%3DUS%26subId%3D2015793%26partner%3Dclic%26timestamp%3D2015-03-05T00%3A13%3A14Z%26signature%3DUwQOyvddKhpQJuW%252FRkW7pvLl48%252BsiHHzRkJ6g%252BKF8S4%253D%22%7D"

When(/^I am on IPM_Links page with "([^"]*)" and "([^"]*)"$/) do |page, parameter|
  final_url = $IPM_URL.to_s+(page.to_s)+PARAMS_GEO.to_s+parameter.to_s
  visit(final_url)
  sleep 10
end

And(/^I should see the price text as "([^"]*)"$/) do |price_text|
 find(:xpath,$IPM_XPATH['price'],:visible=>true).text.should match(price_text)
end