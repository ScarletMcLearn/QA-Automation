from behave import *

from selenium.webdriver.common.keys import Keys
from selenium.webdriver.common.by import By

from selenium.webdriver.support.ui import WebDriverWait
from selenium.webdriver.support import expected_conditions as EC

from selenium.webdriver.support.ui import Select

from aim_config import *

import time

# @given(u'Browser is opened')
# def step_impl(context):
#     raise NotImplementedError(u'STEP: Given Browser is opened')


@given(u'navigated to AIM Assistant Manager site // https://crm-qa.aiminspect.com/')
def navigate_to_aim(context):
    context.driver.get("https://crm-uat.aiminspect.com/")
    context.driver.implicitly_wait(30)

@given(u'AIM Assistant Manager site is displayed')
def step_impl(context):
    time.sleep(10)
    title_correct = context.driver.title == 'AiM Assignment Manager'
    username_field_displayed = context.driver.find_element_by_id('username').is_displayed()
    password_field_displayed = context.driver.find_element_by_id('password').is_displayed()
    reset_password_button_displayed = context.driver.find_elements_by_tag_name('button')[0].text == 'RESET PASSWORD'
    login_button_displayed = context.driver.find_elements_by_tag_name('button')[1].text == 'LOG IN'
    footer_displayed = bool(context.driver.find_elements_by_tag_name('footer')[0])
    assert title_correct and username_field_displayed and password_field_displayed and reset_password_button_displayed and login_button_displayed and footer_displayed


@given(u'correct user name and password is entered')
def step_impl(context):
    context.driver.find_element_by_id('username').send_keys(aim_inspect_username)
    context.driver.find_element_by_id('password').send_keys(aim_inspect_password)

    


@given(u'login form is submitted')
def step_impl(context):
    context.driver.find_elements_by_tag_name('button')[1].click()
    context.driver.implicitly_wait(10)



@when(u'logged in to AIM Inspect site')
def step_impl(context):
    # context.driver.implicitly_wait(30)
    time.sleep(5)
    current_url = context.driver.current_url == 'https://crm-uat.aiminspect.com/#!/inspection-request/search/basic'
    assert current_url, True


@then(u'AIM Assistant Manager site logged in is displayed')
def step_impl(context):
    header_displayed = context.driver.find_elements_by_tag_name('header')[0].text == 'Dashboard\nRequest'
    search_tabs_displayed = context.driver.find_elements_by_class_name('tabs-menu')[0].text == 'Basic Search\nAdvanced Search'
    search_bar_displayed = context.driver.find_elements_by_tag_name('input')[1].get_attribute('placeholder') == 'Enter VIN, Phone, Conf#, Account, Dealer Name or Lessee Name'
    search_button_displayed = context.driver.find_elements_by_tag_name('button')[1].text == 'SEARCH'
    logout_button_displayed = context.driver.find_elements_by_class_name('person-icon')


    assert (header_displayed and search_tabs_displayed and search_bar_displayed and search_button_displayed and logout_button_displayed), True



@when(u'click on Dashboard')
def step_impl(context):
    dashboard_link_found = context.driver.find_elements_by_class_name('navbar-link')[0].text == 'Dashboard'
    context.driver.find_elements_by_class_name('navbar-link')[0].send_keys('\n')
    context.driver.implicitly_wait(60)



@then(u'Dashboard data is displayed')
def step_impl(context):
    time.sleep(60)
    current_url = context.driver.current_url == 'https://crm-qa.aiminspect.com/#!/dashboard'
    overdue_inspections_shown = context.driver.find_elements_by_class_name('dashboard-label')[0].text == 'Overdue Inspections'
    due_today_shown = context.driver.find_elements_by_class_name('dashboard-label')[1].text == 'Due Today'
    awaiting_csr_shown = context.driver.find_elements_by_class_name('dashboard-label')[2].text == 'Awaiting CSR'
    awaiting_dispatch_shown = context.driver.find_elements_by_class_name('dashboard-label')[3].text == 'Awaiting Dispatch'
    awaiting_quality_shown = context.driver.find_elements_by_class_name('dashboard-label')[4].text == 'Awaiting Quality'
    open_requests_shown = context.driver.find_elements_by_class_name('dashboard-label')[5].text == 'Open Requests'
    
    assert (current_url and open_requests_shown and awaiting_quality_shown and awaiting_dispatch_shown and awaiting_csr_shown and due_today_shown and overdue_inspections_shown), True


@when(u'click on Overdue Inspection')
def step_impl(context):
    context.driver.find_elements_by_class_name('dashboard-box')[0].click()


def does_result_exist(context, item_number):
    result = context.driver.find_elements_by_class_name('dashboard-count')[item_number].text
    return result != 0

@then(u'Overdue Inspection are displayed')
def step_impl(context):
    context.driver.implicitly_wait(15)

    result = context.driver.find_elements_by_class_name('dashboard-count')[0].text

    if result != 0:
    # if does_result_exist(context, 0):
        assert (bool(context.driver.find_elements_by_id('dashboard-results-container')) and context.driver.find_elements_by_class_name('dashboard-indicator-label')[0].text == 'Overdue Inspections'), True 
    else:
        assert(context.driver.find_elements_by_class_name('crm-warning')[0].text), 'No Results Found.'




@when(u'click on Due today')
def step_impl(context):
    context.driver.find_elements_by_class_name('dashboard-box')[1].click()


@then(u'Due today are displayed')
def step_impl(context):
    context.driver.implicitly_wait(15)

    result = context.driver.find_elements_by_class_name('dashboard-count')[1].text

    if result != 0:
    # if does_result_exist(context, 0):
        assert (bool(context.driver.find_elements_by_id('dashboard-results-container')) and context.driver.find_elements_by_class_name('dashboard-indicator-label')[1].text == 'Overdue Inspections'), True 
    else:
        assert(context.driver.find_elements_by_class_name('crm-warning')[1].text), 'No Results Found.'



@when(u'click on Showing:All States')
def step_impl(context):
    time.sleep(30)
    context.driver.find_elements_by_class_name('md-select-value')[0].click()


@then(u'All states Dropdown menu is displayed')
def step_impl(context):
    assert len(context.driver.find_elements_by_class_name('md-checkbox-enabled')) > 0


@when(u'select an option from the menu')
def step_impl(context):
    context.driver.find_elements_by_class_name('md-checkbox-enabled')[1].click()
    context.driver.find_elements_by_class_name('md-checkbox-enabled')[0].send_keys(Keys.ESCAPE)

@then(u'Dashboard is updated to show information of the option selected')
def step_impl(context):
    raise NotImplementedError(u'STEP: Then Dashboard is updated to show information of the option selected')
