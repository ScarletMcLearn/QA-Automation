require 'capybara'
require 'capybara/cucumber'
require 'selenium-webdriver'
require 'site_prism'
require_relative '../Components/edu_signin.rb'
require_relative '../Components/edu_dropdown.rb'
require_relative '../Components/edu_download.rb'
require_relative '../Components/edu_websdk_popup.rb'
require_relative '../Components/edu_websdk_browser_msg.rb'
require_relative '../Components/edu_verification_form.rb'
require_relative '../Components/edu_verification_message.rb'
require_relative '../Components/edu_verification_add_school.rb'


class EDUDownloadPage < SitePrism::Page
   #local env variable not working @@localurl=''

  def initialize(url)
     #Capybara.app_host = url
   @url = url
  end

   #default constructor
  def initialize
  end

   #add components to pages
  section :edu_Signin, ::EDU_Signin, '.education-download-signin'
  section :edu_Dropdown, ::EDU_Dropdown, '.medium-7.large-6.wd-pr-64-md.wd-pr-64-lg.end.grid-columns'
  section :edu_DownloadButton, ::EDU_DownloadButton, '.education-download-button'
  section :edu_Websdk_popup, ::EDU_Websdk_popup, '#eula' 
  section :edu_Websdk_browser_msg, ::EDU_Websdk_browser_msg, '#thankYouDlg'
  section :edu_Veritas_Verification_Message, ::EDU_Veritas_Verification_Message, '.edu-info-message>p'
  section :edu_Veritas_Verification_Form, ::EDU_Veritas_Verification_Form, '#sid-step-student-personal-info'
  section :edu_Veritas_Verification_AddSchool, ::EDU_Veritas_Verification_AddSchool, '#sheerid-body'

   #define a method - add methods when it's absolutely neccessary

end
