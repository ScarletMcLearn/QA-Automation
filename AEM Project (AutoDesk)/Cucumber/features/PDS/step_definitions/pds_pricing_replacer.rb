
###############################################################
When(/^I visit the PDS "([^"]*)" page on DC$/) do |appkeypage|
  visit($BASE_URL_SHORT+'.com/qa-automation/pds/'+(appkeypage)) do
#  visit($BASE_URL_SHORT+'.com/qa-automation/pds/'+(appkeypage)) do
#    WaitForAjax
    WaitForAjax2
#    WaitForReadiness
#  end
  end
end


=begin
When(/^I visit the PDS "([^"]*)" page on DC$/) do |appkeypage|
 visit($BASE_URL_SHORT+'.com/qa-automation/pds/'+(appkeypage)) do
   find(".active")
   execute_script("$('.active').focus()")
 end
end
=end

###############################################################
When(/^wait (\d+) seconds$/) do |seconds|
	sleep seconds.to_i
end

  #sleep seconds.to_i
  #end
  #And I wait 5 seconds


############################################
# see: http://blog.jthoenes.net/2013/08/16/waiting-for-a-javascript-event-with-seleniumcapybara/


###############################################################
When(/^wait for AJAX$/) do
# WaitForAjax
#	WaitForAjax2
# WaitForAjax3
# WaitForAjax4
end

#  wait = Selenium::WebDriver::Wait.new(:timeout => 10)



#  Capybara.using_wait_time(10) do
#    wait_for { page.evaluate_script('return document.readyState').eql?('complete') }
#    wait_for(page.evaluate_script('return document.readyState').eql?('complete'))
#end

#def wait_for_ajax
#  Timeout.timeout(Capybara.default_wait_time) do
#    loop do
#      active = page.evaluate_script('jQuery.active')
#      break if active == 0
#    end
#  end
#end



#from http://stackoverflow.com/questions/24370002/rails-cucumber-how-to-wait-for-javascript-to-finish-before-moving-on-to-next
#def wait_for_ajax
  # See: https://gist.github.com/10c41024510ee9f235e0
  # Linked from: http://techblog.fundinggates.com/blog/2012/08/capybara-2-0-upgrade-guide/
#  start = Time.now
#  while true
#    break if (page.evaluate_script("$.active") == 0)
#    if Time.now > start + Capybara.default_wait_time.seconds
#      fail "AJAX did not register as complete after #{Capybara.default_wait_time} seconds!"
#    end
#    sleep 0.1
#  end
#end



#############################################################
When(/^wait for Batch Request to complete$/) do
#      def execute_script(PDSErrandBoy),eventMap.BATCH_COMPLETE))
#      end
#      @touched = true
#      driver.execute_script(PDSErrandBoy.eventMap.BATCH_COMPLETE)
#      end
WaitForPDSErrandBoy
#  waitForEval
end

#############################################################
Then(/^the value for "([^"]*)" appear as expected\.$/) do |currency|
  expect(find(:xpath,"//*[@qa-automation-id='pds-currency-code']")).to have_content(currency)
end

#  expect(find(:xpath,"//*[@qa-automation-id='pds-currency-code']")).to have_content(currency), wait: 3

#expect(page).to have_text('Lorem ipsum', wait: 3)


#  expect(page).to have_xpath("//*[@qa-automation-id='pds-currency-code']")
  #Capybara.using_wait_time(10)do


#page.document.synchronize do
#  element.find(:xpath,"//*[@qa-automation-id='pds-currency-code']").click
#  textarea = element.find "textarea"
#end


=begin
using_wait_time 3 do
    expect(find(:xpath,"//*[@qa-automation-id='pds-currency-code']")).to have_content(currency)
end
=end


#Then(/^the value for "([^"]*)" appear as expected\.$/) do |currency|
#  page.find(:xpath,"//*[@qa-automation-id='pds-currency-code']").text.should have_content(currency)
#  expect(find(:xpath,"//*[@qa-automation-id='pds-currency-code']")).to have_content(currency, wait: 3)
#end


##############################################################
Then(/^the value for "([^"]*)"> appear as expected\.$/) do |priceid|
  expect(find(:xpath,"//*[@qa-automation-id='pds-adv-1year-priceid']")).to have_content(priceid)
end

##############################################################
Then(/^the value for "([^"]*)"> appear as expected\.$/) do |priceformatted|
  expect(find(:xpath,"//*[@qa-automation-id='pds-adv-1year-price-formatted']")).to have_content(priceformatted)
end

############# FOR SCENARIOS: 2,3,4,5,6,7,8 ##################
When(/^I visit the Pricing Replacement page on DC$/) do
  visit($BASE_URL_SHORT+'.com/qa-automation/pds/')
end

##############################################################
Then(/^I validate the "([^"]*)" and "([^"]*)"> appears as expected\.$/) do |arg1, arg2|
  pending # Write code here that turns the phrase above into concrete actions
end


########################### RESEARCH ###########################
# LOOKING FOR A WAIT UNTIL SCRIPT FINISHES LOADING AND REPLACES CONTENT!

# http://elementalselenium.com/tips/23-dynamic-pages
# http://elementalselenium.com/tips/47-waiting
# USE EXPLICIT WAITS but HOW??

# http://stackoverflow.com/questions/24649483/how-to-wait-till-an-element-appears-after-an-ajax-call-using-capybara-webkit
# Since Capybara can't see the server side you have to wait for the server-side change yourself.

# http://stackoverflow.com/questions/19740373/capybara-does-not-seem-to-be-waiting-as-it-should-do-async-ajax-event

### CHECK OUT: https://robots.thoughtbot.com/automatically-wait-for-ajax-with-capybara



# INFO: https://nulogy.com/who-we-are/company-blog/articles/sleep-is-for-the-weak/
# http://blog.tomoyukikashiro.me/post/things-to-be-aware-of-when-change-capybara_default_wait_time/
# https://gist.github.com/endymion/2007777
# http://stackoverflow.com/questions/3876412/capybara-doesnt-recognize-dynamically-added-dom-elements
# https://robots.thoughtbot.com/write-reliable-asynchronous-integration-tests-with-capybara

# not sure related: https://robots.thoughtbot.com/using-capybara-to-test-javascript-that-makes-http
