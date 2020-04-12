require 'capybara'
require 'capybara/cucumber'
require 'selenium-webdriver'
require 'site_prism'


class HobbyistPage < SitePrism::Page


   def initialize(url)
     @url = url
   end

   def initialize
   end

   #session
   element :get_started_button, :xpath, "//span[contains(text(),'GET STARTED')]"
   element :sign_in_button, :xpath, "(//a[@data-id='hobbyist-trial-login-link']//span)[1]"
   element :user_name, :xpath, "//input[@id='userName']"
   element :next_after_enter_username, :xpath, "//button[@id='verify_user_btn']"
   element :pass_word, :xpath, "//input[@id='password']"
   element :login_button, :xpath,"//*[@id='btnSubmit']"
   element :get_download_button, :xpath, "//span[./text()='Download Fusion 360']"
   element :get_started_for_eligible_user, :xpath, "//span[./text()='Get started']"
   element :confirmation_msg, :xpath, "//div[contains(text(),'Thank you for downloading Fusion 360')]"

   #define a method - add methods when it's absolutely neccessary
   def Populate(input_string)
   search_box.set(input_string)
   end


end
