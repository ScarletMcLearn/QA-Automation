
require 'capybara/cucumber'


###################################################################################



Capybara.register_driver :Firefox_FR do | app |
  caps = Selenium::WebDriver::Remote::Capabilities.firefox(:acceptSslCerts => true)
  profile_fr = Selenium::WebDriver::Firefox::Profile.new
  profile_fr['intl.accept_languages'] = 'fr-FR'
  Capybara::Selenium::Driver.new(app, :browser => :firefox, :desired_capabilities => caps, :profile => profile_fr)
end
Capybara.use_default_driver



  Capybara.register_driver :Firefox_IT do | app |
    profile_it = Selenium::WebDriver::Firefox::Profile.new
  #  profile_it["intl.accept_languages"] = "it"
    profile_it["intl.accept_languages"] = "it-IT"
  	Capybara::Selenium::Driver.new(app, :browser => :firefox, :profile => profile_it)
end
Capybara.use_default_driver


Capybara.register_driver :Firefox_NL do | app |
  profile_nl = Selenium::WebDriver::Firefox::Profile.new
#  profile_nl["intl.accept_languages"] = "nl"
  profile_nl["intl.accept_languages"] = "nl-NL"
  Capybara::Selenium::Driver.new(app, :browser => :firefox, :profile => profile_nl)
end
Capybara.use_default_driver


###################################################################################
