# coding: utf-8

# to Validate the amount formatted in the PDS json file 
=begin
Then(/^the user validates the amount formated is as per expected\.$/) do
  decimalinamount = "."
  symbol = @data_hash['currencyFormat']['symbol']
  decimal = @data_hash['currencyFormat']['decimal']
  grouping = @data_hash['currencyFormat']['grouping']
  amount = @hash_pds['amount']
  pds_amountformatted =@hash_pds['amountFormatted']

if (@data_hash['countryCode'] !=("JP" or "KR"))
	if ((!amount.include? ".")   

		puts "\n"
		puts "country is ----------------> ",@data_hash['countryCode']
		puts "\n"
		amount=amount+".00"
		puts "amount is ----------------> "
		puts amount
	end	
 	amount = amount.gsub(decimalinamount,decimal);
 	puts "\n"
 	puts amount, amount.length
 	puts "\n"
 	if(amount.length > 6 )
  		 insert_del = amount.length - 6
   		 amount = amount.insert insert_del,grouping
 	end
	if(symbol=="€")
 		amountFormatted=amount+" "+symbol
 	else
		amountFormatted=symbol+amount
 	end
  puts "\n"+"amount is -->",amountFormatted
  puts "\n"+"amount formatted is -->",pds_amountformatted

  expect(amountFormatted).to eq(pds_amountformatted)

 end
=end

# FUNCTION TO DO ?

Then(/^the user validates the amount formated is as per expected\.$/) do
  decimalinamount = "."
  symbol = @data_hash['currencyFormat']['symbol']
  decimal = @data_hash['currencyFormat']['decimal']
  grouping = @data_hash['currencyFormat']['grouping']
  amount = @hash_pds['amount']
  pds_amountformatted =@hash_pds['amountFormatted']
  if ((!amount.include? ".") and (@data_hash['countryCode'] !="SG" ))  
     	if(amount.length > 3 )
       # puts "\n"
 	      #puts amount, amount.length
 	      #puts "\n"
  		 insert_del = amount.length - 3
   		 amount = amount.insert insert_del,grouping
      #	puts "\n"
 	    #  puts amount, amount.length
 	    #  puts "\n"
 		end
	end	
	if ((!amount.include? ".") and (@data_hash['countryCode'] =="SG" ))
		amount=amount+".00"
 		amount = amount.gsub(decimalinamount,decimal);
 	    #  puts "\n"
 	    #  puts amount, amount.length
 	   #   puts "\n"
 		if(amount.length > 6 )
  			insert_del = amount.length - 6
   		 	amount = amount.insert insert_del,grouping
 		end
 	end	

if((amount.include? ".") and (@data_hash['countryCode'] =="IN" ))

   amount=(amount.to_f).round
   amount =amount.to_s
   if(amount.length > 3 )
        insert_del = amount.length - 3
        amount = amount.insert insert_del,grouping
    end
end

	if((amount.include? ".") and (@data_hash['countryCode'] !="IN" ))
 		amount = amount.gsub(decimalinamount,decimal);
 	     # puts "\n"
 	      #puts amount, amount.length
 	      #puts "\n"
 		if(amount.length > 6 )
  			insert_del = amount.length - 6
   		 	amount = amount.insert insert_del,grouping
 		end
 	end	
	if(symbol=="€")
     if(@data_hash['countryCode'] =="IT")
       amountFormatted="€ "+amount 
     else
 	    	amountFormatted=amount+" €"
     end
 	else 
      if (symbol=="EUR")
       amountFormatted=amount+" EUR"
      else
		  amountFormatted=symbol+amount
      end
 	end
  #puts "\n"+"amount is -->",amountFormatted+"length is --->" ,amountFormatted.length
  #puts "\n"+"amount formatted is -->",pds_amountformatted+"length is --->" ,pds_amountformatted.length

  expect(amountFormatted).to eq(pds_amountformatted)

 end


=begin
 Then(/^the user validates the amount formated is as per expected\.$/) do
  decimalinamount = "."
  symbol = @data_hash['currencyFormat']['symbol']
  decimal = @data_hash['currencyFormat']['decimal']
  grouping = @data_hash['currencyFormat']['grouping']
  amount = @hash_pds['amount']

  mon=Money.new(amount, "EUR").format

  puts mon, "\n" ,"Sri"
  mon=Money.new(amount, "USD").format(:symbol => true)

  puts mon, "\n" ,"Sri"
  mon=Money.new(amount, "GBP").format(:symbol => true)

  puts mon, "\n" ,"Sri"

end
=end
