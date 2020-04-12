

Then(/^the user makes sure the "([^"]*)" values received from the DB are not NULL\.$/) do |field|
    expect(@hash_pds[field]).not_to eq(nil)
end
