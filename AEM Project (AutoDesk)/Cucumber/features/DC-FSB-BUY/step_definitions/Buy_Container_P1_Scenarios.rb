
# --------- COMMON  -----------#

Given(/^the user navigates to the DC Subscription page "([^"]*)" for the "([^"]*)"$/) do |buypage, localsite|
  url = Env_Url.environment_links(localsite)
  visit(url+buypage)
  expect(title).to_not eq('404')
  sleep 5
  eprivacy_yes_to_all(localsite)
  browser = Capybara.current_session.driver.browser
  browser.manage.delete_all_cookies
  sleep 1
  browser.manage.add_cookie :name => "_4c_", :value => "{'v2':-2,'v1':1,'rid':'d036702-53702257-2645-8fd6-921ea','to':3,'c':'.autodesk.com','pv':1,'lc':{'d0':{'v':1,'s':true}},'cd':0,'sd':0,'l':'en','i':-1}"
  visit(url+buypage)
  sleep 3
  Capybara.page.driver.browser.manage.window.resize_to(1440,900) # fixing for sause labs
  sleep 3
end

When(/^a quantity "([^"]*)" is entered in the Quantity selector in UI$/) do |quantity_to_select|
  first(:xpath, $PATH['quantity_input']).set(quantity_to_select.to_i)
  sleep 5
end

# --------- TERM BOX  -----------#
# --- Scenario 1

Then(/^the Subscription Terms are displayed in the Publisher defined sequence "([^"]*)"$/) do |configured_terms|
  source = $PDS_BASE_URL+'ACD?app=ONLINE&country=US'
  response = HTTParty.get(source,:verify => false)  #verify option to disable SSL verification;
  @data_hash = JSON.parse(response.body)
  @responseCodepds = response.code
  if (@responseCodepds != 200)
    fail(ArgumentError.new('Invalid Response Code   ----> '+@responseCodepds.to_s))
  end
    configured_subscription_term =configured_terms.split(",")
    supportlevel = "ADVANCED"
    @hash_fsb_pds = Baseclass.fsb_pds_json(@data_hash,supportlevel)
	hash_array = @hash_fsb_pds['array_hash']
    i = 1
    configured_subscription_term.each do |publisher_defined_term|
    	hash_array.each do |hash_item|
    		if (publisher_defined_term == hash_item['term']) then
    			term_displayed_in_ui = find(:xpath,$PATH['term_selector']+'/div['+(i.to_s)+']/div[1]/div[1]/h3').text
				expect(term_displayed_in_ui).to eq(publisher_defined_term)
    			#puts "\n"
    			i = i+1
    			break
    		end
    	end
    end
    sleep 2
end

Then(/^the term "([^"]*)" is selected by default$/) do |term_selected_s1|
  within(:xpath,$PATH['term_selected']) do
    find("h3", :text => term_selected_s1 )
   expect(first("h3").text).to eq(term_selected_s1)
  end
#term =  find(:xpath,$PATH['term_selected-2-year'])
#expect(term).to eq(term_selected_s1)
end

