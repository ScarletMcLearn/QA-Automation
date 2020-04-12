require 'capybara'
require 'capybara/cucumber'
require 'selenium-webdriver'
require 'site_prism'


class DRCartPage < SitePrism::Page


   def initialize(url)
     @url = url
   end

   def initialize
   end

   #session
   element :dr_cart_count, :xpath, "//input[contains(@class,'dr_qtyInput')]"
   element :selected_currency, :xpath, ".//*[@id='currencySelector']//option[@selected='selected']"

   #define a method - add methods when it's absolutely neccessary
   def Populate(input_string)
   search_box.set(input_string)
   end


end
