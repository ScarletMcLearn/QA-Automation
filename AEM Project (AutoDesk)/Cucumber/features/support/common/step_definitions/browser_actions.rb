#When(/^I click the browser 'back' button$/) do
When(/^(?:I|user) click the browser 'back' button$/) do
  page.evaluate_script('window.history.back()')
  sleep 7
#  page.go_back
end

########## PAGE RELOAD ##########

Given(/^I (?:reload|refresh) the page$/) do
  page.evaluate_script("window.location.reload()")
  sleep 4
end

########## PAGE SCROLL UP ##########

Given(/^the user will scroll up to page$/) do
  page.execute_script "window.scrollBy(0,-10000)"
  sleep 4
end

########## PAGE SCROLL DOWN ##########

Given(/^the user scrolls to bottom of the page$/) do
  page.execute_script "window.scrollBy(0,10000)"
  sleep 4
end
