require 'rubygems'
require 'capybara'
require 'capybara/dsl'
require 'capybara/rspec'
require 'capybara/cucumber'
require 'rspec'
require 'rspec/expectations'
require 'rspec/matchers'
require 'json'
require 'httparty'
require 'certified'
require 'selenium-webdriver'
require 'xpath'
require_relative 'register_driver'
require_relative 'baseclass'
require_relative 'initialize_page'

#require 'webdrivers'

##############################
require 'show_me_the_cookies'

RSpec.configure do |config|
  config.include ShowMeTheCookies, :type => :feature
  config.before(:each, js: true) do
   # Disabling foreseeresults js
   page.driver.browser.url_blacklist = ["https://gateway.answerscloud.com/code/19.3.2-v.2/fs.trigger.js",
    	                                 "https://damassets.autodesk.net/content/dam/autodesk/javascript/foresee-trigger.js",
    	                                 "https://gateway.answerscloud.com"]
  end
end

ShowMeTheCookies.register_adapter(:Firefox_FR, ShowMeTheCookies::Selenium)
ShowMeTheCookies.register_adapter(:Firefox_IT, ShowMeTheCookies::Selenium)
ShowMeTheCookies.register_adapter(:Firefox_NL, ShowMeTheCookies::Selenium)

World(ShowMeTheCookies)

####################################
include RSpec::Matchers

###################################

Capybara.run_server = false
Capybara.default_driver = :selenium
Capybara.default_selector = :css
Capybara.default_max_wait_time = 10


project_root = File.expand_path('../../', __FILE__)



