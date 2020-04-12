
 Given(/^the user navigates to the DC page "([^"]*)" for the "([^"]*)"$/) do |page, localsite|
  sleep 2
  url = Env_Url.environment_links(localsite)
  visit(url+page)
  expect(title).to_not eq('404')
  eprivacy_yes_to_all(localsite)
end

Given(/^user navigates to an external page "([^"]*)"$/) do |url|
  visit(url)
  expect(title).to_not eq('404')
end

When (/^user opens a new tab$/) do
  open_new_window
  page.driver.browser.switch_to.window(page.driver.browser.window_handles.last)
end

When (/^user goes back to previous tab$/) do
  page.driver.browser.switch_to.window(page.driver.browser.window_handles.first)
end
