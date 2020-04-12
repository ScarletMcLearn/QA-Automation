require 'capybara'
require 'capybara/cucumber'
require 'selenium-webdriver'
require 'site_prism'
 #o2-auth

class EDU_Websdk_browser_msg < SitePrism::Section
  #Websdk messagings for Chrome browser
  element :thankyou_screen, :id,  "subTitle"
  element :file_is_downloading_msg, :id,  "tySubTitle"
end
