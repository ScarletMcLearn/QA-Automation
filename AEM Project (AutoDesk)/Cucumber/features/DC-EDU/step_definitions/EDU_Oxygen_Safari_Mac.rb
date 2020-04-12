
Then(/^user should see Serial Number "([^"]*)", Product Key "([^"]*)", Usage Rights "([^"]*)"$/) do |serial_number,product_key,usage_rights|
  page.execute_script('window.scrollTo(0,500)')
  wait_for_product_load()
  expect(find(:xpath,$EDU_PATH['serial_number']).text).to eq(serial_number)
  expect(find(:xpath,$EDU_PATH['product_key']).text).to eq(product_key)
  expect(find(:xpath,$EDU_PATH['usage_rights']).text).to eq(usage_rights)
end

Then(/^user should download successfully from "([^"]*)"$/) do |button|
  page.execute_script('window.scrollTo(0,100)')
  click_on(button)
end
