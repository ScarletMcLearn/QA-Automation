require 'capybara'
require 'capybara/cucumber'
require 'selenium-webdriver'
require 'site_prism'

class EDU_Veritas_Verification_AddSchool < SitePrism::Section

  #add school
  element :school_field, :id, "sid-teacher-school"
  element :add_school_title, :xpath, "//p[@class='sid-header__title']"
  element :add_school_description, :xpath, "//p[@id='offer']"
  element :add_school_email, :xpath, "//label[@id='label-EMAIL']"
  element :add_school_fname, :xpath, "//label[@id='label-FIRST_NAME']"
  element :add_school_lname, :xpath, "//label[@id='label-LAST_NAME']"
  element :add_school_country, :xpath, "//div[@id='countryCode-wrapper']"
  element :add_school_eduInstitution, :xpath, "//label[@id='meta-university-label']"
  element :add_school_eduInstitution_website, :xpath, "//label[@id='meta-website-label']"
  element :add_school_submit_button, :xpath, "//button[@class='btn btn-default sid-btn sid-l-full-width sid-btn--wide']"

end