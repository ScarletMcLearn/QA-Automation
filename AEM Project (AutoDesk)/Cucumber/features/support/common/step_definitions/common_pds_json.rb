# Common functions related to PDS json

# Function to read the PDS json file and parse it and store it in the @data_hash table and read the response code of the json.

Given(/^the user is on a valid PDS URL for "([^"]*)" and "([^"]*)" and "([^"]*)"$/) do |product, appKey, country|
  source = $PDS_BASE_URL+(product)+'?app='+(appKey)+'&country='+(country)
  response = HTTParty.get(source,:verify => false)  #verify option to disable SSL verification;
  @data_hash = JSON.parse(response.body)
  @responseCodepds = response.code
  @pds_country = country
  if (@responseCodepds != 200)
    fail(ArgumentError.new('Invalid Response Code   ----> '+@responseCodepds.to_s))
  end

 end


Given(/^the user is on a valid PDS URL for "([^"]*)" and "([^"]*)" and "([^"]*)" and "([^"]*)"$/) do |product, appKey, country, language|
  source = $PDS_BASE_URL+(product)+'?app='+(appKey)+'&country='+(country)+'&language='+(language)
  response = HTTParty.get(source,:verify => false)  #verify option to disable SSL verification;
  @data_hash = JSON.parse(response.body)
  @responseCodepds = response.code
  @pds_country = country
  @pds_language = language
  if (@responseCodepds != 200)
    fail(ArgumentError.new('Invalid Response Code   ----> '+@responseCodepds.to_s))
  end
end


# Function to parse and read the pricing level details from the PDS json.

When(/^the "([^"]*)" for PDS are provided$/) do |supportLevel|
  @hash_fsb_pds = Baseclass.fsb_pds_json(@data_hash,supportLevel)
end

Given(/^the number of available terms for the given "([^"]*)" is identified$/) do |supportLevel|
  @hash_fsb_pds = Baseclass.fsb_pds_json(@data_hash,supportLevel)
end




Given(/^the user is on a PDS URL for "([^"]*)" and "([^"]*)" and "([^"]*)"$/) do |product, appKey, country|
  source = $PDS_BASE_URL+(product)+'?app='+(appKey)+'&country='+(country)
  response = HTTParty.get(source,:verify => false)  #verify option to disable SSL verification;
  @data_hash = JSON.parse(response.body)
  @responseCodepds = response.code
  @pds_country = country

 end


# Function to read the PDS json file (with Language param) and parse it and store it in the @data_hash table.
Given(/^the user is on a PDS URL for "([^"]*)" and "([^"]*)" and "([^"]*)" and "([^"]*)"$/) do |product, appKey, country, language|
  source = $PDS_BASE_URL+(product)+'?app='+(appKey)+'&country='+(country)+'&language='+(language)
  response = HTTParty.get(source,:verify => false)  #verify option to disable SSL verification;
  @data_hash = JSON.parse(response.body)
  @responseCodepds = response.code
  @pds_country = country
  @pds_language = language
end

# Function to read the PDS json file (with Quantity param) and parse it and store it in the @data_hash table.
Given(/^the user is on a PDS URL for "([^"]*)" and "([^"]*)" and "([^"]*)" and Quantity "([^"]*)"$/) do |product, appKey, country, quantity|
  source = $PDS_BASE_URL+(product)+'?app='+(appKey)+'&country='+(country)+'&quantity='+(quantity)
  response = HTTParty.get(source,:verify => false)  #verify option to disable SSL verification;
  @data_hash_qty = JSON.parse(response.body)
  @responseCodepds = response.code
  @pds_country = country
end

# Function to read the PDS json file (with language and Quantity param) and parse it and store it in the @data_hash table.
Given(/^the user is on a PDS URL for "([^"]*)" and "([^"]*)" and "([^"]*)" and "([^"]*)" and Quantity "([^"]*)"$/) do |product, appKey, country, language, quantity|
  source = $PDS_BASE_URL+(product)+'?app='+(appKey)+'&country='+(country)+'&language='+(language)+'&quantity='+(quantity)
  response = HTTParty.get(source,:verify => false)  #verify option to disable SSL verification;
  @data_hash_qty = JSON.parse(response.body)
  @responseCodepds = response.code
  @pds_country = country
