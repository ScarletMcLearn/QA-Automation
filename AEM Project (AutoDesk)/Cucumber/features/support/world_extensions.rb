#http://stackoverflow.com/questions/918066/reuse-cucumber-steps


# from: http://www.unknownerror.org/opensource/cucumber/cucumber/q/stackoverflow/918066/reuse-cucumber-steps
# checkout: https://github.com/cucumber/cucumber/wiki/A-Whole-New-World

#########/support/world_extensions.rb ###########
#module KnowsUser
#  def login
    #visit('/login')
#    fill_in('User name', with: user.name)
#    fill_in('Password', with: user.password)
#    #click_button('Log in')
#    click_on('btnSubmit')

#  end

#  def user
#    @user ||= User.create!(:name => 'students@mailinator.com', :password => 'test1234')
#  end
#end
#World(KnowsUser)


###################################################################
# FOR /DC-Oxygen-Trial-Download/step_definitions/signin-in.rb
require "test/unit/assertions"
include Test::Unit::Assertions
module Oxygen_site

  def login_from_Oxygen_site_edu
#      within_fieldset('new_user_signin_form')
        visit($OXYGEN_URL)
        click_on('signin_btn')
        fill_in 'UserName', :with => 'students@mailinator.com'
#    fill_in("userName", :with => "students@mailinator.com")
        click_on('verify_user_btn')
        fill_in("password", :with => "test1234")
        click_on("btnSubmit")
        sleep 3
  end

  def login_from_Oxygen_site_edu(username,password)
  #      within_fieldset('new_user_signin_form')
          visit($OXYGEN_URL)
          click_on('signin_btn')
          oxygen_signin(username, password)

    end

# user account exists on both staging/prod
  def login_from_Oxygen_site_trial
        visit($OXYGEN_URL)
        click_on('signin_btn')
        fill_in 'UserName', :with => 'qatrialuser@mailinator.com'
        click_on('verify_user_btn')
        fill_in("password", :with => "test1234")
        click_on("btnSubmit")
        sleep 3
  end

end
World(Oxygen_site)


# FROM: http://drnicwilliams.com/2009/04/15/cucumber-building-a-better-world-object/
module FormSubmissionHelpers
  def fill_in_oxygen_account_form
#      within_fieldset('new_user_signin_form')
        sleep 5 # adding more buffer time to load the page
#        fill_in("userName", :with => "qatrialuser@mailinator.com")
    fill_in("userName", :with => "students@mailinator.com")
        click_on('verify_user_btn')
        fill_in("password", :with => "test1234")
        click_on("btnSubmit")
        sleep 4
  end

  def fill_in_oxygen_account_form_au_user_with_saved_viewed_profile
  #      within_fieldset('new_user_signin_form')
        sleep 2 # adding more buffer time to load the page
        fill_in 'UserName', :with => 'test_edu_user@mailinator.com'
  #    fill_in("userName", :with => "students@mailinator.com")
        click_on('verify_user_btn')
        fill_in("password", :with => "test1234")
        click_on("btnSubmit")
        sleep 4
  end

  def fill_in_oxygen_account_form_au_user_with_no_class_views
  #      within_fieldset('new_user_signin_form')
        sleep 2 # adding more buffer time to load the page
        fill_in 'UserName', :with => 'au_user_no_class_views@mailinator.com'
  #    fill_in("userName", :with => "students@mailinator.com")
        click_on('verify_user_btn')
        fill_in("password", :with => "test1234")
        click_on("btnSubmit")
        sleep 4
  end

  def fill_in_oxygen_account_form_au_user_with_las_vegas_profile
  #      within_fieldset('new_user_signin_form')
        sleep 2 # adding more buffer time to load the page
        fill_in 'UserName', :with => 'au_las_vegas@mailinator.com'
  #    fill_in("userName", :with => "students@mailinator.com")
        click_on('verify_user_btn')
        fill_in("password", :with => "test1234")
        click_on("btnSubmit")
        sleep 4
  end



end
World(FormSubmissionHelpers)

###################################################################
# FOR /DC-TRIAL-DOWNLOAD-FLOW

module TrialDownloadFlow
  def fill_trial_form_individual
        within(:xpath,"//*[contains(@class,'otfdl-user-types-box')]") do
          select('An individual or business user')
        end
  end

  def sign_in_oxygen_account_form_trial
    within_frame(0) do
		    #click_on('signin_link')
		sleep 10
        fill_in("userName", :with =>"students@mailinator.com")
        click_on("verify_user_btn")
        sleep 5
        fill_in("password", :with => "test1234")
        click_on("btnSubmit")
        sleep 3
      end
  end
end
World(TrialDownloadFlow)

###################################################################
# FOR /DC-Geopopup-Redirects

module DomainUrlValidation
  def host_page_validation(site, page)
    sleep 5
    domain = Env_Url.environment_links(site)
    eprivacy_yes_to_all(site)
    #puts "\n current_path --->", current_path
    #current_host.should == (domain)
    expect(domain).to include(current_host)
    expect(current_url).to include(page)

    #current_path.should == page
    #puts "\n current_host --->", current_host
    #puts "\n current_path --->", current_path
