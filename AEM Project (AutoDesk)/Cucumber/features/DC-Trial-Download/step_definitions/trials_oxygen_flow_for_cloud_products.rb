#----------------------- Common Scenarios for cloud product BIM 360 -------------------#

When(/^User click on Download button$/) do
  find(:xpath,$PATH['trials_download_button_cloud_product']).click
  sleep 5
end

When(/^clicks on next button$/) do
  find(:xpath,$PATH['next_button_bim360']).click
  sleep 4
end

When(/^user clicks on Begin Trial button$/) do
  find(:xpath,$PATH['begin_trials_downloadButton_cloud_products']).click
  sleep 3  
end

When(/^user returns to the "([^"]*)" for "([^"]*)"$/) do |site_cloud , cloud_page |
  visit($BASE_URL_SHORT+(site_cloud)+(cloud_page))
  sleep 2
end

When(/^User redirect to the new tab$/) do
  page.driver.browser.switch_to.window(page.driver.browser.window_handles.last)
  sleep 4
end

#------------------------- An individual or bussiness user------------------------#


When(/^User selects "([^"]*)"$/) do |bim_product|
  
  case bim_product
    when "BIM 360 Docs"
      find(:xpath, $PATH['product_option_bim360']+'[1]/label/input').click
      sleep 3
    when "Bim 360 Glue"
      find(:xpath, $PATH['product_option_bim360']+'[2]/label/input').click
      sleep 3
    when "Bim 360 Field"
      find(:xpath, $PATH['product_option_bim360']+'[3]/label/input').click
      sleep 3
  end
end

When(/^required field has "([^"]*)"$/) do |label|
  expect(find(:xpath,"//li[@class='otfdl-marketo-fields-item'][3]/div[@class='wd-fe-input']/label")).to have_content(label)
end


#------------------------- students and teacher product use ------------------------#

Then(/^User click on go to educatin community button$/) do
  find(:xpath,$PATH['go_to_education_community_button']).click
  sleep 3  
end

Then(/^User sees the page title$/) do
  expect(title).to eq("Free Student Software Downloads | Autodesk Education Community")
  sleep 2
end
