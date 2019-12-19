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
        Then Find button inactive and 'You did not enter an account number' error message shown for no account number entered




    Scenario: 'No requests found' error message is shown if account number does not exist

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
        Then 'No requests found' error message is shown



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
        And 'No requests found' error message is shown
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
        And 'No requests found' error message is shown
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
        And 'No requests found' error message is shown
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
        And 'No requests found' error message is shown
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
        And 'No requests found' error message is shown
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
        And 'No requests found' error message is shown
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
        And 'No requests found' error message is shown
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
        And 'No requests found' error message is shown
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
        And 'No requests found' error message is shown
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
        And 'No requests found' error message is shown
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
        Then form is not accepted and 12 error messagse is shown


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
        Then form is not accepted and 2 error messages is shown




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
        Then form is not accepted and 8 error messages is shown


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
        Then form is not accepted and 3 error messages is shown

    







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
        And schedule appointment window is shown       
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
        And schedule appointment window is shown       
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
        Then form is not accepted and 8 error messages is shown


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
        And schedule appointment window is shown       
        And leave mandatory fields empty 
        And click submit
        Then form is not accepted and 3 error message is shown

    






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
        And schedule appointment window is shown       
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
        And schedule appointment window is shown       
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
        Then form is not accepted and 8 error messages is shown


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
        And schedule appointment window is shown       
        And leave mandatory fields empty 
        And click submit
        Then form is not accepted and 3 error messages is shown

    





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
        And schedule appointment window is shown       
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
        And schedule appointment window is shown       
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
        Then form is not accepted and 8 error messages is shown


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
        And schedule appointment window is shown       
        And leave mandatory fields empty 
        And click submit
        Then form is not accepted and 3 error messages is shown

    




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
        And schedule appointment window is shown       
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
        And schedule appointment window is shown       
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
        Then form is not accepted and 8 error messages is shown


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
        And schedule appointment window is shown       
        And leave mandatory fields empty 
        And click submit
        Then form is not accepted and 3 error messages is shown

    



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
        And schedule appointment window is shown       
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
        And schedule appointment window is shown       
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
        Then form is not accepted and 8 error messages is shown


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
        And schedule appointment window is shown       
        And leave mandatory fields empty 
        And click submit
        Then form is not accepted and 3 error messages is shown

    



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
        And schedule appointment window is shown       
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
        And schedule appointment window is shown       
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
        Then form is not accepted and 8 error messages is shown


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
        And schedule appointment window is shown       
        And leave mandatory fields empty 
        And click submit
        Then form is not accepted and 3 error messages is shown










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
        Then form is not accepted and 8 error messages is shown









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
        Then form is not accepted and 8 error messages is shown






    Scenario: If Inspection already requested by HYUNDAI then redirected to Inspection Request Detail page

        Given Browser is opened
        And logged in to AIM Inspect site
        And current page is Inspection Request page
        And account number exists
        And  account has inspection requsted already
        When click customer type 
        And select NISSAN from customer dropdown menu
        And select MARSHALLING YARD from Request Type dropdown menu
        And enter account number
        And click find
        Then redirected to Inspection Requested Detail page for that account


    Scenario: If Inspection not already requested by HYUNDAI then form is rendered

        Given Browser is opened
        And logged in to AIM Inspect site
        And current page is Inspection Request page
        When click customer type 
        And select NISSAN from customer dropdown menu
        And select MARSHALLING YARD from Request Type dropdown menu
        And enter account number
        And click find
        Then Inspection Request form is rendered 


    
    Scenario: Inspection Request form submitted successfully by HYUNDAI 

        Given Browser is opened
        And logged in to AIM Inspect site
        And current page is Inspection Request page
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

        Given Browser is opened
        And logged in to AIM Inspect site
        And current page is Inspection Request page
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

        Given Browser is opened
        And logged in to AIM Inspect site
        And current page is Inspection Request page
        When click customer type 
        And select NISSAN from customer dropdown menu
        And select MARSHALLING YARD from Request Type dropdown menu
        And enter account number
        And click find
        And Request form is rendered 
        And leave mandatory fields empty 
        And click submit 
        Then form is not accepted and 8 error messages is shown















    Scenario: Inspection Request form successfully submitted by Manheium Long Term Order 

        Given current page is Inspection Request page
        And organization named exists
        When click customer type 
        And select Manheim from customer dropdown menu
        And select Long Term Order from Request Type dropdown menu
        And click Added by Dropdown menu
        And select Organization Name from menu 
        And input Organization Name in text box 
        And clicks find
        And uncheck Use Organization Default Location 
        And enter valid Address 
        And click Qauntity text box 
        And enter valid Qauntity
        And select Yes I can provide more details about vehicle
        And enter details about vehicles
        And click submit 
        Then form successfully submitted 



    Scenario: Inspection Request form shows errors by Manheium Long Term Order if Organization Name does not exist 

        Given current page is Inspection Request page
        And organization named does not exist
        When click customer type 
        And select Manheim from customer dropdown menu
        And select Long Term Order from Request Type dropdown menu
        And click Added by Dropdown menu
        And select Organization Name from menu 
        And input Organization Name in text box 
        And clicks find
        Then 'No organization(s) found' error message is shown  



    Scenario: Inspection Request form shows errors by Manheium Long Term Order if Auction Acces Number does not exist 

        Given current page is Inspection Request page
        And Auction Acces Number does not exist
        When click customer type 
        And select Manheim from customer dropdown menu
        And select Long Term Order from Request Type dropdown menu
        And click Added by Dropdown menu
        And select Auction Acces Number from menu 
        And input Auction Acces Number in text box 
        And clicks find
        Then 'No organization(s) found' error message is shown  



    Scenario: Inspection Request form successfully submitted by Manheium Long Term Order using Auction Acces Number

        Given current page is Inspection Request page
        And organization named exists
        When click customer type 
        And select Manheim from customer dropdown menu
        And select Long Term Order from Request Type dropdown menu
        And click Added by Dropdown menu
        And select Auction Acces Number from menu 
        And input Auction Acces Number in text box 
        And clicks find
        And uncheck Use Organization Default Location 
        And enter valid Address 
        And click Qauntity text box 
        And enter valid Qauntity
        And select Yes I can provide more details about vehicle
        And enter details about vehicles
        And click submit 
        Then form successfully submitted 




        Scenario: If Inspection already requested by Manheim Third Party Inspection then redirected to Inspection Request Detail page

        Given current page is Inspection Request page
        And account number exists
        And  account has inspection requsted already
        When click customer type 
        And select Manheim from customer dropdown menu
        And select Third Party Inspection from Request Type dropdown menu
        And enter account number
        And click find
        Then redirected to Inspection Requested Detail page for that account


    Scenario: If Inspection not already requested by Manheim Third Party Inspection then form is rendered

        Given current page is Inspection Request page
        When click customer type 
        And select Manheim from customer dropdown menu
        And select Third Party Inspection from Request Type dropdown menu
        And enter account number
        And click find
        Then Inspection Request form is rendered 


    
    Scenario: Inspection Request form submitted successfully by Manheim Third Party Inspection 

        Given current page is Inspection Request page
        When click customer type 
        And select Manheim from customer dropdown menu
        And select Third Party Inspection from Request Type dropdown menu
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


    Scenario: Inspection Request form and Schedule Request form submitted successfully with only mandatory fields by Manheim Third Party Inspection 

        Given current page is Inspection Request page
        When click customer type 
        And select Manheim from customer dropdown menu
        And select Third Party Inspection from Request Type dropdown menu
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


    Scenario: Inspection Request form not submitted by Manheim Third Party Inspection without mandatory fields 

        Given current page is Inspection Request page
        When click customer type 
        And select Manheim from customer dropdown menu
        And select Third Party Inspection from Request Type dropdown menu
        And enter account number
        And click find
        And Request form is rendered 
        And leave mandatory fields empty 
        And click submit 
        Then form is not accepted and 8 error message is shown


    Scenario: Schedule Appointment form not submitted by Manheim Third Party Inspection without mandatory fields 

        Given current page is Inspection Request page
        When click customer type 
        And select Manheim from customer dropdown menu
        And select Third Party Inspection from Request Type dropdown menu
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






        Scenario: If Inspection already requested by Manheim Post Sale Inspection then redirected to Inspection Request Detail page

        Given current page is Inspection Request page
        And account number exists
        And  account has inspection requsted already
        When click customer type 
        And select Manheim from customer dropdown menu
        And select Post Sale Inspection from Request Type dropdown menu
        And enter account number
        And click find
        Then redirected to Inspection Requested Detail page for that account


    Scenario: If Inspection not already requested by Manheim Post Sale Inspection then form is rendered

        Given current page is Inspection Request page
        When click customer type 
        And select Manheim from customer dropdown menu
        And select Post Sale Inspection from Request Type dropdown menu
        And enter account number
        And click find
        Then Inspection Request form is rendered 


    
    Scenario: Inspection Request form submitted successfully by Manheim Post Sale Inspection 

        Given current page is Inspection Request page
        When click customer type 
        And select Manheim from customer dropdown menu
        And select Post Sale Inspection from Request Type dropdown menu
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


    Scenario: Inspection Request form and Schedule Request form submitted successfully with only mandatory fields by Manheim Post Sale Inspection 

        Given current page is Inspection Request page
        When click customer type 
        And select Manheim from customer dropdown menu
        And select Post Sale Inspection from Request Type dropdown menu
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


    Scenario: Inspection Request form not submitted by Manheim Post Sale Inspection without mandatory fields 

        Given current page is Inspection Request page
        When click customer type 
        And select Manheim from customer dropdown menu
        And select Post Sale Inspection from Request Type dropdown menu
        And enter account number
        And click find
        And Request form is rendered 
        And leave mandatory fields empty 
        And click submit 
        Then form is not accepted and 8 error messages is shown


    Scenario: Schedule Appointment form not submitted by Manheim Post Sale Inspection without mandatory fields 

        Given current page is Inspection Request page
        When click customer type 
        And select Manheim from customer dropdown menu
        And select Post Sale Inspection from Request Type dropdown menu
        And enter account number
        And click find
        And Request form is rendered 
        And fill up all the mandatory form fields with 
        required data 
        And click submit 
        And schedule appointment window is shown       
        And leave mandatory fields empty 
        And click submit
        Then form is not accepted and 3 error messages is shown







        Scenario: If Inspection already requested by Manheim Mobile Sale  then redirected to Inspection Request Detail page

        Given current page is Inspection Request page
        And account number exists
        And  account has inspection requsted already
        When click customer type 
        And select Manheim from customer dropdown menu
        And select Mobile Sale  from Request Type dropdown menu
        And enter account number
        And click find
        Then redirected to Inspection Requested Detail page for that account


    Scenario: If Inspection not already requested by Manheim Mobile Sale  then form is rendered

        Given current page is Inspection Request page
        When click customer type 
        And select Manheim from customer dropdown menu
        And select Mobile Sale  from Request Type dropdown menu
        And enter account number
        And click find
        Then Inspection Request form is rendered 


    
    Scenario: Inspection Request form submitted successfully by Manheim Mobile Sale  

        Given current page is Inspection Request page
        When click customer type 
        And select Manheim from customer dropdown menu
        And select Mobile Sale  from Request Type dropdown menu
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


    Scenario: Inspection Request form and Schedule Request form submitted successfully with only mandatory fields by Manheim Mobile Sale  

        Given current page is Inspection Request page
        When click customer type 
        And select Manheim from customer dropdown menu
        And select Mobile Sale  from Request Type dropdown menu
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


    Scenario: Inspection Request form not submitted by Manheim Mobile Sale  without mandatory fields 

        Given current page is Inspection Request page
        When click customer type 
        And select Manheim from customer dropdown menu
        And select Mobile Sale  from Request Type dropdown menu
        And enter account number
        And click find
        And Request form is rendered 
        And leave mandatory fields empty 
        And click submit 
        Then form is not accepted and 8 error messages is shown


    Scenario: Schedule Appointment form not submitted by Manheim Mobile Sale  without mandatory fields 

        Given current page is Inspection Request page
        When click customer type 
        And select Manheim from customer dropdown menu
        And select Mobile Sale  from Request Type dropdown menu
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





        Scenario: If Inspection already requested by Manheim NextGear then redirected to Inspection Request Detail page

        Given current page is Inspection Request page
        And account number exists
        And  account has inspection requsted already
        When click customer type 
        And select Manheim from customer dropdown menu
        And select NextGear from Request Type dropdown menu
        And enter account number
        And click find
        Then redirected to Inspection Requested Detail page for that account


    Scenario: If Inspection not already requested by Manheim NextGear then form is rendered

        Given current page is Inspection Request page
        When click customer type 
        And select Manheim from customer dropdown menu
        And select NextGear from Request Type dropdown menu
        And enter account number
        And click find
        Then Inspection Request form is rendered 


    
    Scenario: Inspection Request form submitted successfully by Manheim NextGear 

        Given current page is Inspection Request page
        When click customer type 
        And select Manheim from customer dropdown menu
        And select NextGear from Request Type dropdown menu
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


    Scenario: Inspection Request form and Schedule Request form submitted successfully with only mandatory fields by Manheim NextGear 

        Given current page is Inspection Request page
        When click customer type 
        And select Manheim from customer dropdown menu
        And select NextGear from Request Type dropdown menu
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


    Scenario: Inspection Request form not submitted by Manheim NextGear without mandatory fields 

        Given current page is Inspection Request page
        When click customer type 
        And select Manheim from customer dropdown menu
        And select NextGear from Request Type dropdown menu
        And enter account number
        And click find
        And Request form is rendered 
        And leave mandatory fields empty 
        And click submit 
        Then form is not accepted and 8 error messages is shown


    Scenario: Schedule Appointment form not submitted by Manheim NextGear without mandatory fields 

        Given current page is Inspection Request page
        When click customer type 
        And select Manheim from customer dropdown menu
        And select NextGear from Request Type dropdown menu
        And enter account number
        And click find
        And Request form is rendered 
        And fill up all the mandatory form fields with 
        required data 
        And click submit 
        And schedule appointment window is shown       
        And leave mandatory fields empty 
        And click submit
        Then form is not accepted and 3 error messages is shown




    Scenario: Inspection Request form successfully submitted by Manheium Long Term Order without more vehicle info

        Given current page is Inspection Request page
        And organization named exists
        When click customer type 
        And select Manheim from customer dropdown menu
        And select Long Term Order from Request Type dropdown menu
        And click Added by Dropdown menu
        And select Organization Name from menu 
        And input Organization Name in text box 
        And clicks find
        And uncheck Use Organization Default Location 
        And enter valid Address 
        And click Qauntity text box 
        And enter valid Qauntity
        And select No, I only have the number.
        And click submit 
        Then form successfully submitted 










