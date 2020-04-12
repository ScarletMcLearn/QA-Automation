Given(/^user is on brandsite page "([^"]*)"$/) do |url|
  final_url = $BRAND_URL.to_s+url
  visit(final_url)
  sleep 10
end

Then(/^user see the page title$/) do
  expect(title).to eq("Our Brand | Autodesk Brand")
end

##Scenario 2

When(/^user select Brand Elements tab from Context Nav$/) do
  first(:xpath,"//*[contains(@class,'nav-link-text')]").click
  end

When(/^user click on Get Started link$/) do
  first(:xpath,"//*[contains(@class,'nav-link nav-link-submenu')]").click
  sleep 3
  end

Then(/^user is redirected to this url "([^"]*)"$/) do |get_started_url|
  sleep 2
  expect(current_url).to eq($BRAND_URL.to_s+get_started_url)
  end

##Scenario 3

When(/^user click Typography from left Nav$/) do
  find(:xpath,"//*[contains(@class,'wd-font-artifakt-element')][text()='Typography']").click
  sleep 3
  end

When(/^user click on Artifakt in applications link$/) do
  page.execute_script('window.scrollTo(0,100)')
  find(:xpath,"//a[contains(text(),'How to use Artifakt')]").click
  sleep 3
  end

Then(/^user is redirected to this path "([^"]*)"$/) do |artifakt_in_applications|
  expect(current_url).to eq($BRAND_URL.to_s+artifakt_in_applications)
  end

