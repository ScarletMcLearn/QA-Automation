



Then(/^the user reads the external key received in PDS for the support level "([^"]*)" specified$/) do |supportLevel|
  @ext_key_pds=Baseclass.pds_external_key_json(@data_hash,supportLevel)
end

Then(/^the user reads the external key received in pelican for the support level "([^"]*)" specified$/) do |supportLevel|
  @ext_key_pel=Baseclass.pelican_external_key_json(@data_hash_pelican,supportLevel)
end

Then(/^compare the external key values\.$/) do
	expect(@ext_key_pel).to eq(@ext_key_pds)
end
