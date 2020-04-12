
Given(/^the user navigates to the site 1 "([^"]*)"$/) do |local_site|
	url = Env_Url.environment_links(local_site)
	visit(url)
end

When(/^user clicks on Humburger link$/) do
	find(:xpath,".//i[@class='icon icon-menu']").click
	sleep 1
end

When(/^user clicks on Humburger Products link$/) do
	find(:xpath,".//nav[@class='global-navigation']/ul/li[1]/a").click
	sleep 1
end

When(/^user clicks on Humburger AutoCAD$/) do
	find(:xpath,".//nav[@class='global-navigation']/ul/li[1]/ul/li[3]/a").click
	sleep 1
end

Then (/^I am redirected to page "([^"]*)"$/) do | path |
  expect(current_url.include?(path))
end

When(/^user click on left mainlink "([^"]*)"$/) do |main_link|
	sleep 5
	page.execute_script('window.scrollTo(0,800)')
	find(:xpath,"//div[@class='left-navigation-main']//div[contains(text(),'"+main_link+"')]").click
	sleep 5
end

When(/^user click on top mainlink subscribe$/) do 
	sleep 5
	$NewPCPage.topNav.subscribe.click
	sleep 5
end

When(/^user click on top mainlink Download$/) do 
	sleep 5
	$NewPCPage.topNav.download_free_trial.click
	sleep 5
end

Then (/^I am redirected to page "([^"]*)" and subscribe text is changed to "([^"]*)"$/) do | path,text |
	expect(current_url.include?(path))
	expect($NewPCPage.topNav.add_to_cart.text).to eq text

end

Then (/^Trial download overlay should displayed$/) do 
	sleep 3
	$NewPCPage.download_overlay.should be_visible

end

Then (/^buy container color should be consistent with "([^"]*)"$/) do |color_code|
	sleep 3
	expect(page.driver.browser.execute_script("return window.getComputedStyle(arguments[0])['background-color']", $NewPCPage.default_term_price.native)).to eq color_code
	
end
