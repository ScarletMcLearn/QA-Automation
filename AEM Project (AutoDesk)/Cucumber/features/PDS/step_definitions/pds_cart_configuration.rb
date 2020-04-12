
Then(/^the cartLinkType for Pelican "([^"]*)" should be "([^"]*)"$/) do |country, cartLinkType|
  cart_info = find_cartLinkType_for_country(country)
  expect(cart_info).to eq(cartLinkType)
end

def find_cartLinkType_for_country(country)
  @data_hash["pelican"]["countryMapping"][country]["cartLinkType"]
end