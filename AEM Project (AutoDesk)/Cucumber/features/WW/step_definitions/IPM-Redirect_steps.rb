# http://www.autodesk.com/services/estore/redirect?productLine=MAYALT&country=US&language=en

Given(/^the user visits an IPM URL with an existing "([^"]*)" and "([^"]*)" and "([^"]*)"$/) do |product, country, language|
  visit($IPM_REDIRECT_URL+'productLine='+(product)+'&country='+(country)+'&language='+(language))
end

#--- Scenario X wip ---#
Then(/^the correct DC Local site Subscribe page is loaded: "([^"]*)" and "([^"]*)"$/) do |site, destination_page|
sleep 4
url = Env_Url.environment_links(localsite)
  current_url.should == $BASE_URL_SHORT+(site)+(destination_page)
end

########## sample working code for scenario 1 with example Table #1 ################
### check out: https://gist.github.com/them0nk/2166525
#Then(/^the correct estore site page is loaded: "([^"]*)"and "([^"]*)"$/) do |store, estorepage|
#    current_url.should == $BASE_URL_SHORT+(store)+(estorepage)
#end


########## sample working code for scenario 1 with example Table #2 ################
Then(/^the correct estore site page is loaded: "([^"]*)"and "([^"]*)" and "([^"]*)"$/) do |store, product, lang|
#  url = Env_Url.environment_links(localsite)
  link = '/qa-automation/ipm-redirect/mayalt-responsive?productLine='
  language = '&language='
  current_url.should == $BASE_URL_SHORT+(store)+link+(product)+language+(lang)
### To print expected results in prompt when running locally
#  puts "\n"
#  puts current_url
#  puts "\n"
#  puts $BASE_URL_SHORT+(store)+link+(product)+language+(lang)
end

########################################################

Then(/^the correct estore site page is loaded: "([^"]*)" and "([^"]*)"$/) do |store, estorepage|
#  estorepage = '/qa-automation/ipm-redirect/mayalt-responsive?productLine='
#  url = Env_Url.environment_links(localsite)
sleep 4
  current_url.should == $BASE_URL_SHORT+(store)+(estorepage)
end

##################### Scenario 8 ######################
Then(/^the correct APAC Home page "([^"]*)" is loaded$/) do |store|
  current_url.should == (store)
end

##################### Scenario 9 ######################
Then(/^the correct reseller page is loaded: "([^"]*)"$/) do |reseller|
  current_url.should == (reseller)
end


#################################################################################################

################### Scenario 11 #######################

Given(/^the user visits an IPM URL with additional params "([^"]*)" and "([^"]*)" and "([^"]*)" and "([^"]*)" and "([^"]*)"$/)  do |product, country, language, param1, param2 |
   visit($IPM_REDIRECT_URL+'productLine='+(product)+'&country='+(country)+'&language='+(language)+(param1)+(param2))
end


################### Scenario 12 #######################

#http://www-sle2.awsism.autodesk.com/services/estore/redirect?test1=t1&productLine=MAYALT&country=US&language=en&test2=t

Given(/^the user visits an IPM URL with a param before the PLC "([^"]*)" and "([^"]*)" and "([^"]*)" and "([^"]*)" and "([^"]*)"$/) do |param1, product, country, language, param2 |
   visit($IPM_REDIRECT_URL+(param1)+'&productLine='+(product)+'&country='+(country)+'&language='+(language)+(param2))
end

########################################################

################### Scenario 13 #######################
Given(/^the user visits an IPM URL with an existing "([^"]*)" and "([^"]*)"$/) do |product, country|
   visit($IPM_REDIRECT_URL+'productLine='+(product)+'&country='+(country))
end


########################################################

################### Scenario 15 #######################
############## PBL DISABLED MAPPING ###################

############### Create an IPM link with the given product line, country code and application key #######################
Given(/^the user access an IPM URL with the given "([^"]*)" and "([^"]*)" and "([^"]*)"$/) do |product, country, appKey|
  link = $IPM_REDIRECT_URL + 'country='+(country)
  # += add content to the existing content
  # Condensed condition explanation:  A ? B : C  is equal to if (A) then return B else return C
  link += appKey == nil || appKey == '' ? '' : '&appKey='+(appKey)
  link += product == nil || product == '' ? '' : '&productLine='+(product)
  visit(link)
end

########## Check that the current page is the expected one ################
Then(/^the correct web site page is loaded: "([^"]*)"$/) do |destination|
#  url = Env_Url.environment_links(localsite)
  current_url.should == destination
end




################### Scenario 16 #######################
Given(/^the user access an IPM URL with the given "([^"]*)" and "([^"]*)" and "([^"]*)" but no Product$/) do |country, language, appKey|
   visit($IPM_REDIRECT_URL+'country='+(country)+'&language='+(language)+'&appKey='+(appKey))
    sleep 6
=begin
  link = $IPM_URL + 'country='+(country)
  # += add content to the existing content
  # A = link += product == nil || product == ''
  # B = ?'':
  # C = '&language='+(language)
  # Condensed condition explanation:  A ? B : C  is equal to if (A) then return B else return C
  link += language == nil || appKey == '' ? '' : '&language='+(language)
  link += appKey == nil || appKey == '' ? '' : '&appKey='+(appKey)
  visit(link)
=end
end
