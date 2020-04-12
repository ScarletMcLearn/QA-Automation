
# Function to parse and read the pricing level details from the PDS json.

When(/^the "([^"]*)" and "([^"]*)" and "([^"]*)" for PDS are provided$/) do |billingPeriod, billingPeriodCount, supportLevel|
  @hash_pds = Baseclass.pds_json(@data_hash,billingPeriod, billingPeriodCount, supportLevel,@pds_country)
end

# Function to parse and read the pricing level details  from the PDS json when quantity is provided.

When(/^the "([^"]*)" and "([^"]*)" and "([^"]*)" with quantity for PDS are provided$/) do |billingPeriod, billingPeriodCount, supportLevel|
  @hash_pds = Baseclass.pds_json(@data_hash_qty,billingPeriod, billingPeriodCount, supportLevel,@pds_country)
end
# Function to parse and read the pricing level details from the Pelican json.

When(/^the "([^"]*)" and "([^"]*)" and "([^"]*)" for Pelican are provided$/) do |billingPeriod, billingPeriodCount, supportLevel|
  @hash_pelican = Baseclass.pelican_json(@data_hash_pelican,billingPeriod, billingPeriodCount, supportLevel,@pelican_country)
end


# Function to parse and read the pricing level details from the dr json.

When(/^the "([^"]*)" and "([^"]*)" for DR are provided$/) do |duration, supportLevel|
 @purchaseflag, @hash_dr = Baseclass.dr_json(@data_hash_dr,duration, supportLevel,@country)
end


# Function to compare the data read from the PDS json and Pelicon Json.

Then(/^the user compares the values in the pricing fields specified "([^"]*)"$/) do |field|
  #puts @hash_pds, @hash_pel, "\n"
  temp = Baseclass.compare_pds_pelican_json_field(@hash_pds,@hash_pelican,field)
  expect(temp).to eq(true)
end

# Function to compare the data read from the PDS json and DR Json.
Then(/^the user compares the values in the DR pricing fields specified "([^"]*)"$/) do |field|
  #puts @hash_pds, @hash_pel, "\n"
 if(@purchaseflag == true)
  	temp = Baseclass.compare_pds_dr_json_field(@hash_pds,@hash_dr,field)
  	expect(temp).to eq(true)
  else
  puts " \n The selected product --> billing plan is not purchasable in DR. \n"	
  end
end

# Function to check that there are duplicated terms in DR Json.
Then(/^there are duplicated terms for "([^"]*)" and "([^"]*)" support in DR$/) do |duration, supportLevel|
  #puts "\nReceived args: #{duration} and #{supportLevel}\n"
  number = Baseclass.dr_count_same_duration_json(@data_hash_dr, duration, supportLevel)
  #puts "\nIn DR: Number of #{supportLevel}/#{duration} = #{number}"
  expect(number).to be > 1
end

# Function to check that there are no duplicated terms in PDS Json.
Then(/^No duplicated term for "([^"]*)", "([^"]*)" and "([^"]*)" support in PDS$/) do |billingPeriod, billingPeriodCount, supportLevel|
  #puts "\nReceived args: #{billingPeriodCount}-#{billingPeriod} and #{supportLevel}\n"
  number = Baseclass.pds_count_same_duration_json(@data_hash, billingPeriod, billingPeriodCount, supportLevel)
  #puts "\nIn PDS: Number of #{supportLevel}/#{billingPeriodCount}-#{billingPeriod} = #{number}"
  expect(number).to eq(1)
end