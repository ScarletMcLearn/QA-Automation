require 'capybara'
require 'capybara/cucumber'
require 'selenium-webdriver'
require 'site_prism'

class EDU_Veritas_Verification_Form < SitePrism::Section


  #confirm information form
  element :confirm_info_form_title, :xpath, "//div[@class='sid-header__title']"
  element :confirm_info_form_email, :xpath, "//div[@class='sid-field sid-email']"
  element :confirm_info_form_InstitutionType, :xpath, "//div[@class='sid-form-row'][3]//div[@class='sid-field__label-with-explanation sid-l-space-btm-xs']"
  element :verify_button, :id, "sid-submit-wrapper__collect-info"
  element :cancel_button, :xpath, "//span[@class='sid-link sid-cancel__link']"
  element :confirm_info_form_Fname, :xpath, "//div[@class='sid-field sid-first-name']//span"
  element :confirm_info_form_Lname, :xpath, "//div[@class='sid-field sid-last-name']//span"
  element :confirm_info_form_Country, :xpath, "//div[@class='sid-field sid-country']//span"
  element :confirm_info_form_InstitutionName, :xpath, "//div[@class='sid-field sid-college-name-id']"
  element :faqs, :xpath, "//a[@class='sid-faq sid-link']"
  #element :qualified_educational_institution, :xpath, "//span/a[@class='sid-link']"
  element :alternate_link, :xpath, "//span/a[2]"
  element :date_of_birth, :xpath, "//div[@class='sid-field sid-birthdate']//span"
  element :iv_failed_error, :xpath, "//div[@class='sid-alert__message sid-alert__message--error']"
  element :confirm_info_form_header, :xpath, "//div[@class='sid-header__subtitle']"
  element :confirm_info_form_InstitutionName_field, :xpath, "//div[@class='sid-field sid-college-name-id']//input[@id='sid-college-name']"
  element :add_school, :xpath, "//div[@class='sid-organization-list__request-school']/a[@class='sid-link']"

end
