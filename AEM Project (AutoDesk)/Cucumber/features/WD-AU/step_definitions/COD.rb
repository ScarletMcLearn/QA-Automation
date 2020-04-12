#########  Scenario 1  ##########
Given (/^I am on AU COD page "([^"]*)"$/) do |page_url|
visit($AU_URL+(page_url))
sleep 4
end


Then(/^I should see label "([^"]*)" for Signin button$/) do |au_signin_button|
find(:xpath,$PATH['au_sign_in_button_topnav']).text.should match(au_signin_button)
end

Then(/^the Signin button should be linked to oxygen call$/) do
  expect(page).to have_xpath("//*[@class= 'au-masthead']//*[@href = '/services/adsk/c/oxygen/toolau.do/connect.resp']")
end

Then(/^I should see label "([^"]*)" for Create Account button$/) do |au_create_account_button|
find(:xpath,$PATH['au_create_account_button_topnav']).text.should match(au_create_account_button)
end

Then(/^the Create Account button should be linked to oxygen call$/) do
  expect(page).to have_xpath("//*[@class= 'au-masthead']//*[@href = '/services/adsk/c/oxygen/toolau.do/register.resp']")
end


Then(/^I should see AU logo on header$/) do
 expect(page).to have_xpath("//a[@class='nav_link']/img")
end

Then(/^the AU logo should be linked$/) do
expect(page).to have_xpath("//*[@href = '/qa-automation/home']")
end



#########  Scenario 2  ##########

Then(/^AU Search box should be present$/) do
  expect(page).to have_xpath("//*[@class= 'rau-searchresults--form']")
  #expect(page).to have_xpath('au_search_textbox')
end


Then(/^I should see placeholder text "([^"]*)" in the search box$/) do |au_search_placeholder_text|
#find(:xpath,$PATH["//*[@type= 'search']"]).text.should match(au_search_placeholder_text)
#find(:xpath,$PATH['//*[@type= "search"]']).text.should match(au_search_placeholder_text)

#find(:xpath,$PATH['au_search_textbox']).text.should match(au_search_placeholder_text)
find(:xpath,$PATH['au_placeholder_string']).text.should match(au_search_placeholder_text)
end


Then(/^I should see the AU search box icon$/) do
expect(page).to have_xpath("//*[@class='icon-search']")
end


#########  Scenario 3  ##########
Then(/^I should see primary speaker name "([^"]*)"$/) do |au_primary_speaker|
  find(:xpath, "//*[contains(@class,'wd-uppercase wd-ma-0')]").text.should match(au_primary_speaker)
end

Then(/^I should see ClassID and ClassTitle "([^"]*)"$/) do |au_classid_title|
  find(:xpath, "//*[contains(@class,'wd-color-white wd-font-24 wd-light wd-mt-0')]").text.should match(au_classid_title)
end

#########  Scenario 4  ##########


Then(/^I should see AU COD url listing chapter 0 in "([^"]*)"$/) do |au_cod_url|
  visit($AU_URL+(au_cod_url))
end

Then(/^I should see the first video title as "([^"]*)"$/) do |au_cod_first_video_title|
  find(:xpath, "//*[contains(@data-video-embed-code,'4xOTN2dDoCpC_KDrWLGw9jxoBQ3Ltt_Y')]").text.should match(au_cod_first_video_title)
  #data-video-embed-code="4xOTN2dDoCpC_KDrWLGw9jxoBQ3Ltt_Y"
end

Then(/^I should see the first video duration as "([^"]*)"$/) do |au_cod_first_video_duration|
  find(:xpath, "//*[contains(@class,'wd-ma-0')]/li[1]/span").text.should match(au_cod_first_video_duration)
end

Then(/^I should see the fourth video title as "([^"]*)"$/) do |au_cod_fourth_video_title|
find(:xpath, "//*[contains(@data-video-embed-code,'d5YTN2dDrH44B5iSAjvis2Eld2kOr-RL')]").text.should match(au_cod_fourth_video_title)
end

Then(/^I should see the fourth video duration as "([^"]*)"$/) do |au_cod_fourth_video_duration|
  find(:xpath, "//*[contains(@class,'wd-ma-0')]/li[4]/span").text.should match(au_cod_fourth_video_duration)
end

