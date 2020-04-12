require 'capybara'
require 'capybara/cucumber'
require 'selenium-webdriver'
require 'site_prism'

class TopNav < SitePrism::Section
   
   element :product_name, :xpath, "//a[@class='product-name']"
   element :contact_us, :xpath, "(//li[@class='top-navigation-item'])[1]"
   element :download_free_trial, :xpath, "(//li[@class='top-navigation-item'])[2]"
   element :subscribe, :xpath, "(//li[@class='top-navigation-item'])[3]"
   element :add_to_cart, :xpath, "//li[@class='top-navigation-item selected']"
   elements :contact_us_dropdown, :xpath, "//li[@class='top-navigation-dropdown-item']"
end