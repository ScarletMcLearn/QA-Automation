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
    # context.driver.implicitly_wait(60)
    time.sleep(10)
    context.overdue_inspections_count = context.driver.find_elements_by_class_name('dashboard-count')[0].text



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



def does_result_exist(context, item_number):
    result = context.driver.find_elements_by_class_name('dashboard-count')[item_number].text
    return result != 0


# Test Helper


def click_on_dashboardbox(context, itm_num):
    context.driver.find_elements_by_class_name('dashboard-box')[itm_num].click()

def results_shown(context, itm_num, box_class_name, label_text):
    context.driver.implicitly_wait(15)

    result = context.driver.find_elements_by_class_name('dashboard-count')[itm_num].text

    if result != 0:
    # if does_result_exist(context, 0):
        context.driver.find_elements_by_class_name(box_class_name)[1].click()
        time.sleep(5)
        
        assert (bool(context.driver.find_elements_by_id('dashboard-results-container')) and context.driver.find_elements_by_class_name('dashboard-indicator-label')[0].text == label_text), True   # nci
    else:
        assert(context.driver.find_elements_by_class_name('crm-warning')[0].text), 'No Results Found.'  # nci


#####

@when(u'click on Overdue Inspection')
def step_impl(context):
    click_on_dashboardbox(context, 0)
    # context.driver.find_elements_by_class_name('dashboard-box')[0].click()




@then(u'Overdue Inspection are displayed')
def step_impl(context):
    results_shown(context, 0, 'overdue', 'Overdue Inspections')

    # context.driver.implicitly_wait(15)

    # result = context.driver.find_elements_by_class_name('dashboard-count')[0].text

    # if result != 0:
    # # if does_result_exist(context, 0):
    #     context.driver.find_elements_by_class_name('overdue')[0].click()
    #     time.sleep(5)

    #     assert (bool(context.driver.find_elements_by_id('dashboard-results-container')) and context.driver.find_elements_by_class_name('dashboard-indicator-label')[0].text == 'Overdue Inspections'), True 
    # else:
    #     assert(context.driver.find_elements_by_class_name('crm-warning')[0].text), 'No Results Found.'




@when(u'click on Due today')
def step_impl(context):
    click_on_dashboardbox(context, 1)
    # context.driver.find_elements_by_class_name('dashboard-box')[1].click()


@then(u'Due today are displayed')
def step_impl(context):
    results_shown(context, 1, 'due-today', 'Due Today')

    # context.driver.implicitly_wait(15)

    # result = context.driver.find_elements_by_class_name('dashboard-count')[1].text

    # if result != 0:
    # # if does_result_exist(context, 0):
    #     context.driver.find_elements_by_class_name('due-today')[1].click()
    #     time.sleep(5)
        
    #     assert (bool(context.driver.find_elements_by_id('dashboard-results-container')) and context.driver.find_elements_by_class_name('dashboard-indicator-label')[0].text == 'Due Today'), True   # nci
    # else:
    #     assert(context.driver.find_elements_by_class_name('crm-warning')[0].text), 'No Results Found.'  # nci


    # context.driver.implicitly_wait(15)

    # result = context.driver.find_elements_by_class_name('dashboard-count')[1].text

    # if result != 0:
    # # if does_result_exist(context, 0):
    #     assert (bool(context.driver.find_elements_by_id('dashboard-results-container')) and context.driver.find_elements_by_class_name('dashboard-indicator-label')[1].text == 'Overdue Inspections'), True 
    # else:
    #     assert(context.driver.find_elements_by_class_name('crm-warning')[1].text), 'No Results Found.'


@when(u'click on Awaiting CSR')
def step_impl(context):
    click_on_dashboardbox(context, 2)
    # context.driver.find_elements_by_class_name('dashboard-box')[2].click()


@then(u'Awaiting CSR are displayed')
def step_impl(context):
    results_shown(context, 2, 'awaiting-on-hold', 'Awaiting CSR')

    # context.driver.implicitly_wait(15)

    # result = context.driver.find_elements_by_class_name('dashboard-count')[2].text

    # if result != 0:
    # # if does_result_exist(context, 0):
    #     context.driver.find_elements_by_class_name('awaiting-on-hold')[1].click()
    #     time.sleep(5)
        
    #     assert (bool(context.driver.find_elements_by_id('dashboard-results-container')) and context.driver.find_elements_by_class_name('dashboard-indicator-label')[0].text == 'Awaiting CSR'), True   # nci
    # else:
    #     assert(context.driver.find_elements_by_class_name('crm-warning')[0].text), 'No Results Found.'  # nci




