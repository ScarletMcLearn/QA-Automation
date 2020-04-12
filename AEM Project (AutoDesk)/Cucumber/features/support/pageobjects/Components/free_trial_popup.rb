require 'capybara'
require 'capybara/cucumber'
require 'selenium-webdriver'
require 'site_prism'

class FreeTrialPopup < SitePrism::Section
   
   element :next_button, :xpath, "(//span[contains(text(),'Next')])[3]"
   element :phone_input_box, :xpath, ".//*[@id='Phone']"
   element :company_name, :xpath, "//*[@id='Company']"
   element :message_invalid_phone_number, :xpath, "//p[contains(text(),'Please enter a valid phone number')]"  
   element :message_invalid_email, :xpath, "//p[contains(text(),'Please enter a valid email address')]"  
   element :message_agree_to_terms, :xpath, "//p[contains(text(),'Please agree to the terms')]"  
   element :country_of_residence_US, :xpath, "//select[contains(@class,'country-selector-input')]//option[@value='US']"
   element :send_email_button_for_download_instruction, :xpath, "(.//*[contains(@id,'sendemailcta')])[1]"
   element :email_checkbox_for_send_download_instruction, :xpath, "//input[@id='Email']"
   element :term_condition_checkbox, :xpath, ".//*[@id='TermsConditionsCheckbox']"
   element :alternative_term_condition, :xpath, "//label[@for='TermsConditionsCheckbox']/../input"
   element :confirmation_message_after_send_email, :xpath, "//div[contains(@class,'otfdl-email-sent')]//h3"
   

   
end