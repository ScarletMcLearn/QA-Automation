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





# Helper Functions 2
def get_heading(context):
    return context.find_elements_by_tag_name('h1')[0].text

def get_subheadings(context):
    return context.find_elements_by_tag_name('h2')

def check_text(context, tag, text):
    return context.find_elements_by_tag_name(tag)[0].text == text

def check_number_of_paras(context, num):
    return len(context.find_elements_by_tag_name('p')) == num





# Privacy Policy Page
def click_privacy_policy_url(context):
    click_url(context, 'Privacy Policy')

def check_privacy_policy_page_heading(context):
    return check_text(context, 'h1', 'Privacy Policy')

def check_privacy_policy_page_subheadings(context):
    h2 = get_subheadings(context)
    sz_correct = len(h2) == 15
    #
    sub_heading_texts_correct = h2[0].text == 'Introduction' and h2[1].text == 'Information We Collect' and h2[2].text == 'How We May Use the Information We Collect' and h2[3].text == 'Applications, Widgets and Social Media' and h2[4].text == 'Advertising Networks' and h2[5].text == 'Information We Share' and h2[6].text == 'Your Choices' and h2[7].text == 'Data Transfers' and h2[8].text == 'Your California Privacy Rights' and h2[9].text == 'Access and Correction' and h2[10].text == 'Links' and h2[11].text == 'Data Security' and h2[12].text == 'Disputes' and h2[13].text == 'Updates to this Privacy Statement' and h2[14].text == 'How to Contact Us'
    #
    no_of_paras_correct = len(context.find_elements_by_tag_name('p')) == 36
    return sz_correct and sub_heading_texts_correct and no_of_paras_correct



# Terms Page
def click_terms_page_url(context):
    click_url(context, 'Terms of Service') 

def check_terms_page_heading(context):
    return check_text(context, 'h1', 'Site and Service Terms and Conditions')

def check_terms_page_body(context):
    h2 = get_subheadings(context)
    sz_correct = len(h2) == 1 
    no_of_paras_correct = len(context.find_elements_by_tag_name('p')) == 17 
    return sz_correct and no_of_paras_correct


# Contact Page
def click_contact_page_url(context):
    click_url(context, 'Contact Us')

def check_contact_page_heading(context):
    return check_text(context, 'h2', 'Contact Us')

def check_contact_page_body(context):
    h2 = get_subheadings(context)
    sz_correct = len(h2) == 1 
    no_of_paras_correct = len(context.find_elements_by_tag_name('h4')) == 1 
    para_text_correct = context.find_elements_by_tag_name('h4')[0].text == 'Please contact our team to help with your appointment.'

    contact_page_pic = context.find_element_by_class_name("csr-icon").get_attribute('src').split('.')[-1]
    contact_page_pic_is_shown = contact_page_pic == 'png'

    return sz_correct and no_of_paras_correct and para_text_correct and contact_page_pic_is_shown



# Existing Appointment Login

def click_schedule_appointment_button(context):
    btn = context.find_element_by_class_name('btn-primary')
    #
    if btn.text == 'Schedule Appointment':
        btn.click()


def login_to_account_with_existing_appointment(context):
    vin_f = get_vin_ele(context)
    give_val_to_field(vin_f, '5YJ3E1EB7JF116345')
    ac_no_f = get_acc_no_ele(context)
    give_val_to_field(ac_no_f, '2213123')
    context.find_element_by_xpath('//button[text()="Get started"]').send_keys('\n')
    context.implicitly_wait(30)

def appointment_already_scheduled_page_displayed(context):
    currently_on_existing_appointment_page = context.current_url == 'https://selfschedule-qa.aiminspect.com/existing-appointment'
    existing_appointment_page_logo_shown = context.find_element_by_class_name('rocket-icon').get_attribute('src').split('.')[-1] == 'png'
    existing_appointment_page_heading_shown = context.find_element_by_tag_name('h2').text == 'It looks like you already have an appointment scheduled.'
    confirmation_number_shown = bool(context.find_element_by_id('confirmationNo').text)
    appointment_date_time_shown = bool(context.find_element_by_id('dateTime').text)
    appointment_loc_shown = bool(context.find_element_by_id('apptLocation').text)
    info_text_shown = context.find_element_by_tag_name('h5').text == 'If you have any questions about your appointment, please contact our team.'
    help_contact_shown = bool(context.find_elements_by_class_name('contact-container')[0].text)
    call_center_hours_shown = bool(context.find_element_by_id('callCenterHours').text)
    #
    return currently_on_existing_appointment_page and existing_appointment_page_logo_shown and existing_appointment_page_heading_shown and confirmation_number_shown and appointment_date_time_shown and appointment_loc_shown and info_text_shown and help_contact_shown and call_center_hours_shown



# Inspection Completed Login

def login_to_account_with_completed_appointment(context):
    vin_f = get_vin_ele(context)
    give_val_to_field(vin_f, 'WVWGA0167GW537860')
    ac_no_f = get_acc_no_ele(context)
    give_val_to_field(ac_no_f, '20191101NHah01')
    context.find_element_by_xpath('//button[text()="Get started"]').send_keys('\n')
    context.implicitly_wait(30)

