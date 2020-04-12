# first step in Local_Sites.rb 

Then(/^the page load with telium tag "([^"]*)"$/) do |utag|
   page.should have_selector("script[src='"+utag+"']", visible: false)
end