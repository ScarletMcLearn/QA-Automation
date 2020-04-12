require 'capybara'
require 'capybara/cucumber'
require 'selenium-webdriver'
require 'site_prism'
 #o2-auth
class FreeTrialSigninIframe < SitePrism::Page
   element :sign_in_email, :xpath, ".//*[@id='userName']"
   element :sign_in_password, :xpath, ".//*[@id='password']"
   element :next_on_signin, :xpath, ".//*[@id='verify_user_btn']"
   element :signin_button, :xpath, ".//*[@id='btnSubmit']"
   element :country_of_residence_dropdown, :xpath, "//select[contains(@class,'country-selector-input')]"
  
   
end