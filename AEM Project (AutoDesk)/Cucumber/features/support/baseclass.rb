=begin
Create a class for parsing the Json for PDS , Pelican and DR and fill a hash_table and return the needed fields.
Also added  compare functions for comparing the hash_table value returned for PDS , PELICAN and DR.
=end
class Baseclass
	#Returns the number of results received in response Search API
	def self.metadataResults(data)
		return data['results']
	end

	#Verifies that PDS data is present in the Content Hub.
	def self.metadataPdsInfo(data)
		temp = false
		if(data["content"][5]["pds-info"]["product-attributes"] && data["content"][5]["pds-info"]["pricing"])
			temp = true
		end
		return temp
	end

	#Extract number from a price string.
	def self.getPriceNumber(price)
		number = price.match(/\d+(?:[ .,']\d+(?:[.,]\d+)?)?/)
		return number[0].delete(",").delete("'").delete(" ").to_f
	end

	#Extract number from a price string.
	def self.getPortNumber(ipAddress)
		#puts "IP ADDRESS is " + ipAddress
		portNumber = ipAddress.match(/((?::))(?:[0-9]{4})/)
		#puts "PORT NUMBER MATCH is " + portNumber[0]
		return portNumber[0].delete(":").to_i
	end

	def self.pds_json(data_hash,billingPeriod, billingPeriodCount, supportLevel,country)
		data_hash['purchaseTypes'].each do |purchasetype|
			hash_new = {}
			hash_new['type'] = purchasetype['type']
			if (purchasetype['supportLevel'] == supportLevel )
				purchasetype['billingPlans'].each do |billing_plan_loop|
					if((billing_plan_loop['billingPeriod'] == billingPeriod ) and (billing_plan_loop['billingPeriodCount'] == billingPeriodCount))
						hash_new['directToCartUrl'] = billing_plan_loop['directToCartUrl']
						hash_new['priceId'] = billing_plan_loop['price']['priceId']
						hash_new['amount']  = billing_plan_loop['price']['amount']
						hash_new['amountFormatted']  = billing_plan_loop['price']['amountFormatted']
						hash_new['amountBeforeDiscount'] = billing_plan_loop['price']['amountBeforeDiscount']
						hash_new['discount'] = billing_plan_loop['price']['discount']
                        if(billing_plan_loop['promotion'] != nil)
													#puts " \n\n\n  THERE IS PROMOTION \n\n\n"
													if(billing_plan_loop['promotion']['id'] != nil)
														hash_new['promoId'] = billing_plan_loop['promotion']['id'].to_s
													else
														hash_new['promoId'] = nil
													end
                            hash_new['promoName'] = billing_plan_loop['promotion']['promoName']
                            hash_new['promoHeadline'] = billing_plan_loop['promotion']['promoHeadline']
                            hash_new['promoSubHeadline'] = billing_plan_loop['promotion']['promoSubHeadline']
                            hash_new['promoType'] = billing_plan_loop['promotion']['type']
                        end
						# for countries other than US / CA extra fields are present in the price object
						if(country != ('US' or 'CA'))
							hash_new['vatAmount'] = billing_plan_loop['price']['vatAmount']
							hash_new['amountBeforeDiscountWithVat'] = billing_plan_loop['price']['amountBeforeDiscountWithVat']
							hash_new['amountAfterDiscountWithVat'] = billing_plan_loop['price']['amountAfterDiscountWithVat']
							hash_new['amountBeforeDiscountWithVatFormatted'] = billing_plan_loop['price']['amountBeforeDiscountWithVatFormatted']
							hash_new['amountAfterDiscountWithVatFormatted'] = billing_plan_loop['price']['amountAfterDiscountWithVatFormatted']
						end # end for if (country !=US or CA)
						return hash_new
					end #end for if
				end #end for purchase type do
			end # for the support level if
		end #end for data hash do
		return 0
	end

	def self.store_pelican_json_in_hash(sub_data_hash, billingPeriod, billingPeriodCount, supportLevel, country)
		hash_new_pel = {}
		hash_new_pel['type'] = sub_data_hash['type']
		sub_data_hash['billingPlans'].each do |billing_plan_loop_bis|
			if((billing_plan_loop_bis['billingPeriod'] == billingPeriod ) and (billing_plan_loop_bis['billingPeriodCount'].to_i == billingPeriodCount.to_i))
				hash_new_pel['priceId'] = billing_plan_loop_bis['price']['priceId']
				hash_new_pel['amount']  = billing_plan_loop_bis['price']['amount']
				hash_new_pel['amountBeforeDiscount'] = billing_plan_loop_bis['price']['amountBeforeDiscount']
				hash_new_pel['discount'] = billing_plan_loop_bis['price']['discount']
                if(billing_plan_loop_bis['promotion'] != nil)
                   # puts " \n\n\n  THERE IS PROMOTION in PELICAN \n\n\n"
					hash_new_pel['promoId'] = billing_plan_loop_bis['promotion']['id']
                	hash_new_pel['promoName'] = billing_plan_loop_bis['promotion']['promoName']
        	        hash_new_pel['promoHeadline'] = billing_plan_loop_bis['promotion']['promoHeadline']
            	    hash_new_pel['promoSubHeadline'] = billing_plan_loop_bis['promotion']['promoSubHeadline']
                	hash_new_pel['promoType'] = billing_plan_loop_bis['promotion']['type']
                end
				# for countries other than US / CA extra fields are present in the price object
				if(country != ('US' or 'CA'))
					hash_new_pel['vatAmount'] = billing_plan_loop_bis['price']['vatAmount']
					hash_new_pel['amountBeforeDiscountWithVat'] = billing_plan_loop_bis['price']['amountBeforeDiscountWithVat']
					hash_new_pel['amountAfterDiscountWithVat'] = billing_plan_loop_bis['price']['amountAfterDiscountWithVat']
				end # end for if (country !=US or CA)
				return hash_new_pel
			end #end for if (billing period)
		end #end for billing_plan_loop_bis do
	end

	#for each BIC or META subscription in the Pelican JSON response, store it's field values in a hash
	def self.pelican_json(data_hash_pelican,billingPeriod, billingPeriodCount, supportLevel,country)
		data_hash_pelican['items'].each do |subscriptionType|
			if (subscriptionType.include?('BIC_SUBSCRIPTION'))
				data_hash_pelican['items']['BIC_SUBSCRIPTION'].each do |bis_subs|
					if (bis_subs['supportLevel'] == supportLevel)
						return self.store_pelican_json_in_hash(bis_subs, billingPeriod, billingPeriodCount, supportLevel, country)
					end
				end
			end
			if (subscriptionType.include?('META_SUBSCRIPTION'))
				data_hash_pelican['items']['META_SUBSCRIPTION'].each do |bis_subs|
					if (bis_subs['supportLevel'] == supportLevel)
						return self.store_pelican_json_in_hash(bis_subs, billingPeriod, billingPeriodCount, supportLevel, country)
					end #end for the support level if
				end #end for bis_subs do
			end #end for if (subscriptionType)
		end #end for subscriptionType do
	end

	def self.dr_json(data_hash_dr, duration, supportLevel, country)

    dr_duration_flag=false
    dr_support_flag=false
    product_1 = data_hash_dr['products']['product']
    product_1.each do |product|
      dr_product = product['variations']['product']
      #puts product['variations']['product']
      dr_product.each do |products|
        if ((products['displayableProduct'] == "true") and (products['purchasable'] == "true"))
          dr_custom_attributes = products['customAttributes']['attribute']
          dr_custom_attributes.each do |value1|
            if (value1['name']=="Advanced Support")
              dr_support=value1['value']
              regex_v=/\(.*\)/
              advancesupport_flag=regex_v.match(dr_support)

              if (advancesupport_flag!=NIL)
                dr_supportlevel= "ADVANCED"
              else
                dr_supportlevel= "BASIC"
              end
            end #if name is Advanced Support

            if (dr_supportlevel==supportLevel)
              dr_support_flag=true
            elsif (value1['value']==duration)
              dr_duration_flag=true
            end
            if ((dr_duration_flag==true) and (dr_support_flag==true))
              hash_new_dr = {}

              inctax = products['pricing']['listPriceIncludesTax']

              if ((products['pricing']['listPriceIncludesTax'].to_s)=="false")

                dr_amount=products['pricing']['salePriceWithQuantity']['value']
                amount_afterdiscount_withvat = products['pricing']['feePricing']['salePriceWithFeesAndQuantity']['value']
                amountBeforeDiscountWithVat = products['pricing']['listPriceWithQuantity']['value']
                vat_amount= (amount_afterdiscount_withvat-dr_amount)
                if ((vat_amount.to_s).include? ".")
                  vat_amount=(vat_amount.to_f).round(2)
                end

                totalamountBeforeDiscountWithVat = amountBeforeDiscountWithVat+vat_amount
                amountBeforeDiscountwithoutvat = products['pricing']['listPriceWithQuantity']['value']
                vatPercent=products['pricing']['tax']['vatPercentage']
                if (vatPercent !=0)
                  hash_new_dr['priceId'] = products['id'].to_s
                  hash_new_dr['amount'] = dr_amount.to_s
                  hash_new_dr['amountBeforeDiscount'] = amountBeforeDiscountwithoutvat.to_s
                  hash_new_dr['discount'] = products['pricing']['totalDiscountWithQuantity']['value'].to_s
                  hash_new_dr['vatAmount']=vat_amount.to_s
                  hash_new_dr['amountBeforeDiscountWithVat']=totalamountBeforeDiscountWithVat.to_s
                  hash_new_dr['amountAfterDiscountWithVat']=amount_afterdiscount_withvat.to_s
                else
                  hash_new_dr['priceId'] = products['id'].to_s
                  hash_new_dr['amount'] = dr_amount.to_s
                  hash_new_dr['amountBeforeDiscount'] = amountBeforeDiscountwithoutvat.to_s
                  hash_new_dr['discount'] = products['pricing']['totalDiscountWithQuantity']['value'].to_s
                  hash_new_dr['vatAmount']=nil
                  hash_new_dr['amountBeforeDiscountWithVat']=nil
                  hash_new_dr['amountAfterDiscountWithVat']=nil
                end

              else

                amount_afterdiscount_withvat = products['pricing']['feePricing']['salePriceWithFeesAndQuantity']['value']
                amountBeforeDiscountWithVat = products['pricing']['listPriceWithQuantity']['value']
                vatPercent=products['pricing']['tax']['vatPercentage']
                dr_amount=(amount_afterdiscount_withvat*100)/(100+vatPercent)
                vat_amount= amount_afterdiscount_withvat-dr_amount

                amountBeforeDiscountwithoutvat = (amountBeforeDiscountWithVat*100)/(100+vatPercent)
                if (vatPercent !=0)
                  hash_new_dr['priceId'] = products['id'].to_s
                  hash_new_dr['amount'] = dr_amount.to_s
                  hash_new_dr['amountBeforeDiscount'] = amountBeforeDiscountwithoutvat.to_s
                  hash_new_dr['discount'] = products['pricing']['totalDiscountWithQuantity']['value'].to_s
                  hash_new_dr['vatAmount']=vat_amount.to_s
                  hash_new_dr['amountBeforeDiscountWithVat']=amountBeforeDiscountWithVat.to_s
                  hash_new_dr['amountAfterDiscountWithVat']=amount_afterdiscount_withvat.to_s
                else
                  hash_new_dr['priceId'] = products['id'].to_s
                  hash_new_dr['amount'] = dr_amount.to_s
                  hash_new_dr['amountBeforeDiscount'] = amountBeforeDiscountWithVat.to_s
                  hash_new_dr['discount'] = products['pricing']['totalDiscountWithQuantity']['value'].to_s
                  hash_new_dr['vatAmount']=nil
                  hash_new_dr['amountBeforeDiscountWithVat']=nil
                  hash_new_dr['amountAfterDiscountWithVat']=nil
                end

              end # end for if products['pricing']['listPriceIncludesTax']  == "false"
              return true, hash_new_dr
            end #end for If check
          end #end for dr_custom_attributes
          dr_support_flag=false
          dr_duration_flag=false
        end
      end #end for dr_product
    end #end for product_1
    return false, 0
  end


	def self.pds_count_same_duration_json(data_hash, billingPeriod, billingPeriodCount, supportLevel)
		pds_same_duration_counter=0
		data_hash['purchaseTypes'].each do |purchasetype|
			if (purchasetype['supportLevel'] == supportLevel)
				purchasetype['billingPlans'].each do |billing_plan_loop|
					if ((billing_plan_loop['billingPeriod'] == billingPeriod) and (billing_plan_loop['billingPeriodCount'] == billingPeriodCount))
						pds_same_duration_counter+=1
					end #end for if
				end #end for purchase type do
			end # for the support level if
		end #end for data hash do
		return pds_same_duration_counter
	end

	def self.dr_count_same_duration_json(data_hash_dr, duration, supportLevel)
		# dr_uri = @data_hash_dr['products']['uri']
		#puts "\n",dr_uri
		dr_same_duration_counter=0
		dr_duration_flag=false
		dr_support_flag=false
		product_1 = data_hash_dr['products']['product']
		product_1.each do |product|
			dr_product = product['variations']['product']
			#puts product['variations']['product']
			dr_product.each do |products|
				if ((products['displayableProduct'] == "true") and (products['purchasable'] == "true"))
					dr_custom_attributes = products['customAttributes']['attribute']
					dr_custom_attributes.each do |value1|
						if (value1['name']=="Advanced Support")
							dr_support=value1['value']
							regex_v=/\(.*\)/
							advancesupport_flag=regex_v.match(dr_support)

							if (advancesupport_flag!=NIL)
								dr_supportlevel= "ADVANCED"
							else
								dr_supportlevel= "BASIC"
							end
						end #if name is Advanced Support

						if (dr_supportlevel==supportLevel)
							dr_support_flag=true
						elsif (value1['value']==duration)
							dr_duration_flag=true
						end
						if ((dr_duration_flag==true) and (dr_support_flag==true))
							dr_same_duration_counter+=1
						end #end for If check
					end #end for dr_custom_attributes
					dr_support_flag=false
					dr_duration_flag=false
				end
			end #end for dr_product
		end #end for product_1
		return dr_same_duration_counter
	end
=begin
	def self.pelican_external_key_json(data_hash_pelican, supportLevel)
		data_hash_pelican['items']['BIC_SUBSCRIPTION'].each do |bis_subs|
			if (bis_subs['supportLevel'] == supportLevel)
				external_key_pel=bis_subs['externalKey']
				return external_key_pel
			end # for the supportLevel if
		end #end for data_hash_pelican do
		return 0
	end
=end
def self.pelican_external_key_json(data_hash_pelican, supportLevel)
		data_hash_pelican['items'].each do |subscriptionType|
			if (subscriptionType.include?('BIC_SUBSCRIPTION'))
				data_hash_pelican['items']['BIC_SUBSCRIPTION'].each do |bis_subs|
					if (bis_subs['supportLevel'] == supportLevel)
						external_key_pel=bis_subs['externalKey']
						return external_key_pel
					end
				end
			end
			if (subscriptionType.include?('META_SUBSCRIPTION'))
				data_hash_pelican['items']['META_SUBSCRIPTION'].each do |bis_subs|
					if (bis_subs['supportLevel'] == supportLevel)
						external_key_pel=bis_subs['externalKey']
						return external_key_pel
					end #end for the support level if
				end #end for bis_subs do
			end #end for if (subscriptionType)
		end #end for subscriptionType do
		return 0
	end


	def self.pds_external_key_json(data_hash, supportLevel)
		data_hash['purchaseTypes'].each do |purchasetype|
			if (purchasetype['supportLevel'] == supportLevel)
				external_key_pds= purchasetype['externalKey']
				return external_key_pds
			end # for the support level if
		end #end for data hash do
		return 0
	end

	#Function to compare the data read from the PDS json  and the data read from the Pelican json
	#**********************************************************************************************

	def self.compare_pds_pelican_json(hash_pds, hash_pelican)
		if (hash_pds == hash_pelican)
			return true
		end
		return false
	end

=begin
	#Function to compare the data read from the PDS json  and the data read from the Pelican json for a specific field
	#*****************************************************************************************************************
	def self.compare_pds_pelican_json_field(hash_pds, hash_pelican, field_name)
		if (hash_pds[field_name] == hash_pelican[field_name])
			puts "\n\n********************************************************************************************************"
			puts field_name + " ---->   Value in PDS JSON = " + hash_pds[field_name].to_s + "    Value in Pelican JSON = " + hash_pelican[field_name].to_s
			puts "\n\n********************************************************************************************************"
			return true
		end
		return false
	end

=end
	#Function to compare the data read from the PDS json and the data read from the Pelican json for a specific field
	#*****************************************************************************************************************
	def self.compare_pds_pelican_json_field(hash_pds,hash_pelican,field_name)
		if(field_name.include?('amountBeforeDiscountWithVat') or field_name.include?('amountAfterDiscountWithVat') or field_name.include?('vatAmount'))
			validity = (hash_pds[field_name].to_f).between?((hash_pelican[field_name].to_f-2),(hash_pelican[field_name].to_f+2))
			return validity
		end
		if(field_name != ('amountBeforeDiscountWithVat' or 'amountAfterDiscountWithVat' or 'vatAmount'))
			if(hash_pds[field_name] == hash_pelican[field_name])
			 	return true
		    end
		#puts "\n\n********************************************************************************************************"
		#puts field_name + " ---->   Value in PDS JSON = " + hash_pds[field_name].to_s + "    Value in Pelican JSON = " + hash_pelican[field_name].to_s
		#puts "\n\n********************************************************************************************************"
			return false
		end
	end

	#Function to compare the data read from the PDS json and the data read from the DR json for a specific field
	#*************************************************************************************************************
	def self.compare_pds_dr_json_field(hash_pds,hash_dr,field_name)
		if(hash_pds[field_name] == hash_dr[field_name])
			return true
		end
		puts "\n\n********************************************************************************************************"
		puts field_name + " ---->   Value in PDS JSON = " + hash_pds[field_name].to_s + "    Value in DR JSON = " + hash_dr[field_name].to_s
		puts "\n\n********************************************************************************************************"
		return false
	end

	def self.pds_json_parse_with_quantity(product,appKey,country,quantity)
		source = $PDS_BASE_URL+(product)+'?app='+(appKey)+'&country='+(country)+'&quantity='+(quantity)
		response = HTTParty.get(source,:verify => false)  #verify option to disable SSL verification;
		data_hash = JSON.parse(response.body)
		responseCodepds = response.code
		@pds_country = country
		if (responseCodepds != 200)
			fail(ArgumentError.new('Invalid Response Code   ----> '+responseCodepds.to_s))
		end
		return data_hash
	end

    def self.pds_json_parse_for_price(product,country, appKey, lang)
    		source = $PDS_BASE_URL+(product)+'?&country='+(country)+'&app='+(appKey)+'&language='+(lang)
    		response = HTTParty.get(source,:verify => false)  #verify option to disable SSL verification;
    		data_hash = JSON.parse(response.body)
    		responseCodepds = response.code
    		@pds_country = country
    		if (responseCodepds != 200)
    			fail(ArgumentError.new('Invalid Response Code   ----> '+responseCodepds.to_s))
    		end
    		return data_hash
    end

	def self.pds_json_parse(product,appKey,country)
		source = $PDS_BASE_URL+(product)+'?app='+(appKey)+'&country='+(country)
		response = HTTParty.get(source,:verify => false)  #verify option to disable SSL verification;
		@data_hash = JSON.parse(response.body)
		@responseCodepds = response.code
		@pds_country = country
		if (@responseCodepds != 200)
			fail(ArgumentError.new('Invalid Response Code   ----> '+@responseCodepds.to_s))
		end
	end

=begin
	def self.pds_json_data(data_hash,billingPeriod, billingPeriodCount, supportLevel,country)
		data_hash['purchaseTypes'].each do |purchasetype|
			if (purchasetype['supportLevel'] == supportLevel )
				purchasetype['billingPlans'].each do |billing_plan_loop|
					if((billing_plan_loop['billingPeriod'] == billingPeriod ) and (billing_plan_loop['billingPeriodCount'] == billingPeriodCount))
						#puts "Vat ", billing_plan_loop['price']['vatAmount'].to_i ,"\n"
						#puts "Amount",billing_plan_loop['price']['amount'].to_i ,"\n"
						hash_new = {}
						hash_new['directToCartUrl'] = billing_plan_loop['directToCartUrl']
						hash_new['priceId'] = billing_plan_loop['price']['priceId']
						hash_new['amount']  = billing_plan_loop['price']['amount']
						hash_new['amountFormatted']  = billing_plan_loop['price']['amountFormatted']
						hash_new['amountBeforeDiscount'] = billing_plan_loop['price']['amountBeforeDiscount']
						hash_new['discount'] = billing_plan_loop['price']['discount']
						# for countries other than US / CA extra fields are present in the price object
						if(country != ('US' or 'CA'))
							hash_new['vatAmount'] = billing_plan_loop['price']['vatAmount']
							hash_new['amountBeforeDiscountWithVatFormatted'] = billing_plan_loop['price']['amountBeforeDiscountWithVatFormatted']
							hash_new['amountAfterDiscountWithVatFormatted'] = billing_plan_loop['price']['amountAfterDiscountWithVatFormatted']
						end # end for if (country !=US or CA)
						return hash_new
					end #end for if

				end #end for purchase type do
			end # for the support level if
		end #end for data hash do
		return 0
	end
=end

def self.fsb_pds_json(data_hash,supportLevel)
		data_hash['purchaseTypes'].each do |purchasetype|
  		# do whatever you want with these...
  			#puts purchasetype['supportLevel'],"\n"
        #puts supportLevel , "\n"
        if (purchasetype['supportLevel'] == supportLevel )
          hash_new = {}
          index_val = Array.new

  		  	hash_new['name'] = purchasetype['name']
          hash_new['billingplan_count'] = purchasetype['billingPlans'].count

          purchasetype['billingPlans'].each do |billing_plan_loop|
            hash_term = Hash.new
            hash_term['term'] = billing_plan_loop['billingPeriodCount']+"-"+billing_plan_loop['billingPeriod']
            hash_term['amount']  = billing_plan_loop['price']['amount']
            hash_term['amountFormatted']  = billing_plan_loop['price']['amountFormatted']
            hash_term['amountBeforeDiscount'] = billing_plan_loop['price']['amountBeforeDiscount']
            hash_term['discount'] = billing_plan_loop['price']['discount']
            index_val.push(hash_term)
          end
          hash_new['array_hash'] = index_val
          return hash_new
  			end #end for if(purchasetype['supportLevel'] == supportLevel )
    end # end for data_hash['purchaseTypes'].each do |purchasetype|
  end
end
