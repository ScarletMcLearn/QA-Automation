

Then(/^the html language "([^"]*)" tags should appear$/) do |lang|
  expect(page).to have_css("html[lang='#{lang}']")
end

Then(/^the ADSK Locale "([^"]*)" tags should appear$/) do |locale|
  expect(page).to have_css("html[data-adsk-locale='#{locale}']")
end

Then(/^the ISO Country "([^"]*)" tags should appear$/) do |country|
  expect(page).to have_css("html[data-iso-country='#{country}']")
end
