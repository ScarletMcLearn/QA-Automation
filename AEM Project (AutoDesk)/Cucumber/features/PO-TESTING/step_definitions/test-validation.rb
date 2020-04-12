
Given(/^I test PO on page "([^"]*)" with apphost "([^"]*)"$/) do |url1,url2|
  
  visit(url1)
  sleep 10

  #Interact with page:
  #- check components
  $SubscribePage.wait_until_buyContainer_visible 
  #- assertion
  expect($SubscribePage).to have_page_title
  #- get text from pages
  puts $SubscribePage.page_title.text
  #- call methods 
  $SubscribePage.Populate('Autocad')


  #Interact with compomnent:
  #- assertion
  expect($SubscribePage.buyContainer).to have_monthly_option
  #- click function
  $SubscribePage.buyContainer.monthly_option.click
  sleep 4
  expect($SubscribePage.buyContainer).to have_add_to_cart
  expect($SubscribePage.buyContainer).to have_quantity_checkbox
  $SubscribePage.buyContainer.quantity_checkbox.click
  sleep 2
  #- enter value
  $SubscribePage.buyContainer.quantity_checkbox.set '3'
  sleep 4
  #- explicit wait
  $SubscribePage.buyContainer.wait_until_add_to_cart_visible
  $SubscribePage.buyContainer.add_to_cart.click
  sleep 4
end

Then(/^the button on PO is clicked$/) do
  sleep 10
end
