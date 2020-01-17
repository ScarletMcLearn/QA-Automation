from selenium import webdriver
from selenium.webdriver.support.ui import WebDriverWait


def get_clear_browsing_button(driver):
    """Find the "CLEAR BROWSING BUTTON" on the Chrome settings page."""
    return driver.find_element_by_css_selector('* /deep/ #clearBrowsingDataConfirm')


def clear_cache(driver, timeout=60):
    """Clear the cookies and cache for the ChromeDriver instance."""
    # navigate to the settings page
    driver.get('chrome://settings/clearBrowserData')

    # wait for the button to appear
    wait = WebDriverWait(driver, timeout)
    wait.until(get_clear_browsing_button)

    # click the button to clear the cache
    get_clear_browsing_button(driver).click()

    # wait for the button to be gone before returning
    wait.until_not(get_clear_browsing_button)



chrome_options = webdriver.ChromeOptions()
chrome_options.add_argument("--incognito")


def before_all(context):
     print("Executing before all")

def before_feature(context, feature):
     print("Before feature\n")

#Scenario level objects are popped off context when scenario exits
def before_scenario(context,scenario):
     # ADD Chrome Driver Path Variable Here
     context.driver = webdriver.Chrome('/home/scarlet/Projects/Automation/Confluence/features/steps/chromedriver', chrome_options=chrome_options)      # Chrome Driver Path 
     # clear_cache(context.driver)

     
     print("Before scenario\n")

def after_scenario(context,scenario):
     context.driver.quit()
     print("After scenario\n")

def after_feature(context,feature):
     print("\nAfter feature")

def after_all(context):
     print("Executing after all")


# Added New
take_screenshot = False 

def after_step(context, step):
     if take_screenshot:
          if step.status == "failed":
               context.driver.save_screenshot(context.scenario.name + " " + step.name + ".png")