@when(u'click on Awaiting Dispatch')
def step_impl(context):
    click_on_dashboardbox(context, 3)
    # context.driver.find_elements_by_class_name('dashboard-box')[3].click()


@then(u'Awaiting Dispatch are displayed')
def step_impl(context):
    context.driver.implicitly_wait(15)

    result = context.driver.find_elements_by_class_name('dashboard-count')[3].text

    if result != 0:
    # if does_result_exist(context, 0):
        context.driver.find_elements_by_class_name('awaiting-on-hold')[2].click()
        time.sleep(5)
        
        assert (bool(context.driver.find_elements_by_id('dashboard-results-container')) and context.driver.find_elements_by_class_name('dashboard-indicator-label')[0].text == 'Awaiting Dispatch'), True   # nci
    else:
        assert(context.driver.find_elements_by_class_name('crm-warning')[0].text), 'No Results Found.'  # nci


    
@when(u'click on Awaiting Quality')
def step_impl(context):
    click_on_dashboardbox(context, 4)


@then(u'Awaiting Quality are displayed')
def step_impl(context):
    context.driver.implicitly_wait(15)

    result = context.driver.find_elements_by_class_name('dashboard-count')[4].text

    if result != 0:
    # if does_result_exist(context, 0):
        context.driver.find_elements_by_class_name('awaiting-on-hold')[4].click()
        time.sleep(5)
        
        assert (bool(context.driver.find_elements_by_id('dashboard-results-container')) and context.driver.find_elements_by_class_name('dashboard-indicator-label')[0].text == 'Awaiting Quality'), True   # nci
    else:
        assert(context.driver.find_elements_by_class_name('crm-warning')[0].text), 'No Results Found.'  # nci



@when(u'click on Open Requests')
def step_impl(context):
    click_on_dashboardbox(context, 5)


@then(u'Open Requests are displayed')
def step_impl(context):
    context.driver.implicitly_wait(15)

    result = context.driver.find_elements_by_class_name('dashboard-count')[5].text

    if result != 0:
    # if does_result_exist(context, 0):
        context.driver.find_elements_by_class_name('open-requests')[1].click()
        time.sleep(5)
        
        assert (bool(context.driver.find_elements_by_id('dashboard-results-container')) and context.driver.find_elements_by_class_name('dashboard-indicator-label')[0].text == 'Open Requests'), True   # nci
    else:
        assert(context.driver.find_elements_by_class_name('crm-warning')[0].text), 'No Results Found.'  # nci



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
    context.driver.execute_script("window.scrollTo(0, document.body.scrollHeight);")

@then(u'Dashboard is updated to show information of the option selected')
def step_impl(context):
    time.sleep(5)
    assert context.overdue_inspections_count != context.driver.find_elements_by_class_name('dashboard-count')[0].text 



@when(u'see subtext on Overdue Inspections')
def step_impl(context):
    context.overdue_inspections_count = context.driver.find_elements_by_class_name('dashboard-count')[0].text


@when(u'click on Overdue Inspections')
def step_impl(context):
    context.driver.find_elements_by_class_name('dashboard-box')[0].click()
    time.sleep(10)

    # raise NotImplementedError(u'STEP: When click on Overdue Inspections')

@when(u'click on Due Today box')
def step_impl(context):
    context.driver.find_elements_by_class_name('dashboard-box')[1].click()
    time.sleep(10)

@when(u'click on Awaiting CSR box')
def step_impl(context):
    context.driver.find_elements_by_class_name('dashboard-box')[2].click()
    time.sleep(10)

    

@when(u'click on Awaiting Dispatch box')
def step_impl(context):
    context.driver.find_elements_by_class_name('dashboard-box')[3].click()
    time.sleep(10)


@when(u'click on Awaiting Quality box')
def step_impl(context):
    context.driver.find_elements_by_class_name('dashboard-box')[4].click()
    time.sleep(10)

