from behave import *

from selenium.webdriver.common.keys import Keys
from selenium.webdriver.common.by import By


# Helper Functions
def get_schedule_appointment_button(context):
    return context.driver.find_element_by_xpath('//button[text()="Schedule Appointment"]')


def get_url_by_text(context, text):
    return context.driver.find_element_by_link_text(text).get_attribute('href')

def click_url(context, text):
    context.driver.get(get_url_by_text(context, text))



# Login Page Elements 
def get_vin_ele(context):
    return context.driver.find_element_by_id('vin')

def get_acc_no_ele(context):
    return context.driver.find_element_by_id('accountNo')

def get_get_started_ele(context):
    return context.driver.find_element_by_xpath('//button[text()="Get started"]')

def get_need_help_ele(context):
    return context.driver.find_element_by_xpath('//button[text()="Need help?"]')


def give_val_to_field(field, val):
    field.send_keys(Keys.CONTROL+'a')
    field.send_keys(Keys.DELETE)
    field.send_keys(val)
# 


@given('we have behave installed')
def first(context):
    pass

@when('we implement a test')
def second(context):
    assert True is not False

@then('behave will test it for us!')
def third(context):
    assert context.failed is False

@then('another')
def mid(context):
    pass


# Home Page 
@given(u'navigated to AIM Inspect Site')
def navigate_to_aim(context):
    context.driver.get("https://selfschedule-qa.aiminspect.com")
    # assert False

@then(u'body heading is shown')
def check_body_heading(context):
    body_heading = context.driver.find_element_by_tag_name('h1').text
    assert 'Trusted inspectors. Honest evaluation. Timely service.', body_heading

@then(u'schedule button shown')
def step_impl(context):
    schedule_button = context.driver.find_elements(By.CLASS_NAME, 'btn-primary')[0].text
    assert schedule_button, 'Schedule Appointment'

@then(u'login button shown')
def step_impl(context):
    login_button = context.driver.find_element_by_class_name('login').text
    assert login_button, 'or Log in'

@then(u'navbar shown')
def step_impl(context):
    nav_bar = context.driver.find_elements_by_class_name('navbar-header')
    assert True, bool(nav_bar)

@then(u'footer shown')
def step_impl(context):
    footer = context.driver.find_elements_by_class_name('footer-bar')[0].text
    assert footer, 'Privacy Policy\nTerms of Service\nContact Us\n© 2019 Alliance Inspection Management'

@then(u'site logo shown')
def step_impl(context):
    logo = context.driver.find_elements_by_class_name("site-logo")[0]
    logo_url = logo.get_attribute('src')
    logo_extension = logo_url.split('.')[-1]
    assert logo_extension, 'svg'
     

@then(u'about AIM button shown')
def step_impl(context):
    about = context.driver.find_elements_by_class_name('hidden-xs')[0].text.split('\n')[0]
    assert about, 'About AiM'
     


# Footer

@then(u'footer is shown')
def check_footer(context):
    footer = context.driver.find_elements_by_class_name('footer-bar')[0].text
    assert footer, 'Privacy Policy\nTerms of Service\nContact Us\n© 2019 Alliance Inspection Management'



@when(u'click on \'Privacy Policy\'')
def click_privacy_policy_url(context):
    click_url(context, 'Privacy Policy')

@then(u'navigated to \'Privacy Policy\' page')
def step_impl(context):
    assert context.driver.current_url, 'https://selfschedule-qa.aiminspect.com/privacy'

@when(u'click on "Terms of Service"')
def click_terms_page_url(context):
    click_url(context, 'Terms of Service') 

@then(u'navigated to "Terms of Service" page')
def step_impl(context):
    assert context.driver.current_url, 'https://selfschedule-qa.aiminspect.com/terms'

@when(u'click on "Contact Us"')
def click_contact_page_url(context):
    click_url(context, 'Contact Us')

@then(u'navigated to "Contact Us" page')
def step_impl(context):
    assert context.driver.current_url, 'https://selfschedule-qa.aiminspect.com/contact-us'


# Login Page
@given(u'click schedule appointment button')
def click_schedule_appointment_button(context):
    btn = get_schedule_appointment_button(context)
    btn.send_keys('\n')

@then(u'navigated to login page')
def navigated_to_login_page(context):
    login_url_true = context.driver.current_url == 'https://selfschedule-qa.aiminspect.com/log-in'
    assert login_url_true, True

@then(u'welcome heading displayed')
def step_impl(context):
    welcome_heading_displayed = context.driver.find_element_by_tag_name('h1').text == 'Welcome'
    assert True, welcome_heading_displayed

