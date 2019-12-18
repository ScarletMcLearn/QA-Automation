from selenium import webdriver
from selenium.webdriver.common.keys import Keys
from selenium.webdriver.common.by import By

def open_browser():
    driver = webdriver.Chrome('/home/scarlet/Projects/Automation/Confluence/features/steps/chromedriver')
    return driver 

def close_browser(context):
    context.quit()

def go_to(driver, url):
    # "https://selfschedule-qa.aiminspect.com"
    driver.get(url)

def check_title(context, title):
    return(context.title == title)

# assert(driver.find_element_by_class_name('lss-navbar'))
def check_body(context):
    body_heading = context.find_element_by_tag_name('h1').text
    schedule_button = context.find_elements(By.CLASS_NAME, 'btn-primary')[0].text
    login_button = context.find_element_by_class_name('login').text



    
    return bool(context.find_elements_by_id('lss-content')) and (body_heading == 'Trusted inspectors. Honest evaluation. Timely service.') and (schedule_button == 'Schedule Appointment') and login_button == 'or Log in'

def check_header(context):
    nav_bar = context.find_elements_by_class_name('navbar-header'))
# assert(driver.find_elements_by_id('lss-content'))

# assert(driver.find_elements_by_class_name('footer-bar'))
    return bool(nav_bar)

def check_footer(context):
    footer = context.find_elements_by_class_name('footer-bar')[0].text
    return footer == 'Privacy Policy\nTerms of Service\nContact Us\n© 2019 Alliance Inspection Management'



def check_logo(context):
    logo = context.find_elements_by_class_name("site-logo")[0]
    logo_url = logo.get_attribute('src')
    logo_extension = logo_url.split('.')[-1]
    return logo_extension == 'svg'


def check_about_section(context):
    about = context.find_elements_by_class_name('hidden-xs')[0].text.split('\n')[0]
    return about == 'About AiM'


def get_schedule_appointment_button(context):
    return context.find_element_by_xpath('//button[text()="Schedule Appointment"]')

def click_schedule_appointment_button(context, btn):
    btn.send_keys('\n')


def check_login_page_displayed(context):
    welcome_heading_displayed = context.find_element_by_tag_name('h1').text == 'Welcome'

    vin_field_displayed = bool(context.find_element_by_id('vin')) == True 

    acc_no_field_displayed = bool(context.find_element_by_id('accountNo')) == True 

    get_started_btn_displayed = bool(context.find_element_by_xpath('//button[text()="Get started"]'))

    need_help_link_displayed = bool(context.find_element_by_xpath('//button[text()="Need help?"]'))

    login_url_true = context.current_url == 'https://selfschedule-qa.aiminspect.com/log-in'


    return welcome_heading_displayed and vin_field_displayed and acc_no_field_displayed and get_started_btn_displayed and need_help_link_displayed


# Login Page Elements 
def get_vin_ele(context):
    return context.find_element_by_id('vin')

def get_acc_no_ele(context):
    return context.find_element_by_id('accountNo')

def get_get_started_ele(context):
    return context.find_element_by_xpath('//button[text()="Get started"]')

def get_need_help_ele(context):
    return context.find_element_by_xpath('//button[text()="Need help?"]')


def give_val_to_field(field, val):
    field.send_keys(Keys.CONTROL+'a')
    field.send_keys(Keys.DELETE)
    field.send_keys(val)


# VIN / AC Cases
def no_vin_field(context):
    vin_f = get_vin_ele(context)
    give_val_to_field(vin_f, '')

def no_ac_field(context):
    vin_f = get_acc_no_ele(context)
    give_val_to_field(vin_f, '')


# Error messages
def only_vin_error_message(context):
    return context.find_elements_by_class_name('error-message')[0].text == 'Enter a valid VIN'

def only_ac_no_error_message(context):
    return context.find_elements_by_class_name('error-message')[0].text == 'Enter a valid account number'

def both_vin_and_ac_no_error_message(context):
    return context.find_elements_by_class_name('error-message')[0].text == 'Enter a valid VIN' and context.find_elements_by_class_name('error-message')[1].text == 'Enter a valid account number'


def valid_vin_invalid_ac_no_error_message(context):
    vin_f = get_vin_ele(context)
    give_val_to_field(vin_f, '2C4RDGCG1HR678206')

    ac_no_f = get_acc_no_ele(context)
    give_val_to_field(ac_no_f, 'invalidacno')

    context.find_element_by_xpath('//button[text()="Get started"]').send_keys('\n')

    return context.find_element_by_class_name('error-message').text == 'We were unable to match the VIN and account number you entered. Please check your entries and try again.'


def invalid_vin_valid_ac_no_error_message(context):
    vin_f = get_vin_ele(context)
    give_val_to_field(vin_f, 'invalid')

    ac_no_f = get_acc_no_ele(context)
    give_val_to_field(ac_no_f, 'jghj')

    context.find_element_by_xpath('//button[text()="Get started"]').send_keys('\n')

    return context.find_element_by_class_name('error-message').text == 'We were unable to match the VIN and account number you entered. Please check your entries and try again.'



def invalid_vin_valid_ac_no_error_message(context):
    vin_f = get_vin_ele(context)
    give_val_to_field(vin_f, 'invalid')
    ac_no_f = get_acc_no_ele(context)
    give_val_to_field(ac_no_f, 'jghj')
    context.find_element_by_xpath('//button[text()="Get started"]').send_keys('\n')
    context.implicitly_wait(30)
    return context.find_element_by_class_name('error-message').text == 'We were unable to match the VIN and account number you entered. Please check your entries and try again.'






# Helper Functions

def get_url_by_text(context, text):
    return context.find_element_by_link_text(text).get_attribute('href')

def click_url(context, text):
    context.get(get_url_by_text(context, text))


# About Page

def get_about_page_url(context):
    # this only works when zoomed out
    return context.find_element_by_link_text('About AiM').get_attribute('href')

def click_about_page_navbar_item(context):
    context.get(get_about_page_url(context))

    

def about_page_navbar_displayed(context):
    menu_items= context.find_element_by_id('shiftnav-toggle-main').text.split('\n')
    main_menu_text_is_shown = menu_items[0] == 'Main Menu'
    about_text_is_shown = menu_items[1] == 'Accounts'
    about_page_aim_logo_is_shown = bool(context.find_element_by_id('aim_logo'))
    about_page_title_is_shown = context.find_element_by_class_name("main-title").text == 'About Us'

    about_page_pic = context.find_element_by_class_name("wp-image-2502").get_attribute('src').split('.')[-1]
    about_page_pic_is_shown = about_page_pic == 'png'

    about_page_body_is_shown = bool(context.find_element_by_class_name('avia_textblock'))

    about_page_portfolio_box_is_shown = bool(context.find_element_by_id('portfoliobox-2'))

    about_page_services = context.find_elements_by_class_name('news-link')

    about_page_services_correct = about_page_services[0].text == "Claims Management" and about_page_services[1].text == "Technology Solutions" and about_page_services[2].text == "Floorplan Audit" and about_page_services[3].text == "MarketConnect" and about_page_services[4].text == "Vehicle Inspections" 

    about_page_footer_is_displayed = bool(context.find_element_by_id('socket'))
    about_page_text_is_correct = context.find_element_by_id('socket').text == '© Copyright 2017 - Alliance Inspection Management'

    return about_page_text_is_correct and about_page_footer_is_displayed and about_page_services_correct and about_page_portfolio_box_is_shown and about_page_body_is_shown and about_page_pic_is_shown and about_page_title_is_shown and about_page_aim_logo_is_shown and about_text_is_shown and main_menu_text_is_shown


