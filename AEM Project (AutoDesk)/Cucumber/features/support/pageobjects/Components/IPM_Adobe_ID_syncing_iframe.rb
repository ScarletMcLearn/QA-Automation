require 'capybara'
require 'capybara/cucumber'
require 'selenium-webdriver'
require 'site_prism'
 
class IPMAdobeSyncingIframe < SitePrism::Section 
   element :subscribe_button, :xpath, "//a"
   


   
end