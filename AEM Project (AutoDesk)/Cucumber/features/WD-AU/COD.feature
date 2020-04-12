# Note: This is direct migration of steps from the old framework to this one in cucumber for COD automation.

@AU
@WD
@COD
@SLE2
@PT
@REGRESSION

Feature: COD page validation


#########  Scenario 1  ##########
Scenario: 1- COD: Verify that Utility  content are present with AU logo and Oxygen's Sign In and Create account menu
Given I am on AU COD page "/qa-automation/au-online/classes-on-demand/class-catalog/2017/autocad-electrical/md6033"
Then I should see label "Sign In" for Signin button
And the Signin button should be linked to oxygen call
And I should see label "Create Account" for Create Account button
And the Create Account button should be linked to oxygen call
And I should see AU logo on header
And the AU logo should be linked


#########  Scenario 2  ##########
Scenario: 2- COD: Verify Search box is present
Given I am on AU COD page "/qa-automation/au-online/classes-on-demand/class-catalog/2017/autocad-electrical/md6033"
Then AU Search box should be present
#And I should see placeholder text "Search for Online Classes" in the search box
And I should see the AU search box icon

#########  Scenario 3  ##########
Scenario: 3- COD: Verify in the Video section that the following are present. Primary Speaker, Class ID, Class title
Given I am on AU COD page "/qa-automation/au-online/classes-on-demand/class-catalog/2017/autocad-electrical/md6033"
Then I should see primary speaker name "TIFFANY TUCKER"
And I should see ClassID and ClassTitle "MD6033: Feeling the Spark for AutoCAD Electrical (for AutoCAD Users)"


#########  Scenario 4  ##########
Scenario: 4- COD: Verify class chapters are listed with title and duration. Default url should show chapter 0 and is updated accordingly to a selection of a specific chapter. [This applies to Ooyala videos]
Given I am on AU COD page "/qa-automation/au-online/classes-on-demand/class-catalog/2017/autocad-electrical/md6033"
Then I should see AU COD url listing chapter 0 in "/qa-automation/au-online/classes-on-demand/class-catalog/2017/autocad-electrical/md6033#chapter=0"
And I should see the first video title as "Class Summary"
And I should see the first video duration as "04:48"
And I should see the fourth video title as "Making Basic Support Files Company-Specific"
And I should see the fourth video duration as "21:16"
And I should see the last video title as "Full video"
And I should see the last video duration as "01:18:58"
And Ooyala video player is present
And I click on the 'Full video' link
And I should see AU COD url listing chapter 7 in "/qa-automation/au-online/classes-on-demand/class-catalog/2017/autocad-electrical/md6033#chapter=7"


#########  Scenario 5  ##########
Scenario: 5- COD: Verify Social Share feature is present
Given I am on AU COD page "/qa-automation/au-online/classes-on-demand/class-catalog/2017/autocad-electrical/md6033"
Then I should see share button label "SHARE"
And I click on the 'SHARE' button
           #NOTE IN ABOVE STEP, WE DISMISS COOKIES popup in saucelabs
           #see FIX of recordig at https://saucelabs.com/beta/tests/e205748bb8124dedb86ebdba9801787b/commands#0
And I should see social share supported platforms

#########  Scenario 6  ##########
Scenario: 6- COD: Verify Save to my AU button is present
Given I am on AU COD page "/qa-automation/au-online/classes-on-demand/class-catalog/2017/autocad-electrical/md6033"
Then I should see "SAVE TO MY AU" button

#########  Scenario 7  ##########
Scenario: 7- COD: Verify Download video button is present  for Full Video [Applicable for Ooyala videos only]
Given I am on AU COD page "/qa-automation/au-online/classes-on-demand/class-catalog/2017/autocad-electrical/md6033"
Then I should see "DOWNLOAD" button under the videoplayer for a full video



#########  Scenario 8  ##########
Scenario: 8- COD: Verify Section titles are present
Given I am on AU COD page "/qa-automation/au-online/classes-on-demand/class-catalog/2017/autocad-electrical/md6033"
Then I should see key learning title as "KEY LEARNING"
And I should see material title as "MATERIALS"
And I should see description title as "DESCRIPTION"
And I should see target audience title as "TARGET AUDIENCE"
And I should see speakers title as "SPEAKERS"
And I should see related classes title as "RELATED CLASSES"




#########  Scenario 9  ##########
Scenario: 9- COD: Verify Tags content are present
Given I am on AU COD page "/qa-automation/au-online/classes-on-demand/class-catalog/2017/autocad-electrical/md6033"
Then I should see published title "Published"
And I should see published year of "2014"
And I should see published classID of "MD6033"


#########  Scenario 10  ##########
Scenario: 10- COD: Verify Materials are available for download
Given I am on AU COD page "/qa-automation/au-online/classes-on-demand/class-catalog/2017/autocad-electrical/md6033"
Then I should see zip file for download with label "Additional Class Material"
And I should see a pdf file for download with label "Presentation"
And I should see another pdf file for download with label "Handout"

#########  Scenario 11  ##########
Scenario: 11- COD: Verify Speaker Thumbnail, name and bio are present
Given I am on AU COD page "/qa-automation/au-online/classes-on-demand/class-catalog/2017/autocad-electrical/md6033"
Then I should see au speaker image
And I should see au speaker name as "TIFFANY TUCKER"
And I should see speaker bio section

#########  Scenario 12  ##########
Scenario: 12- COD: Verify transcript button is present along with specific related elements in the transcript section
Given I am on AU COD page "/qa-automation/au-online/classes-on-demand/class-catalog/2017/fake-primary-product/case4d"
Then I should see AU COD url listing chapter 0 in "/qa-automation/au-online/classes-on-demand/class-catalog/2017/fake-primary-product/case4d#chapter=0"
And I should see ClassID and ClassTitle "Case4d: FAKE TITLE TEST"
And I click on the play icon in the videoplayer
And I should see "TRANSCRIPT" button next to the download button
And I click on the 'TRANSCRIPT' button next to the download button
And I should see the close transcript icon
And I should see the transcript timeline in the transcript section
And I should see transcript search text box with placeholder text
And I enter text "autodesk" in the transcript search textbox
And I hit enter key on the AU transcript search field
And I should see the first occurence of the searched text in the transcript area
And I should see a progress search marker on the transcript timeline represented as dot
And I click on the 'CLOSE TRANSCRIPT' icon in the transcript section on the top right area
And I should see "Full Transcript" link for a full video in the Materials download section
And I should see 'Generic' transcript icon in the material download section
