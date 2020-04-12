require 'capybara'
require 'capybara/cucumber'
require 'selenium-webdriver'
require 'site_prism'

class CartPage < SitePrism::Page
   #local env variable not working @@localurl=''
  
   def initialize(url)
     #Capybara.app_host = url
     @url = url
   end
   
   #default constructor 
   def initialize
   end
    

   #section :IPMTestHarnessIFrame, ::IPMAdobeSyncingIframe, '.page-container'

   element :cart_titile, :xpath, "//h2[contains(text(),'Cart')]"
end

