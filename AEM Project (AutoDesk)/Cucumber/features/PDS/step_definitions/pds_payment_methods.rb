=begin 
# function to validate that the payment methods are displayed correctly and in proper sequence in the PDS json
Then(/^validate that the correct payment methods are displayed in the correct sequence$/) do

hash_card_CA_US_SG = {
				"visa"		 		=> 1,
				"mastercard"		=> 2,
				"americanexpress"	=> 3,
				"discover"			=> 4,
				"paypal"			=> 5
			}
hash_card_AU_NZ_JP= {
				"visa"		 		=> 1,
				"mastercard"		=> 2,
				"americanexpress"	=> 3,
				"jcb"				=> 4,
				"paypal"			=> 5 
			}

hash_card_IN_KR_TR = {
				"visa"		 		=> 1,
				"mastercard"		=> 2 
			}

hash_card_BR= {
				"visa"		 		=> 1,
				"paypal"			=> 2
			}

hash_card_MX_RU = {
				"visa"		 		=> 1,
				"mastercard"		=> 2,
				"paypal"			=> 3
			}
hash_card_REM = {
				"visa"		 		=> 1,
				"mastercard"		=> 2,
				"americanexpress"	=> 3,
				"discover"			=> 4,
				"cartebleue"		=> 5,
				"cartasi"			=> 6,
				"dankort"			=> 7,
				"paypal"			=> 8
			}
hash_card = Hash.new
	case @data_hash['countryCode']
		#puts "inside case"
		when 'CA','US','SG'
			hash_card = hash_card_CA_US_SG
		when 'AU','NZ','JP'
			hash_card = hash_card_AU_NZ_JP
		when 'IN','TR','KR'
			hash_card = hash_card_IN_KR_TR
		when 'BR'
			hash_card = hash_card_BR
		when 'MX','RU'
			hash_card = hash_card_MX_RU
		else
			hash_card = hash_card_REM
	end	
paymentmethods = @data_hash['paymentMethods']
index_val = Array.new
paymentmethods.each do |cardtype|
	if hash_card.has_key?(cardtype['name']) then
		index_val.push(hash_card[cardtype['name']])
	else
		puts "Paymenttype Not found" + cardtype['name']
		expect(4).to eq(3)
	end
end
expect(index_val).to eql(index_val.sort)
end
=end

# Function to validate if the number of payment methods available in the PDS json matchs with the number passed to the function
Then(/^the correct number "([^"]*)" of payment options are displayed\.$/) do |options|
  #puts "\n size of the array is ---"
  number_of_options = @data_hash['paymentMethods'].count
  expect(number_of_options).to eq(options.to_i)
end



# Function to validate that the payments method is not available in the PDS json when app key is SRP
Then(/^validate that the payment methods are not displayed\.$/) do
	paymentmethods = @data_hash['paymentMethods']
	expect(paymentmethods).to eq(nil)

end


Then(/^validate that the correct "([^"]*)" is displayed for the "([^"]*)" are displayed\.$/) do |icon_url, pay_method|
  paymentmethods = @data_hash['paymentMethods']
  card_found =0
  paymentmethods.each do |cardtype|
  	if (cardtype['name'] == pay_method)
  		expect(cardtype['iconUrl']).to eq(icon_url)
  		card_found =1
  	end
  end
 	if (card_found == 0)
  		expect("payment_method not found").to eq("payment_method found")
  	end
end



Then(/^validate that the correct payment methods "([^"]*)" are displayed in the correct sequence order$/) do |array|
  #array.split(',').each do |entry| 
  #	puts entry[0], "\n"
    iterator =0
    hash_card = Hash.new
   	str1 =array.split(",")
  	#puts str1.count
  	#puts str1[0]
  	while iterator < str1.count  do
   		hash_card[str1[iterator]] = iterator+1
    	iterator =iterator+1
	end
	#puts hash_card

paymentmethods = @data_hash['paymentMethods']
index_val = Array.new
paymentmethods.each do |cardtype|
	if hash_card.has_key?(cardtype['name']) then
		index_val.push(hash_card[cardtype['name']])
	else
		puts "Paymenttype Not found   --> " + cardtype['name']
		expect("payment_method not found").to eq("payment_method found")
	end
end
expect(index_val).to eql(index_val.sort)

end