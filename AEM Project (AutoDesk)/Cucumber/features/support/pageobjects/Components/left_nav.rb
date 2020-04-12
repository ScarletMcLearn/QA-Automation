require 'capybara'
require 'capybara/cucumber'
require 'selenium-webdriver'
require 'site_prism'

class LeftNav < SitePrism::Section
   
   element :leftnav_overview, :xpath, "//div[@class='left-navigation-main']//div[contains(text(),'Overview')]"
   element :leftnav_features, :xpath, "//div[@class='left-navigation-main']//div[contains(text(),'Features')]"
   element :leftnav_toolsets, :xpath, "//div[@class='left-navigation-main']//div[contains(text(),'Toolsets')]"
   element :leftnav_compare, :xpath, "//div[@class='left-navigation-main']//div[contains(text(),'Compare')]"
   element :leftnav_free_trial, :xpath, "//div[@class='left-navigation-main']//div[contains(text(),'Free')]"
   element :leftnav_subscribe, :xpath, "//div[@class='left-navigation-main']//div[contains(text(),'Subscribe')]"
   element :features_sublink, :xpath, "//div[@class='left-navigation-sublink']//a[contains(text(),'Features')]"
 
end