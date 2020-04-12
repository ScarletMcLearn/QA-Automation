

Given (/^I resize the browser to "([^"]*)"$/) do |window_size|
  if (window_size == "large")
    Capybara.page.current_window.resize_to(860, 490)
  end
  if (window_size == "small")
    Capybara.page.current_window.resize_to(150, 120)
  end
  if (window_size == "micro")
    Capybara.page.current_window.resize_to(80, 60)
  end
end

Then(/^I am redirected to given "([^"]*)"$/) do |url|
  find(:xpath,$IPM_XPATH['text-section']).text.should match(url)
end

Then(/^I am redirected to given custom large "([^"]*)"$/) do |url|
  find(:xpath,$IPM_XPATH['text-section_custom_large']).text.should match(url)
end

Then(/^I see days left "([^"]*)"$/) do |days_left|
    find(:xpath,$IPM_XPATH['days-left']).text.should match(days_left)
end

Then(/^I see days left header as "([^"]*)"$/) do |days_left|
    find(:xpath,$IPM_XPATH['days-left-header']).text.should match(days_left)
end