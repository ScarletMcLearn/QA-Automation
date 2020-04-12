#see: http://www.rubydoc.info/gems/show_me_the_cookies


## FOR THE FOLLOWING, YOU CAN USE following Gherkin examples;
# Given the userCountry cookie is set for "<countrycode>" on "<site>"
# Given the userCountry cookie is set for "FR" on ".com"
Given(/^the userCountry cookie is set for "([^"]*)" on "([^"]*)"$/) do |country, site|
  url = Env_Url.environment_links(site)
  visit(url)
  eprivacy_yes_to_all(site)
  create_cookie('userCountry', (country))
  page.evaluate_script("window.location.reload()")
end