Then(/^the price for the selected term is identical to the amount with VAT formatted price from PDS json for the specified "([^"]*)" , "([^"]*)" , "([^"]*)" , "([^"]*)" , "([^"]*)" , "([^"]*)"$/) do |quantity, term, plc, appKey, country, supportLevel|
   term_arr=term.split("-")
    billingPeriodCount = term_arr[0]
    billingPeriod = term_arr[1]
    hash_pds_data = Baseclass.pds_json_parse_with_quantity(plc,appKey,country,quantity)
    hash_data = Baseclass.pds_json(hash_pds_data, billingPeriod, billingPeriodCount, supportLevel,country)
    within(:xpath,$PATH['term_'+term]) do
      @ui_price = first(:xpath,$PATH['term_price']).text
    end
    match = ' '
  while(hash_data['amountAfterDiscountWithVatFormatted'].include?(match))
    hash_data['amountAfterDiscountWithVatFormatted'].sub!(match, ' ')
  end
    expect(@ui_price).to eq(hash_data['amountAfterDiscountWithVatFormatted'])
end

Then(/^the price for the selected term is identical to the amount formatted price from PDS json for the specified "([^"]*)" , "([^"]*)" , "([^"]*)" , "([^"]*)" , "([^"]*)" , "([^"]*)"$/) do |quantity, term, plc, appKey, country, supportLevel|
   term_arr=term.split("-")
  	billingPeriodCount = term_arr[0]
  	billingPeriod = term_arr[1]
  	hash_pds_data = Baseclass.pds_json_parse_with_quantity(plc,appKey,country,quantity)
  	hash_data = Baseclass.pds_json(hash_pds_data, billingPeriod, billingPeriodCount, supportLevel,country)
  	within(:xpath,$PATH['term_'+term]) do
  		@ui_price = first(:xpath,$PATH['term_price']).text
  	end
  	match = ' '
	while(hash_data['amountFormatted'].include?(match))
  	hash_data['amountFormatted'].sub!(match, ' ')
	end
  	expect(@ui_price).to eq(hash_data['amountFormatted'])
end

# ---------SUMMARY DRAWER (Total Box)-----------#
# --- Scenario 2

Given(/^the Quantity selector is displayed in the UI$/) do
  Capybara.using_wait_time 5 do
    expect (first(:xpath, $PATH['quantity_input']).should be_visible)
  end
end

Then(/^Quantity selector is not displayed$/) do
  should have_no_selector(:xpath,$PATH['quantity_input'])
end

Given(/^Support Level selector is not displayed$/) do
  should have_no_selector(:xpath, $PATH['support_container'])
end

Then(/^validate the display of the Qty in Summary Drawer is "([^"]*)" for SRP$/) do |quantity|
  qty =  page.first(:css, ".buy-container-qty").text
  expect(qty).to eq(quantity)
end

Then(/^validate the display of the Qty in Summary Drawer is "([^"]*)"$/) do |quantity|
  qty =  page.find(:xpath, $PATH['quantity_input']).value
  expect(qty).to eq(quantity)
end

Then(/^the total price in the UI is identical to the amount formatted price from PDS json for the specified "([^"]*)" , "([^"]*)" , "([^"]*)" , "([^"]*)" , "([^"]*)" , "([^"]*)"$/) do |quantity, term, product, appKey, country, supportLevel|
  term_arr=term.split("-")
  billingPeriodCount = term_arr[0]
  billingPeriod = term_arr[1]

  hash_pds_data = Baseclass.pds_json_parse_with_quantity(product,appKey,country,quantity)
  hash_data = Baseclass.pds_json(hash_pds_data, billingPeriod, billingPeriodCount, supportLevel,country)

  #price_text = page.find(:xpath, $PATH['buy_container_summary_drawer_container']).first(:xpath,$PATH['summary_drawer_price']).text
  price_text = page.first(:xpath,$PATH['summary_drawer_price']).text

  hash_data['amountFormatted'].tr!(' ',' ')
  price_text.tr!(' ',' ')
  expect(price_text).to include(hash_data['amountFormatted'])
end

Then(/^the total price in the UI is identical to the amount formatted with VAT price from PDS json for the specified "([^"]*)" , "([^"]*)" , "([^"]*)" , "([^"]*)" , "([^"]*)" , "([^"]*)"$/) do |quantity, term, product, appKey, country, supportLevel|
  term_arr=term.split("-")
  billingPeriodCount = term_arr[0]
  billingPeriod = term_arr[1]

  hash_pds_data = Baseclass.pds_json_parse_with_quantity(product,appKey,country,quantity)
  hash_data = Baseclass.pds_json(hash_pds_data, billingPeriod, billingPeriodCount, supportLevel,country)
  #pds_price = hash_data['amountAfterDiscountWithVatFormatted'].split(" €")
  #price_text = page.find(:xpath, $PATH['buy_container_summary_drawer_container']).first(:xpath,$PATH['summary_drawer_price']).text
  price_text = page.first(:xpath,$PATH['summary_drawer_price']).text

  hash_data['amountAfterDiscountWithVatFormatted'].tr!(' ',' ')
  price_text.tr!(' ',' ')
  expect(price_text).to include(hash_data['amountAfterDiscountWithVatFormatted'])
end

# ---------------- CART ----------------- #
# --- Scenario 3

When(/^user selects the Term "([^"]*)"$/) do |term|
  find(:xpath,$PATH['term_'+term]).click
end

When(/^ADD to CART \( CTA \) button is clicked$/) do
  #page.execute_script('window.scrollTo(0,420)')
  #sleep 3
  #page.find(:xpath, $PATH['buy_container_summary_drawer_container']).first(:xpath,$PATH['summary_drawer_cta_button']).click
  if(page.has_xpath?($PATH['summary_drawer_cta_button']))
    page.first(:xpath,$PATH['summary_drawer_cta_button']).click
  end
