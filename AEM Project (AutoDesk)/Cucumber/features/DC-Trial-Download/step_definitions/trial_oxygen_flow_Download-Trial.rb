

Given(/^User visits trial page "([^"]*)"$/) do |page_url|
	visit($BASE_URL+(page_url))
	sleep 5
end

############################### SC-1 ########################################

Then (/^2 On IFrame "([^"]*)" text appears$/) do | confirmation |
  
  within(:xpath, "//div[@id='lightbox-id-0']") do
    expect(find(:xpath, "//div[contains(@class,'otfdl-panel-body')]").text.include?(confirmation))
  end
end

############################### SC-2 ########################################

Then(/^finds operating system heading as "([^"]*)"$/) do |osHeading|
	find(:xpath,$PATH['os_heading_text']).text.should match(osHeading)
end

And (/^finds language heading as "([^"]*)"$/) do |langHeading|
	find(:xpath,$PATH['lang_heading_text']).text.should match(langHeading)
end

################################ SC-3 ######################################

Then (/^finds education heading as "([^"]*)"$/) do |eduHeading|
	find(:xpath,$PATH['edu_heading_text']).text.should match(eduHeading)
end

And (/^finds education text as "([^"]*)"$/) do |eduText|
	find(:xpath,$PATH['edu_text']).text.should match(eduText)
end