@when(u'click on Open Requests box')
def step_impl(context):
    context.driver.find_elements_by_class_name('dashboard-box')[5].click()
    time.sleep(10)

@then(u'Overdue Inspections results count are same as the Overdue Inspections subtext')
def step_impl(context):
    index_1 = context.driver.find_elements_by_class_name('results-count')[0].text.find('of ') + 3
    index_2 = context.driver.find_elements_by_class_name('results-count')[0].text.find('\n')
    assert context.overdue_inspections_count == context.driver.find_elements_by_class_name('results-count')[0].text[index_1:index_2]



@when(u'see subtext on Due Today')
def step_impl(context):
    context.due_today_count = context.driver.find_elements_by_class_name('dashboard-count')[1].text


@then(u'Due Today results count are same as the Due Today subtext')
def step_impl(context):
    index_1 = context.driver.find_elements_by_class_name('results-count')[0].text.find('of ') + 3
    index_2 = context.driver.find_elements_by_class_name('results-count')[0].text.find('\n')
    assert context.due_today_count == context.driver.find_elements_by_class_name('results-count')[0].text[index_1:index_2]



@when(u'see subtext on Awaiting CSR')
def step_impl(context):
    context.awaiting_csr_count = context.driver.find_elements_by_class_name('dashboard-count')[2].text


@then(u'Awaiting CSR results count are same as the Awaiting CSR subtext')
def step_impl(context):
    index_1 = context.driver.find_elements_by_class_name('results-count')[0].text.find('of ') + 3
    index_2 = context.driver.find_elements_by_class_name('results-count')[0].text.find('\n')
    assert context.awaiting_csr_count == context.driver.find_elements_by_class_name('results-count')[0].text[index_1:index_2]


@when(u'see subtext on Awaiting Dispatch')
def step_impl(context):
    context.awaiting_dispatch_count = context.driver.find_elements_by_class_name('dashboard-count')[3].text


@then(u'Awaiting Dispatch results count are same as the Awaiting Dispatch subtext')
def step_impl(context):
    index_1 = context.driver.find_elements_by_class_name('results-count')[0].text.find('of ') + 3
    index_2 = context.driver.find_elements_by_class_name('results-count')[0].text.find('\n')
    assert context.awaiting_dispatch_count == context.driver.find_elements_by_class_name('results-count')[0].text[index_1:index_2]




@when(u'see subtext on Awaiting Quality')
def step_impl(context):
    context.awaiting_quality_count = context.driver.find_elements_by_class_name('dashboard-count')[4].text


@then(u'Awaiting Quality results count are same as the Awaiting Quality subtext')
def step_impl(context):
    index_1 = context.driver.find_elements_by_class_name('results-count')[0].text.find('of ') + 3
    index_2 = context.driver.find_elements_by_class_name('results-count')[0].text.find('\n')
    assert context.awaiting_quality_count == context.driver.find_elements_by_class_name('results-count')[0].text[index_1:index_2]



@when(u'see subtext on Open Requests')
def step_impl(context):
    context.open_requests_count = context.driver.find_elements_by_class_name('dashboard-count')[5].text


@then(u'Open Requests results count are same as the Open Requests subtext')
def step_impl(context):
    index_1 = context.driver.find_elements_by_class_name('results-count')[0].text.find('of ') + 3
    index_2 = context.driver.find_elements_by_class_name('results-count')[0].text.find('\n')
    assert context.open_requests_count == context.driver.find_elements_by_class_name('results-count')[0].text[index_1:index_2]


@when(u'select result from the results displayed')
def step_impl(context):
    context.driver.find_elements_by_class_name('search-results')[0].click()
    time.sleep(5)


@then(u'selected result details are shown')
def step_impl(context):
    assert context.driver.current_url[0:51], 'https://crm-qa.aiminspect.com/#!/inspection-request'



@then(u'Last updated date time stamp is shown')
def step_impl(context):
    # time.sleep(5)
    assert context.driver.find_elements_by_tag_name('span')[4].text.find('Last updated: ') == 0




