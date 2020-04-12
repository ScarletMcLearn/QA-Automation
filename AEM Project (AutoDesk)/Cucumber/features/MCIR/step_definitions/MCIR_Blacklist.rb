When(/^user visits json page "([^"]*)"$/) do |url|
  visit($BASE_URL+(url))
  sleep 5
end

Then(/^user verifies that sites "([^"]*)" and "([^"]*)" are listed$/) do |site1, site2|
  expect(page).to have_content(site1)
  expect(page).to have_content(site2)
end

When(/^user visits page "([^"]*)"$/) do |url|
  visit($BASE_URL+(url))
  sleep 5
end

Then(/^user verifies the all links does not have target URL$/) do
  within(:xpath,"//div[@class='text section']/p[1]") do
    should_not have_link(href: "")
    end
end

Then(/^user verifies the all links have target URL$/) do
  within(:xpath,"//div[@class='text section']/p[1]") do
    should have_link(href: "https://test.com")
  end
  within(:xpath,"//div[@class='text section']/p[2]") do
    should have_link(href: "https://test.com/childpage1")
  end
  within(:xpath,"//div[@class='text section']/p[3]") do
    should have_link(href: "https://www.test.com")
  end
  within(:xpath,"//div[@class='text section']/p[4]") do
    should have_link(href: "https://www.test.com/childpage2")
  end
end
