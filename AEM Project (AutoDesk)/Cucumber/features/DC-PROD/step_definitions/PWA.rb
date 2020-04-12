
Given(/^user is on pwa site "([^"]*)"$/) do |url|
    visit(url)
end

################ Scenario 1 ################################

Then(/^user can see Need Help section$/) do
    find(:xpath,$PROD_XPATH['need_help']).should be_visible
end

Then(/^user can see Notify section as "([^"]*)"$/) do |notify|
    expect(find(:xpath,$PROD_XPATH['notify']).text).to eq(notify)
end

And(/^user should not see Feedback section$/) do
    page.should have_no_selector(:xpath,$PROD_XPATH['feedback'])
end

################ Scenario 2 ################################

And(/^user goes offline and refresh the page$/) do
    page.evaluate_script("window.location.reload()")
end

And(/^user clicks on Add To Cart button$/) do
    find(:xpath,$PROD_XPATH['add_to_cart']).click
end

Then(/^user is landed to 404 page$/) do
    page.should have_selector(:xpath,$PROD_XPATH['error_page'])
end