end

Then(/^user is taken to the cart page$/) do
  sleep 5
  expect(current_url).to include($CART_URL)
end

Then(/^user is taken to the guac cart page$/) do
  sleep 5
  expect(current_url).to include($GUAC_URL)
end

Then(/^the url should contain "([^"]*)"$/) do |keyword|
  sleep 5
  expect(current_url).to include(keyword)
end

Then(/^user is taken to the DR cart page for the "([^"]*)"$/) do |site|
  sleep 5
    url = "https://store.autodesk"+site+"/store"
    dr_store_url = current_host+current_path
    expect(dr_store_url).to include(url)
end

Then(/^the correct subscription details for the selected "([^"]*)" is displayed$/) do |term|
  if page.has_css?('.wd-modal--window')
    find(:xpath,"//*[contains(text(),'Nein danke')]").click
  end
  page.execute_script('window.scrollTo(0,600)')
  find(:css, '.checkout--cart-section--toggleable--header').click
  expect(find(:css, '.checkout--product-bar--info-column--name-sub-column--term-description').text).to eq(term)
end

Then(/^the quantity in cart page for the line item "([^"]*)" is "([^"]*)"$/) do |item_id, quantity|
  ## Add A/B testing
  expect(quantity).to eq(find(:xpath, "//*[@id='checkout--product-bar--info-column--quantities-sub-column--quantity--#{item_id}']").value)
end

Then(/^the price of the product for the displayed quantity is identical to the total price displayed in the subscribe page$/) do
  ## Add A/B testing
   begin
    total_currency = find(:xpath, $PATH['cart_page_product_price']).text
  rescue
    total_currency = find(:css, '.checkout--cart-section--summary--total-price-text').text
  end
  expect(total_currency).to eq(@summary_drawer_price)
end

When(/^the total price is displayed in the summary drawer$/) do
  #price_text = page.find(:xpath, $PATH['buy_container_summary_drawer_container']).first(:xpath,$PATH['summary_drawer_price']).text
  price_text = page.first(:xpath,$PATH['summary_drawer_price']).text

  price_text_arr = price_text.split(" / ")
  @summary_drawer_price = price_text_arr[0]
end

Then(/^the correct subscription details for the selected "([^"]*)" is displayed in the DR cart page$/) do |term|
  expect(find(:xpath, $PATH['dr_cart_page_subscription']).text).to include(term )
end

Then(/^the quantity in DR cart page is "([^"]*)"$/) do |qty|
  expect(find(:xpath, $PATH['dr_cart_page_qty']).value).to eq(qty)
end

Then(/^the price of the DR product for the displayed quantity is identical to the total price displayed in the subscribe page$/) do
  #dr_price = find(:xpath, $PATH['dr_cart_page_product_price']).text
  dr_price = find(:xpath, $PATH['dr_cart_total_price']).text
  arr = dr_price.split(" ")
  expect(@summary_drawer_price).to include(arr[1])
end

# --------------- CART/CART WIDGET-------------------#
# --- Scenario 3b

Then(/^the Visitorid from the local storage is appended to the Add to Cart url in the CTA button$/) do

  visitorid = page.evaluate_script("localStorage.getItem('estoreVisitorId')")

  #addtocartUrl =  page.find(:xpath, $PATH['buy_container_summary_drawer_container']).all(:xpath,$PATH['summary_drawer_cta_button']).first['href']
  addtocartUrl =  page.all(:xpath,$PATH['summary_drawer_cta_button']).first['href']

  expect(addtocartUrl).to include(visitorid)
end

Then(/^the Visitorid in the Add to Cart URL is identical to the visitor id in the Cart widget$/) do
  cartwidgeturl = find(:xpath,$PATH['cart_widget'])['href']
 # addtocartUrl =  find(:xpath,$PATH['summary_drawer_cta_button'])['href']
  #addtocartUrl =  page.find(:xpath, $PATH['buy_container_summary_drawer_container']).all(:xpath,$PATH['summary_drawer_cta_button']).first['href']
  addtocartUrl =  page.all(:xpath,$PATH['summary_drawer_cta_button']).first['href']

  cartwidget_visitorid =cartwidgeturl.split("visitorId=")
  addtocart_visitorid  =addtocartUrl.split("visitorId=")

  #puts "\n\n cartwidget_visitorid --------> ",cartwidget_visitorid[1]
  #puts "\n\n addtocart_visitorid  --------> ",addtocart_visitorid[1]
  expect(addtocart_visitorid[1]).to include(cartwidget_visitorid[1])
