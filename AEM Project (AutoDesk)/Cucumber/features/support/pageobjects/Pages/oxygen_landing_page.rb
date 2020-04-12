require 'capybara'
require 'capybara/cucumber'
require 'selenium-webdriver'
require 'site_prism'
require_relative '../Components/oxygen_signin_form.rb'

class OxygenLandingPage < SitePrism::Page
   #local env variable not working @@localurl=''

  def initialize(url)
     #Capybara.app_host = url
   @url = url
  end

   #default constructor
  def initialize
  end

   #add components to pages
  section :oxygen_Signin_Form, ::Oxygen_Signin_Form, '#new_user_signin_form'

   #define a method - add methods when it's absolutely neccessary

end
