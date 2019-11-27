Feature: Inspection Request Detail functionalities

    Background: 

        Given Browser is opened
        And nagivated to AIM inspect site // https://crm-qa.aiminspect.com/
        And AIM Inspect site is displayed 
        And correct user name and password is entered
        And login form is submitted


    Scenario: Inspection Request detail page shows all sections

        When user goes to a particular inspection requests detail page 
        Then all Inspection Request detail page sections are visible  


    Scenario: Inspection Request detail page shows all Lesse info section information

        When user goes to a particular inspection requests detail page 
        And Lesse info section is shown 
        Then Lesse info section displays all relevant information 


    Scenario: Inspection Request detail page shows all Dealer info section information

        When user goes to a particular inspection requests detail page 
        And Dealer info section is shown 
        Then Dealer info section displays all relevant information 


    Scenario: Inspection Request detail page shows all Vehicle Info section information

        When user goes to a particular inspection requests detail page 
        And Vehicle info section is shown 
        Then Vehicle info section displays all relevant information 


    Scenario: Inspection Request detail page edit Vehicle Info form appears

        When user goes to a particular inspection requests detail page 
        And Vehicle info section is shown 
        And user clicks edit vehicle info button
        Then edit Vehicle info form displayed  


    Scenario: Inspection Request detail page edit Vehicle Info successful with proper VIN

        When user goes to a particular inspection requests detail page 
        And Vehicle info section is shown 
        And user clicks edit vehicle info button
        And edit Vehicle info form displayed  
        And enters proper VIN
        And clicks Save 
        Then Vehicle Info section updated with new VIN information


    Scenario: Inspection Request detail page edit Vehicle Info successful with incorrect VIN

        When user goes to a particular inspection requests detail page 
        And Vehicle info section is shown 
        And user clicks edit vehicle info button
        And edit Vehicle info form displayed  
        And enters incorrect VIN
        And clicks Save 
        Then Incorrect VIN error message is displayed 


    Scenario: Inspection Request detail page edit Vehicle Info successful with proper VIN and Stock #

        When user goes to a particular inspection requests detail page 
        And Vehicle info section is shown 
        And user clicks edit vehicle info button
        And edit Vehicle info form displayed  
        And enters proper VIN
        And enters Stock #
        And clicks Save 
        Then Vehicle Info section updated with new VIN and Stock # information


    Scenario: Inspection Request detail page edit Vehicle Info successful with proper VIN and Stock # and Year

        When user goes to a particular inspection requests detail page 
        And Vehicle info section is shown 
        And user clicks edit vehicle info button
        And edit Vehicle info form displayed  
        And enters proper VIN
        And enters Stock #
        And enters Year
        And clicks Save 
        Then Vehicle Info section updated with new VIN and Stock # and Year information


    Scenario: Inspection Request detail page edit Vehicle Info successful with proper VIN and Stock # and Year and Make

        When user goes to a particular inspection requests detail page 
        And Vehicle info section is shown 
        And user clicks edit vehicle info button
        And edit Vehicle info form displayed  
        And enters proper VIN
        And enters Stock #
        And enters Year
        And enters Make
        And clicks Save 
        Then Vehicle Info section updated with new VIN and Stock # and Year and Make information


    Scenario: Inspection Request detail page edit Vehicle Info successful with proper VIN and Stock # and Year and Make and Model

        When user goes to a particular inspection requests detail page 
        And Vehicle info section is shown 
        And user clicks edit vehicle info button
        And edit Vehicle info form displayed  
        And enters proper VIN
        And enters Stock #
        And enters Year
        And enters Make
        And enters Model
        And clicks Save 
        Then Vehicle Info section updated with new VIN and Stock # and Year and Make and Model information 


    Scenario: Inspection Request detail page edit Vehicle Info successful with proper VIN and Stock # and Year and Make and Model and Trim

        When user goes to a particular inspection requests detail page 
        And Vehicle info section is shown 
        And user clicks edit vehicle info button
        And edit Vehicle info form displayed  
        And enters proper VIN
        And enters Stock #
        And enters Year
        And enters Make
        And enters Model
        And enters Trim
        And clicks Save 
        Then Vehicle Info section updated with new VIN and Stock # and Year and Make and Model and Trim information 


    Scenario: Inspection Request detail page edit Vehicle Info successful with proper VIN and Stock # and Year and Make and Model and Trim and Color Gray

        When user goes to a particular inspection requests detail page 
        And Vehicle info section is shown 
        And user clicks edit vehicle info button
        And edit Vehicle info form displayed  
        And enters proper VIN
        And enters Stock #
        And enters Year
        And enters Make
        And enters Model
        And enters Trim
        And clicks color dropdown menu
        And selects color Gray
        And clicks Save 
        Then Vehicle Info section updated with new VIN and Stock # and Year and Make and Model and Trim and color Gray information 


    Scenario: Inspection Request detail page edit Vehicle Info successful with proper VIN and Stock # and Year and Make and Model and Trim and Color Black

        When user goes to a particular inspection requests detail page 
        And Vehicle info section is shown 
        And user clicks edit vehicle info button
        And edit Vehicle info form displayed  
        And enters proper VIN
        And enters Stock #
        And enters Year
        And enters Make
        And enters Model
        And enters Trim
        And clicks color dropdown menu
        And selects color Black
        And clicks Save 
        Then Vehicle Info section updated with new VIN and Stock # and Year and Make and Model and Trim and color Black information 


    Scenario: Inspection Request detail page edit Vehicle Info successful with proper VIN and Stock # and Year and Make and Model and Trim and Color Blue

        When user goes to a particular inspection requests detail page 
        And Vehicle info section is shown 
        And user clicks edit vehicle info button
        And edit Vehicle info form displayed  
        And enters proper VIN
        And enters Stock #
        And enters Year
        And enters Make
        And enters Model
        And enters Trim
        And clicks color dropdown menu
        And selects color Blue
        And clicks Save 
        Then Vehicle Info section updated with new VIN and Stock # and Year and Make and Model and Trim and color Blue information 


    Scenario: Inspection Request detail page edit Vehicle Info successful with proper VIN and Stock # and Year and Make and Model and Trim and Color Brown

        When user goes to a particular inspection requests detail page 
        And Vehicle info section is shown 
        And user clicks edit vehicle info button
        And edit Vehicle info form displayed  
        And enters proper VIN
        And enters Stock #
        And enters Year
        And enters Make
        And enters Model
        And enters Trim
        And clicks color dropdown menu
        And selects color Brown
        And clicks Save 
        Then Vehicle Info section updated with new VIN and Stock # and Year and Make and Model and Trim and color Brown information 


    Scenario: Inspection Request detail page edit Vehicle Info successful with proper VIN and Stock # and Year and Make and Model and Trim and Color Gold

        When user goes to a particular inspection requests detail page 
        And Vehicle info section is shown 
        And user clicks edit vehicle info button
        And edit Vehicle info form displayed  
        And enters proper VIN
        And enters Stock #
        And enters Year
        And enters Make
        And enters Model
        And enters Trim
        And clicks color dropdown menu
        And selects color Gold
        And clicks Save 
        Then Vehicle Info section updated with new VIN and Stock # and Year and Make and Model and Trim and color Gold information 


    Scenario: Inspection Request detail page edit Vehicle Info successful with proper VIN and Stock # and Year and Make and Model and Trim and Color Green

        When user goes to a particular inspection requests detail page 
        And Vehicle info section is shown 
        And user clicks edit vehicle info button
        And edit Vehicle info form displayed  
        And enters proper VIN
        And enters Stock #
        And enters Year
        And enters Make
        And enters Model
        And enters Trim
        And clicks color dropdown menu
        And selects color Green
        And clicks Save 
        Then Vehicle Info section updated with new VIN and Stock # and Year and Make and Model and Trim and color Green information 


    Scenario: Inspection Request detail page edit Vehicle Info successful with proper VIN and Stock # and Year and Make and Model and Trim and Color Orange

        When user goes to a particular inspection requests detail page 
        And Vehicle info section is shown 
        And user clicks edit vehicle info button
        And edit Vehicle info form displayed  
        And enters proper VIN
        And enters Stock #
        And enters Year
        And enters Make
        And enters Model
        And enters Trim
        And clicks color dropdown menu
        And selects color Orange
        And clicks Save 
        Then Vehicle Info section updated with new VIN and Stock # and Year and Make and Model and Trim and color Orange information 


    Scenario: Inspection Request detail page edit Vehicle Info successful with proper VIN and Stock # and Year and Make and Model and Trim and Color Red

        When user goes to a particular inspection requests detail page 
        And Vehicle info section is shown 
        And user clicks edit vehicle info button
        And edit Vehicle info form displayed  
        And enters proper VIN
        And enters Stock #
        And enters Year
        And enters Make
        And enters Model
        And enters Trim
        And clicks color dropdown menu
        And selects color Red
        And clicks Save 
        Then Vehicle Info section updated with new VIN and Stock # and Year and Make and Model and Trim and color Red information 


    Scenario: Inspection Request detail page edit Vehicle Info successful with proper VIN and Stock # and Year and Make and Model and Trim and Color Silver

        When user goes to a particular inspection requests detail page 
        And Vehicle info section is shown 
        And user clicks edit vehicle info button
        And edit Vehicle info form displayed  
        And enters proper VIN
        And enters Stock #
        And enters Year
        And enters Make
        And enters Model
        And enters Trim
        And clicks color dropdown menu
        And selects color Silver
        And clicks Save 
        Then Vehicle Info section updated with new VIN and Stock # and Year and Make and Model and Trim and color Silver information 


    Scenario: Inspection Request detail page edit Vehicle Info successful with proper VIN and Stock # and Year and Make and Model and Trim and Color White

        When user goes to a particular inspection requests detail page 
        And Vehicle info section is shown 
        And user clicks edit vehicle info button
        And edit Vehicle info form displayed  
        And enters proper VIN
        And enters Stock #
        And enters Year
        And enters Make
        And enters Model
        And enters Trim
        And clicks color dropdown menu
        And selects color White
        And clicks Save 
        Then Vehicle Info section updated with new VIN and Stock # and Year and Make and Model and Trim and color White information 


    Scenario: Inspection Request detail page edit Vehicle Info successful with proper VIN and Stock # and Year and Make and Model and Trim and Color Yellow

        When user goes to a particular inspection requests detail page 
        And Vehicle info section is shown 
        And user clicks edit vehicle info button
        And edit Vehicle info form displayed  
        And enters proper VIN
        And enters Stock #
        And enters Year
        And enters Make
        And enters Model
        And enters Trim
        And clicks color dropdown menu
        And selects color Yellow
        And clicks Save 
        Then Vehicle Info section updated with new VIN and Stock # and Year and Make and Model and Trim and color Yellow information 


    Scenario: Inspection Request detail page edit Vehicle Info successful with proper VIN and Stock # and Year and Make and Model and Trim and Color Tan

        When user goes to a particular inspection requests detail page 
        And Vehicle info section is shown 
        And user clicks edit vehicle info button
        And edit Vehicle info form displayed  
        And enters proper VIN
        And enters Stock #
        And enters Year
        And enters Make
        And enters Model
        And enters Trim
        And clicks color dropdown menu
        And selects color Tan
        And clicks Save 
        Then Vehicle Info section updated with new VIN and Stock # and Year and Make and Model and Trim and color Tan information 


    Scenario: Inspection Request detail page edit Vehicle Info successful with proper VIN and Stock # and Year and Make and Model and Trim and Color Violet

        When user goes to a particular inspection requests detail page 
        And Vehicle info section is shown 
        And user clicks edit vehicle info button
        And edit Vehicle info form displayed  
        And enters proper VIN
        And enters Stock #
        And enters Year
        And enters Make
        And enters Model
        And enters Trim
        And clicks color dropdown menu
        And selects color Violet
        And clicks Save 
        Then Vehicle Info section updated with new VIN and Stock # and Year and Make and Model and Trim and color Violet information 


    Scenario: Inspection Request detail page edit Vehicle Info successful with proper VIN and Stock # and Year and Make and Model and Trim and Color Pink

        When user goes to a particular inspection requests detail page 
        And Vehicle info section is shown 
        And user clicks edit vehicle info button
        And edit Vehicle info form displayed  
        And enters proper VIN
        And enters Stock #
        And enters Year
        And enters Make
        And enters Model
        And enters Trim
        And clicks color dropdown menu
        And selects color Pink
        And clicks Save 
        Then Vehicle Info section updated with new VIN and Stock # and Year and Make and Model and Trim and color Pink information 


    Scenario: Inspection Request detail page edit Vehicle Info successful with proper VIN and Stock # and Year and Make and Model and Trim and Color Grey

        When user goes to a particular inspection requests detail page 
        And Vehicle info section is shown 
        And user clicks edit vehicle info button
        And edit Vehicle info form displayed  
        And enters proper VIN
        And enters Stock #
        And enters Year
        And enters Make
        And enters Model
        And enters Trim
        And clicks color dropdown menu
        And selects color Grey
        And clicks Save 
        Then Vehicle Info section updated with new VIN and Stock # and Year and Make and Model and Trim and color Grey information 


    Scenario: Inspection Request detail page edit Vehicle Info successful with proper VIN and Stock # and Year and Make and Model and Trim and Color Other

        When user goes to a particular inspection requests detail page 
        And Vehicle info section is shown 
        And user clicks edit vehicle info button
        And edit Vehicle info form displayed  
        And enters proper VIN
        And enters Stock #
        And enters Year
        And enters Make
        And enters Model
        And enters Trim
        And clicks color dropdown menu
        And selects color Other
        And clicks Save 
        Then Vehicle Info section updated with new VIN and Stock # and Year and Make and Model and Trim and color Other information 







    Scenario: Inspection Request detail page shows all Dispositions section information

        When user goes to a particular inspection requests detail page 
        And Dispositions section is shown 
        Then Dispositions section displays all relevant information 


    Scenario: Inspection Request detail page shows Dispositions empty message if does not exist

        Given internal comment does not exist
        When user goes to a particular inspection requests detail page 
        And Dispositions section is shown 
        Then Dispositions section displays does not exist text  


    Scenario: Inspection Request detail page shows all Current Appointment Detail section information

        When user goes to a particular inspection requests detail page 
        And Current Appointment Detail section is shown 
        Then Current Appointment Detail section displays all relevant information 


    Scenario: Appointment Audits displayed when clicks Appointment from Appointments section of Inspection Request detail page

        Given Appointment exists in Appointment Detail page 
        When user goes to a particular inspection requests detail page 
        And Appointments section is shown 
        And user clicks Appointment from Appointments
        Then Appointment Audit list is displayed 





