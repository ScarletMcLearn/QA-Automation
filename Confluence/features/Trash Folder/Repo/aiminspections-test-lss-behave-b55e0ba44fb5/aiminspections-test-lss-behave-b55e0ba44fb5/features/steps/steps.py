import time

from behave import *
from selenium.webdriver.common.by import By
from selenium.webdriver.support.ui import WebDriverWait
from selenium.webdriver.support import expected_conditions as EC


@given('I am on the home page')
def step_impl(context):
    context.browser.get(context.config.userdata['lss_url'])
    assert context.browser.title == 'Lessee Self Schedule'


@then('I can see the Aim logo')
def step_impl(context):
    context.browser.find_element_by_class_name('site-logo')


@then('I can see the schedule button')
def step_impl(context):
    context.browser.find_element_by_class_name('btn-primary')


@when('I click the schedule button')
def step_impl(context):
    context.browser.find_element_by_class_name('btn-primary').click()


@then('I am taken to the login page')
def step_impl(context):
    assert context.browser.find_element_by_tag_name('h1').text == 'Welcome'


@then('I can see the login link')
def step_impl(context):
    context.browser.find_element_by_xpath('//a[@href="/log-in"]')


@when('I click the login link')
def step_impl(context):
    context.browser.find_element_by_xpath('//a[@href="/log-in"]').click()


@given('I am on the log in screen')
def step_impl(context):
    context.browser.get(context.config.userdata['lss_url'] + '/log-in')
    assert context.browser.title == 'Lessee Self Schedule'


@when('I submit my vin and my account number')
def step_impl(context):
    context.browser.find_element_by_id('vin').send_keys(context.config.userdata['vin'])
    context.browser.find_element_by_id('accountNo').send_keys(context.config.userdata['account_no'])
    context.browser.find_element_by_class_name('btn-primary').click()


@then('I am taken to the Account Info page')
def step_impl(context):
    WebDriverWait(context.browser, float(context.config.userdata['webdriver_wait_timeout']))\
        .until(EC.presence_of_element_located((By.CLASS_NAME, 'progress-dot-complete')))


@when('I submit an incorrect vin and my account number')
def step_impl(context):
    context.browser.find_element_by_id('vin').send_keys(context.config.userdata['vin'])
    context.browser.find_element_by_id('accountNo').send_keys('badaccountnumber')
    context.browser.find_element_by_class_name('btn-primary').click()


@when('I submit my vin and an incorrect account number')
def step_impl(context):
    context.browser.find_element_by_id('vin').send_keys('badvin')
    context.browser.find_element_by_id('accountNo').send_keys(context.config.userdata['account_no'])
    context.browser.find_element_by_class_name('btn-primary').click()


@when('I submit an invalid vin and an invalid account number')
def step_impl(context):
    context.browser.find_element_by_id('vin').send_keys('badvin')
    context.browser.find_element_by_id('accountNo').send_keys('badaccountnumber')
    context.browser.find_element_by_class_name('btn-primary').click()


@then('I see an error message')
def step_impl(context):
    assert context.browser.find_element_by_class_name('error-message').text\
        .startswith('We were unable to match the VIN and account number')


@when('I submit an empty login form')
def step_impl(context):
    context.browser.find_element_by_class_name('btn-primary').click()


@then('I can see the error messages')
def step_impl(context):
    elements = context.browser.find_elements_by_class_name('error-message')
    error_messages = []
    for element in elements:
        error_messages.append(element.text)
    assert sorted(error_messages) == ['Enter a valid VIN', 'Enter a valid account number']


@when('I click on the need help link')
def step_impl(context):
    context.browser.find_element_by_class_name('btn-link').click()


@then('I am taken to the Get Assistance page')
def step_impl(context):
    WebDriverWait(context.browser, float(context.config.userdata['webdriver_wait_timeout']))\
        .until(EC.presence_of_element_located((By.TAG_NAME, 'h2')))
    assert context.browser.find_element_by_tag_name('h2').text == "Don't worry, we're here to help."


@given('I am logged in')
def step_impl(context):
    context.execute_steps(
        u'''
        given I am on the log in screen
        when I submit my vin and my account number
        '''
    )


@then('the progress status bar is highlighting "{text}"')
def step_impl(context, text):
    WebDriverWait(context.browser, float(context.config.userdata['webdriver_wait_timeout']))\
        .until(EC.presence_of_element_located((By.CLASS_NAME, 'progress-dot-label-active')))
    active_dots = context.browser.find_elements_by_class_name('progress-dot-label-active')
    found_match = False
    for active_dot in active_dots:
        if active_dot.text == text:
            found_match = True
            break
    assert found_match


