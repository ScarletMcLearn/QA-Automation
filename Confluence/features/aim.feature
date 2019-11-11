Feature: AIM Site functionalities

    Background: 

        Given Browser is opened
        And nagivated to AIM inspect site // https://crm-qa.aiminspect.com/
        And AIM Inspect site is displayed 
        And correct user name and password is entered
        And login form is submitted


    Scenario: Launch AIM Inspect site
    
        When logged in to AIM Inspect site
        Then AIM Inspect site is displayed


    

    

    







    



    Scenario: Search bar is displayed

        When logged in 
        Then search bar on navigation menu is displayed 






    


    Scenario: Internal Comment shows all relavent information 

        Given current page is inspection request detail page
        And current Inspection Request detail page has internal comment 
        When User finds Internal Comments section
        Then Internal Comments section includes internal comment(s) with all proper data  


    


    
        

    Scenario: If User logs in and there is already an inspection Completed

        Given current page is AIM Inspect site
        And user has a Completed Inspection
        When log in to AIM Inspect site
        Then can see Completed Report PDF


    Scenario: Dropdown Request menu is shown

        Given current page is AIM Inspect site 
        When hover cursor over Request tab
        Then dropdown Request menu is shown 


    Scenario: Inspection Request page is shown

        Given current page is AIM Inspect site 
        When hover cursor over Request tab
        And dropdown Request menu is shown 
        And clicks on Add request
        Then inspection request page is shown 


  


    Scenario: Customer dropdown menu is shown

        Given current page is Inspection Request page 
        When click customer type 
        Then customer dropdown menu is shown 


    Scenario: Request Type dropdown menu is shown

        Given current page is Inspection Request page 
        When click Request Type 
        Then Request Type dropdown menu is shown 
       









    Scenario: If Inspection already requested by TFS Dealer then redirected to Inspection Request Detail page

        Given current page is Inspection Request page
        And account number exists
        And  account has inspection requsted already
        When click customer type 
        And select TFS from customer dropdown menu
        And select Dealer from Request Type dropdown menu
        And enter account number
        And click find
        Then redirected to Inspection Requested Detail page for that account


    Scenario: If Inspection not already requested by TFS Dealer then form is rendered

        Given current page is Inspection Request page
        When click customer type 
        And select TFS from customer dropdown menu
        And select Dealer from Request Type dropdown menu
        And enter account number
        And click find
        Then Inspection Request form is rendered 


    
    Scenario: Inspection Request form submitted successfully by TFS Dealer 

        Given current page is Inspection Request page
        When click customer type 
        And select TFS from customer dropdown menu
        And select Dealer from Request Type dropdown menu
        And enter account number
        And click find
        And Request form is rendered 
        And fill up all the form fields with 
        required data 
        And click submit 
        And schedule appointment window is shown       # check
        And fill up schedule appointment form
        And click submit
        Then newly created inspection request detail page is shown


    Scenario: Inspection Request form and Schedule Request form submitted successfully with only mandatory fields by TFS Dealer 

        Given current page is Inspection Request page
        When click customer type 
        And select TFS from customer dropdown menu
        And select Dealer from Request Type dropdown menu
        And enter account number
        And click find
        And Request form is rendered 
        And fill up all the mandatory form fields with 
        required data 
        And click submit 
        And schedule appointment window is shown       # check
        And fill up mandatory fields in schedule appointment form
        And click submit
        Then newly created inspection request detail page is shown


    Scenario: Inspection Request form not submitted by TFS Dealer without mandatory fields 

        Given current page is Inspection Request page
        When click customer type 
        And select TFS from customer dropdown menu
        And select Dealer from Request Type dropdown menu
        And enter account number
        And click find
        And Request form is rendered 
        And leave mandatory fields empty 
        And click submit 
        Then form is not accepted and error message is shown


    Scenario: Schedule Appointment form not submitted by TFS Dealer without mandatory fields 

        Given current page is Inspection Request page
        When click customer type 
        And select TFS from customer dropdown menu
        And select Dealer from Request Type dropdown menu
        And enter account number
        And click find
        And Request form is rendered 
        And fill up all the mandatory form fields with 
        required data 
        And click submit 
        And schedule appointment window is shown       # check
        And leave mandatory fields empty 
        And click submit
        Then form is not accepted and error message is shown

    







    Scenario: If Inspection already requested by CHRYSLER SANTANDER Home then redirected to Inspection Request Detail page

        Given current page is Inspection Request page
        And account number exists
        And  account has inspection requsted already
        When click customer type 
        And select CHRYSLER SANTANDER from customer dropdown menu
        And select Home from Request Type dropdown menu
        And enter account number
        And click find
        Then redirected to Inspection Requested Detail page for that account


    Scenario: If Inspection not already requested by CHRYSLER SANTANDER Home then form is rendered

        Given logged in to AIM Inspect site
        And current page is Inspection Request page
        When click customer type 
        And select CHRYSLER SANTANDER from customer dropdown menu
        And select Home from Request Type dropdown menu
        And enter account number
        And click find
        Then Inspection Request form is rendered 


    
    Scenario: Inspection Request form submitted successfully by CHRYSLER SANTANDER Home 

        Given current page is Inspection Request page
        When click customer type 
        And select CHRYSLER SANTANDER from customer dropdown menu
        And select Home from Request Type dropdown menu
        And enter account number
        And click find
        And Request form is rendered 
        And fill up all the form fields with 
        required data 
        And click submit 
        And schedule appointment window is shown       # check
        And fill up schedule appointment form
        And click submit
        Then newly created inspection request detail page is shown


    Scenario: Inspection Request form and Schedule Request form submitted successfully with only mandatory fields by CHRYSLER SANTANDER Home 

        Given current page is Inspection Request page
        When click customer type 
        And select CHRYSLER SANTANDER from customer dropdown menu
        And select Home from Request Type dropdown menu
        And enter account number
        And click find
        And Request form is rendered 
        And fill up all the mandatory form fields with 
        required data 
        And click submit 
        And schedule appointment window is shown       # check
        And fill up mandatory fields in schedule appointment form
        And click submit
        Then newly created inspection request detail page is shown


    Scenario: Inspection Request form not submitted by CHRYSLER SANTANDER Home without mandatory fields 

        Given current page is Inspection Request page
        When click customer type 
        And select CHRYSLER SANTANDER from customer dropdown menu
        And select Home from Request Type dropdown menu
        And enter account number
        And click find
        And Request form is rendered 
        And leave mandatory fields empty 
        And click submit 
        Then form is not accepted and error message is shown


    Scenario: Schedule Appointment form not submitted by CHRYSLER SANTANDER Home without mandatory fields 

        Given current page is Inspection Request page
        When click customer type 
        And select CHRYSLER SANTANDER from customer dropdown menu
        And select Home from Request Type dropdown menu
        And enter account number
        And click find
        And Request form is rendered 
        And fill up all the mandatory form fields with 
        required data 
        And click submit 
        And schedule appointment window is shown       # check
        And leave mandatory fields empty 
        And click submit
        Then form is not accepted and error message is shown

    






 Scenario: If Inspection already requested by CHRYSLER SANTANDER DEALER then redirected to Inspection Request Detail page

        Given current page is Inspection Request page
        And account number exists
        And  account has inspection requsted already
        When click customer type 
        And select CHRYSLER SANTANDER from customer dropdown menu
        And select DEALER from Request Type dropdown menu
        And enter account number
        And click find
        Then redirected to Inspection Requested Detail page for that account


    Scenario: If Inspection not already requested by CHRYSLER SANTANDER DEALER then form is rendered

        Given current page is Inspection Request page
        When click customer type 
        And select CHRYSLER SANTANDER from customer dropdown menu
        And select DEALER from Request Type dropdown menu
        And enter account number
        And click find
        Then Inspection Request form is rendered 


    
    Scenario: Inspection Request form submitted successfully by CHRYSLER SANTANDER DEALER 

        Given current page is Inspection Request page
        When click customer type 
        And select CHRYSLER SANTANDER from customer dropdown menu
        And select DEALER from Request Type dropdown menu
        And enter account number
        And click find
        And Request form is rendered 
        And fill up all the form fields with 
        required data 
        And click submit 
        And schedule appointment window is shown       # check
        And fill up schedule appointment form
        And click submit
        Then newly created inspection request detail page is shown


    Scenario: Inspection Request form and Schedule Request form submitted successfully with only mandatory fields by CHRYSLER SANTANDER DEALER 

        Given current page is Inspection Request page
        When click customer type 
        And select CHRYSLER SANTANDER from customer dropdown menu
        And select DEALER from Request Type dropdown menu
        And enter account number
        And click find
        And Request form is rendered 
        And fill up all the mandatory form fields with 
        required data 
        And click submit 
        And schedule appointment window is shown       # check
        And fill up mandatory fields in schedule appointment form
        And click submit
        Then newly created inspection request detail page is shown


    Scenario: Inspection Request form not submitted by CHRYSLER SANTANDER DEALER without mandatory fields 

        Given current page is Inspection Request page
        When click customer type 
        And select CHRYSLER SANTANDER from customer dropdown menu
        And select DEALER from Request Type dropdown menu
        And enter account number
        And click find
        And Request form is rendered 
        And leave mandatory fields empty 
        And click submit 
        Then form is not accepted and error message is shown


    Scenario: Schedule Appointment form not submitted by CHRYSLER SANTANDER DEALER without mandatory fields 

        Given current page is Inspection Request page
        When click customer type 
        And select CHRYSLER SANTANDER from customer dropdown menu
        And select DEALER from Request Type dropdown menu
        And enter account number
        And click find
        And Request form is rendered 
        And fill up all the mandatory form fields with 
        required data 
        And click submit 
        And schedule appointment window is shown       # check
        And leave mandatory fields empty 
        And click submit
        Then form is not accepted and error message is shown

    





    Scenario: If Inspection already requested by HYUNDAI DEALER then redirected to Inspection Request Detail page

        Given current page is Inspection Request page
        And account number exists
        And  account has inspection requsted already
        When click customer type 
        And select HYUNDAI from customer dropdown menu
        And select DEALER from Request Type dropdown menu
        And enter account number
        And click find
        Then redirected to Inspection Requested Detail page for that account


    Scenario: If Inspection not already requested by HYUNDAI DEALER then form is rendered

        Given current page is Inspection Request page
        When click customer type 
        And select HYUNDAI from customer dropdown menu
        And select DEALER from Request Type dropdown menu
        And enter account number
        And click find
        Then Inspection Request form is rendered 


    
    Scenario: Inspection Request form submitted successfully by HYUNDAI DEALER 

        Given current page is Inspection Request page
        When click customer type 
        And select HYUNDAI from customer dropdown menu
        And select DEALER from Request Type dropdown menu
        And enter account number
        And click find
        And Request form is rendered 
        And fill up all the form fields with 
        required data 
        And click submit 
        And schedule appointment window is shown       # check
        And fill up schedule appointment form
        And click submit
        Then newly created inspection request detail page is shown


    Scenario: Inspection Request form and Schedule Request form submitted successfully with only mandatory fields by HYUNDAI DEALER 

        Given current page is Inspection Request page
        When click customer type 
        And select HYUNDAI from customer dropdown menu
        And select DEALER from Request Type dropdown menu
        And enter account number
        And click find
        And Request form is rendered 
        And fill up all the mandatory form fields with 
        required data 
        And click submit 
        And schedule appointment window is shown       # check
        And fill up mandatory fields in schedule appointment form
        And click submit
        Then newly created inspection request detail page is shown


    Scenario: Inspection Request form not submitted by HYUNDAI DEALER without mandatory fields 

        Given current page is Inspection Request page
        When click customer type 
        And select HYUNDAI from customer dropdown menu
        And select DEALER from Request Type dropdown menu
        And enter account number
        And click find
        And Request form is rendered 
        And leave mandatory fields empty 
        And click submit 
        Then form is not accepted and error message is shown


    Scenario: Schedule Appointment form not submitted by HYUNDAI DEALER without mandatory fields 

        Given current page is Inspection Request page
        When click customer type 
        And select HYUNDAI from customer dropdown menu
        And select DEALER from Request Type dropdown menu
        And enter account number
        And click find
        And Request form is rendered 
        And fill up all the mandatory form fields with 
        required data 
        And click submit 
        And schedule appointment window is shown       # check
        And leave mandatory fields empty 
        And click submit
        Then form is not accepted and error message is shown

    




