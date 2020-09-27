from selenium import webdriver
from selenium.webdriver.support.ui import WebDriverWait
from selenium.common.exceptions import NoSuchElementException

import time 


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
     driver = webdriver.Chrome(executable_path='/home/scarlet/Projects/PyEnvs/WebScrapingEnv/chromedriver', chrome_options=chrome_options)      # Chrome Driver Path 
     # clear_cache(context.driver)
    #
     return driver


    

driver = webdriver.Chrome(executable_path='/home/scarlet/Projects/WebDrivers/Chromedriver', chrome_options=chrome_options)      # Chrome Driver Path 


driver = webdriver.Chrome(executable_path='/home/scarlet/Projects/WebDrivers/Chromedriver/chromedriver', chrome_options=chrome_options)      # Chrome Driver Path - Updated



driver.get('https://dev-app.autobill.com/')
 

driver.find_element_by_id('email').send_keys('implementer@bc21e86c.local')


driver.find_element_by_id('password').send_keys('implementer@bc21e86c.local')



driver.find_element_by_class_name('login-button').click()


driver.find_element_by_class_name('user-image').click()




def finds_elements_by_tag_attribute_value(driver, tag, attribute, value):
    try:
        elements = driver.find_elements_by_xpath('//'+tag+'[@'+attribute+'="' + value + '"]')
    # 
        return elements
    # 
    except NoSuchElementException:
        print("No elements found")



finds_elements_by_tag_attribute_value(driver, 'li', 'tab-id', 'settings')[0].click()


finds_elements_by_tag_attribute_value(driver, 'li', 'tab', 'hubSpotConfiguration')[0].click()



finds_elements_by_tag_attribute_value(driver, 'h3', 'role', 'tab')[0].text == 'Select Hub Spot Integration Model'

finds_elements_by_tag_attribute_value(driver, 'h3', 'role', 'tab')[0].click()


driver.find_element_by_class_name('has-switcher')

driver.find_element_by_class_name('has-switcher').text



def find_element_by_class_with_text(driver, class_name, text):
    for ele in driver.find_elements_by_class_name(class_name):
        if ele.text == text:
            return ele 
    else:
        return None 



find_element_by_class_with_text(driver, 'accordion-title', 'Select Hub Spot Integration Model')



find_element_by_class_with_text(driver, 'accordion-title', 'Select Hub Spot Integration Model').click()



find_element_by_class_with_text(driver, 'form-title', 'Export Company from AutoBill to Hub Spot').text


driver.find_elements_by_xpath('//*[@id="ui-accordion-3-panel-0"]/div/div/div[2]/div[1]/div/div/div')[0].click()



find_element_by_class_with_text(driver, 'form-title', 'Export Contact from AutoBill to Hub Spot').text



driver.find_element_by_xpath('//*[@id="ui-accordion-3-panel-0"]/div/div/div[2]/div[2]/div[1]/div/div/div/span[2]').click()




for i in driver.find_elements_by_class_name('form-row'):
    print(i.find_element_by_class_name('form-title').text)



driver.find_elements_by_class_name('form-row')[0].text
# 'Each Company in Hub Spot represents an unique Account in AutoBill'



driver.find_elements_by_class_name('form-row')[0].find_element_by_class_name('inactive').get_attribute('title')
# Yes


driver.find_elements_by_class_name('form-row')[0].find_element_by_class_name('active').get_attribute('title')
# No



for i in driver.find_elements_by_class_name('form-row'):
     if (i.text):
         print(i.text) 
         print(i.find_element_by_class_name('active').get_attribute('title'))


 
for i in driver.find_elements_by_class_name('form-row'):
     if (i.text):
         print('Text: ' + i.text) 
         print('Toggle: ' + i.find_element_by_class_name('active').get_attribute('title'))
         if (i.find_element_by_class_name('active').get_attribute('title') == 'No'):
            i.find_element_by_class_name('active').click()
            # print(i)




for i in driver.find_elements_by_class_name('form-row'):
     if (i.text == 'Each Company in Hub Spot represents an unique Account in AutoBill'):
        #  print('Text: ' + i.text) 
        #  print('Toggle: ' + i.find_element_by_class_name('active').get_attribute('title'))
         if (i.find_element_by_class_name('active').get_attribute('title') == 'No'):
            i.find_element_by_class_name('active').click()
            # print(i)



for i in driver.find_elements_by_class_name('form-row'):
     if (i.text == 'Export Company from AutoBill to Hub Spot'):
        #  print('Text: ' + i.text) 
        #  print('Toggle: ' + i.find_element_by_class_name('active').get_attribute('title'))
         if (i.find_element_by_class_name('active').get_attribute('title') == 'No'):
            i.find_element_by_class_name('active').click()
            # print(i)




for i in driver.find_elements_by_class_name('form-row'):
     if (i.text == 'Export Contact from AutoBill to Hub Spot'):
        #  print('Text: ' + i.text) 
        #  print('Toggle: ' + i.find_element_by_class_name('active').get_attribute('title'))
         if (i.find_element_by_class_name('active').get_attribute('title') == 'No'):
            i.find_element_by_class_name('active').click()
            # print(i)



