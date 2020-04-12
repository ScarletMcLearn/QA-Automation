require 'capybara'
require 'capybara/cucumber'
require 'selenium-webdriver'
require 'site_prism'
 #o2-auth

class EDU_Websdk_popup < SitePrism::Section
  #Websdk for Happy flow Install now

  element :accept_terms, :xpath,  ".//*[contains(text(),' I Accept')]"
  element :intall_button, :id, "eulaaccept"
end
