
# for INFO: https://github.com/cucumber/cucumber/wiki/Hooks

################### SECTION TO ADD BEFORE/AFTER HOOKS #########################
Before ('@MaximizeBrowser') do |scenario|
  Capybara.page.driver.browser.manage.window.maximize
end

Before ('@Mobile') do |scenario|
  Capybara.page.current_window.resize_to(414, 736)
end


Before ('@StorageClear') do |scenario|
  visit($BASE_URL)
  Capybara.page.execute_script("localStorage.clear()")
end


Before ('@SessionStorageClear') do |scenario|
  visit($BASE_URL)
  Capybara.page.execute_script("sessionStorage.clear()")
end

Before ('@ClearCookies') do |scenario|
  visit($BASE_URL)
  #expire_cookies
  Capybara.reset_sessions!
end


Before ('@DeleteCookiesAddForesee') do |scenario|
  visit($BASE_URL)
  sleep 3
  browser = Capybara.current_session.driver.browser
  browser.manage.delete_all_cookies
  sleep 1
  browser.manage.add_cookie :name => "fsr.s", :value => "{'v2':-2,'v1':1,'rid':'d036702-53702257-2645-8fd6-921ea','to':3,'c':'.autodesk.com','pv':1,'lc':{'d0':{'v':1,'s':true}},'cd':0,'sd':0,'l':'en','i':-1}"
  browser.manage.add_cookie :name => "_4c_", :value => "{'v2':-2,'v1':1,'rid':'d036702-53702257-2645-8fd6-921ea','to':3,'c':'.autodesk.com','pv':1,'lc':{'d0':{'v':1,'s':true}},'cd':0,'sd':0,'l':'en','i':-1}"
  visit($BASE_URL)
  sleep 2
  el = first(:xpath, "//img[@id='_evh-ric-c']", maximum: 1)
  el.click unless el.nil?
  el = first(:xpath, "//a[@class='close close-pbl-overlay']", maximum: 1)
  el.click unless el.nil?
end

###############################################################################