end

Then(/^the Visitorid in the Add to Cart URL is identical to the visitor id in the Cart widget for US$/) do
  cartwidgeturl = find(:xpath,$PATH['cart_widget'])['href']
 # addtocartUrl =  find(:xpath,$PATH['summary_drawer_cta_button'])['href']
  #addtocartUrl =  page.find(:xpath, $PATH['buy_container_summary_drawer_container']).all(:xpath,$PATH['summary_drawer_cta_button']).first['href']
  addtocartUrl =  page.all(:xpath,$PATH['summary_drawer_cta_button']).first['href']

  cartwidget_visitorid =cartwidgeturl.split("visitorId=")
  addtocart_visitorid  =addtocartUrl.split("visitorId=")

  #puts "\n\n cartwidget_visitorid --------> ",cartwidget_visitorid[1]
  #puts "\n\n addtocart_visitorid  --------> ",addtocart_visitorid[1]
  expect(addtocart_visitorid[1]).to include(cartwidget_visitorid[1])
end

# --------------- PDS ALERT -------------------#
# --- Scenario 4

Then(/^the alert message container is displayed$/) do
      find(:xpath, $PATH['buy-container-error-container']).should be_visible
end

Then(/^the alert message "([^"]*)" is displayed$/) do |alert_msg|
  within(:xpath, $PATH['buy-container-error-container'] ) do
     should have_content(alert_msg)
  end
end

Then(/^the product name "([^"]*)" is displayed in the buy container header$/) do |productname|
   within(:xpath,$PATH['product_name']) do
      should have_content(productname)
   end
end

Then(/^the product logo "([^"]*)" is displayed in buy container header$/) do |productlogo|
  within(:xpath, "//*[@class='buy-container-product-logo']" ) do
      expect(page).to have_css("img[src*='#{productlogo}']")
  end
end

Then(/^Summary Drawer is not displayed$/) do
  should have_no_selector(:xpath, $PATH['summary_drawer_section'])
end

Then(/^Subscription Terms are not displayed$/) do
  should have_no_selector(:xpath, $PATH['subscription_terms_section'])
end

Then(/^Payment options are not displayed$/) do
 should have_no_selector(:xpath, $PATH['payment_options'])
end

Then(/^Norton Security logo is not displayed$/) do
 should have_no_selector(:xpath, $PATH['norton_logo'])
end


# --------------- PAYMENT OPTIONS -------------------#
# --- Scenario 5

Then(/^Payment options "([^"]*)" are displayed and are in the correct order$/) do |options|
    iterator =0
    itr = 1
    index_val = Array.new
    hash_card = Hash.new
    str1 =options.split(",")
    #puts str1.count
    #puts str1[0]
    option_count =str1.count

    while iterator < option_count  do
      hash_card[str1[iterator]] = iterator+1
      iterator =iterator+1
  end
    #payment_options_path = "//*[@class='buy-container']/ul"

    list = Array.new
    list = find(:xpath,$PATH['payment_options']).all('li')
    payment_options_list_size = list.size

    expect(payment_options_list_size).to eq(option_count)  # validate if the payment options listed in the UI is same as the number of options listed in the feature file

    # to validate the correct sequence of payment order
   while itr <= payment_options_list_size do

      pay_option =find(:xpath,$PATH['payment_options']+"/li["+itr.to_s+"]/img")
      pay_meathod = pay_option['alt']
      #pay_meathod_url = pay_option['src']
      if hash_card.has_key?(pay_meathod) then
        index_val.push(hash_card[pay_meathod])
      itr = itr +1
    else
      #puts "Paymenttype Not found   --> " + pay_meathod
      expect("payment_method "+hash_card.index(itr)  +" not found").to eq("payment_method "+hash_card.index(itr) +" found")
    end
  end
end


# --------------- PROMOTIONS (Discount Prices) -------------------#
# --- Scenario 6



# --- Scenario 7



# --- Scenario 8
Then(/^the promoHeadline "([^"]*)" and promoSubheadline "([^"]*)" provided by the publisher are displayed in the "([^"]*)" term box$/) do |promoHeadline, promoSubheadline, term|
  promoText = find(:xpath,$PATH['term_' + term]).find(:xpath,$PATH['buy_container_promotion']).text
  expect(promoText).to include(promoHeadline + " " + promoSubheadline)