@then('the mobile progress status bar is at step "{text}"')
def step_impl(context, text):
    WebDriverWait(context.browser, float(context.config.userdata['webdriver_wait_timeout']))\
        .until(EC.presence_of_element_located((By.CLASS_NAME, 'meter-display')))
    assert context.browser.find_element_by_class_name('meter-display').text == 'Step {} of 5'.format(text)


@then('my profile info is correct')
def step_impl(context):
    WebDriverWait(context.browser, float(context.config.userdata['webdriver_wait_timeout']))\
        .until(EC.presence_of_element_located((By.ID, 'lesseeName')))
    lessee_name = '{} {}'.format(context.config.userdata['lessee_first_name'], context.config.userdata['lessee_last_name'])
    assert context.browser.find_element_by_id('lesseeName').text == lessee_name


@then('my vehicle info is correct')
def step_impl(context):
    WebDriverWait(context.browser, float(context.config.userdata['webdriver_wait_timeout']))\
        .until(EC.presence_of_element_located((By.ID, 'vehicleVin')))
    vehicle_vin = 'VIN: {}'.format(context.config.userdata['vin'])
    assert context.browser.find_element_by_id('vehicleVin').text == vehicle_vin


@when('I click the Confirm button')
def step_impl(context):
    WebDriverWait(context.browser, float(context.config.userdata['webdriver_wait_timeout']))\
        .until(EC.presence_of_element_located((By.CLASS_NAME, 'btn-primary')))
    assert context.browser.find_element_by_class_name('btn-primary').text == 'Confirm'
    assert context.browser.find_element_by_class_name('btn-primary').is_enabled()
    context.browser.find_element_by_class_name('btn-primary').click()


@then('I am taken to the Contact Info page')
def step_impl(context):
    WebDriverWait(context.browser, float(context.config.userdata['webdriver_wait_timeout']))\
        .until(EC.presence_of_element_located((By.TAG_NAME, 'h1')))
    assert context.browser.find_element_by_tag_name('h1').text == 'Contact Info'


@when('I click on the Something is Wrong button')
def step_impl(context):
    WebDriverWait(context.browser, float(context.config.userdata['webdriver_wait_timeout']))\
        .until(EC.presence_of_element_located((By.CLASS_NAME, 'btn-default')))
    assert context.browser.find_element_by_class_name('btn-default').text == 'Something is wrong'
    context.browser.find_element_by_class_name('btn-default').click()


@given('I am on the Contact Info page')
def step_impl(context):
    context.execute_steps(
        u'''
        given I am on the log in screen
        when I submit my vin and my account number
        then I am taken to the Account Info page
        when I click the Confirm button
        '''
    )


@then('the Continue button is disabled')
def step_impl(context):
    assert not context.browser.find_element_by_class_name('btn-primary').is_enabled()


@when('I enter my phone number "{phone_number}"')
def step_impl(context, phone_number):
    context.browser.find_element_by_id('phone').click()
    context.browser.find_element_by_id('phone').send_keys(phone_number)


@when('I enter my email "{email}"')
def step_impl(context, email):
    context.browser.find_element_by_id('email').click()
    context.browser.find_element_by_id('email').send_keys(email)


@then('the Continue button is enabled')
def step_impl(context):
    assert context.browser.find_element_by_class_name('btn-primary').is_enabled()


@when('I click the Continue button')
def step_impl(context):
    context.browser.find_element_by_class_name('btn-primary').click()


@then('I am taken to the Inspection location page')
def step_impl(context):
    WebDriverWait(context.browser, float(context.config.userdata['webdriver_wait_timeout']))\
        .until(EC.presence_of_element_located((By.TAG_NAME, 'h1')))
    assert context.browser.find_element_by_tag_name('h1').text == 'Inspection location'


@when('I focus and blur the phone field')
def step_impl(context):
    context.browser.find_element_by_id('phone').click()
    context.browser.find_element_by_id('email').click()


@then('I can see an error message')
def step_impl(context):
    context.browser.find_element_by_class_name('error-message')


@when('I focus and blur the email field')
def step_impl(context):
    context.browser.find_element_by_id('email').click()
    context.browser.find_element_by_id('phone').click()


@when('I click on the Back button')
def step_impl(context):
    context.browser.find_element_by_class_name('btn-default').click()
