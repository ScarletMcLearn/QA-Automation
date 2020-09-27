from selenium import webdriver
from selenium.webdriver.support.ui import WebDriverWait

from behave import *


from selenium import webdriver
from selenium.webdriver.support.ui import WebDriverWait
from selenium.common.exceptions import NoSuchElementException

import time 

from config import *


# Chrome
def get_clear_browsing_button(driver):
    """Find the "CLEAR BROWSING BUTTON" on the Chrome settings page."""
    return driver.find_element_by_css_selector('* /deep/ #clearBrowsingDataConfirm')


def clear_cache(driver, timeout=60):
    """Clear the cookies and cache for the ChromeDriver instance."""
    # navigate to the settings page
    driver.get('chrome://settings/clearBrowserData')
    #
    # wait for the button to appear
    wait = WebDriverWait(driver, timeout)
    wait.until(get_clear_browsing_button)
    #
    # click the button to clear the cache
    get_clear_browsing_button(driver).click()
    #
    # wait for the button to be gone before returning
    wait.until_not(get_clear_browsing_button)



chrome_options = webdriver.ChromeOptions()
chrome_options.add_argument("--incognito")
chrome_options.add_argument("--start-maximized")


def get_chrome_with_cache_cleared():
    # ADD Chrome Driver Path Variable Here
     driver = webdriver.Chrome(executable_path=chrome_driver_executable_path, chrome_options=chrome_options)      # Chrome Driver Path 
     # clear_cache(context.driver)
    #
     return driver



chrome_options_2 = webdriver.ChromeOptions()
# chrome_options.add_argument("--incognito")
chrome_options_2.add_argument("--start-maximized")

def get_chrome():
    # ADD Chrome Driver Path Variable Here
     driver = webdriver.Chrome(executable_path=chrome_driver_executable_path, chrome_options=chrome_options_2)      # Chrome Driver Path 
     # clear_cache(context.driver)
    #
     return driver


def finds_elements_by_tag_attribute_value(driver, tag, attribute, value):
    try:
        elements = driver.find_elements_by_xpath('//'+tag+'[@'+attribute+'="' + value + '"]')
    # 
        return elements
    # 
    except NoSuchElementException:
        print("No elements found")




# Firefox
from selenium.webdriver.firefox.firefox_profile import FirefoxProfile

def get_firefox_with_cache_cleared():
    profile = FirefoxProfile()
    profile.set_preference('browser.cache.disk.enable', False)
    profile.set_preference('browser.cache.memory.enable', False)
    profile.set_preference('browser.cache.offline.enable', False)
    profile.set_preference('network.cookie.cookieBehavior', 2)

    driver = webdriver.Firefox(executable_path=gecko_driver_executable_path, firefox_profile=profile)

    driver.maximize_window()
    return driver



def get_firefox():
    profile = FirefoxProfile()
    driver = webdriver.Firefox(executable_path=gecko_driver_executable_path, firefox_profile=profile)

    driver.maximize_window()
    return driver




