
Given(/^user is on page "([^"]*)"$/) do |url|
    visit(url)
    Capybara.page.current_window.maximize
    sleep 3
end

And(/^user clicks on Free Trials link$/) do
    find(:xpath,$PROD_XPATH['free_trial_link']).click
    sleep(5)
end

Then(/^user is landed on Free Trial Page$/) do
    expect(current_url).to eq("https://www.autodesk.com/free-trials")
    #expect(current_url).to eq("https://www.autodesk.com/products?WindowsOS=false&MacOS=false&filter=free-trials")
    expect(find(:xpath,$PROD_XPATH['free_trial_page']).text).to eq("Autodesk software free trials")
end

Then(/^user is able to view header options 'Search','SignIn' and 'Menu'$/) do
    find(:xpath,$PROD_XPATH['search']).should be_visible
    find(:xpath,$PROD_XPATH['sign_in']).should be_visible
    find(:xpath,$PROD_XPATH['menu']).should be_visible
end

Then(/^user is able to view header options 'Cart','Search','SignIn','Geo' and 'Menu'$/) do
    find(:xpath,$PROD_XPATH['cart']).should be_visible
    find(:xpath,$PROD_XPATH['search']).should be_visible
    find(:xpath,$PROD_XPATH['sign_in']).should be_visible
    find(:xpath,$PROD_XPATH['geo']).should be_visible
    find(:xpath,$PROD_XPATH['menu']).should be_visible
end

Then(/^user is able to view all header options$/) do
    find(:xpath,$PROD_XPATH['logo']).should be_visible
    find(:xpath,$PROD_XPATH['free_trial']).should be_visible
    find(:xpath,$PROD_XPATH['all_products']).should be_visible
    find(:xpath,$PROD_XPATH['buy']).should be_visible
    find(:xpath,$PROD_XPATH['cart']).should be_visible
    find(:xpath,$PROD_XPATH['search']).should be_visible
    find(:xpath,$PROD_XPATH['sign_in']).should be_visible
    find(:xpath,$PROD_XPATH['geo']).should be_visible
    find(:xpath,$PROD_XPATH['menu']).should be_visible
end

And(/^user clicks on All Products link$/) do
    find(:xpath,$PROD_XPATH['all_products_link']).click
end

Then(/^user is landed on All Products Page$/) do
    expect(current_url).to eq("https://www.autodesk.com/products")
    expect(find(:xpath,$PROD_XPATH['all_products_page']).text).to eq("All products")
end

Given(/^user clicks on Buy link$/) do
    find(:xpath,$PROD_XPATH['buy_link']).click
end

Then(/^user is landed on Buy Page$/) do
    expect(current_url).to eq("https://www.autodesk.com/buy-online")
    expect(find(:xpath,$PROD_XPATH['buy_page']).text).to eq("Buy online")
end

Given(/^user clicks on Cart icon$/) do
    find(:xpath,$PROD_XPATH['cart_icon']).click
end

Then(/^user is landed on Checkout page$/) do
    expect(current_url).to eq("https://checkout.autodesk.com/en-US")
end

Given(/^user enters 'Maya' in search box and clicks on search icon$/) do
    find(:xpath,$PROD_XPATH['search_box']).send_keys('Maya')
    find(:xpath,$PROD_XPATH['search_box']).send_keys :enter
end

Then(/^user is landed on Search Page$/) do
    expect(find(:xpath,$PROD_XPATH['search_page']).text).to eq('Results for "Maya"')
end

Given(/^user clicks on Sign In link$/) do
    find(:xpath,$PROD_XPATH['sign_in']).click
end

Given(/^clicks on 'Autodesk Account' link$/) do
    find(:xpath,$PROD_XPATH['account_link']).click
end

Given(/^user log in with oxygen user "([^"]*)" password "([^"]*)"$/) do |user, password|
    fill_in 'UserName', :with => user
    click_on('verify_user_btn')
    fill_in 'password', :with => password
    click_on('btnSubmit')
    sleep(5)
end

Then(/^user can see her name on the page$/) do
    find(:xpath,$PROD_XPATH['sign_in_link']).click
    expect(find(:xpath,$PROD_XPATH['name']).text).to eq("Test Account")
end

Given(/^user clicks on Country name$/) do
    find(:xpath,$PROD_XPATH['geo']).click
end

Then(/^user is landed on worldwide sites page$/) do
    expect(find(:xpath,$PROD_XPATH['worldwide_page']).text).to eq("Worldwide sites")
end

Given(/^user clicks on Menu link$/) do
    find(:xpath,$PROD_XPATH['menu_link']).click
end

Then(/^user can view 'Products','Support & learning','Downloads','Buy','About Autodesk' links$/) do
    find(:xpath,$PROD_XPATH['products']).should be_visible
    find(:xpath,$PROD_XPATH['support']).should be_visible
    find(:xpath,$PROD_XPATH['downloads']).should be_visible
    find(:xpath,$PROD_XPATH['buy']).should be_visible
    find(:xpath,$PROD_XPATH['about']).should be_visible
end
