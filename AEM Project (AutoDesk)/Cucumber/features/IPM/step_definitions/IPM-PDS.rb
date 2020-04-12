Given(/^the user navigates to the IPM webpage "([^"]*)"$/) do |url|
    visit($IPM_URL+url)
    sleep 10
end

Then(/^purchase price is identical to the amount with VAT formatted price from PDS json for the specified "([^"]*)" , "([^"]*)" , "([^"]*)" , "([^"]*)" , "([^"]*)" , "([^"]*)"$/) do |quantity, term, plc, appKey, country, supportLevel|
   term_arr=term.split("-")
    billingPeriodCount = term_arr[0]
    billingPeriod = term_arr[1]
    hash_pds_data = Baseclass.pds_json_parse_with_quantity(plc,appKey,country,quantity)
    hash_data = Baseclass.pds_json(hash_pds_data, billingPeriod, billingPeriodCount, supportLevel,country)
    @ui_price = find(:xpath,$IPM_XPATH['purchase_price']).text
    match = ' '
  while(hash_data['amountAfterDiscountWithVatFormatted'].include?(match))
    hash_data['amountAfterDiscountWithVatFormatted'].sub!(match, ' ')
  end
    expect(@ui_price).to eq(hash_data['amountAfterDiscountWithVatFormatted'])
end


Then(/^purchase price is identical to the amount formatted price from PDS json for the specified "([^"]*)" , "([^"]*)" , "([^"]*)" , "([^"]*)" , "([^"]*)" , "([^"]*)"$/) do |quantity, term, plc, appKey, country, supportLevel|
   term_arr=term.split("-")
  	billingPeriodCount = term_arr[0]
  	billingPeriod = term_arr[1]
  	hash_pds_data = Baseclass.pds_json_parse_with_quantity(plc,appKey,country,quantity)
  	hash_data = Baseclass.pds_json(hash_pds_data, billingPeriod, billingPeriodCount, supportLevel,country)
    @ui_price = find(:xpath,$IPM_XPATH['purchase_price']).text
  	match = ' '
	while(hash_data['amountFormatted'].include?(match))
  	hash_data['amountFormatted'].sub!(match, ' ')
	end
  	expect(@ui_price).to eq(hash_data['amountFormatted'])
end