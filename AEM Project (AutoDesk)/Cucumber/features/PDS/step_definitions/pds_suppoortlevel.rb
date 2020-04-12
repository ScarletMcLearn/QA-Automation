
# Function to validate that the support level only includes Basic or Advanced and throw an error if it has anyother value.

Then(/^validate the Support Level has only Advanced and\/or Basic as the value\.$/) do
    @data_hash['purchaseTypes'].each do |purchasetype|
    	puts "\n the support level is -------->"+purchasetype['supportLevel'].to_s
    	unless ['BASIC', 'ADVANCED'].include?(purchasetype['supportLevel'])
            fail(ArgumentError.new('Invalid Support Level   ----> '+ purchasetype['supportLevel'].to_s))
        end
    end
end