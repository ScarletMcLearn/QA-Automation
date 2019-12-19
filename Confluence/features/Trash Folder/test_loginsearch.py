# Generated by Selenium IDE
import pytest
import time
import json
from selenium import webdriver
from selenium.webdriver.common.by import By
from selenium.webdriver.common.action_chains import ActionChains
from selenium.webdriver.support import expected_conditions
from selenium.webdriver.support.wait import WebDriverWait
from selenium.webdriver.common.keys import Keys
from selenium.webdriver.common.desired_capabilities import DesiredCapabilities

class TestLoginsearch():
  def setup_method(self, method):
    self.driver = webdriver.Chrome()
    self.vars = {}
  
  def teardown_method(self, method):
    self.driver.quit()
  
  def test_loginsearch(self):
    # Test name: login_search
    # Step # | name | target | value | comment
    # 1 | open | / |  | 
    self.driver.get("https://crm-qa.aiminspect.com/")
    # 2 | setWindowSize | 1430x653 |  | 
    self.driver.set_window_size(1430, 653)
    # 3 | type | id=password | Ok8crmlogin! | 
    self.driver.find_element(By.ID, "password").send_keys("Ok8crmlogin!")
    # 4 | type | id=username | sample | 
    self.driver.find_element(By.ID, "username").send_keys("sample")
    # 5 | click | id=username |  | 
    self.driver.find_element(By.ID, "username").click()
    # 6 | click | id=username |  | 
    self.driver.find_element(By.ID, "username").click()
    # 7 | doubleClick | id=username |  | 
    element = self.driver.find_element(By.ID, "username")
    actions = ActionChains(self.driver)
    actions.double_click(element).perform()
    # 8 | click | css=.md-raised |  | 
    self.driver.find_element(By.CSS_SELECTOR, ".md-raised").click()
    # 9 | click | id=basic-search-input |  | 
    self.driver.find_element(By.ID, "basic-search-input").click()
    # 10 | type | id=basic-search-input | test | 
    self.driver.find_element(By.ID, "basic-search-input").send_keys("test")
    # 11 | sendKeys | id=basic-search-input | ${KEY_ENTER} | 
    self.driver.find_element(By.ID, "basic-search-input").send_keys(Keys.ENTER)
  