Scenario: If Inspection already requested by HYUNDAI HOME then redirected to Inspection Request Detail page

        Given current page is Inspection Request page
        And account number exists
        And  account has inspection requsted already
        When click customer type 
        And select HYUNDAI from customer dropdown menu
        And select HOME from Request Type dropdown menu
        And enter account number
        And click find
        Then redirected to Inspection Requested Detail page for that account


    Scenario: If Inspection not already requested by HYUNDAI HOME then form is rendered

        Given current page is Inspection Request page
        When click customer type 
        And select HYUNDAI from customer dropdown menu
        And select HOME from Request Type dropdown menu
        And enter account number
        And click find
        Then Inspection Request form is rendered 


    
    Scenario: Inspection Request form submitted successfully by HYUNDAI HOME 

        Given current page is Inspection Request page
        When click customer type 
        And select HYUNDAI from customer dropdown menu
        And select HOME from Request Type dropdown menu
        And enter account number
        And click find
        And Request form is rendered 
        And fill up all the form fields with 
        required data 
        And click submit 
        And schedule appointment window is shown       # check
        And fill up schedule appointment form
        And click submit
        Then newly created inspection request detail page is shown


    Scenario: Inspection Request form and Schedule Request form submitted successfully with only mandatory fields by HYUNDAI HOME 

        Given current page is Inspection Request page
        When click customer type 
        And select HYUNDAI from customer dropdown menu
        And select HOME from Request Type dropdown menu
        And enter account number
        And click find
        And Request form is rendered 
        And fill up all the mandatory form fields with 
        required data 
        And click submit 
        And schedule appointment window is shown       # check
        And fill up mandatory fields in schedule appointment form
        And click submit
        Then newly created inspection request detail page is shown


    Scenario: Inspection Request form not submitted by HYUNDAI HOME without mandatory fields 

        Given current page is Inspection Request page
        When click customer type 
        And select HYUNDAI from customer dropdown menu
        And select HOME from Request Type dropdown menu
        And enter account number
        And click find
        And Request form is rendered 
        And leave mandatory fields empty 
        And click submit 
        Then form is not accepted and error message is shown


    Scenario: Schedule Appointment form not submitted by HYUNDAI HOME without mandatory fields 

        Given current page is Inspection Request page
        When click customer type 
        And select HYUNDAI from customer dropdown menu
        And select HOME from Request Type dropdown menu
        And enter account number
        And click find
        And Request form is rendered 
        And fill up all the mandatory form fields with 
        required data 
        And click submit 
        And schedule appointment window is shown       # check
        And leave mandatory fields empty 
        And click submit
        Then form is not accepted and error message is shown

    



    Scenario: If Inspection already requested by NISSAN HOME then redirected to Inspection Request Detail page

        Given current page is Inspection Request page
        And account number exists
        And  account has inspection requsted already
        When click customer type 
        And select NISSAN from customer dropdown menu
        And select HOME from Request Type dropdown menu
        And enter account number
        And click find
        Then redirected to Inspection Requested Detail page for that account


    Scenario: If Inspection not already requested by NISSAN HOME then form is rendered

        Given current page is Inspection Request page
        When click customer type 
        And select NISSAN from customer dropdown menu
        And select HOME from Request Type dropdown menu
        And enter account number
        And click find
        Then Inspection Request form is rendered 


    
    Scenario: Inspection Request form submitted successfully by NISSAN HOME 

        Given current page is Inspection Request page
        When click customer type 
        And select NISSAN from customer dropdown menu
        And select HOME from Request Type dropdown menu
        And enter account number
        And click find
        And Request form is rendered 
        And fill up all the form fields with 
        required data 
        And click submit 
        And schedule appointment window is shown       # check
        And fill up schedule appointment form
        And click submit
        Then newly created inspection request detail page is shown


    Scenario: Inspection Request form and Schedule Request form submitted successfully with only mandatory fields by NISSAN HOME 

        Given current page is Inspection Request page
        When click customer type 
        And select NISSAN from customer dropdown menu
        And select HOME from Request Type dropdown menu
        And enter account number
        And click find
        And Request form is rendered 
        And fill up all the mandatory form fields with 
        required data 
        And click submit 
        And schedule appointment window is shown       # check
        And fill up mandatory fields in schedule appointment form
        And click submit
        Then newly created inspection request detail page is shown


    Scenario: Inspection Request form not submitted by NISSAN HOME without mandatory fields 

        Given current page is Inspection Request page
        When click customer type 
        And select NISSAN from customer dropdown menu
        And select HOME from Request Type dropdown menu
        And enter account number
        And click find
        And Request form is rendered 
        And leave mandatory fields empty 
        And click submit 
        Then form is not accepted and error message is shown


    Scenario: Schedule Appointment form not submitted by NISSAN HOME without mandatory fields 

        Given current page is Inspection Request page
        When click customer type 
        And select NISSAN from customer dropdown menu
        And select HOME from Request Type dropdown menu
        And enter account number
        And click find
        And Request form is rendered 
        And fill up all the mandatory form fields with 
        required data 
        And click submit 
        And schedule appointment window is shown       # check
        And leave mandatory fields empty 
        And click submit
        Then form is not accepted and error message is shown

    



    Scenario: If Inspection already requested by NISSAN DEALER then redirected to Inspection Request Detail page

        Given current page is Inspection Request page
        And account number exists
        And  account has inspection requsted already
        When click customer type 
        And select NISSAN from customer dropdown menu
        And select DEALER from Request Type dropdown menu
        And enter account number
        And click find
        Then redirected to Inspection Requested Detail page for that account


    Scenario: If Inspection not already requested by NISSAN DEALER then form is rendered

        Given current page is Inspection Request page
        When click customer type 
        And select NISSAN from customer dropdown menu
        And select DEALER from Request Type dropdown menu
        And enter account number
        And click find
        Then Inspection Request form is rendered 


    
    Scenario: Inspection Request form submitted successfully by NISSAN DEALER 

        Given current page is Inspection Request page
        When click customer type 
        And select NISSAN from customer dropdown menu
        And select DEALER from Request Type dropdown menu
        And enter account number
        And click find
        And Request form is rendered 
        And fill up all the form fields with 
        required data 
        And click submit 
        And schedule appointment window is shown       # check
        And fill up schedule appointment form
        And click submit
        Then newly created inspection request detail page is shown


    Scenario: Inspection Request form and Schedule Request form submitted successfully with only mandatory fields by NISSAN DEALER 

        Given current page is Inspection Request page
        When click customer type 
        And select NISSAN from customer dropdown menu
        And select DEALER from Request Type dropdown menu
        And enter account number
        And click find
        And Request form is rendered 
        And fill up all the mandatory form fields with 
        required data 
        And click submit 
        And schedule appointment window is shown       # check
        And fill up mandatory fields in schedule appointment form
        And click submit
        Then newly created inspection request detail page is shown


    Scenario: Inspection Request form not submitted by NISSAN DEALER without mandatory fields 

        Given current page is Inspection Request page
        When click customer type 
        And select NISSAN from customer dropdown menu
        And select DEALER from Request Type dropdown menu
        And enter account number
        And click find
        And Request form is rendered 
        And leave mandatory fields empty 
        And click submit 
        Then form is not accepted and error message is shown


    Scenario: Schedule Appointment form not submitted by NISSAN DEALER without mandatory fields 

        Given current page is Inspection Request page
        When click customer type 
        And select NISSAN from customer dropdown menu
        And select DEALER from Request Type dropdown menu
        And enter account number
        And click find
        And Request form is rendered 
        And fill up all the mandatory form fields with 
        required data 
        And click submit 
        And schedule appointment window is shown       # check
        And leave mandatory fields empty 
        And click submit
        Then form is not accepted and error message is shown










    Scenario: If Inspection already requested by CHRYSLER SANTANDER then redirected to Inspection Request Detail page

        Given current page is Inspection Request page
        And account number exists
        And  account has inspection requsted already
        When click customer type 
        And select NISSAN from customer dropdown menu
        And select MARSHALLING YARD from Request Type dropdown menu
        And enter account number
        And click find
        Then redirected to Inspection Requested Detail page for that account


    Scenario: If Inspection not already requested by CHRYSLER SANTANDER then form is rendered

        Given current page is Inspection Request page
        When click customer type 
        And select NISSAN from customer dropdown menu
        And select MARSHALLING YARD from Request Type dropdown menu
        And enter account number
        And click find
        Then Inspection Request form is rendered 


    
    Scenario: Inspection Request form submitted successfully by CHRYSLER SANTANDER 

        Given current page is Inspection Request page
        When click customer type 
        And select NISSAN from customer dropdown menu
        And select MARSHALLING YARD from Request Type dropdown menu
        And enter account number
        And click find
        And Request form is rendered 
        And fill up all the form fields with 
        required data 
        And click submit 
        Then newly created inspection request notification message is shown


    Scenario: Inspection Request form and Schedule Request form submitted successfully with only mandatory fields by CHRYSLER SANTANDER 

        Given current page is Inspection Request page
        When click customer type 
        And select NISSAN from customer dropdown menu
        And select MARSHALLING YARD from Request Type dropdown menu
        And enter account number
        And click find
        And Request form is rendered 
        And fill up all the mandatory form fields with 
        required data 
        And click submit 
        Then newly created inspection request detail page is shown


    Scenario: Inspection Request form not submitted by CHRYSLER SANTANDER without mandatory fields 

        Given current page is Inspection Request page
        When click customer type 
        And select NISSAN from customer dropdown menu
        And select MARSHALLING YARD from Request Type dropdown menu
        And enter account number
        And click find
        And Request form is rendered 
        And leave mandatory fields empty 
        And click submit 
        Then form is not accepted and error message is shown









    Scenario: If Inspection already requested by HYUNDAI then redirected to Inspection Request Detail page

        Given current page is Inspection Request page
        And account number exists
        And  account has inspection requsted already
        When click customer type 
        And select NISSAN from customer dropdown menu
        And select MARSHALLING YARD from Request Type dropdown menu
        And enter account number
        And click find
        Then redirected to Inspection Requested Detail page for that account


    Scenario: If Inspection not already requested by HYUNDAI then form is rendered

        Given current page is Inspection Request page
        When click customer type 
        And select NISSAN from customer dropdown menu
        And select MARSHALLING YARD from Request Type dropdown menu
        And enter account number
        And click find
        Then Inspection Request form is rendered 


    
    Scenario: Inspection Request form submitted successfully by HYUNDAI 

        Given current page is Inspection Request page
        When click customer type 
        And select NISSAN from customer dropdown menu
        And select MARSHALLING YARD from Request Type dropdown menu
        And enter account number
        And click find
        And Request form is rendered 
        And fill up all the form fields with 
        required data 
        And click submit 
        Then newly created inspection request notification message is shown


    Scenario: Inspection Request form and Schedule Request form submitted successfully with only mandatory fields by HYUNDAI 

        Given current page is Inspection Request page
        When click customer type 
        And select NISSAN from customer dropdown menu
        And select MARSHALLING YARD from Request Type dropdown menu
        And enter account number
        And click find
        And Request form is rendered 
        And fill up all the mandatory form fields with 
        required data 
        And click submit 
        Then newly created inspection request detail page is shown


    Scenario: Inspection Request form not submitted by HYUNDAI without mandatory fields 

        Given current page is Inspection Request page
        When click customer type 
        And select NISSAN from customer dropdown menu
        And select MARSHALLING YARD from Request Type dropdown menu
        And enter account number
        And click find
        And Request form is rendered 
        And leave mandatory fields empty 
        And click submit 
        Then form is not accepted and error message is shown




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
    


    

        
# TO DO
# https://crm-uat.aiminspect.com/#!/inspection-request/add
# CUSTOMER : MANHEIM
# REQUEST TYPE : THIRD PARTY INSPECTION 
# FORM NOT WORKING!!!!!














    

    


    









    



