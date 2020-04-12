require 'capybara'
require 'capybara/cucumber'
require 'selenium-webdriver'
require 'site_prism'
require_relative '../Components/free_trial_popup.rb'
require_relative '../Components/free_trial_signin_iframe.rb'
class FreeTrialPage < SitePrism::Page
  
   def initialize(url)
     #Capybara.app_host = url
     @url = url
   end
   
   #default constructor 
   def initialize
   end
  
   section :freeTrialPopup, ::FreeTrialPopup, 'div[id^="oxygen-trial-flow"].otfdl'
   #'div[id^="oxygen-trial-flow"][not(.hide)]'
   iframe :freeTrialSigninIframe, ::FreeTrialSigninIframe, '#o2-auth'
   element :download_free_trial_button, :xpath, "(.//*[contains(@data-trial-trigger,'oxygen-trial-flow')])[1]"
   element :commercial_use_box, :xpath, ".//*[@data-wat-val='commercial use']"
   element :decline_push_notification, :xpath, "//button[contains(text(),'No Thanks')]"
   element :reject_live_agent, :xpath, "//button[@data-wat-chat-invitation='declined']"
 
    
end

