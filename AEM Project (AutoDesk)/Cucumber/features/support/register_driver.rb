class RegisterDriver
require 'adsk_headless'

def RegisterDriver.register_this_driver(capabilities, client_timeout,tags)

    if ENV['SAUCE_ENV'] == 'SAUCE'
        capabilities[:tunnelIdentifier] = ENV['TUNNEL_IDENTIFIER']
        Capybara.register_driver :selenium do |app|
            url = "https://#{ENV['SAUCE_USERNAME']}:#{ENV['SAUCE_ACCESS_KEY']}@ondemand.saucelabs.com:443/wd/hub".strip
            client = Selenium::WebDriver::Remote::Http::Default.new
            client.timeout = client_timeout # instead of the default 60

            Capybara::Selenium::Driver.new(app, 
              :browser => :remote, 
              :url => url,
              :http_client => client, 
              :desired_capabilities => capabilities)
          end 

    elsif ENV['SAUCE_ENV'] == 'LOCALSAUCE'
        Capybara.register_driver :selenium do |app|
            url = "http://julie12345:423a0c04-da0f-48c8-84e2-34eaa9063987@ondemand.saucelabs.com:80/wd/hub"
            client = Selenium::WebDriver::Remote::Http::Default.new
            client.timeout = client_timeout # instead of the default 60

            Capybara::Selenium::Driver.new(app, 
              :browser => :remote, 
              :url => url,
              :http_client => client, 
              :desired_capabilities => capabilities)
          end
        
      
  else
    
    ADSKDriver::HeadlessDriver.register_headless_driver(100,tags)

  end
  return
end

end