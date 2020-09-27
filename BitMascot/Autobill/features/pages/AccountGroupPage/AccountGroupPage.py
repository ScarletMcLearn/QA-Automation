from selenium import webdriver

# Here we can add custom Page Objects with XPATH
# Or we can have XPATH strings

login_button_xpath = '/html/body/div[1]/div/div/form/div[3]/button'

def email_field_pom(driver):
    email_field = driver.find_element_by_id('email')
    return email_field