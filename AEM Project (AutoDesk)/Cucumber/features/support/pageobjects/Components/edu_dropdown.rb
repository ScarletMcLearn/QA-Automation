require 'capybara'
require 'capybara/cucumber'
require 'selenium-webdriver'
require 'site_prism'
 #o2-auth

class EDU_Dropdown < SitePrism::Section
 #logged out state
  element :get_started_unlogin_msg, :xpath, ".//*[@class='edu-dropdown-unlogged wd-mb-8 wd-font-16']"


  #logged in state

  #License type dropdown
  element :license_type_dropdown, :xpath, "//select[contains(@class,'edu-dl-s')]"
  element :license_type_dropdown_standalone, :xpath, "//select[contains(@class,'edu-dl-s')]//option[@value='standalone']"
  element :license_type_dropdown_network, :xpath, "//select[contains(@class,'edu-dl-s')]//option[@value='network']"
  element :license_type_dropdown_mssa, :xpath, "//select[contains(@class,'edu-dl-s')]//option[@value='mssa']"

#product version dropdown
  element :version_dropdown, :xpath, "//select[contains(@class,'edu-dl-v')]"
  element :version_dropdown_Autocad2020, :xpath, "//select[contains(@class,'edu-dl-v')]//option[@value='autocad-2020']"
  element :version_dropdown_Mango2020, :xpath, "//select[contains(@class,'edu-dl-v')]//option[@value='mango-2020']"
  element :version_dropdown_Mango2018, :xpath, "//select[contains(@class,'edu-dl-v')]//option[@value='mango-2018']"

#OS selection dropdown
  element :operating_system_dropdown, :xpath,  "//select[contains(@class,'edu-dl-os')]"
  element :operating_system_dropdown_windows64bit, :xpath,  "//select[contains(@class,'edu-dl-os')]//option[@value='Win64']"

#Language selection dropdown
  element :language_dropdown, :xpath, "//select[contains(@class,'edu-dl-la')]"
  element :language_dropdown_english, :xpath, "//select[contains(@class,'edu-dl-la')]//option[@value='en-US']"
  element :language_dropdown_deutsch, :xpath, "//select[contains(@class,'edu-dl-la')]//option[@value='de-DE']"

#Links
  element :help_me_decide, :xpath, ".//*[@class='edu-dropdown-compare']"

#on retrieval of serial Numbers (i.e. Autocad - std alone download)
  element :serial_number, :xpath, ".//*[@class='edu-dropdown-serial-number wd-bold']"
  element :product_key, :xpath, ".//*[@class='edu-dropdown-product-key wd-bold']"
  element :file_size, :xpath, ".//*[@class='edu-dropdown-file-size wd-bold']"
  element :authorized_user, :xpath, ".//*[@class='edu-dropdown-seats wd-bold']"
  element :email_alert_msg, :xpath, ".//*[@class='wd-bg-lily-white wd-box-border-rb wd-pa-16']"



#For Cloud download arrangement
  element :get_access_button, :xpath, ".//*[@class='pc-brand wd-button wd-button-responsive wd-font-16 wd-uppercase wd-no-wrap wd-ba-0 get-cloud-access-btn edu-button-enabled-cloudaccess']"
  element :not_entitled_cloud_msg, :xpath, ".//*[@class='edu-user-type-institutional']"
end
