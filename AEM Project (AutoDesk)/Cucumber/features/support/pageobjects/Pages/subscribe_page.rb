require 'capybara'
require 'capybara/cucumber'
require 'selenium-webdriver'
require 'site_prism'
require_relative '../Components/buy_container.rb'

class SubscribePage < SitePrism::Page
   #local env variable not working @@localurl=''
  
   def initialize(url)
     #Capybara.app_host = url
     @url = url
   end
   
   #default constructor 
   def initialize
   end
    
   
   # parameterised with apphost, will be loaded at load()
   #set_url  '/products{/product_name}{/page_type}'
   
   #add components to pages 
   section :buyContainer, ::BuyContainer, 'div[id^="buy-container"]'
   
   #add elements to pages
   element :page_title, :xpath, ".//*[@data-automation-id='buy-container-marketing-copy']"
   element :search_box, :xpath, ".//*[@id='site-search-qt']"
   element :summary_drawer_cta_button, :xpath, "//*[@data-automation-id='buy-container-call-to-action']"
   
   element :os, :xpath, "(//div[@id='solution']//table)[1]//*[contains(text(),'Operating System')]"
   element :browser, :xpath, "(//div[@id='solution']//table)[1]//*[contains(text(),'Browser')]"


   #define a method - add methods when it's absolutely neccessary
   def Populate(input_string)
   search_box.set(input_string)
   end

    
end

