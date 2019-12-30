from selenium import webdriver



def before_all(context):
     print("Executing before all")

def before_feature(context, feature):
     print("Before feature\n")

#Scenario level objects are popped off context when scenario exits
def before_scenario(context,scenario):
     context.driver = webdriver.Chrome('/home/scarlet/Projects/Automation/Confluence/features/steps/chromedriver')
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



