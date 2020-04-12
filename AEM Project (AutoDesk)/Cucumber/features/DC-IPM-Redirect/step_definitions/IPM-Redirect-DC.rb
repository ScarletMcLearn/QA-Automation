# http://www.autodesk.com/services/estore/redirect?productLine=MAYALT&country=US&language=en

Given(/^the user visits an IPM URL to DC with an existing "([^"]*)" and "([^"]*)" and "([^"]*)"$/) do |product, country, language|
  visit($IPM_REDIRECT_DC_URL+'productLine='+(product)+'&country='+(country)+'&language='+(language))
end

Then(/^the correct site page is loaded: "([^"]*)" and "([^"]*)"$/) do |site, destination_page|
  sleep 4
  host_page_validation(site, destination_page)
end

Then(/^the latinoamerica page is loaded: "([^"]*)"$/) do |destination_page|
  sleep 4
  domain_page_validation_latinoamerica(destination_page)
  end

Then(/^the correct page is loaded: "([^"]*)"$/) do |page|
  current_url.should == (page)
end

Then(/^the correct reseller page is loaded$/) do
  expect(current_path).to include("locate-a-reseller")
end


#################################################################################################

################### Scenario 11 #######################

Given(/^the user visits an IPM URL to DC with additional params "([^"]*)" and "([^"]*)" and "([^"]*)" and "([^"]*)" and "([^"]*)"$/)  do |product, country, language, param1, param2 |
   visit($IPM_REDIRECT_DC_URL+'productLine='+(product)+'&country='+(country)+'&language='+(language)+(param1)+(param2))
end


################### Scenario 12 #######################

#http://www-sle2.awsism.autodesk.com/services/estore/redirect?test1=t1&productLine=MAYALT&country=US&language=en&test2=t

Given(/^the user visits an IPM URL to DC with a param before the PLC "([^"]*)" and "([^"]*)" and "([^"]*)" and "([^"]*)" and "([^"]*)"$/) do |param1, product, country, language, param2 |
   visit($IPM_REDIRECT_DC_URL+(param1)+'&productLine='+(product)+'&country='+(country)+'&language='+(language)+(param2))
end

########################################################

################### Scenario 13 #######################
Given(/^the user visits an IPM URL to DC with an existing "([^"]*)" and "([^"]*)"$/) do |product, country|
  visit($IPM_REDIRECT_DC_URL+'productLine='+(product)+'&country='+(country))
end


########################################################

################### Scenario 15 #######################
############## PBL DISABLED MAPPING ###################

############### Create an IPM link with the given product line, country code and application key #######################
Given(/^the user access an IPM URL to DC with the given "([^"]*)" and "([^"]*)" and "([^"]*)"$/) do |product, country, appKey|
  link = $IPM_REDIRECT_DC_URL + 'country='+(country)
  # += add content to the existing content
  # Condensed condition explanation:  A ? B : C  is equal to if (A) then return B else return C
  link += appKey == nil || appKey == '' ? '' : '&appKey='+(appKey)
  link += product == nil || product == '' ? '' : '&productLine='+(product)
  visit(link)
end


################### Scenario 16 #######################
Given(/^the user access an IPM URL to DC with the given "([^"]*)" and "([^"]*)" and "([^"]*)" but no Product$/) do |country, appKey, language|
   visit($IPM_REDIRECT_DC_URL+'country='+(country)+'&language='+(language)+'&appKey='+(appKey))
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