Then(/^I should see the last video title as "([^"]*)"$/) do |au_cod_last_video_title|
find(:xpath, "//*[contains(@data-video-embed-code,'w4Z3kycjopOBy0ZEBAfB1Bv5k-nU1AGF')]").text.should match(au_cod_last_video_title)
end

Then(/^I should see the last video duration as "([^"]*)"$/) do |au_cod_last_video_duration|
find(:xpath, "//*[contains(@class,'wd-ma-0')]/li[8]/span").text.should match(au_cod_last_video_duration)
end

Then(/^Ooyala video player is present$/) do
expect(page).to have_xpath("//*[@data-video-type='OOYALA']")
end

Then(/^I click on the 'Full video' link$/) do
  within(:xpath,"//*[@class='rau-chapter-list']") do
      click_on('Full video')
     sleep 3
    end
end

Then(/^I should see AU COD url listing chapter 7 in "([^"]*)"$/) do |au_cod_url_chap7|
  visit($AU_URL+(au_cod_url_chap7))
end



#########  Scenario 5  ##########

Then(/^I should see share button label "([^"]*)"$/) do |au_social_share_button|
  find(:xpath, "//*[contains(@class,'social-share-toggle-label')]").text.should match(au_social_share_button)
end

Then(/^I click on the 'SHARE' button$/) do
#CLOSE the cookie popup
find(:xpath,"//*[contains(@alt,'close')]").click
#Click on Social share button
  find(:xpath,"//*[@class='social-share-toggle-label']").click
     sleep 3
    end

Then(/^I should see social share supported platforms$/) do
  expect(page).to have_xpath("//*[@class='social-share-content social-share-visibility-target-visible']")
end


#########  Scenario 6  ##########
Then(/^I should see "([^"]*)" button$/) do |au_save_button|
  find(:xpath, "//*[contains(@data-wat-save-content,'MD6033')]").text.should match(au_save_button)
end


#########  Scenario 7  ##########
Then(/^I should see "([^"]*)" button under the videoplayer for a full video$/) do |au_full_video_download_button|
  find(:xpath, "//*[contains(@data-wat-download,'MD6033-FeelingtheSparkforAutoCADElectricalforAutoCADUsers-Fullvideo')]").text.should match(au_full_video_download_button)
end


#########  Scenario 8  ##########
Then(/^I should see key learning title as "([^"]*)"$/) do |au_cod_key_learning_title|
#CLOSE the cookie popup
#find(:xpath,"//*[contains(@alt,'close')]").click

#page.execute_script "window.scrollBy(0,200)"
#sleep 4

find(:xpath, "//*[@class='rau-content-item-wrapper']//*[text()[contains(.,'Key Learning')]]").text.should match(au_cod_key_learning_title)
end

Then(/^I should see material title as "([^"]*)"$/) do |au_cod_material_title|
find(:xpath, "//*[@class='rau-content-item-wrapper']//*[text()[contains(.,'Materials')]]").text.should match(au_cod_material_title)
end

Then(/^I should see description title as "([^"]*)"$/) do |au_cod_description_title|
find(:xpath, "//*[@class='rau-content-item-wrapper']//*[text()[contains(.,'Description')]]").text.should match(au_cod_description_title)
end


Then(/^I should see target audience title as "([^"]*)"$/) do |au_cod_target_audience_title|
find(:xpath, "//*[@class='rau-content-item-wrapper']//*[text()[contains(.,'Target Audience')]]").text.should match(au_cod_target_audience_title)
end


Then(/^I should see speakers title as "([^"]*)"$/) do |au_cod_speaker_title|
find(:xpath, "//*[@class='rau-content-item-wrapper']//*[text()[contains(.,'Speakers')]]").text.should match(au_cod_speaker_title)
end

Then(/^I should see related classes title as "([^"]*)"$/) do |au_cod_related_classes_title|
find(:xpath, "//*[@class='rau-content-item-wrapper']//*[text()[contains(.,'Related Classes')]]").text.should match(au_cod_related_classes_title)
end

#########  Scenario 9  ##########
Then(/^I should see published title "([^"]*)"$/) do |au_cod_published_title|
  find(:xpath, "//*[@class='details class-catalogue-details']//*[text()[contains(.,'Published')]]").text.should match(au_cod_published_title)
end

Then(/^I should see published year of "([^"]*)"$/) do |au_cod_published_year|
find(:xpath, "//*[@class='details class-catalogue-details']//*[text()[contains(.,'2014')]]").text.should match(au_cod_published_year)
end

