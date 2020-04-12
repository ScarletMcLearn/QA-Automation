# to Validate the Quantity in the PDS json file
Then(/^validate that the Quantity is equal to "([^"]*)"$/) do |quantity|
  expect(@data_hash_qty['quantity']).to eq(quantity)
end


# Function to validate if the Quantity = 1 , when the quantity is not specified in the url.
Then(/^validate the default Quantity is (\d+)$/) do |arg1|
  expect(@data_hash['quantity']).to eq(arg1)
end


# Function to read the amount from PDS  with quantity specified and validate if the value is correct.
Then(/^validate the price is reflected correctly for the  "([^"]*)" , "([^"]*)" and "([^"]*)"$/) do |billingPeriod, billingPeriodCount, supportLevel|
  country = @data_hash_qty['countryCode']
  appkey = @data_hash_qty['applicationKey']
  product =@data_hash_qty['productLineCode']
  quantity = @data_hash_qty['quantity']
  hash_pds_qty = Baseclass.pds_json(@data_hash_qty,billingPeriod, billingPeriodCount, supportLevel,country)

  source = $PDS_BASE_URL+(product)+'?app='+(appkey)+'&country='+(country)
  response = HTTParty.get(source,:verify => false)  #verify option to disable SSL verification;
  data_hash_default_qty = JSON.parse(response.body)
  hash_pds_default_qty = Baseclass.pds_json(data_hash_default_qty,billingPeriod, billingPeriodCount, supportLevel,country)

  amount_withquantity = hash_pds_default_qty['amount'].to_f*quantity.to_i
  if((amount_withquantity.to_s).include? ".")
      amount_withquantity=(amount_withquantity.to_f).round(2)
  end

  if(country != ('US' or 'CA')) # all other Pelican countries under test have VAT
      amountBeforeDiscountWithVat_withquantity = hash_pds_default_qty['amountBeforeDiscountWithVat'].to_f*quantity.to_i
      if((amountBeforeDiscountWithVat_withquantity.to_s).include? ".")
          amountBeforeDiscountWithVat_withquantity=(amountBeforeDiscountWithVat_withquantity.to_f).round(2)
      end
      amountAfterDiscountWithVat_withquantity = hash_pds_default_qty['amountAfterDiscountWithVat'].to_f*quantity.to_i
      if((amountAfterDiscountWithVat_withquantity.to_s).include? ".")
          amountAfterDiscountWithVat_withquantity=(amountAfterDiscountWithVat_withquantity.to_f).round(2)
      end
     amountBeforeDiscountWithVat_within_range = (hash_pds_qty['amountBeforeDiscountWithVat'].to_f).between?((amountBeforeDiscountWithVat_withquantity-2),(amountBeforeDiscountWithVat_withquantity+2))
     amountAfterDiscountWithVat_within_range = (hash_pds_qty['amountAfterDiscountWithVat'].to_f).between?((amountAfterDiscountWithVat_withquantity-2),(amountAfterDiscountWithVat_withquantity+2))
     expect(amountBeforeDiscountWithVat_within_range).to eq(true)
     expect(amountAfterDiscountWithVat_within_range).to eq(true)
  end # end for if (country !=US or CA)
 #expect(hash_pds_qty['amount'].to_f).to eq(amount_withquantity)
  amount_within_range = (hash_pds_qty['amount'].to_f).between?((amount_withquantity-2),(amount_withquantity+2))
  expect(amount_within_range).to eq(true)
end














