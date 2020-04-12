

Given(/^the user clicks on the serial number trade-in banner$/) do
  find(:xpath, $PATH['trade_in_banner']).click
end

When(/^the user enters email "([^"]*)" and serial_number "([^"]*)"$/) do |email, serial_number|
  find(:xpath, $PATH['trade_in_email']).set(email)
  find(:xpath, $PATH['trade_in_serial_number']).set(serial_number)
end

When(/^the user moves the focus away$/) do
  find(:xpath, $PATH['trade_in_modal']).click
end

When(/^the user clicks on the Continue button$/) do
  find(:xpath, $PATH['trade_in_continue_button']).click
end

Then(/^user should see the error messages "([^"]*)" and "([^"]*)"$/) do |error_msg1, error_msg2|
  find(:xpath,$PATH['trade_in_email_error_msg']).text.should match(error_msg1)
  find(:xpath,$PATH['trade_in_sn_error_msg']).text.should match(error_msg2)
end

Then(/^user should see the email error message "([^"]*)"$/) do |error_msg1|
  find(:xpath,$PATH['trade_in_email_error_msg']).text.should match(error_msg1)
end

Then(/^the user should see the form closed$/) do
  should have_selector(:xpath, $PATH['trade_in_banner_inactive'])
end

And(/^the user clicks on the serial number trade-in banner icon$/) do
  find(:xpath, $PATH['trade_in_banner_icon']).click
end

Then(/^the user should see the banner link as static text$/) do
  should have_selector(:xpath, $PATH['trade_in_banner_inactive'])
end

Then(/^the user should see the banner headline text as "([^"]*)"$/) do |banner_headline_text|
  expect(find(:xpath,"//h4[@class='snti-title']").text.should match(banner_headline_text))
end

Then(/^the user should see the banner description text as "([^"]*)"$/) do |banner_description_text|
  expect(find(:xpath,"//div[@class='snti-description']/p").text.include?(banner_description_text))
end

Then(/^the user should see the terms and conditions link text as "([^"]*)"$/) do |terms_and_conditions_link_text|
  find(:xpath, $PATH['trade_in_T&CLinkText']).text.should match(terms_and_conditions_link_text)
end

Then(/^the user should see the banner icon not as a link$/) do
  should have_selector(:xpath, $PATH['trade_in_banner_icon_inactive'])
end
#-----------------------form data validation ------------------------------------

When(/^user sees autodesk logo "([^"]*)" in header bar of the form$/) do |productlogo|
  expect(page).to have_css("img[src*='#{productlogo}']")
end

When(/^header text is "([^"]*)"$/) do |promo_header|
  within(:xpath, $PATH['trade_in_modal']) do
    find(:xpath, $PATH['trade_in_promo_form_fields']+"h4").text.should match(promo_header)
  end
end

When(/^header description is "([^"]*)"$/) do |promo_Description|
  within(:xpath, $PATH['trade_in_modal']) do
    expect(find(:xpath, $PATH['trade_in_promo_form_fields']+"p").text.should match(promo_Description))
  end
end

When(/^email field label is "([^"]*)"$/) do |user_Email_label|
  within(:xpath, $PATH['trade_in_modal']) do
   expect(find(:xpath, $PATH['trade_in_email_field_label']).text.should match(user_Email_label))
  end
end

When(/^SN trade-in label is "([^"]*)"$/) do |sn_label|
  within(:xpath, $PATH['trade_in_modal']) do
      expect(find(:xpath, $PATH['trade_in_old_SN_field_label']).text.should match(sn_label))
   end
end

Given(/^user sees SN trade-in description text "([^"]*)"/) do |sn_description|
  find(:xpath, $PATH['trade_in_promo_form_SN_description']).text.should match(sn_description)
end

When(/^user clicks on close button$/) do
  find(:xpath, $PATH['trade_in_form_close_button']).click
end

Then(/^user sees the link "([^"]*)"$/) do |sn_banner_link|
  expect(find(:xpath, $PATH['trade_in_banner']).text).to eq(sn_banner_link)
end

When(/^the user clicks on the Undo applied offer button$/) do
  find(:xpath, $PATH['trade_in_undo_applied_offer']).click
end

Then(/^the monthly term has a discount and a promotion description "([^"]*)"$/) do |promo_description|
  price_text = find(:xpath, $PATH['term_1-MONTH_price']).text
  strikethrough_price_text = find(:xpath, $PATH['term_1-MONTH_strikethrough_price']).text
  price = Baseclass.getPriceNumber(price_text)
  strikethrough_price = Baseclass.getPriceNumber(strikethrough_price_text)

  expect(strikethrough_price).to be > price
  expect(find(:xpath, $PATH['term_1-MONTH']).text).to include(promo_description)
end

Then(/^the monthly term has no discount$/) do
  expect(page).not_to have_selector(:xpath, $PATH['term_1-MONTH_strikethrough_price'])
end

Then(/^the 1-YEAR term has a discount and a promotion description "([^"]*)"$/) do |promo_description|
  price_text = find(:xpath, $PATH['term_1-YEAR_price']).text
  strikethrough_price_text = find(:xpath, $PATH['term_1-YEAR_strikethrough_price']).text
  price = Baseclass.getPriceNumber(price_text)
  strikethrough_price = Baseclass.getPriceNumber(strikethrough_price_text)

  expect(strikethrough_price).to be > price
  expect(find(:xpath, $PATH['term_1-YEAR']).text).to include(promo_description)
end

Then(/^the 1-YEAR term has no discount$/) do
  expect(page).not_to have_selector(:xpath, $PATH['term_1-YEAR_strikethrough_price'])
end

Then(/^the 2-YEAR term has a discount and a promotion description "([^"]*)"$/) do |promo_description|
  price_text = find(:xpath, $PATH['term_2-YEAR_price']).text
  strikethrough_price_text = find(:xpath, $PATH['term_2-YEAR_strikethrough_price']).text
  price = Baseclass.getPriceNumber(price_text)
  strikethrough_price = Baseclass.getPriceNumber(strikethrough_price_text)

  expect(strikethrough_price).to be > price
  expect(find(:xpath, $PATH['term_2-YEAR']).text).to include(promo_description)
end

Then(/^the 2-YEAR term has no discount$/) do
  expect(page).not_to have_selector(:xpath, $PATH['term_2-YEAR_strikethrough_price'])
end

Then(/^the 3-YEAR term has a discount and a promotion description "([^"]*)"$/) do |promo_description|
  price_text = find(:xpath, $PATH['term_3-YEAR_price']).text
  strikethrough_price_text = find(:xpath, $PATH['term_3-YEAR_strikethrough_price']).text
  price = Baseclass.getPriceNumber(price_text)
  strikethrough_price = Baseclass.getPriceNumber(strikethrough_price_text)

  expect(strikethrough_price).to be > price
  expect(find(:xpath, $PATH['term_3-YEAR']).text).to include(promo_description)
end

Then(/^the 3-YEAR term has no discount$/) do
  expect(page).not_to have_selector(:xpath, $PATH['term_3-YEAR_strikethrough_price'])
end

Then(/^the user should see "([^"]*)" and "([^"]*)" in native language$/) do |email_text,sn_text|
   expect($BuyPage.tradeInPromotionPopup.trade_in_email_text.text).to include(email_text)
   expect($BuyPage.tradeInPromotionPopup.trade_in_serial_number_text.text).to include(sn_text)
end