Then(/^I should see published classID of "([^"]*)"$/) do |au_cod_published_classid|
find(:xpath, "//*[@class='details class-catalogue-details']//*[text()[contains(.,'MD6033')]]").text.should match(au_cod_published_classid)
end



#########  Scenario 10  ##########
Then(/^I should see zip file for download with label "([^"]*)"$/) do |au_cod_first_download_link|
  find(:xpath, "//*[@data-wat-download-material='Additional Class Material']").text.should match(au_cod_first_download_link)
end

Then(/^I should see a pdf file for download with label "([^"]*)"$/) do |au_cod_second_download_link|
  find(:xpath, "//*[@data-wat-download-material='Presentation']").text.should match(au_cod_second_download_link)
end

Then(/^I should see another pdf file for download with label "([^"]*)"$/) do |au_cod_third_download_link|
  find(:xpath, "//*[@data-wat-download-material='Handout']").text.should match(au_cod_third_download_link)
end


#########  Scenario 11  ##########
Then(/^I should see au speaker image$/) do
  expect(page).to have_xpath("//*[@class= 'left wd-mr-16 wd-mb-8 rau-speaker-block-img-wrapper']//*[@src = 'http://aucache.autodesk.com/au2014/files/12098/userPhoto.jpg']")
end

Then(/^I should see au speaker name as "([^"]*)"$/) do |au_cod_speaker_bio_name|
  find(:xpath, "//*[@class= 'wd-uppercase wd-mv-8']").text.should match(au_cod_speaker_bio_name)
end

Then(/^I should see speaker bio section$/) do
  expect(page).to have_xpath("//*[@class= 'wd-font-14 rau-speaker-block-bio']")
end

#########  Scenario 12  ##########
Then(/^I click on the play icon in the videoplayer$/) do
find(:xpath,"//*[@class='oo-icon oo-icon-play-slick ']").click
end


Then(/^I should see "([^"]*)" button next to the download button$/) do |au_cod_transcript_button|
  find(:xpath, "//*[contains(@class,'video-transcript-icon')]").text.should match(au_cod_transcript_button)
end

Then(/^I click on the 'TRANSCRIPT' button next to the download button$/) do
  within(:xpath,"//*[@class='video-transcript-icon']") do
      click_on('TRANSCRIPT')
     sleep 3
    end
end

Then(/^I should see the close transcript icon$/) do
  expect(page).to have_xpath("//*[@class= 'icon-close-thick']")
end



Then(/^I should see the transcript timeline in the transcript section$/) do

  expect(page).to have_xpath("//*[@class= 'timeline p3sdk-interactive-transcript-progressbar']")
end

Then(/^I should see transcript search text box with placeholder text$/) do
expect(page).to have_xpath("//*[@placeholder= 'SEARCH TRANSCRIPT_QA']")
end

Then(/^I enter text "([^"]*)" in the transcript search textbox$/) do |au_cod_transcript_search_input_text|
  find(:xpath,"//*[@class= 'medium-12 p3sdk-interactive-transcript-searchbox']").set(au_cod_transcript_search_input_text)
end


Then(/^I hit enter key on the AU transcript search field$/) do
  el = find(:xpath, "//*[@class= 'medium-12 p3sdk-interactive-transcript-searchbox']")
  el.native.send_keys(:return)
    sleep 4
end

Then(/^I should see the first occurence of the searched text in the transcript area$/) do
  expect(page).to have_xpath("//*[@id='00_35770']")
end



Then(/^I should see a progress search marker on the transcript timeline represented as dot$/) do
  expect(page).to have_xpath("//*[@class= 'p3sdk-progress-search-marker']")
end

Then(/^I click on the 'CLOSE TRANSCRIPT' icon in the transcript section on the top right area$/) do
  page.execute_script "window.scrollBy(0,200)"
  sleep 3

  find(:xpath,"//*[@class='icon-close-thick']").click
     sleep 3
end

Then(/^I should see "([^"]*)" link for a full video in the Materials download section$/) do |au_cod_full_transcript_download_material|
  find(:xpath, "//*[@data-wat-download-material='Transcript']").text.should match(au_cod_full_transcript_download_material)
end

Then(/^I should see 'Generic' transcript icon in the material download section$/) do
  expect(page).to have_xpath("//*[@class= 'icon-transcript-solid transcript-download']")
end
