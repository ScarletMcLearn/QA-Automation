#########  Scenario 1  ##########
Given(/^I am on AU search page "([^"]*)"$/) do |au_search_url|
#visit(au_search_url)
visit($AU_URL+(au_search_url))
sleep 4
end

When(/^I enter text "([^"]*)" in the search field$/) do |search|
    find(:xpath,$PATH['au_search_textbox']).set(search)
end

When(/^hit enter key on the AU search field$/) do
  el = find(:xpath,$PATH['au_search_textbox'])
  el.native.send_keys(:return)
  sleep 4
end

Then(/^I get no result found search header as "([^"]*)"$/) do |search_header|
 find(:xpath,$PATH['au_search_header']).text.should match(search_header)
end

#########  Scenario 2  ##########

Then(/^I should see the Search Result page is loaded based on my query in the url "([^"]*)"$/) do |au_search_url_query|
current_url.should == $AU_URL+(au_search_url_query)
end

Then(/^I should see video thumbnail$/) do
#find(:xpath, "//*[@id='class-catalogue-results']/ul/li/div[1]/div/a/img")
find(:xpath,$PATH['au_search_video_thumbnail'])
end

Then(/^I should see "([^"]*)" in the class header$/) do |search_class_header|
find(:xpath,$PATH['au_search_class_header']).text.should match(search_class_header)
end

Then(/^I should see "([^"]*)" in the au class title$/) do |search_class_title|
find(:xpath,$PATH['au_search_class_title']).text.should match(search_class_title)
end

Then(/^I should see "([^"]*)" in the product section$/) do |search_class_product|
  find(:xpath,$PATH['au_search_class_product']).text.should match(search_class_product)
end

Then(/^I should see "([^"]*)" in the key learning header$/) do |search_class_key_learning_header|
  find(:xpath,$PATH['au_search_class_key_learning_header']).text.should match(search_class_key_learning_header)
end

Then(/^I should see "([^"]*)" in the first learning objective$/) do |search_class_key_learning_obj1|
  find(:xpath,$PATH['au_search_class_key_learning_objective1']).text.should match(search_class_key_learning_obj1)
end

Then(/^I should see "([^"]*)" as page title$/) do |page_title|
expect(page).to have_title page_title
end
