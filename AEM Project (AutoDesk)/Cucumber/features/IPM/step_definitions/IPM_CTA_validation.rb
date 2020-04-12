

And(/^user clicks subscribe button on page$/) do 
    #visit($IPMTestHarnessPage.large_iframe_element['ng-src'])
    $IPMPage.subscribe_button.click
    sleep 3
end


And(/^user turns on auto-renew on page$/) do
    
    $IPMPage.turn_on_auto_renew.click

end


Then(/^system should redirect to "([^"]*)" with the correct data from PDS$/) do |redirect_link|
    sleep 5
    page.driver.browser.switch_to.window(page.driver.browser.window_handles.last)
    sleep 5
    expect(current_url).to have_content(redirect_link)
     #puts current_url
    #Add API call validation: https://web-pt-engineering-svc.autodesk.com/products/ACDIST?country=US&language=en&quantity=1
    #Currently Test harness all points to prod cart
end