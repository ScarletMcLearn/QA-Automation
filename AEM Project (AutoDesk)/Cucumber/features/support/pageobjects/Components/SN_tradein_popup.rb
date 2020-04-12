require 'capybara'
require 'capybara/cucumber'
require 'selenium-webdriver'
require 'site_prism'
 
class SNTradeInPopup < SitePrism::Section 
   element :trade_in_email, :xpath, "//*[@id='guideContainer-rootPanel-email___widget']"
   element :trade_in_email_text, :xpath, "//*[@for='guideContainer-rootPanel-email___widget']"
   element :trade_in_serial_number, :xpath, "//*[@id='guideContainer-rootPanel-serialNumber___widget']"
   element :trade_in_serial_number_text, :xpath, "//*[@for='guideContainer-rootPanel-serialNumber___widget']"
   element :trade_in_modal, :xpath, "//*[@class='wd-modal--window--body wd-pv-24 wd-ph-24']"
   element :trade_in_email_error_msg, :xpath, "//div[@id='guideContainer-rootPanel-email__']/div[@class='guideFieldError']"
   element :trade_in_sn_error_msg, :xpath, "//div[@id='guideContainer-rootPanel-serialNumber__']/div[@class='guideFieldError']"
   element :trade_in_continue_button, :xpath, "//*[@id='guideContainer-rootPanel-submit___widget']"
   element :trade_in_banner_inactive, :xpath, "//*[@class='js-trigger-link inactive']"
   element :trade_in_promo_form_fields, :xpath, "//div[@class='wd-modal--window--body wd-pv-24 wd-ph-24']/"
   element :trade_in_email_field_label, :xpath, "//div[@id='guideContainer-rootPanel-email__']/div/label"
   element :trade_in_old_SN_field_label, :xpath, "//div[@id='guideContainer-rootPanel-serialNumber__']/div/label"
   element :trade_in_promo_form_SN_description, :xpath, "//div[@id='guideContainer-rootPanel-serialNumber___guideFieldLongDescription']"
   element :trade_in_form_close_button, :xpath, "//button[@class='js-close-modal']"

   
end