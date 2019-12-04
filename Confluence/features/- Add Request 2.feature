Feature: Add Request functionalities

    Background: 

        Given Browser is opened
        And nagivated to AIM inspect site // https://crm-qa.aiminspect.com/
        And AIM Inspect site is displayed 
        And correct user name and password is entered
        And login form is submitted





    
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
        When click Customer type dropdown menu
        And select customer type 
        And click Request Type dropdown menu
        Then Request Type dropdown menu is shown 
       


    Scenario: Error message shown if Request Type not selected

        Given current page is Inspection Request page 
        When click Customer type dropdown menu
        And select customer type 
        And click Request Type dropdown menu
        And clicks the Inspection Request Section heading 
        Then 'You did not select a request type' message is shown

    

    Scenario: Lessee Info section is shown 

        Given current page is Inspection Request page 
        When clicks customer type dropdown menu
        And selects a customer 
        And clicks request type dropdown menu
        And selects a request type 
        Then Lesse Info section is shown 





    Scenario: No Account number error message is shown if no account number provided in Account number field

        Given current page is Inspection Request page 
        When clicks customer type dropdown menu
        And selects a customer 
        And clicks request type dropdown menu
        And selects a request type 
        And Lesse Info section is shown 
        And clicks Account number field
        And clicks the Inspection Request Section heading 
        Then Find button inactive and error message shown for no account number entered




    Scenario: No requests found error message is shown if account number does not exist

        Given current page is Inspection Request page 
        And account number does not exist
        When clicks customer type dropdown menu
        And selects a customer 
        And clicks request type dropdown menu
        And selects a request type 
        And Lesse Info section is shown 
        And clicks Account number field 
        And enters account number
        And clicks find button
        Then No requests found error message is shown



    Scenario: Lessee info form is expanded if request does not exist

        Given current page is Inspection Request page 
        And account number does not exist
        When clicks customer type dropdown menu
        And selects a customer 
        And clicks request type dropdown menu
        And selects a request type 
        And Lesse Info section is shown 
        And clicks Account number field 
        And enters account number
        And clicks find button
        And No requests found error message is shown
        Then Lesse info form is expanded




    Scenario: Lessee info form shows errors if empty

        Given current page is Inspection Request page 
        And account number does not exist
        When clicks customer type dropdown menu
        And selects a customer 
        And clicks request type dropdown menu
        And selects a request type 
        And Lesse Info section is shown 
        And clicks Account number field 
        And enters account number
        And clicks find button
        And No requests found error message is shown
        And Lesse info form is expanded
        And click submit
        Then 12 incomplete error messages shown on same form



    Scenario: Lessee info form shows 7 errors with only first name

        Given current page is Inspection Request page 
        And account number does not exist
        When clicks customer type dropdown menu
        And selects a customer 
        And clicks request type dropdown menu
        And selects a request type 
        And Lesse Info section is shown 
        And clicks Account number field 
        And enters account number
        And clicks find button
        And No requests found error message is shown
        And Lesse info form is expanded
        And clicks first name field
        And enters a first name 
        And click submit
        Then 7 incomplete error messages shown on same form



    Scenario: Lessee info form shows 6 errors with only first name and last name

        Given current page is Inspection Request page 
        And account number does not exist
        When clicks customer type dropdown menu
        And selects a customer 
        And clicks request type dropdown menu
        And selects a request type 
        And Lesse Info section is shown 
        And clicks Account number field 
        And enters account number
        And clicks find button
        And No requests found error message is shown
        And Lesse info form is expanded
        And clicks first name field
        And enters a first name 
        And clicks last name field
        And enters a last name 
        And click submit
        Then 6 incomplete error messages shown on same form




    Scenario: Lessee info form shows 5 errors with only first name and last name and Street 1

        Given current page is Inspection Request page 
        And account number does not exist
        When clicks customer type dropdown menu
        And selects a customer 
        And clicks request type dropdown menu
        And selects a request type 
        And Lesse Info section is shown 
        And clicks Account number field 
        And enters account number
        And clicks find button
        And No requests found error message is shown
        And Lesse info form is expanded
        And clicks first name field
        And enters a first name 
        And clicks last name field
        And enters a last name
        And clicks Street 1 field
        And enters a Street 1 
        And click submit
        Then 5 incomplete error messages shown on same form




    Scenario: Lessee info form shows 4 errors with only first name and last name and Street 1 and Zip

        Given current page is Inspection Request page 
        And account number does not exist
        When clicks customer type dropdown menu
        And selects a customer 
        And clicks request type dropdown menu
        And selects a request type 
        And Lesse Info section is shown 
        And clicks Account number field 
        And enters account number
        And clicks find button
        And No requests found error message is shown
        And Lesse info form is expanded
        And clicks first name field
        And enters a first name 
        And clicks last name field
        And enters a last name
        And clicks Street 1 field
        And enters a Street 1 
        And clicks zip field
        And enters zip
        And click submit
        Then 4 incomplete error messages shown on same form




    Scenario: Lessee info form shows 3 errors with only first name and last name and Street 1 and Zip and State

        Given current page is Inspection Request page 
        And account number does not exist
        When clicks customer type dropdown menu
        And selects a customer 
        And clicks request type dropdown menu
        And selects a request type 
        And Lesse Info section is shown 
        And clicks Account number field 
        And enters account number
        And clicks find button
        And No requests found error message is shown
        And Lesse info form is expanded
        And clicks first name field
        And enters a first name 
        And clicks last name field
        And enters a last name
        And clicks Street 1 field
        And enters a Street 1 
        And clicks zip field
        And enters zip
        And clicks states dropdown menu
        And selects a state
        And click submit
        Then 3 incomplete error messages shown on same form




    Scenario: Lessee info form shows 2 errors with only first name and last name and Street 1 and Zip and State amd City

        Given current page is Inspection Request page 
        And account number does not exist
        When clicks customer type dropdown menu
        And selects a customer 
        And clicks request type dropdown menu
        And selects a request type 
        And Lesse Info section is shown 
        And clicks Account number field 
        And enters account number
        And clicks find button
        And No requests found error message is shown
        And Lesse info form is expanded
        And clicks first name field
        And enters a first name 
        And clicks last name field
        And enters a last name
        And clicks Street 1 field
        And enters a Street 1 
        And clicks zip field
        And enters zip
        And clicks states dropdown menu
        And selects a state
        And clicks city field
        And enters a city
        And click submit
        Then 2 incomplete error messages shown on same form





    Scenario: Lessee info form shows 1 error with only first name and last name and Street 1 and Zip and State amd City and State originally tested in

        Given current page is Inspection Request page 
        And account number does not exist
        When clicks customer type dropdown menu
        And selects a customer 
        And clicks request type dropdown menu
        And selects a request type 
        And Lesse Info section is shown 
        And clicks Account number field 
        And enters account number
        And clicks find button
        And No requests found error message is shown
        And Lesse info form is expanded
        And clicks first name field
        And enters a first name 
        And clicks last name field
        And enters a last name
        And clicks Street 1 field
        And enters a Street 1 
        And clicks zip field
        And enters zip
        And clicks states dropdown menu
        And selects a state
        And clicks city field
        And enters a city
        And clicks State originally tested in dropdown menu
        And selects a state
        And click submit
        Then 1 incomplete error messages shown on same form




    Scenario: Lessee info form shows 0 error with only first name and last name and Street 1 and Zip and State amd City and State originally tested in and VIN

        Given current page is Inspection Request page 
        And account number does not exist
        And VIN is valid
        When clicks customer type dropdown menu
        And selects a customer 
        And clicks request type dropdown menu
        And selects a request type 
        And Lesse Info section is shown 
        And clicks Account number field 
        And enters account number
        And clicks find button
        And No requests found error message is shown
        And Lesse info form is expanded
        And clicks first name field
        And enters a first name 
        And clicks last name field
        And enters a last name
        And clicks Street 1 field
        And enters a Street 1 
        And clicks zip field
        And enters zip
        And clicks states dropdown menu
        And selects a state
        And clicks city field
        And enters a city
        And clicks State originally tested in dropdown menu
        And selects a state
        And clicks VIN field
        And enters a VIN
        And click submit
        Then 0 incomplete error messages shown on same form and form submitted




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
        And schedule appointment window is shown       
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
        And schedule appointment window is shown       
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
        Then form is not accepted and 8 error message is shown


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
        And schedule appointment window is shown       
        And leave mandatory fields empty 
        And click submit
        Then form is not accepted and 3 error message is shown








     Scenario: If Inspection already requested by TFS Home then redirected to Inspection Request Detail page

        Given current page is Inspection Request page
        And account number exists
        And  account has inspection requsted already
        When click customer type 
        And select TFS from customer dropdown menu
        And select Home from Request Type dropdown menu
        And enter account number
        And click find
        Then redirected to Inspection Requested Detail page for that account


    Scenario: If Inspection not already requested by TFS Home then form is rendered

        Given current page is Inspection Request page
        When click customer type 
        And select TFS from customer dropdown menu
        And select Home from Request Type dropdown menu
        And enter account number
        And click find
        Then Inspection Request form is rendered 


    
    Scenario: Inspection Request form submitted successfully by TFS Home 

        Given current page is Inspection Request page
        When click customer type 
        And select TFS from customer dropdown menu
        And select Home from Request Type dropdown menu
        And enter account number
        And click find
        And Request form is rendered 
        And fill up all the form fields with 
        required data 
        And click submit 
        And schedule appointment window is shown       
        And fill up schedule appointment form
        And click submit
        Then newly created inspection request detail page is shown


    Scenario: Inspection Request form and Schedule Request form submitted successfully with only mandatory fields by TFS Home 

        Given current page is Inspection Request page
        When click customer type 
        And select TFS from customer dropdown menu
        And select Home from Request Type dropdown menu
        And enter account number
        And click find
        And Request form is rendered 
        And fill up all the mandatory form fields with 
        required data 
        And click submit 
        And schedule appointment window is shown       
        And fill up mandatory fields in schedule appointment form
        And click submit
        Then newly created inspection request detail page is shown


    Scenario: Inspection Request form not submitted by TFS Home without mandatory fields 

        Given current page is Inspection Request page
        When click customer type 
        And select TFS from customer dropdown menu
        And select Home from Request Type dropdown menu
        And enter account number
        And click find
        And Request form is rendered 
        And leave mandatory fields empty 
        And click submit 
        Then form is not accepted and 8 error message is shown


    Scenario: Schedule Appointment form not submitted by TFS Home without mandatory fields 

        Given current page is Inspection Request page
        When click customer type 
        And select TFS from customer dropdown menu
        And select Home from Request Type dropdown menu
        And enter account number
        And click find
        And Request form is rendered 
        And fill up all the mandatory form fields with 
        required data 
        And click submit 
        And schedule appointment window is shown       
        And leave mandatory fields empty 
        And click submit
        Then form is not accepted and 3 error message is shown






     Scenario: If Inspection already requested by Chrysler Santander Dealer then redirected to Inspection Request Detail page

        Given current page is Inspection Request page
        And account number exists
        And  account has inspection requsted already
        When click customer type 
        And select Chrysler Santander from customer dropdown menu
        And select Dealer from Request Type dropdown menu
        And enter account number
        And click find
        Then redirected to Inspection Requested Detail page for that account


    Scenario: If Inspection not already requested by Chrysler Santander Dealer then form is rendered

        Given current page is Inspection Request page
        When click customer type 
        And select Chrysler Santander from customer dropdown menu
        And select Dealer from Request Type dropdown menu
        And enter account number
        And click find
        Then Inspection Request form is rendered 


    
    Scenario: Inspection Request form submitted successfully by Chrysler Santander Dealer 

        Given current page is Inspection Request page
        When click customer type 
        And select Chrysler Santander from customer dropdown menu
        And select Dealer from Request Type dropdown menu
        And enter account number
        And click find
        And Request form is rendered 
        And fill up all the form fields with 
        required data 
        And click submit 
        And schedule appointment window is shown       
        And fill up schedule appointment form
        And click submit
        Then newly created inspection request detail page is shown


    Scenario: Inspection Request form and Schedule Request form submitted successfully with only mandatory fields by Chrysler Santander Dealer 

        Given current page is Inspection Request page
        When click customer type 
        And select Chrysler Santander from customer dropdown menu
        And select Dealer from Request Type dropdown menu
        And enter account number
        And click find
        And Request form is rendered 
        And fill up all the mandatory form fields with 
        required data 
        And click submit 
        And schedule appointment window is shown       
        And fill up mandatory fields in schedule appointment form
        And click submit
        Then newly created inspection request detail page is shown


    Scenario: Inspection Request form not submitted by Chrysler Santander Dealer without mandatory fields 

        Given current page is Inspection Request page
        When click customer type 
        And select Chrysler Santander from customer dropdown menu
        And select Dealer from Request Type dropdown menu
        And enter account number
        And click find
        And Request form is rendered 
        And leave mandatory fields empty 
        And click submit 
        Then form is not accepted and 8 error message is shown


    Scenario: Schedule Appointment form not submitted by Chrysler Santander Dealer without mandatory fields 

        Given current page is Inspection Request page
        When click customer type 
        And select Chrysler Santander from customer dropdown menu
        And select Dealer from Request Type dropdown menu
        And enter account number
        And click find
        And Request form is rendered 
        And fill up all the mandatory form fields with 
        required data 
        And click submit 
        And schedule appointment window is shown       
        And leave mandatory fields empty 
        And click submit
        Then form is not accepted and 3 error message is shown






     



     Scenario: If Inspection already requested by Hyundai Dealer then redirected to Inspection Request Detail page

        Given current page is Inspection Request page
        And account number exists
        And  account has inspection requsted already
        When click customer type 
        And select Hyundai from customer dropdown menu
        And select Dealer from Request Type dropdown menu
        And enter account number
        And click find
        Then redirected to Inspection Requested Detail page for that account


    Scenario: If Inspection not already requested by Hyundai Dealer then form is rendered

        Given current page is Inspection Request page
        When click customer type 
        And select Hyundai from customer dropdown menu
        And select Dealer from Request Type dropdown menu
        And enter account number
        And click find
        Then Inspection Request form is rendered 


    
    Scenario: Inspection Request form submitted successfully by Hyundai Dealer 

        Given current page is Inspection Request page
        When click customer type 
        And select Hyundai from customer dropdown menu
        And select Dealer from Request Type dropdown menu
        And enter account number
        And click find
        And Request form is rendered 
        And fill up all the form fields with 
        required data 
        And click submit 
        And schedule appointment window is shown       
        And fill up schedule appointment form
        And click submit
        Then newly created inspection request detail page is shown


    Scenario: Inspection Request form and Schedule Request form submitted successfully with only mandatory fields by Hyundai Dealer 

        Given current page is Inspection Request page
        When click customer type 
        And select Hyundai from customer dropdown menu
        And select Dealer from Request Type dropdown menu
        And enter account number
        And click find
        And Request form is rendered 
        And fill up all the mandatory form fields with 
        required data 
        And click submit 
        And schedule appointment window is shown       
        And fill up mandatory fields in schedule appointment form
        And click submit
        Then newly created inspection request detail page is shown


    Scenario: Inspection Request form not submitted by Hyundai Dealer without mandatory fields 

        Given current page is Inspection Request page
        When click customer type 
        And select Hyundai from customer dropdown menu
        And select Dealer from Request Type dropdown menu
        And enter account number
        And click find
        And Request form is rendered 
        And leave mandatory fields empty 
        And click submit 
        Then form is not accepted and 8 error message is shown


    Scenario: Schedule Appointment form not submitted by Hyundai Dealer without mandatory fields 

        Given current page is Inspection Request page
        When click customer type 
        And select Hyundai from customer dropdown menu
        And select Dealer from Request Type dropdown menu
        And enter account number
        And click find
        And Request form is rendered 
        And fill up all the mandatory form fields with 
        required data 
        And click submit 
        And schedule appointment window is shown       
        And leave mandatory fields empty 
        And click submit
        Then form is not accepted and 3 error message is shown




     Scenario: If Inspection already requested by Nissan Dealer then redirected to Inspection Request Detail page

        Given current page is Inspection Request page
        And account number exists
        And  account has inspection requsted already
        When click customer type 
        And select Nissan from customer dropdown menu
        And select Dealer from Request Type dropdown menu
        And enter account number
        And click find
        Then redirected to Inspection Requested Detail page for that account


    Scenario: If Inspection not already requested by Nissan Dealer then form is rendered

        Given current page is Inspection Request page
        When click customer type 
        And select Nissan from customer dropdown menu
        And select Dealer from Request Type dropdown menu
        And enter account number
        And click find
        Then Inspection Request form is rendered 


    
    Scenario: Inspection Request form submitted successfully by Nissan Dealer 

        Given current page is Inspection Request page
        When click customer type 
        And select Nissan from customer dropdown menu
        And select Dealer from Request Type dropdown menu
        And enter account number
        And click find
        And Request form is rendered 
        And fill up all the form fields with 
        required data 
        And click submit 
        And schedule appointment window is shown       
        And fill up schedule appointment form
        And click submit
        Then newly created inspection request detail page is shown


    Scenario: Inspection Request form and Schedule Request form submitted successfully with only mandatory fields by Nissan Dealer 

        Given current page is Inspection Request page
        When click customer type 
        And select Nissan from customer dropdown menu
        And select Dealer from Request Type dropdown menu
        And enter account number
        And click find
        And Request form is rendered 
        And fill up all the mandatory form fields with 
        required data 
        And click submit 
        And schedule appointment window is shown       
        And fill up mandatory fields in schedule appointment form
        And click submit
        Then newly created inspection request detail page is shown


    Scenario: Inspection Request form not submitted by Nissan Dealer without mandatory fields 

        Given current page is Inspection Request page
        When click customer type 
        And select Nissan from customer dropdown menu
        And select Dealer from Request Type dropdown menu
        And enter account number
        And click find
        And Request form is rendered 
        And leave mandatory fields empty 
        And click submit 
        Then form is not accepted and 8 error message is shown


    Scenario: Schedule Appointment form not submitted by Nissan Dealer without mandatory fields 

        Given current page is Inspection Request page
        When click customer type 
        And select Nissan from customer dropdown menu
        And select Dealer from Request Type dropdown menu
        And enter account number
        And click find
        And Request form is rendered 
        And fill up all the mandatory form fields with 
        required data 
        And click submit 
        And schedule appointment window is shown       
        And leave mandatory fields empty 
        And click submit
        Then form is not accepted and 3 error message is shown




    Scenario: If Inspection already requested by TFS Home then redirected to Inspection Request Detail page

        Given current page is Inspection Request page
        And account number exists
        And  account has inspection requsted already
        When click customer type 
        And select TFS from customer dropdown menu
        And select Home from Request Type dropdown menu
        And enter account number
        And click find
        Then redirected to Inspection Requested Detail page for that account


    Scenario: If Inspection not already requested by TFS Home then form is rendered

        Given current page is Inspection Request page
        When click customer type 
        And select TFS from customer dropdown menu
        And select Home from Request Type dropdown menu
        And enter account number
        And click find
        Then Inspection Request form is rendered 


    
    Scenario: Inspection Request form submitted successfully by TFS Home 

        Given current page is Inspection Request page
        When click customer type 
        And select TFS from customer dropdown menu
        And select Home from Request Type dropdown menu
        And enter account number
        And click find
        And Request form is rendered 
        And fill up all the form fields with 
        required data 
        And click submit 
        And schedule appointment window is shown       
        And fill up schedule appointment form
        And click submit
        Then newly created inspection request detail page is shown


    Scenario: Inspection Request form and Schedule Request form submitted successfully with only mandatory fields by TFS Home 

        Given current page is Inspection Request page
        When click customer type 
        And select TFS from customer dropdown menu
        And select Home from Request Type dropdown menu
        And enter account number
        And click find
        And Request form is rendered 
        And fill up all the mandatory form fields with 
        required data 
        And click submit 
        And schedule appointment window is shown       
        And fill up mandatory fields in schedule appointment form
        And click submit
        Then newly created inspection request detail page is shown


    Scenario: Inspection Request form not submitted by TFS Home without mandatory fields 

        Given current page is Inspection Request page
        When click customer type 
        And select TFS from customer dropdown menu
        And select Home from Request Type dropdown menu
        And enter account number
        And click find
        And Request form is rendered 
        And leave mandatory fields empty 
        And click submit 
        Then form is not accepted and 8 error message is shown


    Scenario: Schedule Appointment form not submitted by TFS Home without mandatory fields 

        Given current page is Inspection Request page
        When click customer type 
        And select TFS from customer dropdown menu
        And select Home from Request Type dropdown menu
        And enter account number
        And click find
        And Request form is rendered 
        And fill up all the mandatory form fields with 
        required data 
        And click submit 
        And schedule appointment window is shown       
        And leave mandatory fields empty 
        And click submit
        Then form is not accepted and 3 error message is shown








     Scenario: If Inspection already requested by TFS Home then redirected to Inspection Request Detail page

        Given current page is Inspection Request page
        And account number exists
        And  account has inspection requsted already
        When click customer type 
        And select TFS from customer dropdown menu
        And select Home from Request Type dropdown menu
        And enter account number
        And click find
        Then redirected to Inspection Requested Detail page for that account


    Scenario: If Inspection not already requested by TFS Home then form is rendered

        Given current page is Inspection Request page
        When click customer type 
        And select TFS from customer dropdown menu
        And select Home from Request Type dropdown menu
        And enter account number
        And click find
        Then Inspection Request form is rendered 


    
    Scenario: Inspection Request form submitted successfully by TFS Home 

        Given current page is Inspection Request page
        When click customer type 
        And select TFS from customer dropdown menu
        And select Home from Request Type dropdown menu
        And enter account number
        And click find
        And Request form is rendered 
        And fill up all the form fields with 
        required data 
        And click submit 
        And schedule appointment window is shown       
        And fill up schedule appointment form
        And click submit
        Then newly created inspection request detail page is shown


    Scenario: Inspection Request form and Schedule Request form submitted successfully with only mandatory fields by TFS Home 

        Given current page is Inspection Request page
        When click customer type 
        And select TFS from customer dropdown menu
        And select Home from Request Type dropdown menu
        And enter account number
        And click find
        And Request form is rendered 
        And fill up all the mandatory form fields with 
        required data 
        And click submit 
        And schedule appointment window is shown       
        And fill up mandatory fields in schedule appointment form
        And click submit
        Then newly created inspection request detail page is shown


    Scenario: Inspection Request form not submitted by TFS Home without mandatory fields 

        Given current page is Inspection Request page
        When click customer type 
        And select TFS from customer dropdown menu
        And select Home from Request Type dropdown menu
        And enter account number
        And click find
        And Request form is rendered 
        And leave mandatory fields empty 
        And click submit 
        Then form is not accepted and 8 error message is shown


    Scenario: Schedule Appointment form not submitted by TFS Home without mandatory fields 

        Given current page is Inspection Request page
        When click customer type 
        And select TFS from customer dropdown menu
        And select Home from Request Type dropdown menu
        And enter account number
        And click find
        And Request form is rendered 
        And fill up all the mandatory form fields with 
        required data 
        And click submit 
        And schedule appointment window is shown       
        And leave mandatory fields empty 
        And click submit
        Then form is not accepted and 3 error message is shown






     Scenario: If Inspection already requested by Chrysler Santander Home then redirected to Inspection Request Detail page

        Given current page is Inspection Request page
        And account number exists
        And  account has inspection requsted already
        When click customer type 
        And select Chrysler Santander from customer dropdown menu
        And select Home from Request Type dropdown menu
        And enter account number
        And click find
        Then redirected to Inspection Requested Detail page for that account


    Scenario: If Inspection not already requested by Chrysler Santander Home then form is rendered

        Given current page is Inspection Request page
        When click customer type 
        And select Chrysler Santander from customer dropdown menu
        And select Home from Request Type dropdown menu
        And enter account number
        And click find
        Then Inspection Request form is rendered 


    
    Scenario: Inspection Request form submitted successfully by Chrysler Santander Home 

        Given current page is Inspection Request page
        When click customer type 
        And select Chrysler Santander from customer dropdown menu
        And select Home from Request Type dropdown menu
        And enter account number
        And click find
        And Request form is rendered 
        And fill up all the form fields with 
        required data 
        And click submit 
        And schedule appointment window is shown       
        And fill up schedule appointment form
        And click submit
        Then newly created inspection request detail page is shown


    Scenario: Inspection Request form and Schedule Request form submitted successfully with only mandatory fields by Chrysler Santander Home 

        Given current page is Inspection Request page
        When click customer type 
        And select Chrysler Santander from customer dropdown menu
        And select Home from Request Type dropdown menu
        And enter account number
        And click find
        And Request form is rendered 
        And fill up all the mandatory form fields with 
        required data 
        And click submit 
        And schedule appointment window is shown       
        And fill up mandatory fields in schedule appointment form
        And click submit
        Then newly created inspection request detail page is shown


    Scenario: Inspection Request form not submitted by Chrysler Santander Home without mandatory fields 

        Given current page is Inspection Request page
        When click customer type 
        And select Chrysler Santander from customer dropdown menu
        And select Home from Request Type dropdown menu
        And enter account number
        And click find
        And Request form is rendered 
        And leave mandatory fields empty 
        And click submit 
        Then form is not accepted and 8 error message is shown


    Scenario: Schedule Appointment form not submitted by Chrysler Santander Home without mandatory fields 

        Given current page is Inspection Request page
        When click customer type 
        And select Chrysler Santander from customer dropdown menu
        And select Home from Request Type dropdown menu
        And enter account number
        And click find
        And Request form is rendered 
        And fill up all the mandatory form fields with 
        required data 
        And click submit 
        And schedule appointment window is shown       
        And leave mandatory fields empty 
        And click submit
        Then form is not accepted and 3 error message is shown






     Scenario: If Inspection already requested by Manheim Home then redirected to Inspection Request Detail page

        Given current page is Inspection Request page
        And account number exists
        And  account has inspection requsted already
        When click customer type 
        And select Manheim from customer dropdown menu
        And select Home from Request Type dropdown menu
        And enter account number
        And click find
        Then redirected to Inspection Requested Detail page for that account


    Scenario: If Inspection not already requested by Manheim Home then form is rendered

        Given current page is Inspection Request page
        When click customer type 
        And select Manheim from customer dropdown menu
        And select Home from Request Type dropdown menu
        And enter account number
        And click find
        Then Inspection Request form is rendered 


    
    Scenario: Inspection Request form submitted successfully by Manheim Home 

        Given current page is Inspection Request page
        When click customer type 
        And select Manheim from customer dropdown menu
        And select Home from Request Type dropdown menu
        And enter account number
        And click find
        And Request form is rendered 
        And fill up all the form fields with 
        required data 
        And click submit 
        And schedule appointment window is shown       
        And fill up schedule appointment form
        And click submit
        Then newly created inspection request detail page is shown


    Scenario: Inspection Request form and Schedule Request form submitted successfully with only mandatory fields by Manheim Home 

        Given current page is Inspection Request page
        When click customer type 
        And select Manheim from customer dropdown menu
        And select Home from Request Type dropdown menu
        And enter account number
        And click find
        And Request form is rendered 
        And fill up all the mandatory form fields with 
        required data 
        And click submit 
        And schedule appointment window is shown       
        And fill up mandatory fields in schedule appointment form
        And click submit
        Then newly created inspection request detail page is shown


    Scenario: Inspection Request form not submitted by Manheim Home without mandatory fields 

        Given current page is Inspection Request page
        When click customer type 
        And select Manheim from customer dropdown menu
        And select Home from Request Type dropdown menu
        And enter account number
        And click find
        And Request form is rendered 
        And leave mandatory fields empty 
        And click submit 
        Then form is not accepted and 8 error message is shown


    Scenario: Schedule Appointment form not submitted by Manheim Home without mandatory fields 

        Given current page is Inspection Request page
        When click customer type 
        And select Manheim from customer dropdown menu
        And select Home from Request Type dropdown menu
        And enter account number
        And click find
        And Request form is rendered 
        And fill up all the mandatory form fields with 
        required data 
        And click submit 
        And schedule appointment window is shown       
        And leave mandatory fields empty 
        And click submit
        Then form is not accepted and 3 error message is shown




     Scenario: If Inspection already requested by Hyundai Home then redirected to Inspection Request Detail page

        Given current page is Inspection Request page
        And account number exists
        And  account has inspection requsted already
        When click customer type 
        And select Hyundai from customer dropdown menu
        And select Home from Request Type dropdown menu
        And enter account number
        And click find
        Then redirected to Inspection Requested Detail page for that account


    Scenario: If Inspection not already requested by Hyundai Home then form is rendered

        Given current page is Inspection Request page
        When click customer type 
        And select Hyundai from customer dropdown menu
        And select Home from Request Type dropdown menu
        And enter account number
        And click find
        Then Inspection Request form is rendered 


    
    Scenario: Inspection Request form submitted successfully by Hyundai Home 

        Given current page is Inspection Request page
        When click customer type 
        And select Hyundai from customer dropdown menu
        And select Home from Request Type dropdown menu
        And enter account number
        And click find
        And Request form is rendered 
        And fill up all the form fields with 
        required data 
        And click submit 
        And schedule appointment window is shown       
        And fill up schedule appointment form
        And click submit
        Then newly created inspection request detail page is shown


    Scenario: Inspection Request form and Schedule Request form submitted successfully with only mandatory fields by Hyundai Home 

        Given current page is Inspection Request page
        When click customer type 
        And select Hyundai from customer dropdown menu
        And select Home from Request Type dropdown menu
        And enter account number
        And click find
        And Request form is rendered 
        And fill up all the mandatory form fields with 
        required data 
        And click submit 
        And schedule appointment window is shown       
        And fill up mandatory fields in schedule appointment form
        And click submit
        Then newly created inspection request detail page is shown


    Scenario: Inspection Request form not submitted by Hyundai Home without mandatory fields 

        Given current page is Inspection Request page
        When click customer type 
        And select Hyundai from customer dropdown menu
        And select Home from Request Type dropdown menu
        And enter account number
        And click find
        And Request form is rendered 
        And leave mandatory fields empty 
        And click submit 
        Then form is not accepted and 8 error message is shown


    Scenario: Schedule Appointment form not submitted by Hyundai Home without mandatory fields 

        Given current page is Inspection Request page
        When click customer type 
        And select Hyundai from customer dropdown menu
        And select Home from Request Type dropdown menu
        And enter account number
        And click find
        And Request form is rendered 
        And fill up all the mandatory form fields with 
        required data 
        And click submit 
        And schedule appointment window is shown       
        And leave mandatory fields empty 
        And click submit
        Then form is not accepted and 3 error message is shown




     Scenario: If Inspection already requested by Nissan Home then redirected to Inspection Request Detail page

        Given current page is Inspection Request page
        And account number exists
        And  account has inspection requsted already
        When click customer type 
        And select Nissan from customer dropdown menu
        And select Home from Request Type dropdown menu
        And enter account number
        And click find
        Then redirected to Inspection Requested Detail page for that account


    Scenario: If Inspection not already requested by Nissan Home then form is rendered

        Given current page is Inspection Request page
        When click customer type 
        And select Nissan from customer dropdown menu
        And select Home from Request Type dropdown menu
        And enter account number
        And click find
        Then Inspection Request form is rendered 


    
    Scenario: Inspection Request form submitted successfully by Nissan Home 

        Given current page is Inspection Request page
        When click customer type 
        And select Nissan from customer dropdown menu
        And select Home from Request Type dropdown menu
        And enter account number
        And click find
        And Request form is rendered 
        And fill up all the form fields with 
        required data 
        And click submit 
        And schedule appointment window is shown       
        And fill up schedule appointment form
        And click submit
        Then newly created inspection request detail page is shown


    Scenario: Inspection Request form and Schedule Request form submitted successfully with only mandatory fields by Nissan Home 

        Given current page is Inspection Request page
        When click customer type 
        And select Nissan from customer dropdown menu
        And select Home from Request Type dropdown menu
        And enter account number
        And click find
        And Request form is rendered 
        And fill up all the mandatory form fields with 
        required data 
        And click submit 
        And schedule appointment window is shown       
        And fill up mandatory fields in schedule appointment form
        And click submit
        Then newly created inspection request detail page is shown


    Scenario: Inspection Request form not submitted by Nissan Home without mandatory fields 

        Given current page is Inspection Request page
        When click customer type 
        And select Nissan from customer dropdown menu
        And select Home from Request Type dropdown menu
        And enter account number
        And click find
        And Request form is rendered 
        And leave mandatory fields empty 
        And click submit 
        Then form is not accepted and 8 error message is shown


    Scenario: Schedule Appointment form not submitted by Nissan Home without mandatory fields 

        Given current page is Inspection Request page
        When click customer type 
        And select Nissan from customer dropdown menu
        And select Home from Request Type dropdown menu
        And enter account number
        And click find
        And Request form is rendered 
        And fill up all the mandatory form fields with 
        required data 
        And click submit 
        And schedule appointment window is shown       
        And leave mandatory fields empty 
        And click submit
        Then form is not accepted and 3 error message is shown












     Scenario: If Inspection already requested by Chrysler Santander Marshalling Yard then redirected to Inspection Request Detail page

        Given current page is Inspection Request page
        And account number exists
        And  account has inspection requsted already
        When click customer type 
        And select Chrysler Santander from customer dropdown menu
        And select Marshalling Yard from Request Type dropdown menu
        And enter account number
        And click find
        Then redirected to Inspection Requested Detail page for that account


    Scenario: If Inspection not already requested by Chrysler Santander Marshalling Yard then form is rendered

        Given current page is Inspection Request page
        When click customer type 
        And select Chrysler Santander from customer dropdown menu
        And select Marshalling Yard from Request Type dropdown menu
        And enter account number
        And click find
        Then Inspection Request form is rendered 


    
    Scenario: Inspection Request form submitted successfully by Chrysler Santander Marshalling Yard 

        Given current page is Inspection Request page
        When click customer type 
        And select Chrysler Santander from customer dropdown menu
        And select Marshalling Yard from Request Type dropdown menu
        And enter account number
        And click find
        And Request form is rendered 
        And fill up all the form fields with 
        required data 
        And click submit 
        And schedule appointment window is shown       
        And fill up schedule appointment form
        And click submit
        Then newly created inspection request detail page is shown


    Scenario: Inspection Request form and Schedule Request form submitted successfully with only mandatory fields by Chrysler Santander Marshalling Yard 

        Given current page is Inspection Request page
        When click customer type 
        And select Chrysler Santander from customer dropdown menu
        And select Marshalling Yard from Request Type dropdown menu
        And enter account number
        And click find
        And Request form is rendered 
        And fill up all the mandatory form fields with 
        required data 
        And click submit 
        And schedule appointment window is shown       
        And fill up mandatory fields in schedule appointment form
        And click submit
        Then newly created inspection request detail page is shown


    Scenario: Inspection Request form not submitted by Chrysler Santander Marshalling Yard without mandatory fields 

        Given current page is Inspection Request page
        When click customer type 
        And select Chrysler Santander from customer dropdown menu
        And select Marshalling Yard from Request Type dropdown menu
        And enter account number
        And click find
        And Request form is rendered 
        And leave mandatory fields empty 
        And click submit 
        Then form is not accepted and 8 error message is shown


    Scenario: Schedule Appointment form not submitted by Chrysler Santander Marshalling Yard without mandatory fields 

        Given current page is Inspection Request page
        When click customer type 
        And select Chrysler Santander from customer dropdown menu
        And select Marshalling Yard from Request Type dropdown menu
        And enter account number
        And click find
        And Request form is rendered 
        And fill up all the mandatory form fields with 
        required data 
        And click submit 
        And schedule appointment window is shown       
        And leave mandatory fields empty 
        And click submit
        Then form is not accepted and 3 error message is shown





     Scenario: If Inspection already requested by Hyundai Marshalling Yard then redirected to Inspection Request Detail page

        Given current page is Inspection Request page
        And account number exists
        And  account has inspection requsted already
        When click customer type 
        And select Hyundai from customer dropdown menu
        And select Marshalling Yard from Request Type dropdown menu
        And enter account number
        And click find
        Then redirected to Inspection Requested Detail page for that account


    Scenario: If Inspection not already requested by Hyundai Marshalling Yard then form is rendered

        Given current page is Inspection Request page
        When click customer type 
        And select Hyundai from customer dropdown menu
        And select Marshalling Yard from Request Type dropdown menu
        And enter account number
        And click find
        Then Inspection Request form is rendered 


    
    Scenario: Inspection Request form submitted successfully by Hyundai Marshalling Yard 

        Given current page is Inspection Request page
        When click customer type 
        And select Hyundai from customer dropdown menu
        And select Marshalling Yard from Request Type dropdown menu
        And enter account number
        And click find
        And Request form is rendered 
        And fill up all the form fields with 
        required data 
        And click submit 
        And schedule appointment window is shown       
        And fill up schedule appointment form
        And click submit
        Then newly created inspection request detail page is shown


    Scenario: Inspection Request form and Schedule Request form submitted successfully with only mandatory fields by Hyundai Marshalling Yard 

        Given current page is Inspection Request page
        When click customer type 
        And select Hyundai from customer dropdown menu
        And select Marshalling Yard from Request Type dropdown menu
        And enter account number
        And click find
        And Request form is rendered 
        And fill up all the mandatory form fields with 
        required data 
        And click submit 
        And schedule appointment window is shown       
        And fill up mandatory fields in schedule appointment form
        And click submit
        Then newly created inspection request detail page is shown


    Scenario: Inspection Request form not submitted by Hyundai Marshalling Yard without mandatory fields 

        Given current page is Inspection Request page
        When click customer type 
        And select Hyundai from customer dropdown menu
        And select Marshalling Yard from Request Type dropdown menu
        And enter account number
        And click find
        And Request form is rendered 
        And leave mandatory fields empty 
        And click submit 
        Then form is not accepted and 8 error message is shown


    Scenario: Schedule Appointment form not submitted by Hyundai Marshalling Yard without mandatory fields 

        Given current page is Inspection Request page
        When click customer type 
        And select Hyundai from customer dropdown menu
        And select Marshalling Yard from Request Type dropdown menu
        And enter account number
        And click find
        And Request form is rendered 
        And fill up all the mandatory form fields with 
        required data 
        And click submit 
        And schedule appointment window is shown       
        And leave mandatory fields empty 
        And click submit
        Then form is not accepted and 3 error message is shown







    

