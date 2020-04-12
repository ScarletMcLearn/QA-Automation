require 'capybara'
require 'capybara/cucumber'
require 'selenium-webdriver'
require 'site_prism'
 #o2-auth

class EDU_Signin < SitePrism::Section
 #logged out state
  element :Signin_button, :xpath, ".//*[@class='sign-in-btn']"
  element :CreateAccount_button, :xpath, ".//*[@class='create-account-btn']"

  #logged in state
  element :welcome_message, :xpath, ".//*[@class='wd-font-16 wd-mr-32 edu-login-message']"
  element :displayed_username, :xpath, ".//*[@class='edu-name-placeholder']"
  element :Logout_button, :xpath, ".//*[@class='wd-mr-32 wd-mt-16-sm wd-mt-0 edu-login-logout']"
  element :accounts_link, :xpath, ".//*[@class='wd-mr-32 wd-mt-16-sm wd-mt-0 edu-login-account']"

end