@then(u'need help link displayed')
def step_impl(context):
    need_help_link_displayed = bool(context.driver.find_element_by_xpath('//button[text()="Need help?"]'))
    assert need_help_link_displayed, True

@then(u'get started button displayed')
def step_impl(context):
    get_started_btn_displayed = bool(context.driver.find_element_by_xpath('//button[text()="Get started"]'))
    assert True, get_started_btn_displayed

@then(u'account number field displayed')
def step_impl(context):
    acc_no_field_displayed = bool(context.driver.find_element_by_id('accountNo')) == True 
    assert True, acc_no_field_displayed

@then(u'vin field displayed')
def step_impl(context):
    vin_field_displayed = bool(context.driver.find_element_by_id('vin')) == True
    assert vin_field_displayed, True



@given(u'current page is LSS Log in')
def step_impl(context):
    context.driver.get('https://selfschedule-qa.aiminspect.com/')
    context.driver.implicitly_wait(30)
    btn = get_schedule_appointment_button(context)
    btn.send_keys('\n')
    # context.driver.find_element_by_xpath('//button[text()="Schedule Appointment"]').click()
    # click_schedule_appointment_button(context)
    login_url_true = context.driver.current_url == 'https://selfschedule-qa.aiminspect.com/log-in'
    assert login_url_true, True
    

@given(u'no VIN is entered')
def no_vin_field(context):
    vin_f = get_vin_ele(context)
    give_val_to_field(vin_f, '')

@given(u'no Account number is entered')
def no_ac_field(context):
    vin_f = get_acc_no_ele(context)
    give_val_to_field(vin_f, '')

@given(u'Get Started is clicked')
def step_impl(context):
    context.driver.find_element_by_xpath('//button[text()="Get started"]').send_keys('\n')
    # assert False

@then(u'error-message (2) displays "Enter a Valid VIN"')
def step_impl(context):
    assert context.driver.find_elements_by_class_name('error-message')[0].text, 'Enter a valid VIN'

@then(u'(2) "Enter a valid account number"')
def step_impl(context):
    assert context.driver.find_elements_by_class_name('error-message')[1].text, 'Enter a valid account number'



@given(u'VIN is entered')
def step_impl(context):
    vin_f = get_vin_ele(context)
    give_val_to_field(vin_f, '2C4RDGCG1HR678206')
    # assert False

# @given(u'Get Started button is clicked')
# def step_impl(context):
#     assert False

@then(u'error-message displays "Enter a valid account number"')
def step_impl(context):
    assert context.driver.find_element_by_class_name('error-message').text, 'We were unable to match the VIN and account number you entered. Please check your entries and try again.'
     


@given(u'Account number is entered')
def step_impl(context):
    ac_no_f = get_acc_no_ele(context)
    give_val_to_field(ac_no_f, 'jghj')
    # assert False

# @given(u'Get Started button is clicked')
# def step_impl(context):
#     assert False

@then(u'error-message displays "Enter a valid VIN"')
def step_impl(context):
    assert context.driver.find_elements_by_class_name('error-message')[0].text, 'Enter a valid account number'




@given(u'entered an invalid vin')
def step_impl(context):
    vin_f = get_vin_ele(context)
    give_val_to_field(vin_f, '234435')
    # assert False

@given(u'entered an invalid account')
def step_impl(context):
    ac_no_f = get_acc_no_ele(context)
    give_val_to_field(ac_no_f, 'invalidacno')
    # assert False

@then(u'error-message displayed "We were unable to match the VIN and account number you entered. Please check your entries and try again."')
def step_impl(context):
    assert context.driver.find_element_by_class_name('error-message').text, 'We were unable to match the VIN and account number you entered. Please check your entries and try again.'
    # assert False

     
@given(u'entered a valid vin')
def step_impl(context):
    vin_f = get_vin_ele(context)
    give_val_to_field(vin_f, '1N4AL3AP3FC470996')
    # assert False


@given(u'entered a valid account')
def step_impl(context):
    ac_no_f = get_acc_no_ele(context)
    give_val_to_field(ac_no_f, '20191217jp01')
    # assert False

@then(u'Account Info page displays')
def step_impl(context):
    assert context.driver.current_url, 'https://selfschedule-qa.aiminspect.com/account'



@given(u'entered a inspection Completed valid VIN')
def step_impl(context):
    vin_f = get_vin_ele(context)
    give_val_to_field(vin_f, 'WVWGA0167GW537860')

