# from selenium import webdriver
# from selenium.webdriver.support.ui import WebDriverWait

# from behave import *


# from selenium import webdriver
# from selenium.webdriver.support.ui import WebDriverWait
# from selenium.common.exceptions import NoSuchElementException

# import time 

# from config import *


# # # Chrome
# # def get_clear_browsing_button(driver):
# #     """Find the "CLEAR BROWSING BUTTON" on the Chrome settings page."""
# #     return driver.find_element_by_css_selector('* /deep/ #clearBrowsingDataConfirm')


# # def clear_cache(driver, timeout=60):
# #     """Clear the cookies and cache for the ChromeDriver instance."""
# #     # navigate to the settings page
# #     driver.get('chrome://settings/clearBrowserData')
# #     #
# #     # wait for the button to appear
# #     wait = WebDriverWait(driver, timeout)
# #     wait.until(get_clear_browsing_button)
# #     #
# #     # click the button to clear the cache
# #     get_clear_browsing_button(driver).click()
# #     #
# #     # wait for the button to be gone before returning
# #     wait.until_not(get_clear_browsing_button)



# # chrome_options = webdriver.ChromeOptions()
# # chrome_options.add_argument("--incognito")
# # chrome_options.add_argument("--start-maximized")


# # def get_chrome_with_cache_cleared():
# #     # ADD Chrome Driver Path Variable Here
# #      driver = webdriver.Chrome(executable_path='/home/scarlet/Projects/PyEnvs/WebScrapingEnv/chromedriver', chrome_options=chrome_options)      # Chrome Driver Path 
# #      # clear_cache(context.driver)
# #     #
# #      return driver




# # def finds_elements_by_tag_attribute_value(driver, tag, attribute, value):
# #     try:
# #         elements = driver.find_elements_by_xpath('//'+tag+'[@'+attribute+'="' + value + '"]')
# #     # 
# #         return elements
# #     # 
# #     except NoSuchElementException:
# #         print("No elements found")

# from utils.webdriver_helper import *


# @given('the Browser is opened')
# def step_impl(context):
#     if browser == 'chrome':
#         context.driver = webdriver.Chrome(executable_path='/home/scarlet/Projects/WebDrivers/Chromedriver/chromedriver', chrome_options=chrome_options)      # Chrome Driver Path - Updated

    



# @given(u'User navigates to AutoBill site')
# def step_impl(context):
#     ab_site_url = 'https://' + environment + '-app.autobill.com/'
#     context.driver.get(ab_site_url)

    


# @given(u'enters "Email" in Email Field')
# def step_impl(context):
#     email_field = context.driver.find_element_by_id('email')
    
#     email_field.send_keys(email)

    


# @given(u'enters "Password" in Password Field')
# def step_impl(context):
#     password_field = context.driver.find_element_by_id('password')
    
#     password_field.send_keys(password)

    



# @given(u'clicks Login button')
# def step_impl(context):
#     login_button = context.driver.find_element_by_class_name('login-button')
#     login_button.click()

    


# @then(u'AutoBill site is displayed')
# def step_impl(context):
#     assert context.driver.title == 'AutoBill Dashboard'

    

# @given(u'the User is on AutoBill site')
# def step_impl(context):
#     ab_site_url = 'https://' + environment + '-app.autobill.com/'
#     context.driver.get(ab_site_url)



# @given(u'clicks Implementer icon')
# def step_impl(context):
#     implementer_icon = context.driver.find_element_by_class_name('user-image')
#     implementer_icon.click()


# @given(u'Dropdown menu is displayed')
# def step_impl(context):
#     dropdown_menu = context.driver.find_elements_by_class_name('new-list')[0]
    
#     time.sleep(3)

#     assert dropdown_menu.text == 'My Space\nProducts\nEvent Log\nSettings\nReport\nSystem Log\nIntegration Log\nLogout'


# @given(u'clicks Settings option from Dropdown list')
# def step_impl(context):
#     settings_option = finds_elements_by_tag_attribute_value(context.driver, 'li', 'tab', 'settings')[0]
#     settings_option.click()

#     time.sleep(5)


# @given(u'Settings is displayed')
# def step_impl(context):
#     settings_option = finds_elements_by_tag_attribute_value(context.driver, 'li', 'role', 'tab')[0] 
#     assert settings_option.text == 'Settings\nClose Tab'

    



# @when(u'the User clicks General Settings from left side menu')
# def step_impl(context):
#     for itm in context.driver.find_elements_by_class_name('left-tab-title'):
#         if itm.text == 'General Settings':
#             itm.click()



# @when(u'General Settings is displayed')
# def step_impl(context):
#     general_settings = context.driver.find_elements_by_class_name('global-settings-title')[0]
#     assert general_settings.text == 'General Settings'




# @when(u'clicks Account panel')
# def step_impl(context):
#     for pnl in context.driver.find_elements_by_class_name('accordion-title'):
#          if (pnl.text == 'Account'):
#                  pnl.click()
#     time.sleep(5)

    


# # TO DO - USING XPATH
# @when(u'toggles on Account Grouping')
# def step_impl(context):
#     accounting_groupiing_toogle = context.driver.find_elements_by_class_name('toggle-switch')[0]

#     accounting_groupiing_toogle.click()

    




# @when(u'clicks Save')
# def step_impl(context):
#     context.driver.find_elements_by_class_name('submit-button')[0].click()

#     time.sleep(3)



# @then(u'Account Settings saved notification message is shown')
# def step_impl(context):
#     notification_popup = context.driver.find_elements_by_class_name('message')[0]
#     assert notification_popup.text == 'Account settings have been updated successfully'

    


# @then(u'Account Groups displayed on AutoBill Settings left side menu')
# def step_impl(context):
#     found = False 
#     for itm in context.driver.find_elements_by_class_name('left-tab-title'):
#         if itm.text == 'Account Groups':
#             found = True
#     assert found == True

#     # time.sleep(30)

    