# To do

    Scenario: Appointment Audits detail displayed when clicks Appointment from Appointmen Audits 

        Given Appointment exists in Appointment Detail page 
        When user goes to a particular inspection requests detail page 
        And Appointments section is shown 
        And user clicks Appointment from Appointments
        Then Appointment Audit list is displayed 



    Scenario: Appointment Audits window closed when clicks CLOSE

        Given Appointment exists in Appointment Detail page 
        When user goes to a particular inspection requests detail page 
        And Appointments section is shown 
        And user clicks Appointment from Appointments
        And Appointment Audit list is displayed 
        And when user clicks close button 
        Then Appointment Audit list window is closed and Appointment Detail page is shown 


    Scenario: Appointment Audits window closed when clicks cross button

        Given Appointment exists in Appointment Detail page 
        When user goes to a particular inspection requests detail page 
        And Appointments section is shown 
        And user clicks Appointment from Appointments
        And Appointment Audit list is displayed 
        And when user clicks cross button 
        Then Appointment Audit list window is closed and Appointment Detail page is shown 



    Scenario: Inspection Request detail page shows all Appointments section information

        When user goes to a particular inspection requests detail page 
        And Appointments section is shown 
        Then Appointments section displays all relevant information 




    Scenario: Inspection Request detail page shows all Internal Comments section information

        When user goes to a particular inspection requests detail page 
        And Internal Comments section is shown 
        Then Internal Comments section displays all relevant information 


    Scenario: Inspection Request detail page shows Internal Comments empty message if does not exist

        Given internal comment does not exist
        When user goes to a particular inspection requests detail page 
        And Internal Comments section is shown 
        Then Internal Comments section displays does not exist text  


    Scenario: Inspection Request detail page shows all Request History section information

        Given Request History exists
        When user goes to a particular inspection requests detail page 
        And Request History section is shown 
        Then Request History section displays all relevant information 


    Scenario: Inspection Request detail page shows all Request History section information

        Given Request History exists
        When user goes to a particular inspection requests detail page 
        And Request History section is shown 
        And user clicks a particular request history row
        Then particular Request History row's all relevant information are shown




    
    Scenario: Add inspector Comment to Current Appointment Detail

        Given Inspection Comment does not exist
        And current page is Inspection Request Detail page 
        When user clicks Comment for inspector
        And Edit Inspector Comment window shown
        And user enters comment
        And clicks save 
        And Add Disposition window shown 
        And User closes Add Disposition window
        Then comment added in Current Appointmnet Detail section  


    Scenario: Edit inspector Comment on Current Appointment Detail

        Given Inspection Comment does exist
        And current page is Inspection Request Detail page 
        When user clicks on Edit inspector Comment
        And Edit Inspector Comment window shown
        And user enters comment
        And clicks save 
        And Add Disposition window shown 
        And User closes Add Disposition window
        Then comment updated in Current Appointmnet Detail section  





    Scenario: Inspection Request Update Status form displayed

        Given current page is inspection request detail page 
        And status is Pending 
        When click Pending status 
        Then Update status form is shown


    Scenario: Inspection Request Detail Status updated to Hold with Reason Awaiting Quality

        Given current page is inspection request detail page 
        And status is Pending 
        When click Pending status 
        And Update status form is shown
        And click Hold status 
        And click Reason Dropdown menu
        And select Awaiting Quality 
        And click save 
        Then Inspection Request Detail page updated with status from Pending to Hold with Reason Awaiting Quality

    Scenario: Inspection Request Detail Status updated to Hold with Reason Awaiting Dispatch

        Given current page is inspection request detail page 
        And status is Pending 
        When click Pending status 
        And Update status form is shown
        And click Hold status 
        And click Reason Dropdown menu
        And select Awaiting Dispatch 
        And click save 
        Then Inspection Request Detail page updated with status from Pending to Hold with Reason Awaiting Dispatch

    Scenario: Inspection Request Detail Status updated to Hold with Reason Awaiting CSR Action

        Given current page is inspection request detail page 
        And status is Pending 
        When click Pending status 
        And Update status form is shown
        And click Hold status 
        And click Reason Dropdown menu
        And select Awaiting CSR Action 
        And click save 
        Then Inspection Request Detail page updated with status from Pending to Hold with Reason Awaiting CSR Action

    Scenario: Inspection Request Detail Status updated to Hold with Reason Awaiting Helpdesk

        Given current page is inspection request detail page 
        And status is Pending 
        When click Pending status 
        And Update status form is shown
        And click Hold status 
        And click Reason Dropdown menu
        And select Awaiting Helpdesk 
        And click save 
        Then Inspection Request Detail page updated with status from Pending to Hold with Reason Awaiting Helpdesk

    Scenario: Inspection Request Detail Status updated to Hold with Reason Awaiting Financial info

        Given current page is inspection request detail page 
        And status is Pending 
        When click Pending status 
        And Update status form is shown
        And click Hold status 
        And click Reason Dropdown menu
        And select Awaiting Financial info 
        And click save 
        Then Inspection Request Detail page updated with status from Pending to Hold with Reason Awaiting Financial info

    Scenario: Inspection Request Detail Status updated to Hold with Reason Awaiting Client

        Given current page is inspection request detail page 
        And status is Pending 
        When click Pending status 
        And Update status form is shown
        And click Hold status 
        And click Reason Dropdown menu
        And select Awaiting Client 
        And click save 
        Then Inspection Request Detail page updated with status from Pending to Hold with Reason Awaiting Client

    Scenario: Inspection Request Detail Status updated to Hold with Reason Awaiting Date

        Given current page is inspection request detail page 
        And status is Pending 
        When click Pending status 
        And Update status form is shown
        And click Hold status 
        And click Reason Dropdown menu
        And select Awaiting Date 
        And click save 
        Then Inspection Request Detail page updated with status from Pending to Hold with Reason Awaiting Date




    Scenario: Inspection Request Detail Status updated to Cancel with Reason Per Aim Request

        Given current page is inspection request detail page 
        And status is Pending 
        When click Pending status 
        And Update status form is shown
        And click Cancel status 
        And click Reason Dropdown menu
        And select Per Aim Request
        And enter a comment for internal use
        And click save 
        Then Inspection Request Detail page updated with status from Pending to Cancel with Reason Per Aim Request


    Scenario: Inspection Request Detail Status updated to Cancel with Reason Per Customer Request

        Given current page is inspection request detail page 
        And status is Pending 
        When click Pending status 
        And Update status form is shown
        And click Cancel status 
        And click Reason Dropdown menu
        And select Per Customer Request 
        And enter a comment for internal use
        And click save 
        Then Inspection Request Detail page updated with status from Pending to Cancel with Reason Per Customer Request
    


    



    Scenario: Internal Comment shows all relavent information 

        Given current page is inspection request detail page
        And current Inspection Request detail page has internal comment 
        When User finds Internal Comments section
        Then Internal Comments section includes internal comment(s) with all proper data  


    



    
    Scenario: Edit Lessse info from Inspection Request detail page 

        Given current page is inspection request detail page
        When user clicks Edit Lessee Info button
        And Edit Lessee info form is shown 
        And user changes form data
        And clicks Save 
        Then Lessee info data changed on Inspection Request detail page



    Scenario: Edit Dealer info from Inspection Request detail page 

        Given current page is inspection request detail page
        When user clicks Edit Dealer Info button
        And Edit Dealer info form is shown 
        And user changes form data
        And clicks Save 
        Then Dealer info data changed on Inspection Request detail page



    Scenario: Edit Vehicle info from Inspection Request detail page 

        Given current page is inspection request detail page
        When user clicks Edit Vehicle Info button
        And Edit Vehicle info form is shown 
        And user changes form data
        And clicks Save 
        Then Vehicle info data changed on Inspection Request detail page



    Scenario: Add Disposition from Inspection Request detail page 

        Given current page is inspection request detail page
        When user clicks Add Disposition 
        And Add Disposition form is shown
        And user fills Add Disposition form 
        And clicks submit 
        Then Inspection Request detail page has disposition added



    Scenario: Add Internal Comment to Inspection Request detail page

        Given current page is inspection request detail page
        When user clicks Add Internal Comment 
        And Add Internal Comment form is shown
        And user fills Internal Comment form 
        And clicks submit 
        Then Inspection Request detail page has Internal Comment added



    Scenario: Add Inspector Comment to Inspection Request detail page

        Given current page is inspection request detail page
        When user clicks Add Inspector Comment 
        And Add Inspector Comment form is shown
        And user fills Inspector Comment form 
        And clicks submit 
        And Add Disposition form is shown
        And user fills Add Disposition form 
        And clicks submit 
        Then Inspection Request detail page has Inspector Comment added



    Scenario: Edit Internal Comment on Inspection Request detail page

        Given current page is inspection request detail page
        And Internal Comment exists for detail page
        When user clicks Edit Internal Comment 
        And Edit Internal Comment form is shown
        And user fills Edit Internal Comment form 
        And clicks submit 
        Then Inspection Request detail page has Internal Comment Edited



    Scenario: Appointment Audits with details are shown

        Given current page is inspection request detail page
        And Appointment Audit exists for detail page
        When user clicks on an Appointment Audit
        Then Appointment Audits details window is shown







