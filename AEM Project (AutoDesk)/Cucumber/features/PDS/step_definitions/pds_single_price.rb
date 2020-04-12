



Then(/^the pricing details for the promotion "([^"]*)" are only returned in the PDS json$/) do |promotionid|
      @data_hash['purchaseTypes'].each do |purchasetype|
          #puts "\n\n ---- support level --->", purchasetype['supportLevel']
          purchasetype['billingPlans'].each do |billing_plan_loop|
              promocode =billing_plan_loop['directToCartUrl'].split("&promoCodes=")
              expect(promocode[1]).to eq(promotionid)
=begin
              if(billing_plan_loop['promotion'] == nil)
                fail(ArgumentError.new('Billing plan without promotion available in PDS json  for term  ----> '+billing_plan_loop['billingPeriodCount']+'-'+billing_plan_loop['billingPeriod']) ) 
                #puts "\n\n Billing plan without promotion available in PDS json  for term  ---->"+billing_plan_loop['billingPeriodCount']+"-"+billing_plan_loop['billingPeriod']
              else
                #puts "\n\n Billing plan with promotion available in PDS json  for term  ---->"+billing_plan_loop['billingPeriodCount']+"-"+billing_plan_loop['billingPeriod']
                puts "\n\n ----promotion id is .......", billing_plan_loop['promotion']['id']
                expect(billing_plan_loop['promotion']['id'].to_s).to eq(promotionid)
              end
=end
          end
      end #end for purchasetype do
end

Then(/^the pricing details for the support Level "([^"]*)" are only returned in the PDS json$/) do |supportlevel|
      expect(@data_hash['purchaseTypes'].count).to eq(1)
      #puts "\n\n ----->",@data_hash['purchaseTypes'][0]['supportLevel']
      @data_hash['purchaseTypes'].each do |purchasetype|
           expect(purchasetype['supportLevel']).to eq(supportlevel)  
      end #end for purchasetype do
end



Then(/^the pricing details for the term "([^"]*)" are only returned in the PDS json$/) do |term|
      billingterm = term.split("-")
      @data_hash['purchaseTypes'].each do |purchasetype|
          expect(purchasetype['billingPlans'].count).to eq(1)
          purchasetype['billingPlans'].each do |billing_plan_loop|
              expect(billing_plan_loop['billingPeriod']).to eq(billingterm[1])
              expect(billing_plan_loop['billingPeriodCount']).to eq(billingterm[0])
          end
      end #end for purchasetype do
end



Then(/^the pricing details for the support Level "([^"]*)" and term "([^"]*)" are only returned in the PDS json$/) do |supportlevel, term|
      billingterm = term.split("-")
      expect(@data_hash['purchaseTypes'].count).to eq(1)
      @data_hash['purchaseTypes'].each do |purchasetype|
          expect(purchasetype['supportLevel']).to eq(supportlevel)
          expect(purchasetype['billingPlans'].count).to eq(1)
          purchasetype['billingPlans'].each do |billing_plan_loop|
              expect(billing_plan_loop['billingPeriod']).to eq(billingterm[1])
              expect(billing_plan_loop['billingPeriodCount']).to eq(billingterm[0])
          end
      end #end for purchasetype do
end

Then(/^the pricing details for the support Level "([^"]*)" , term "([^"]*)" and promotion "([^"]*)" are only returned in the PDS json$/) do |supportlevel, term, promotionid|
      billingterm = term.split("-")
      expect(@data_hash['purchaseTypes'].count).to eq(1)
      @data_hash['purchaseTypes'].each do |purchasetype|
          expect(purchasetype['supportLevel']).to eq(supportlevel)
          expect(purchasetype['billingPlans'].count).to eq(1)
          purchasetype['billingPlans'].each do |billing_plan_loop|
              expect(billing_plan_loop['billingPeriod']).to eq(billingterm[1])
              expect(billing_plan_loop['billingPeriodCount']).to eq(billingterm[0])
              promocode =billing_plan_loop['directToCartUrl'].split("&promoCodes=")
              expect(promocode[1]).to eq(promotionid)
=begin
              if(billing_plan_loop['promotion'] == nil)
                fail(ArgumentError.new('Billing plan without promotion available in PDS json  for term  ----> '+billing_plan_loop['billingPeriodCount']+'-'+billing_plan_loop['billingPeriod']) ) 
              else
                expect(billing_plan_loop['promotion']['id'].to_s).to eq(promotionid)
              end # end for if 
=end
          end # end for billing_plan_loop do
      end #end for purchasetype do
end

Then(/^the pricing details for the support Level "([^"]*)" and promotion "([^"]*)" are only returned in the PDS json$/) do |supportlevel, promotionid|
      expect(@data_hash['purchaseTypes'].count).to eq(1)
      @data_hash['purchaseTypes'].each do |purchasetype|
          expect(purchasetype['supportLevel']).to eq(supportlevel)
          purchasetype['billingPlans'].each do |billing_plan_loop|
              promocode =billing_plan_loop['directToCartUrl'].split("&promoCodes=")
              expect(promocode[1]).to eq(promotionid)
=begin
              if(billing_plan_loop['promotion'] == nil)
                fail(ArgumentError.new('Billing plan without promotion available in PDS json  for term  ----> '+billing_plan_loop['billingPeriodCount']+'-'+billing_plan_loop['billingPeriod']) ) 
              else
                expect(billing_plan_loop['promotion']['id'].to_s).to eq(promotionid)
              end # end for if 
=end
          end # end for billing_plan_loop do
      end #end for purchasetype do
end

Then(/^the pricing details for the term "([^"]*)" and promotion "([^"]*)" are only returned in the PDS json$/) do |term, promotionid|
      billingterm = term.split("-")
      @data_hash['purchaseTypes'].each do |purchasetype|
          expect(purchasetype['billingPlans'].count).to eq(1)
          purchasetype['billingPlans'].each do |billing_plan_loop|
              expect(billing_plan_loop['billingPeriod']).to eq(billingterm[1])
              expect(billing_plan_loop['billingPeriodCount']).to eq(billingterm[0])
              promocode =billing_plan_loop['directToCartUrl'].split("&promoCodes=")
              expect(promocode[1]).to eq(promotionid)
=begin
              if(billing_plan_loop['promotion'] == nil)
                fail(ArgumentError.new('Billing plan without promotion available in PDS json  for term  ----> '+billing_plan_loop['billingPeriodCount']+'-'+billing_plan_loop['billingPeriod']) ) 
              else
                expect(billing_plan_loop['promotion']['id'].to_s).to eq(promotionid)
              end # end for if 
=end
          end # end for billing_plan_loop do
      end #end for purchasetype do
end