Before do | scenario |
	tags = scenario.source_tag_names
	# Need to be able to set higher timeout for mobile, as it takes much longer to start them on SauceLabs
	client_timeout = 200
	# First see if there is ENV variable for a browser:
	if ENV['browser'] == 'IE'
		capabilities = {
	     :platform => "Windows 8.1",
	     :browserName => "Internet Explorer",
	     :version => "11.0",
	     # resizing the browser window
	     :screenResolution => "1280x1024"
  		}
  	elsif ENV['browser'] == 'firefox'
  		capabilities = {
	     :platform => "Windows 10",
	     :browserName => "Firefox",
	     :acceptSslCerts => true
	  	}
	  	client_timeout = 240
  	elsif ENV['browser'] == 'chrome'
	  	capabilities = {
	    :platform => "Windows 10",
	    :browserName => "Chrome",
	    # resizing the browser window
	    :screenResolution => "1280x1024",
	    :chromedriverVersion => "2.38"
	    }
  	elsif ENV['browser'] == 'SF'
	  	capabilities = {
	  		:platform => "Mac 10.12",
			:browserName => "Safari",
			:version => "10"
	    }
  	elsif ENV['browser'] == 'iPhone'
	  	capabilities = {
	  		:deviceName => "iPhone 7",
		 	:browserName => "Safari"
	    }
	    client_timeout = 240
    elsif ENV['browser'] == 'android'
	  	capabilities = {
	  		:deviceName => "Android Emulator",
	  		:browserName => "Chrome"
	    }
	    client_timeout = 240

	# Now look through tags:
	elsif tags.include?("@IE")
		capabilities = {
	     :platform => "Windows 8.1",
	     :browserName => "Internet Explorer",
	     :version => "11.0",
	     # resizing the browser window
	     :screenResolution => "1280x1024"
  		}
  	elsif tags.include?("@FF")
  		capabilities = {
	     :platform => "Windows 10",
	     :browserName => "Firefox",
	     :acceptSslCerts => true
	  	}
  	elsif tags.include?("@CH")
	  	capabilities = {
	    :platform => "Windows 10",
	    :browserName => "Chrome",
	    # resizing the browser window
	    :screenResolution => "1280x1024",
	    :chromedriverVersion => "2.38"
	    }
  	elsif tags.include?("@SAFARI")
	  	capabilities = {
	  		:platform => "Mac 10.12",
			:browserName => "Safari",
			:version => "10"
	    }
  	elsif tags.include?("@IPHONE6")
	  	capabilities = {
	  		:deviceName => "iPhone 6",
		 	:browserName => "Safari"
	    }
	    client_timeout = 240
  	elsif tags.include?("@IPHONE7")
	  	capabilities = {
	  		:deviceName => "iPhone 7",
		 	:browserName => "Safari"
	    }
		client_timeout = 240
	elsif tags.include?("@IPHONE8")
		capabilities = {
			:deviceName => "iPhone 8 Simulator",
		   :browserName => "Safari"
	  }
	  client_timeout = 240
	elsif tags.include?("@IPADPRO")
		capabilities = {
			:deviceName => "iPad Pro (9.7 inch) Simulator",
		   :browserName => "Safari"
	  }
	  client_timeout = 240
    elsif tags.include?("@ANDROID")
	  	capabilities = {

			:deviceName => "Google Pixel 3 XL GoogleAPI Emulator",
			:browserName => "Chrome",
			:platformName => "Android",
			:platformVersion => "9.0"
			
	  		#:deviceName => "Samsung Galaxy S8 WQHD GoogleAPI Emulator",
			#:browserName => "Chrome",
			#:platformName => "Android",
			#:platformVersion => "8.1"
	    }
		client_timeout = 240
	elsif tags.include?("@Pixel")
		capabilities = {
			:deviceName => "Google Pixel GoogleAPI Emulator",
		  :browserName => "Chrome",
		  :platformName => "Android",
		  :platformVersion => "8.1"
	  }
	  client_timeout = 240
   	elsif tags.include?("@CH-FR")
	  	capabilities = {
	  		:platform => "Windows 10",
 			:browserName => "Chrome",
 			:screenResolution => "1280x1024",
  			chromeOptions: {
				#set browser 'Fr' language
				args: [ 'lang=fr-FR' ],}
	    }
   	elsif tags.include?("@CH-IT")
	  	capabilities = {
	  		:platform => "Windows 10",
 			:browserName => "Chrome",
 			:screenResolution => "1280x1024",
  			chromeOptions: {
				#set browser 'It' language
				args: [ 'lang=it-IT' ],}
	    }
   	elsif tags.include?("@CH-NL")
	  	capabilities = {
	  		:platform => "Windows 10",
 			:browserName => "Chrome",
 			:screenResolution => "1280x1024",
  			chromeOptions: {
				#set browser 'Nl' language
				args: [ 'lang=nl-NL' ],}
	    }
  	else
	  	capabilities = {
	    :platform => "Windows 10",
	    :browserName => "Chrome",
	    # resizing the browser window
	    :screenResolution => "1280x1024"
  	    }
  	end
    RegisterDriver.register_this_driver(capabilities, client_timeout,tags) 
	InitializePage.initialize
end



# After do
# Capybara.reset_sessions!
# end

After do |scenario|
	if scenario.respond_to?('scenario_outline') then
		 scenario = scenario.scenario_outline
	end
	if scenario.failed?
		filename = "error-#{scenario.feature.name}-#{Time.now}.png" 
		page.driver.browser.save_screenshot filename
		embed(filename, "image/png");
	end
end

if ENV['SAUCE_ENV'] == 'SAUCE'
After do | scenario |
      driver = ::Capybara.current_session.driver
      session_id = driver.browser.session_id
      job_name = scenario.feature.name

      output = []
      output << "\nSauceOnDemandSessionID=#{session_id} job-name=#{job_name}"

      puts output.join(' ')
    end
end

#Capybara.current_driver = :selenium



#Syncronization related settings
module Helpers
  def without_resynchronize
    page.driver.options[:resynchronize] = false
    yield
    page.driver.options[:resynchronize] = true
  end
end
World(Capybara::DSL, Helpers)
