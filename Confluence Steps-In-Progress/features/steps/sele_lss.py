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



# cntxt = open_browser()

# go_to(cntxt, "https://selfschedule-qa.aiminspect.com")

# print(check_title(cntxt, 'Lessee Self Schedule'))

# print(check_body(cntxt))

# close_browser(cntxt)