end

# --------------- TRADE-IN PROMOS -------------------#
# --- Scenario 9

Given(/^the serial number trade in option is selected$/) do
  find(:xpath, $PATH['trade_in_promo_term_box']).click
end

Given(/^the Trade\-in\-Offer Form is displayed$/) do
  should have_selector(:xpath, $PATH['trade_in_promo_form'])
end

When(/^"([^"]*)" is entered in the first name field$/) do |first_name|
  find(:xpath, $PATH['trade_in_promo_first_name']).set(first_name)
end

When(/^"([^"]*)" is entered in the last name field$/) do |last_name|
  find(:xpath, $PATH['trade_in_promo_last_name']).set(last_name)
end

When(/^"([^"]*)" is entered in the email field$/) do |email|
  find(:xpath, $PATH['trade_in_promo_email']).set(email)
end

When(/^"([^"]*)" is entered in the serial number field$/) do |serial_number|
  find(:xpath, $PATH['trade_in_promo_serial_number']).set(serial_number)
end

When(/^CTA button is clicked$/) do
  page.execute_script('window.scrollTo(0,300)')
  should have_selector(:xpath, $PATH['summary_drawer_cta_button'])
  #page.find(:xpath, $PATH['buy_container_summary_drawer_container']).first(:xpath,$PATH['summary_drawer_cta_button']).click
  page.first(:xpath,$PATH['summary_drawer_cta_button']).click
end

# --------------- PERSISTENCE -------------------#
# --- Scenario 10

# Function to navigate to a different page
Given(/^user navigates to a different page$/) do
  visit("https://www.google.com")
end

# Function to navigate back to the test page
When(/^user returns to the "([^"]*)" for the "([^"]*)"$/) do |page, localsite|
  visit($BASE_URL_SHORT+(localsite)+(page))
end

Then(/^user selects a PLC "([^"]*)"$/) do |plc_to_select|
  case plc_to_select
    when "AutoCAD"
        find(:xpath, $PATH['plc_selector']+'[1]/label').click
        sleep 1
    when "Maya"
          find(:xpath, $PATH['plc_selector']+'[2]/label').click
        sleep 1
  end
end

Then(/^the term "([^"]*)" is selected$/) do |term_selected_s1|
  within(:xpath,$PATH['term_selected']) do
     expect(first("h3").text).to eq(term_selected_s1)
  end
end

Then(/^the PLC field should have the value "([^"]*)"$/) do |selected_plc|
sleep 5
find(:xpath,$PATH['plc_name']).text.should match(selected_plc)
# commented since not working in automation
#case selected_plc
#    when "AutoCAD"
#          expect(find(:xpath, $PATH['plc_selector']+'[1]/input')).to be_checked
#        sleep 1
#    when "Maya"
#          expect(find(:xpath, $PATH['plc_selector']+'[2]/input')).to be_checked
#        sleep 1
#    end
end

# Function to validate the Quantity displayed in the Quantity field in UI
Then(/^the Quantity "([^"]*)" should be displayed in the Quantity field$/) do |selected_qty|
  expect(find(:xpath, $PATH['quantity_input']).value).to eq(selected_qty)
end

# --------------- LEGAL DISCLAIMERS -------------------#
# --- Scenario 13

Then(/^the appropriate Disclaimer is displayed "([^"]*)"$/) do |legaldisclaimer|
  within(:xpath,$PATH['legal_disclaimer']) do
    should have_content(legaldisclaimer)
  end
end

# --------------- PDS Imposter Promotions -------------------#
# --- Scenario 6, 7 & 8

Then(/^the term box display a "([^"]*)" price with a strike\-through$/) do |regular_price|
  within(:xpath,$PATH['term_selected']) do
      r_term_price = first(:xpath,$PATH['term_box_price_before_discount']).text
      expect(r_term_price).to eq(regular_price)
  end
end

Then(/^a "([^"]*)" price appear on top$/) do |promo_price|
  within(:xpath,$PATH['term_selected']) do
      p_term_price = first(:xpath,$PATH['term_box_price']).text
      expect(p_term_price).to eq(promo_price)
  end
end

When(/^user click on a term with a promotion$/) do
  pending # Write code here that turns the phrase above into concrete actions
end

