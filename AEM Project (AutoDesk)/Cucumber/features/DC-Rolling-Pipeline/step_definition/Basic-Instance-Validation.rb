Given(/^the user navigates to the instance "([^"]*)"$/) do |page|
  source = $INSTANCE + page

  #Conditional if author
  portNumber = Baseclass.getPortNumber($INSTANCE)
  if (portNumber == 7502)
    visit(source + "?wcmmode=disabled")
    author_sign_in($AEM_USERNAME, $AEM_PASSWORD)
  else
    visit(source)
  end
end

Then(/^there are no errors or exceptions$/) do
  expect(page).to have_no_content("error")
  expect(page).to have_no_content("errors")
  expect(page).to have_no_content("exception")
  expect(page).to have_no_content("exceptions")
  expect(page).to have_no_content("Cannot serve request to")
end

And(/^prices appear$/) do
  expect(page).to have_xpath($BuyPage.first_term.path)
  expect(page).to have_xpath($BuyPage.second_term.path)
  expect(page).to have_xpath($BuyPage.third_term.path)
end

And(/^user accepts cookies on "([^"]*)"$/) do |site|
  eprivacy_yes_to_all(site)
end

When(/^curl to "([^"]*)" with credentials then page should not contain errors$/) do |page|
  source = $INSTANCE + page + "?wcmmode=disabled"
  op = []
  if ENV['IS_AUTHOR']
    IO.popen("curl -s -u #{ENV['AEM_USERNAME']}:#{ENV['AEM_PASSWORD']} #{source}") do |l|
    op += l.readlines	
    end
  else
    IO.popen("curl -s #{source}") do |l|
    op += l.readlines	
    end
  end
  
  res_str=op.join
  puts res_str
  #assert_contains_str(res_str, ' error')
  #assert_contains_str(res_str, ' errors') 
  assert_contains_str(res_str, ' exception') 
  assert_contains_str(res_str, ' exceptions') 
  assert_contains_str(res_str, 'Cannot serve request to') 
end

