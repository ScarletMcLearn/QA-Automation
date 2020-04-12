
# to Validate the directToCartUrl url link in the PDS jason file 
Then(/^validate that the correct directToCartUrl "([^"]*)" for the Local Country is displayed$/) do |directToCartUrl|
 expect(@hash_pds['directToCartUrl']).to eq(directToCartUrl)
 #puts "\n", @hash_pds['directToCartUrl']
 #puts"\n", directToCartUrl
end