Then(/^the total price in summary drawer display a "([^"]*)" price with a strike\-through$/) do |regular_price|
  #price_text = page.find(:xpath, $PATH['buy_container_summary_drawer_container']).first(:xpath,$PATH['summary_drawer_price_before_discount']).text
  price_text = page.first(:xpath,$PATH['summary_drawer_price_before_discount']).text
  price_text_arr = price_text.split(" / ")
  r_total_price = price_text_arr[0]
  expect(r_total_price).to eq(regular_price)
end

Then(/^a "([^"]*)" price appear on summary drawer$/) do |promo_price|
  #price_text = page.find(:xpath, $PATH['buy_container_summary_drawer_container']).first(:xpath,$PATH['summary_drawer_price']).text
  price_text = page.first(:xpath,$PATH['summary_drawer_price']).text
  price_text_arr = price_text.split(" / ")
  p_total_price = price_text_arr[0]
  expect(p_total_price).to eq(promo_price)
end

##########################

When(/^user clicks on "([^"]*)"$/) do |arg1|
  #page.find(:xpath, $PATH['buy_container_summary_drawer_container']).first(:xpath,$PATH['summary_drawer_cta_button']).click
  page.first(:xpath,$PATH['summary_drawer_cta_button']).click
end

Then(/^the user is navigated correctly to the reseller page for the "([^"]*)"\.$/) do |site|
  if(site == ".com")
      url = "https://www.autodesk"+site+"/partners/locate-a-reseller"
  else
      url = "https://www.autodesk"+site+"/partners/locate-a-reseller"
  end
  reseller_url = current_host+current_path
  expect(reseller_url).to include(url)
end

########################## cart value #############################

Given(/^the user is on fsb support buy page "([^"]*)"$/) do |url|
  visit($BASE_URL+url)
  sleep(2)
end

Given(/^user can see cart value as "([^"]*)"$/) do |cart_value|
  expect(find(:xpath,$PATH['cart_value']).text).to eq(cart_value)
end

Given(/^user clicks on Add to Cart button$/) do
  page.execute_script('window.scrollTo(0,100)')
  #price_text = page.find(:xpath, $PATH['buy_container_summary_drawer_container']).first(:xpath,$PATH['summary_drawer_cta_button']).click
  price_text = page.first(:xpath,$PATH['summary_drawer_cta_button']).click
#find(:xpath,$PATH['add_to_cart']).click
  sleep (5)
end

And(/^navigates back to demo page$/) do
  page.evaluate_script('window.history.back()')
end

Then(/^user can check cart value as "([^"]*)"$/) do |cart_value|
  expect(find(:xpath,$PATH['cart_value']).text).to eq(cart_value)
end

###################### Product Description #################

Then(/^user should see the product description "([^"]*)"$/) do |description|
  expect(find(:xpath, "//*[@data-automation-id='buy-container-marketing-copy']").text).to eq(description)
end

Then(/^user should be able to see default currency and switch to "([^"]*)"$/) do |dropdown_currency|
  
  expect($SubscribePage.buyContainer.currency_toggle.text).to include('USD')
  $SubscribePage.buyContainer.currency_toggle.click
  sleep 3
  find(:xpath, ".//*[@class='dropdown-item currency-dropdown-item' and contains(text(),'"+dropdown_currency+"')]").click
  
end

Then(/^buy container should have according pricing data and "([^"]*)"$/) do |dropdown_currency|
  sleep 5
  $SubscribePage.buyContainer.monthly_price_type2.each { |price| expect(price.text).to include(dropdown_currency) }

end

Then(/^system should redirect to DR cart with correct quantity and "([^"]*)"$/) do |dropdown_currency|

  expect($DR_CartPage.dr_cart_count.value).to include('1')
  expect($DR_CartPage.selected_currency.text).to include(dropdown_currency)

end

Then(/^validate that the correct icon url is displayed for "([^"]*)"$/) do |term|
  sleep 5
  if(term == "1-MONTH")
    expect(page).to have_xpath("//*[@data-automation-id='buy-container-payment-methods-mastercard']")
    expect(page).to have_xpath("//*[@data-automation-id='buy-container-payment-methods-visa']")
    expect(page).to have_no_selector(:xpath, "//*[@data-automation-id='buy-container-payment-methods-ccavenue']")

  else
    expect(page).to have_xpath("//*[@data-automation-id='buy-container-payment-methods-ccavenue']")
    expect(page).to have_no_selector(:xpath, "//*[@data-automation-id='buy-container-payment-methods-mastercard']")
    expect(page).to have_no_selector(:xpath, "//*[@data-automation-id='buy-container-payment-methods-visa']")
  end

end