@given(u'entered a inspection Completed valid account')
def step_impl(context):
    ac_no_f = get_acc_no_ele(context)
    give_val_to_field(ac_no_f, '20191101NHah01')

@then(u'navigated to inspection completed page')
def step_impl(context):
    assert context.driver.current_url, 'https://selfschedule-qa.aiminspect.com/condition'


# To Do
@then(u'page title display: Hello, and Lessee\'s 1st Name')
def step_impl(context):
    context.driver.implicitly_wait(3000)
    heading_displayed = 'Hello' in context.driver.find_element_by_class_name('col-xs-12').text 
    assert heading_displayed
    # assert False

@then(u'header-text display: Overview')
def step_impl(context):
    assert context.driver.find_element_by_class_name('header-bar').text, 'Overview'

@then(u'main-photo displays')
def step_impl(context):
    assert context.driver.find_elements_by_class_name('main-photo')

@then(u'Vehicle\'s Year / Make / Model displays')
def step_impl(context):
    assert False

@then(u'VIN Displays')
def step_impl(context):
    assert bool(context.driver.find_elements_by_class_name('vin')), True
    #  False

@then(u'Inspection Date and Status: "Completed" displays')
def step_impl(context):
    assert len(context.driver.find_elements_by_class_name('inspection-fact')), 2

# @then(u'Status: "Completed" displays')
# def step_impl(context):
#     assert False

@then(u'Button: "View CR" displays')
def step_impl(context):
    assert bool(context.driver.find_element_by_partial_link_text('View CR').get_attribute('href')), True

@then(u'nav-tabs: "STANDARD PHOTOS" selected by default displays')
def step_impl(context):
    assert context.driver.find_element_by_class_name('active').text, 'STANDARD PHOTOS'
    # assert False

@then(u'all the photos taken by the inspector dispalys')
def step_impl(context):
    # context.driver.find_elements_by_xpath("//*[@class='vehicle-photo'] and [@class='col-xs-12' and [@class='col-sm-6'] and [@class='col-md-4'] and [@class='col-lg-3']")
    photos = context.driver.find_elements_by_xpath("//*[@class='vehicle-photo col-xs-12 col-sm-6 col-md-4 col-lg-3']")
    # vehicle-photo col-xs-12 col-sm-6 col-md-4 col-lg-3
    assert photos

@then(u'nav-tabs: "DAMAGE PHOTOS" displays')
def step_impl(context):
    assert context.driver.find_element_by_partial_link_text('DAMAGE PHOTOS')

@then(u'User can view the PDF file')
def step_impl(context):
    url = context.driver.find_elements_by_partial_link_text('View CR')[0].get_attribute('href')

    context.driver.find_elements_by_partial_link_text('View CR')[0].click()

    context.driver.switch_to.window(context.driver.window_handles[1])
    new_tab_url = context.driver.current_url
    context.driver.close()
    context.driver.switch_to.window(context.driver.window_handles[0])

    assert new_tab_url, url


@given(u'entered a no appointment scheduled valid VIN')
def step_impl(context):
    vin_f = get_vin_ele(context)
    give_val_to_field(vin_f, '1N4AL3AP3FC470996')
    
    # assert False

@given(u'entered a no appointment scheduled valid account')
def step_impl(context):
    ac_no_f = get_acc_no_ele(context)
    give_val_to_field(ac_no_f, '20191217jp01')
    # assert False

@then(u'User can schedule an appointment')
def step_impl(context):
    context.driver.implicitly_wait(100)
    verify_account_url_navigated = context.driver.current_url == 'https://selfschedule-qa.aiminspect.com/account'
    progress_meter_shown = bool(context.driver.find_elements_by_class_name('progress-meter')[0])
    verify_account_page_heading_shown = bool(context.driver.find_element_by_tag_name('h1'))
    verify_account_page_subheading_shown = bool(context.driver.find_element_by_tag_name('h2'))
    lesse_name_shown = bool(context.driver.find_element_by_id('lesseeName'))
    account_no_shown = bool(context.driver.find_element_by_id('accountNo'))
    vin_shown = bool(context.driver.find_element_by_id('vehicleVin'))
    sth_is_wrong_button_shown = bool(context.driver.find_element_by_class_name('btn-default'))
    confirm_button_shown = bool(context.driver.find_element_by_class_name('btn-primary'))
    assert (progress_meter_shown and verify_account_page_heading_shown and verify_account_page_subheading_shown and lesse_name_shown and account_no_shown and vin_shown and sth_is_wrong_button_shown and confirm_button_shown and verify_account_url_navigated), True

     