for i in driver.find_elements_by_class_name('form-row'):
     if (i.text == 'Export (update only) Deal from AutoBill to Hub Spot'):
        #  print('Text: ' + i.text) 
        #  print('Toggle: ' + i.find_element_by_class_name('active').get_attribute('title'))
         if (i.find_element_by_class_name('active').get_attribute('title') == 'No'):
            i.find_element_by_class_name('active').click()
            # print(i)




for i in driver.find_elements_by_class_name('form-row'):
     if (i.text == 'Import Company from Hub Spot to AutoBill'):
        #  print('Text: ' + i.text) 
        #  print('Toggle: ' + i.find_element_by_class_name('active').get_attribute('title'))
         if (i.find_element_by_class_name('active').get_attribute('title') == 'No'):
            i.find_element_by_class_name('active').click()
            # print(i)






driver.find_element_by_xpath('//*[@id="makeLoadableDropDown8"]/span[1]').click()





for i in driver.find_elements_by_class_name('form-row'):
     if (i.text == 'Import Contact from Hub Spot to AutoBill'):
        #  print('Text: ' + i.text) 
        #  print('Toggle: ' + i.find_element_by_class_name('active').get_attribute('title'))
         if (i.find_element_by_class_name('active').get_attribute('title') == 'No'):
            i.find_element_by_class_name('active').click()
            # print(i)




for i in driver.find_elements_by_class_name('form-row'):
     if (i.text == 'Import Deal from Hub Spot to AutoBill'):
        #  print('Text: ' + i.text) 
        #  print('Toggle: ' + i.find_element_by_class_name('active').get_attribute('title'))
         if (i.find_element_by_class_name('active').get_attribute('title') == 'No'):
            i.find_element_by_class_name('active').click()
            # print(i)




for i in driver.find_elements_by_class_name('form-row'):
     if (i.text == 'Each Deal in Hub Spot represents an unique Account in AutoBill'):
        #  print('Text: ' + i.text) 
        #  print('Toggle: ' + i.find_element_by_class_name('active').get_attribute('title'))
         if (i.find_element_by_class_name('active').get_attribute('title') == 'No'):
            i.find_element_by_class_name('active').click()
            # print(i)



driver.find_element_by_class_name('undefined').text
# 'Please select only one integration model from company or deal'




# Toggle, then Refresh and Renavigation Required

for i in driver.find_elements_by_class_name('form-row'):
     if (i.text == 'Each Deal in Hub Spot represents an unique Account in AutoBill'):
        #  print('Text: ' + i.text) 
        #  print('Toggle: ' + i.find_element_by_class_name('active').get_attribute('title'))
         if (i.find_element_by_class_name('active').get_attribute('title') == 'No'):
            i.find_element_by_class_name('active').click()
            # print(i)






for i in driver.find_elements_by_class_name('form-row'):
     if (i.text == 'Export (update only) Deal from AutoBill to Hub Spot'):
        #  print('Text: ' + i.text) 
        #  print('Toggle: ' + i.find_element_by_class_name('active').get_attribute('title'))
         if (i.find_element_by_class_name('active').get_attribute('title') == 'No'):
            i.find_element_by_class_name('active').click()
            # print(i)




for i in driver.find_elements_by_class_name('form-row'):
     if (i.text == 'Export Account notes to HubSpot Deal as attachments'):
        #  print('Text: ' + i.text) 
        #  print('Toggle: ' + i.find_element_by_class_name('active').get_attribute('title'))
         if (i.find_element_by_class_name('active').get_attribute('title') == 'No'):
            i.find_element_by_class_name('active').click()
            # print(i)





for i in driver.find_elements_by_class_name('form-row'):
     if (i.text == 'Import Deal from Hub Spot to AutoBill'):
        #  print('Text: ' + i.text) 
        #  print('Toggle: ' + i.find_element_by_class_name('active').get_attribute('title'))
         if (i.find_element_by_class_name('active').get_attribute('title') == 'No'):
            i.find_element_by_class_name('active').click()
            # print(i)




for i in driver.find_elements_by_class_name('form-row'):
     if (i.text == 'Import Deal attachments to AutoBill Account as notes'):
        #  print('Text: ' + i.text) 
        #  print('Toggle: ' + i.find_element_by_class_name('active').get_attribute('title'))
         if (i.find_element_by_class_name('active').get_attribute('title') == 'No'):
            i.find_element_by_class_name('active').click()
            # print(i)




for i in driver.find_elements_by_class_name('form-row'):
     if (i.text == 'Import Deal from Hub Spot to AutoBill'):
        #  print('Text: ' + i.text) 
        #  print('Toggle: ' + i.find_element_by_class_name('active').get_attribute('title'))
         if (i.find_element_by_class_name('active').get_attribute('title') == 'No'):
            i.find_element_by_class_name('active').click()
            # print(i)




driver.find_element_by_class_name('submit-button').click()

driver.find_element_by_class_name('cancel-button').click()
