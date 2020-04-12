require 'capybara'
require 'capybara/cucumber'
require 'selenium-webdriver'
require 'site_prism'

class EDU_Veritas_Verification_Message < SitePrism::Section

   #add components to pages
   #verification messages on edu AEM page
  element :verification_link_message, :xpath, "//div[@id='edu-notification-msg']/p"
  element :verification_button, :xpath, "//div[@id='edu-notification-msg']//a[2]"
  element :verification_sso_button, :xpath, "//div[@id='edu-notification-msg']//a"
  element :verification_add_school_button, :xpath, "//div[@id='edu-notification-msg']//div/a"

end