def inspection_completed_page_displayed(context):
    currently_on_inspection_completed_page = context.current_url == 'https://selfschedule-qa.aiminspect.com/condition'
    greeting_message_shown = ('Hello' in context.find_element_by_class_name('col-xs-12').text) == True
    headbar_shown = bool(context.find_element_by_class_name('header-bar'))
    headbar_text_correct = context.find_element_by_class_name('header-bar').text == 'Overview'
    vin_shown = len(context.find_elements_by_class_name('vin')) > 0
    inspection_date_and_status_shown = len(context.find_elements_by_class_name('inspection-fact')) == 2
    view_cr_button_exists = bool(context.find_element_by_partial_link_text('View CR').get_attribute('href'))
    get_nav_tabs = context.find_elements_by_class_name('nav-tabs')
    nav_tabs_displayed = get_nav_tabs[0].text == 'STANDARD PHOTOS\nDAMAGE PHOTOS'
    #
    return nav_tabs_displayed and view_cr_button_exists and inspection_date_and_status_shown and vin_shown and headbar_text_correct and headbar_shown and greeting_message_shown and currently_on_inspection_completed_page


def standard_photos_tab_active_by_default(context):
    return context.find_elements_by_class_name('active')[0].text == 'STANDARD PHOTOS'

def click_damaged_photos_tab(context):
    context.find_element_by_partial_link_text('DAMAGE PHOTOS').click()

def damaged_photos_tab_active(context):
    return context.find_elements_by_class_name('active')[0].text == 'DAMAGE PHOTOS'

def standard_photos_tab_inactive(context):
    return context.find_elements_by_tag_name('li')[3].get_attribute('class') == ''

def damage_photos_tab_inactive(context):
    return context.find_elements_by_tag_name('li')[4].get_attribute('class') == ''

def click_img(context):
    context.find_elements_by_class_name('vehicle-photo')[1].click()

def image_shown(context):
    return context.find_elements_by_class_name('vehicle-photo')[1].get_attribute('src').split('.')[-1] == 'jpg'

def view_cr_button_shown(context):
    return bool(context.find_elements_by_partial_link_text('View CR')[0])

def click_view_cr_button(context):
    return context.find_elements_by_partial_link_text('View CR')[0].click()

def get_cr_button_url(context):
    return context.find_elements_by_partial_link_text('View CR')[0].get_attribute('href')

def cr_pdf_displayed(context, url):
    # click_view_cr_button(context)
    # cr_pdf_displayed(context, get_cr_button_url(context))
    context.switch_to.window(context.window_handles[1])
    new_tab_url = context.current_url
    context.close()
    context.switch_to.window(context.window_handles[0])
    return new_tab_url == url




# 20191217jp01
# 1N4AL3AP3FC470996
def login_to_account_with_no_appointment(context):
    vin_f = get_vin_ele(context)
    give_val_to_field(vin_f, '1N4AL3AP3FC470996')
    ac_no_f = get_acc_no_ele(context)
    give_val_to_field(ac_no_f, '20191217jp01')
    context.find_element_by_xpath('//button[text()="Get started"]').send_keys('\n')
    context.implicitly_wait(30)

def verify_account_info_page_shown(context):
    verify_account_url_navigated = context.current_url ==
'https://selfschedule-qa.aiminspect.com/account'
    progress_meter_shown = bool(context.find_elements_by_class_name('progress-meter')[0])
    verify_account_page_heading_shown = bool(context.find_element_by_tag_name('h1'))
    verify_account_page_subheading_shown = bool(context.find_element_by_tag_name('h2'))
    lesse_name_shown = bool(context.find_element_by_id('lesseeName'))
    account_no_shown = bool(context.find_element_by_id('accountNo'))
    vin_shown = bool(context.find_element_by_id('vehicleVin'))
    sth_is_wrong_button_shown = bool(context.find_element_by_class_name('btn-default'))
    confirm_button_shown = bool(context.find_element_by_class_name('btn-primary'))
    return progress_meter_shown and verify_account_page_heading_shown and verify_account_page_subheading_shown and lesse_name_shown and account_no_shown and vin_shown and sth_is_wrong_button_shown and confirm_button_shown and verify_account_url_navigated


def click_something_is_wrong_btn(context):
    context.find_element_by_class_name('btn-default').click()
    context.implicitly_wait(30)


def get_assistance_page_is_shown(context):
    current_url_is_get_assistance_url = context.current_url == 'https://selfschedule-qa.aiminspect.com/get-assistance'
    para_text_correct = context.find_elements_by_tag_name('h4')[0].text == 'Please contact our team to help with your appointment.'
    hours_shown = bool(context.find_element_by_class_name('hours'))
    csr_icon_shown = bool(context.find_element_by_class_name('csr-icon'))
    return csr_icon_shown and hours_shown and para_text_correct and current_url_is_get_assistance_url


def click_confirm_button(context):
    context.find_element_by_class_name('btn-primary').click()




def contact_info_page_shown(context):
    verify_contact_url_navigated = context.current_url == 'https://selfschedule-qa.aiminspect.com/contact'
    progress_meter_shown = bool(context.find_elements_by_class_name('progress-meter')[0])
    contact_info_page_heading_shown = bool(context.find_element_by_tag_name('h1'))
    contact_info_page_subheading_shown = bool(context.find_element_by_tag_name('h2'))
    phone_field_shown = bool(context.find_element_by_id('phone'))
    phone_dropdown_menu_shown = bool(context.find_elements_by_class_name('lss-form-input')[0])
    email_field_shown = bool(context.find_element_by_id('email'))
    back_button_shown = bool(context.find_element_by_class_name('btn-default'))
    continue_button_shown = bool(context.find_element_by_class_name('btn-primary'))
    return continue_button_shown and continue_button_shown and back_button_shown and email_field_shown and phone_dropdown_menu_shown and phone_field_shown and contact_info_page_heading_shown and contact_info_page_subheading_shown and verify_contact_url_navigated and progress_meter_shown and progress_meter_shown

def get_phone_field(context):
    return context.find_element_by_id('phone')

def get_email_field(context):
    return context.find_element_by_id('email')

def no_phone_error_message_shown(context):