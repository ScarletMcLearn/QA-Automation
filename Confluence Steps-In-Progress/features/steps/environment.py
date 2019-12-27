from selenium import webdriver


def before_feature(context, feature):
    context.driver = webdriver.Chrome('/home/scarlet/Projects/Automation/Confluence/features/steps/chromedriver')
    context.driver.implicitly_wait(2)


def after_feature(context, feature):
    context.driver.quit()
