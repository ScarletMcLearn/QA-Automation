######################## COMMON STEPS #########################

When(/^the user clicks on the flyout tab$/) do
  find(:xpath, $PATH['clicking_flyout_tab']).click
  sleep 4
end
######################## SCENARIO 1 #########################

Given(/^the flyout is close$/) do
  find(:xpath, $PATH['flyout_tab_closed']).should be_visible
end

Then(/^the flyout tab should open$/) do
  find(:xpath, $PATH['flyout_tab_open']).should be_visible
end

######################## SCENARIO 2 #########################

Given(/^the flyout is open$/) do
  find(:xpath, $PATH['clicking_flyout_tab']).click
  sleep 2
  find(:xpath, $PATH['flyout_tab_open']).should be_visible
end

Then(/^the flyout tab should close$/) do
  find(:xpath, $PATH['flyout_tab_closed']).should be_visible
end

######################## SCENARIO 3 #########################

Then(/^the flyout text should be "([^"]*)"$/) do |flyout_text|
  sleep 3
  title = find(:xpath, $PATH['flyout_title_caption']).text
  expect(title).to eq(flyout_text)
end

######################## SCENARIO 4 #########################

Then(/^the feedback text should be "([^"]*)"$/) do |arg1|
  sleep 3
  title = find(:xpath, $PATH['feedback_title_caption']).text
  expect(title).to eq(arg1)
end

######################## SCENARIO 5 #########################

Then(/^the closed flyout text should be "([^"]*)"$/) do |flyout_text|
  title = find(:xpath, $PATH['flyout_title_caption']).text
  expect(title).to eq(flyout_text)
end

######################## SCENARIO 6 #########################

Given(/^the user selects Frequently asked questions link$/) do
  find(:xpath, $PATH['flyout_tab_open']).should be_visible
  sleep 4
  find(:xpath, $PATH['link_to_faq_section']).click
  sleep 6
end

Given(/^the user selects the browse by item "([^"]*)"$/) do |arg1|
  find(:xpath,$PATH['browse_by_dropdown']).find(:xpath, 'option[@value="' + arg1 + '"]').select_option
end

Given (/^the user should see the question "([^"]*)"$/) do |arg1|
  title = find(:xpath, $PATH['category_subscription_question']).text
  expect(title).to eq(arg1)
end


Given(/^the user closes the flyout tab$/) do
  find(:xpath, $PATH['clicking_flyout_tab']).click
  sleep 6
end

When(/^the user reopens the flyout tab$/) do
  find(:xpath, $PATH['clicking_flyout_tab']).click
end

######################## SCENARIO 7 #########################

When(/^the user clicks on back button from the FAQ page$/) do
  find(:xpath, $PATH['back_button_from FAQ_page']).click
end

Then(/^the user should see the Frequently asked questions link from the index page$/) do
  find(:xpath, $PATH['link_to_faq_section']).should be_visible
end
######################## SCENARIO 8 #########################

Given(/^the user clicks on the question 'What is the difference between AutoCAD and AutoCAD LT\?'$/) do
  find(:xpath, $PATH['category_all_question1']).click
end

Given(/^the user clicks on the back button from the Q&A page$/) do
  find(:xpath, $PATH['back_button_from_Q_and_A_page']).click
  sleep 6
end

Then(/^the user is back the the FAQ page and can see the question "([^"]*)"$/) do |arg1|
  title = find(:xpath, $PATH['category_all_question1']).text
  expect(title).to eq(arg1)
end

######################## SCENARIO 9 #########################

When(/^the user selects the second browse by item "([^"]*)"$/) do |arg1|
  find(:xpath,$PATH['browse_by_dropdown']).find(:xpath, 'option[@value="' + arg1 + '"]').select_option
  sleep 4
end

Then(/^the user should be shown the comparison related question "([^"]*)"$/) do |arg1|
  title = find(:xpath, $PATH['category_comparison_question3']).text
  expect(title).to eq(arg1)
end

######################## SCENARIO 10 #########################

When(/^the user selects the third browse by item "([^"]*)"$/) do |arg1|
  find(:xpath,$PATH['browse_by_dropdown']).find(:xpath, 'option[@value="' + arg1 + '"]').select_option
  sleep 4
end

Then(/^the user should be shown the product use related question "([^"]*)"$/) do |arg1|
  title = find(:xpath, $PATH['category_product_use_question3']).text
  expect(title).to eq(arg1)
end

######################## SCENARIO 11 #########################

When(/^the user selects the fifth browse by item "([^"]*)"$/) do |arg1|
  find(:xpath,$PATH['browse_by_dropdown']).find(:xpath, 'option[@value="' + arg1 + '"]').select_option
  sleep 4
end

Then(/^the user should be shown the compatibility related question "([^"]*)"$/) do |arg1|
  title = find(:xpath, $PATH['category_compatibility_question1']).text
  expect(title).to eq(arg1)
end

######################## SCENARIO 12 #########################

When(/^the user selects page two from the footer$/) do
  find(:xpath, $PATH['faq_page_footer_link2']).click
  sleep 6
end

Then(/^the user will be able to see on page two the question  "([^"]*)"$/) do |arg1|
  title = find(:xpath, $PATH['category_all_question10']).text
  expect(title).to eq(arg1)
end

######################## SCENARIO 13 #########################

When(/^the user clicks on the Feedback tab$/) do
  find(:xpath, $PATH['feedback_title_caption']).click
  sleep 4
end

Then(/^the qualtrics survey should be displayed$/) do
  expect (find(:xpath, $PATH['qualtrics_survey'])).should be_visible
end
