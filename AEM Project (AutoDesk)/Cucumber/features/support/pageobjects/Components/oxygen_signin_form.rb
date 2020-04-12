require 'capybara'
require 'capybara/cucumber'
require 'selenium-webdriver'
require 'site_prism'
 #o2-auth

class Oxygen_Signin_Form < SitePrism::Section
 #logged out state
  element :o2_signin_textbox, :id, "userName"
  element :o2_pwd_textbox, :id, "password"
  element :o2_next_button, :id, "verify_user_btn"
  element :o2_signin_button, :id, "btnSubmit"

  #logged in state

  #method for login
  def signin(input_username, input_password)
    o2_signin_textbox.set input_username
    o2_next_button.click
    sleep 5
    o2_pwd_textbox.set input_password
    o2_signin_button.click
    sleep 5
  end

  def default_signin
    signin("facultyis@mailinator.com","test1234")
    sleep 5
  end

end