#    sleep 5
  end

  def domain_page_validation_latinoamerica(page)
    sleep 5
      #puts "\n current_host --->", current_host
      #puts "\n current_path --->", current_path
      url = ($LATINOAMERICA_URL)
      current_host.should == url
      current_path.should == page

#    sleep 4
  end

end
World(DomainUrlValidation)

###################################################################
# For AU COD page

module COD_loggedin_user
  def click_my_au_save_button_to_save
    find(:xpath, "//*[contains(@data-wat-save-content,'LO-ME08')]").click
    sleep 5
  end

  def click_my_au_save_button_to_unsave
    find(:xpath, "//*[@class='icon-check']").click
    sleep 5
  end


end
World(COD_loggedin_user)

###################################################################
# For Oxygen Sign In used on Autodesk Account and EDU Account: \features\DC-Oxygen-SSO


module FormSubmissionSSO

  def oxygen_signin(username, password)
        fill_in('UserName', :with => username)
        click_on('verify_user_btn')
        expect(page).to have_xpath("//*[@id='btnSubmit']")
        fill_in("password", :with => password)
        click_on("btnSubmit")
        sleep 4
  end


end
World(FormSubmissionSSO)

module DataManagement

    def clear_cookies_domain(domain)
      visit(domain)
      Capybara.reset_sessions!
    end


  end
World(DataManagement)

###################################################################
# FOR Trial Download and EDU Download
# ONLY on CH!

module FileDownloadValidation

  def file_download_validation(file_name)

    begin
    visit("chrome://downloads")
    sleep 3
    expect(find(:xpath,"/html/body/downloads-manager").text).to include(file_name)
    rescue
      #Validation code for headless only
      tempFile =file_name.split('.')[0]
      isFileDownloadedExits=false
      Dir.glob("*"+tempFile+"*").each do|f|
          if f.include? file_name
            isFileDownloadedExits=true
          end
      end
      if !Dir.glob("*"+tempFile+"*")
      expect(isFileDownloadedExits).to be true
      end
    end
  end
end
World(FileDownloadValidation)

###################################################################

# FOR eprivacy_yes

module EPrivacy_yes
    def eprivacy_yes_to_all(localsite)
      sleep 5
      if(page.has_xpath?("//button[@id='adsk-eprivacy-yes-to-all']"))
        find(:xpath,"//button[@id='adsk-eprivacy-yes-to-all']").click
      end
#    sleep 5
#        if(page.has_xpath?("//div[contains(@class,'adsk-eprivacy-animate--scroll-up-in')]"))
#            find(:xpath,"//button[@id='adsk-eprivacy-yes-to-all']").click
#            find(:xpath,"//button[@id='adsk-eprivacy-continue-btn']").click
#        end
    end
end
World(EPrivacy_yes)

##################################################################

# FOR eprivacy_no

module EPrivacy_no
    def eprivacy_no_to_all(localsite)
      if(page.has_xpath?("//button[@id='adsk-eprivacy-no-to-all']"))
        find(:xpath,"//button[@id='adsk-eprivacy-no-to-all']").click
      end
#    sleep 5
#        if(page.has_xpath?("//div[contains(@class,'adsk-eprivacy-animate--scroll-up-in')]"))
#            find(:xpath,"//button[@id='adsk-eprivacy-no-to-all']").click
#            find(:xpath,"//button[@id='adsk-eprivacy-continue-btn']").click
#        end
    end
end
World(EPrivacy_no)

# FOR eprivacy_yes_v1

module EPrivacy_yes_v1
  def eprivacy_yes_to_all_v1(localsite)
    sleep 5
        if(page.has_xpath?("//div[contains(@class,'adsk-eprivacy-animate--scroll-up-in')]"))
            find(:xpath,"//button[@id='adsk-eprivacy-yes-to-all']").click
            find(:xpath,"//button[@id='adsk-eprivacy-continue-btn']").click
        end
  end
end
World(EPrivacy_yes_v1)

##################################################################

# FOR eprivacy_no_v1

module EPrivacy_no_v1
  def eprivacy_no_to_all_v1(localsite)
    sleep 5
        if(page.has_xpath?("//div[contains(@class,'adsk-eprivacy-animate--scroll-up-in')]"))
            find(:xpath,"//button[@id='adsk-eprivacy-no-to-all']").click
            find(:xpath,"//button[@id='adsk-eprivacy-continue-btn']").click
        end
  end
end
World(EPrivacy_no_v1)

##################################################################

#For EDU wait product details loading

module EDU_Product_Load
    def wait_for_product_load()
        Capybara.using_wait_time 90 do
          expect(page).to have_xpath("//div[@class='edu-button-logged' and @style='display: block;']")
        end
    end
end
World(EDU_Product_Load)

##################################################################

#For Author instance login

module Author_Sign_In
  def author_sign_in(username, password)
    userField = find(:xpath,"//input[@id='username']")
    userField.set(username)
    passwordField = find(:xpath,"//input[@id='password']")
    passwordField.set(password)
    find(:xpath,"//button[@id='submit-button']").click
  end
end
World(Author_Sign_In)

module Assert_Contains_Str
  def assert_contains_str(source_str, error_str)
    is_error= source_str.include? error_str
    assert(!is_error, "page contains "+error_str)
  end
end
World(Assert_Contains_Str)