end

# Function to read the response code and check if it is 200 or not.

 When(/^the PDS response code is equal to (\d+)$/) do |arg1|
  if (@responseCodepds != (arg1.to_i))
    fail(ArgumentError.new('Invalid Response Code   ----> '+@responseCodepds.to_s))

   end
end

When(/^the user is on a PDS URL for "([^"]*)" and "([^"]*)"$/) do |product, country|
  source = $PDS_BASE_URL+(product)+'?&country='+(country)
  response = HTTParty.get(source,:verify => false)  #verify option to disable SSL verification;
  @data_hash = JSON.parse(response.body)
  @responseCodepds = response.code
  @pds_country = country
end

Then(/^the PDS response contains "([^"]*)" for the "([^"]*)" support level$/) do |subscription, supportLevel|
  doesPDSResponseContain = false
  @data_hash['purchaseTypes'].each do |purchaseType|
    if ((purchaseType['supportLevel'] == supportLevel) and (purchaseType['type'] == subscription))
      doesPDSResponseContain = true
    end
  end
  if (doesPDSResponseContain == false)
    fail(ArgumentError.new('PDS Response does not contain '+subscription+' for support level: '+supportLevel))
  end
end

Then(/^the PDS response does not contain "([^"]*)" for the "([^"]*)" support level$/) do |subscription, supportLevel|
  doesPDSResponseContain = false
  @data_hash['purchaseTypes'].each do |purchaseType|
    if ((purchaseType['supportLevel'] == supportLevel) and (purchaseType['type'] == subscription))
      doesPDSResponseContain = true
    end
  end
  if (doesPDSResponseContain == true)
    fail(ArgumentError.new('Did not expect PDS Response to contain '+subscription+' for support level: '+supportLevel))
  end
end


Given(/^the user is on a PDS URL for  product "([^"]*)", appkey "([^"]*)", country "([^"]*)" and Support level "([^"]*)"$/) do |product, appKey, country, supportLevel|
  source = $PDS_BASE_URL+(product)+'?app='+(appKey)+'&country='+(country)+'&supportLevel='+(supportLevel)
  response = HTTParty.get(source,:verify => false)  #verify option to disable SSL verification;
  @data_hash = JSON.parse(response.body)
  @responseCodepds = response.code
end



Given(/^the user is on a PDS URL for  product "([^"]*)", appkey "([^"]*)", country "([^"]*)" and term "([^"]*)"$/) do |product, appKey, country, term|
  source = $PDS_BASE_URL+(product)+'?app='+(appKey)+'&country='+(country)+'&term='+(term)
  response = HTTParty.get(source,:verify => false)  #verify option to disable SSL verification;
  @data_hash = JSON.parse(response.body)
  @responseCodepds = response.code
end



Given(/^the user is on a PDS URL for  product "([^"]*)", appkey "([^"]*)", country "([^"]*)", support level "([^"]*)" and term "([^"]*)"$/) do |product, appKey, country, supportLevel, term|
  source = $PDS_BASE_URL+(product)+'?app='+(appKey)+'&country='+(country)+'&supportLevel='+(supportLevel)+'&term='+(term)
  response = HTTParty.get(source,:verify => false)  #verify option to disable SSL verification;
  @data_hash = JSON.parse(response.body)
  @responseCodepds = response.code
end



Given(/^the user is on a PDS URL for  product "([^"]*)", appkey "([^"]*)", country "([^"]*)", support level "([^"]*)", term "([^"]*)" and promotion "([^"]*)"$/) do |product, appKey, country, supportLevel, term, promotionid|
  source = $PDS_BASE_URL+(product)+'?app='+(appKey)+'&country='+(country)+'&supportLevel='+(supportLevel)+'&term='+(term)+'&promotionCode='+(promotionid)
  response = HTTParty.get(source,:verify => false)  #verify option to disable SSL verification;
  @data_hash = JSON.parse(response.body)
  @responseCodepds = response.code
end



Given(/^the user is on a PDS URL for  product "([^"]*)", appkey "([^"]*)", country "([^"]*)", support level "([^"]*)" and promotion "([^"]*)"$/) do |product, appKey, country, supportLevel, promotionid|
  source = $PDS_BASE_URL+(product)+'?app='+(appKey)+'&country='+(country)+'&supportLevel='+(supportLevel)+'&promotionCode='+(promotionid)
  response = HTTParty.get(source,:verify => false)  #verify option to disable SSL verification;
  @data_hash = JSON.parse(response.body)
  @responseCodepds = response.code
