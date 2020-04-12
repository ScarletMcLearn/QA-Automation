require 'capybara'
require 'capybara/cucumber'
require 'selenium-webdriver'
require 'site_prism'
require_relative '../Components/top_nav.rb'
require_relative '../Components/left_nav.rb'

class NewProductCenterPage < SitePrism::Page
   #local env variable not working @@localurl=''
  
   def initialize(url)
     #Capybara.app_host = url
     @url = url
   end
   
   #default constructor 
   def initialize
   end
    

   section :topNav, ::TopNav, '.top-navigation-main-wrapper.black_theme'
   section :leftNav, ::LeftNav, '.left-navigation'
   elements :term_price, :xpath, "//h3[@itemprop='price' and @class='wd-font-24 term']"
   element :default_term_price, :xpath, "(.//*[@class='otfdl-product-selection otfdl-content-container wd-display-flex' or @class='buy-container-term-info wd-pt-16 wd-pb-20 clearfix'])[2]"
   element :download_overlay, :xpath, ".//*[@class='otfdl-product-selection otfdl-content-container wd-display-flex']"

end

