require 'capybara'
require 'capybara/cucumber'
require 'selenium-webdriver'
require 'site_prism'
 #o2-auth

class EDU_DownloadButton < SitePrism::Section
 #logged out state
  element :disabled_install_button, :xpath, ".//*[@class='wd-button wd-button-responsive wd-font-16 wd-uppercase wd-no-wrap wd-ba-0 sign-in-btn edu-button-disabled-download']"
  #logged in state

#websdk options for download of product for year 2020, which have 4 dropdown options.
  element :download_dropdown_list, :xpath, "(.//*[@class='split-button-wrapper']//*[contains(text(),'Install Now')]/../..//b)[2]"

  #element :install_now, :xpath, ".//*[@id='split-button-0']"
  element :install_now, :id, "split-button-0"
  element :download_now, :id, "split-button-1"
  element :browser_download, :id, "split-button-2"
  element :help_me_decide, :id, "split-button-3"

 # sure proof way to know u can select the proper button, if and only if the label matches.
 #Also the sample below would be used as default download of INSTALL NOW which is available immediately
  element :download_button_label_install_now,  :xpath, ".//*[@class='split-button-wrapper']//*[contains(text(),'Install Now')]"

end