end



Given(/^the user is on a PDS URL for  product "([^"]*)", appkey "([^"]*)", country "([^"]*)", term "([^"]*)" and promotion "([^"]*)"$/) do |product, appKey, country, term, promotionid|
  source = $PDS_BASE_URL+(product)+'?app='+(appKey)+'&country='+(country)+'&term='+(term)+'&promotionCode='+(promotionid)
  response = HTTParty.get(source,:verify => false)  #verify option to disable SSL verification;
  @data_hash = JSON.parse(response.body)
  @responseCodepds = response.code
end

Given(/^the user is on a PDS URL for  product "([^"]*)", appkey "([^"]*)", country "([^"]*)" and promotion "([^"]*)"$/) do |product, appKey, country, promotionid|
  source = $PDS_BASE_URL+(product)+'?app='+(appKey)+'&country='+(country)+'&promotionCode='+(promotionid)
  response = HTTParty.get(source,:verify => false)  #verify option to disable SSL verification;
  @data_hash = JSON.parse(response.body)
  @responseCodepds = response.code
end

Given(/^the PDS response contains promoHeadline and promoSubheadline for ACD 1-Year and 3-Year$/) do
  source = $PDS_BASE_URL+'ACD?country=US&language=en&term=1-YEAR'
  response = HTTParty.get(source,:verify => false)  #verify option to disable SSL verification;
  @data_hash = JSON.parse(response.body)
  @data_hash['purchaseTypes'].each do |purchaseType|
    purchaseType['billingPlans'].each do |billingPlan|
      expect(billingPlan['promotion']['promoHeadline']).to eq('25% off')
      expect(billingPlan['promotion']['promoSubHeadline']).to eq('Buy now and save on ACAD 1YR and 3YR')
    end
  end
end


# Function to read the PDS json file (with Quantity param and lang param) and parse it and store it in the @data_hash table.
Given(/^the user is on a PDS URL for "([^"]*)" and "([^"]*)" and Language "([^"]*)" and Quantity "([^"]*)"$/) do |product, country, language, quantity|
  source = $PDS_BASE_URL+(product)+'?country='+(country)+'&language='+(language)+'&quantity='+(quantity)
  response = HTTParty.get(source,:verify => false)  #verify option to disable SSL verification;
  @data_hash = JSON.parse(response.body)
  @responseCodepds = response.code
  @pds_country = country
  @pds_language = language
end

# Function to read the PDS json file (with Promocode param and lang param) and parse it and store it in the @data_hash table.
Given(/^the user is on a PDS URL for "([^"]*)" and "([^"]*)" and "([^"]*)" and Promotion Code "([^"]*)"$/) do |product, country, language, promocode|
  source = $PDS_BASE_URL+(product)+'?country='+(country)+'&language='+(language)+'&promotionCode='+(promocode)
  response = HTTParty.get(source,:verify => false)  #verify option to disable SSL verification;
  @data_hash = JSON.parse(response.body)
  @responseCodepds = response.code
  @pds_country = country
  @pds_language = language
end


# Function to read the PDS json file (with term param and lang param) and parse it and store it in the @data_hash table.
Given(/^the user is on a PDS URL for "([^"]*)" and "([^"]*)" and "([^"]*)" and Term "([^"]*)"$/) do |product, country, language, term|
  source = $PDS_BASE_URL+(product)+'?country='+(country)+'&language='+(language)+'&term='+(term)
  response = HTTParty.get(source,:verify => false)  #verify option to disable SSL verification;
  @data_hash = JSON.parse(response.body)
  @responseCodepds = response.code
  @pds_country = country
  @pds_language = language
end
