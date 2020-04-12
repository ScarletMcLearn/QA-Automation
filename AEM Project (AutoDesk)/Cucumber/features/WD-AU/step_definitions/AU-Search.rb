#########  Scenario 3  ##########
Then(/^I should see "([^"]*)" under the au searchbox$/) do |au_search_filter_results_label|
find(:xpath, "//*[contains(@class,'wd-uppercase wd-display-inline-block wd-font-16 wd-pl-8')]").text.should match(au_search_filter_results_label)
end

Then(/^I should see software option in the au search filter$/) do
  expect(page).to have_xpath("//*[@name='productName']")
end

Then(/^I should see language option in the au search filter$/) do
  expect(page).to have_xpath("//*[@name='language']")
end

Then(/^I should see year option in the au search filter$/) do
  expect(page).to have_xpath("//*[@name='year']")
end

Then(/^I should see conference option in the au search filter$/) do
  expect(page).to have_xpath("//*[@name='conference']")
end

#########  Scenario 4  ##########
Then(/^page one should be selected by default in the pagination$/) do
expect(page).to have_xpath("//*[contains(@class,'active')]")
end

Then(/^page one should be present in the pagination$/) do
expect(page).to have_xpath("//*[@href ='/qa-automation/au-online/search?p=1']")
end

Then(/^page eight should be present in the pagination$/) do
expect(page).to have_xpath("//*[@href ='/qa-automation/au-online/search?p=8']")
end

Then(/^left and right arrow should be present in the pagination$/) do
    expect(page).to have_xpath("//*[@class='icon-arrow-button']", :count =>2)
end

#########  Scenario 5  ##########
#refer to Basic-Functional-Validation.rb

#########  Scenario 6  ##########
Then (/^in the filter results I set software as '3ds Max Entertainment Creation Suite',language as 'English', year as '2013' and conference 'AU Las Vegas'$/) do
sleep 5
    within(:xpath,"//*[@name='productName']") do
      find(:xpath, "//*[@value='3ds Max Entertainment Creation Suite']").click
      end

    within(:xpath,"//*[@name='language']") do
        find(:xpath, "//*[@value='English']").click
        end

    within(:xpath,"//*[@name='year']") do
          find(:xpath, "//*[@value='2013']").click
          end

    within(:xpath,"//*[@name='conference']") do
          find(:xpath, "//*[@value='Las Vegas']").click
          end
          sleep 3
  end

#########  Scenario 7  ##########
#refer to Basic-Functional-Validation.rb
