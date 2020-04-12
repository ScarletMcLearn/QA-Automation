require 'capybara'
require 'capybara/cucumber'
require 'selenium-webdriver'
require 'site_prism'
require_relative '../Components/IPM_Adobe_ID_syncing_iframe.rb'

class IPMPage < SitePrism::Page
   #local env variable not working @@localurl=''
  
   def initialize(url)
     #Capybara.app_host = url
     @url = url
   end
   
   #default constructor 
   def initialize
   end
    

   section :IPMTestHarnessLargeIFrame, ::IPMAdobeSyncingIframe, '#bigIframe'
   element :large_iframe_element, :xpath, ".//*[@id='bigIframe']"
   element :environment_stg, :xpath, "//label[contains(text(),'STG')]"
   element :environment_pre, :xpath, "//label[contains(text(),'PREVIEW PROD')]"
   element :environment_prod, :xpath, "//label[contains(text(),'LIVE PROD')]"
   element :product_name_dropdown, :xpath, "//button[@id='prodName']"
   element :product_name_Autocad, :xpath, "//a[text()='AutoCAD']"
   element :product_name_Maya, :xpath, "//a[text()='Maya']"
   element :product_name_3DSMAX, :xpath, "//a[text()='3ds Max']"
   element :country_name_dropdown, :xpath, "//button[@id='country']"
   element :language_option_dropdown, :xpath, "//button[@id='lang']"
   element :subscribe_button, :xpath, ".//*[@data-wat-linkname='ipm-buy-click' or @data-wat-linkname='ipm-buy']"
   element :link_para_inputbox, :xpath, "//input[@id='link']"
   element :license_rental, :xpath, "//label[contains(text(),'RTL')]"
   element :turn_on_auto_renew, :xpath, "//span[contains(text(),'Turn Auto-Renew on')]"
end

