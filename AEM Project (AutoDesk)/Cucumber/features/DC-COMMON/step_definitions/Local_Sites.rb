Given(/^the user navigates to the site "([^"]*)"$/) do |local_site|
  url = Env_Url.environment_links(local_site)
  visit(url+"/?autodesk-internal-preview=true")
end

Given(/^the user navigates to LatinoAmerica site "([^"]*)"$/) do |local_site|
  visit($LATINOAMERICA_URL+(local_site))
end

Then(/^the page load without returning a 404$/) do
  expect(title).to_not eq('404')
end
