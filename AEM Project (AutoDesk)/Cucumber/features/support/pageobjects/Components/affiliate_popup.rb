require 'capybara'
require 'capybara/cucumber'
require 'selenium-webdriver'
require 'site_prism'
 
class AffiliatePopup < SitePrism::Section 
   
   element :reseller_affiliate_logo, :xpath, "//img[@class='reseller-affiliate-logo']"
   element :reseller_affiliate_welcome_header, :xpath, "//div[@class='affiliate-popup section']//div[@class='wd-modal--window--body wd-pv-24 wd-ph-24']/h2"
   element :reseller_affiliate_description, :xpath, "//div[@class='affiliate-popup section']//div[@class='wd-modal--window--body wd-pv-24 wd-ph-24']/p"
   element :reseller_affiliate_no_thanks, :xpath, "//div[@class='affiliate-popup section']//h5/a"
   element :reseller_affiliate_close, :xpath, "//button[@class='js-close-modal']"
   element :reseller_affiliate_email, :xpath, "//input[@id='resellerInput']"
   element :reseller_affiliate_agree, :xpath, "//div[@class='affiliate-popup section']//button[@class='js-agree-button wd-cta wd-mt-10-sm']"
   element :reseller_affiliate_invalid_email_error, :xpath, "//span[@class='reseller-affiliate-invalid']"
   element :reseller_affiliate_required_email_error, :xpath, "//span[@class='reseller-affiliate-require']"
   
end