@when(u'click on Export to Excel button')
def step_impl(context):
    export_button = context.driver.find_elements_by_class_name('results-export')[0]
    if export_button.text == 'EXPORT TO EXCEL':
        export_button.click()


@then(u'Overdue Inspection Excel file is generated')
def step_impl(context):
    raise NotImplementedError(u'STEP: Then Overdue Inspection Excel file is generated')



# @when(u'click on Request')
# def step_impl(context):
#     raise NotImplementedError(u'STEP: When click on Request')


@when(u'input text in search bar which does not exist # sdfsdf32423')
def step_impl(context):
    # raise NotImplementedError(u'STEP: When input text in search bar which does not exist # sdfsdf32423')
    context.driver.find_element_by_id('basic-search-input').send_keys('sdfsdf32423')


@when(u'click search')
def step_impl(context):
    # raise NotImplementedError(u'STEP: When click search')
    context.driver.find_element_by_id('submit').send_keys('\n')
    time.sleep(5)


@then(u'\'No Results Found.\' message is displayed')
def step_impl(context):
    assert context.driver.find_elements_by_class_name('crm-warning')[0].text == 'No Results Found.'


@when(u'input text in search bar which does exist # asa')
def step_impl(context):
    context.driver.find_element_by_id('basic-search-input').send_keys('asa')


@then(u'search results are displayed')
def step_impl(context):
    assert True == bool(context.driver.find_element_by_id('search-results-container'))

# //*[@id="search-results-container"]/div[2]


@then(u'search bar on navigation menu is displayed')
def step_impl(context):
    assert bool(context.driver.find_element_by_id("input_0")) == True



@when(u'disselect All States option from the menu')
def step_impl(context):
    context.driver.find_elements_by_class_name('md-checkbox-enabled')[0].click()
    context.driver.find_elements_by_class_name('md-checkbox-enabled')[0].send_keys(Keys.ESCAPE)
    context.driver.execute_script("window.scrollTo(0, document.body.scrollHeight);")



@when(u'selects Alabama from the menu')
def step_impl(context):
    context.driver.find_elements_by_class_name('md-checkbox-enabled')[1].click()
    context.driver.find_elements_by_class_name('md-checkbox-enabled')[1].send_keys(Keys.ESCAPE)
    context.driver.execute_script("window.scrollTo(0, document.body.scrollHeight);")


@when(u'selects Alaska from the menu')
def step_impl(context):
    context.driver.find_elements_by_class_name('md-checkbox-enabled')[2].click()
    context.driver.find_elements_by_class_name('md-checkbox-enabled')[2].send_keys(Keys.ESCAPE)
    context.driver.execute_script("window.scrollTo(0, document.body.scrollHeight);")


@when(u'selects Arizona from the menu')
def step_impl(context):
    context.driver.find_elements_by_class_name('md-checkbox-enabled')[3].click()
    context.driver.find_elements_by_class_name('md-checkbox-enabled')[3].send_keys(Keys.ESCAPE)
    context.driver.execute_script("window.scrollTo(0, document.body.scrollHeight);")

    

@when(u'see the result count')
def step_impl(context):
    raise NotImplementedError(u'STEP: When see the result count')


@when(u'click the status of the first result')
def step_impl(context):
    raise NotImplementedError(u'STEP: When click the status of the first result')


@when(u'inspection request detail page is displayed')
def step_impl(context):
    raise NotImplementedError(u'STEP: When inspection request detail page is displayed')


@when(u'click status from inspection request detail page')
def step_impl(context):
    raise NotImplementedError(u'STEP: When click status from inspection request detail page')


@when(u'update status form is displayed')
def step_impl(context):
    raise NotImplementedError(u'STEP: When update status form is displayed')


@when(u'change status to Cancel')
def step_impl(context):
    raise NotImplementedError(u'STEP: When change status to Cancel')


@when(u'add a comment')
def step_impl(context):
    raise NotImplementedError(u'STEP: When add a comment')


@when(u'click save')
def step_impl(context):
    raise NotImplementedError(u'STEP: When click save')


@then(u'Overdue Inspections count decrease by 1 and Awaiting Quality count increase by 1')
def step_impl(context):
    raise NotImplementedError(u'STEP: Then Overdue Inspections count decrease by 1 and Awaiting Quality count increase by 1')
