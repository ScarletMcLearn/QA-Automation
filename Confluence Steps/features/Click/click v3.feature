Feature: Add Request functionalities

    Background: 

        # User Name: ahussain@AIMD2 / ahussain@AIMSB
        # Password: F@v0rite1 / p@55w0rd

        Given Browser is opened
        And nagivated to Click site // https://fse-na-sb-login.cloud.clicksoftware.com/tmindex.html?return_path=https://fse-na-sb.cloud.clicksoftware.com/
        And Click Site is displayed 
        And clicks on Username field 
        And enters correct Username (ahussain@AIMD2 / ahussain@AIMSB)
        And click sign in button 
        And password field appears
        And click on password field 
        And enters correct Password (F@v0rite1 / p@55w0rd)
        And click sign in button
        
    Scenario: Click homepage is shown

        Then click homepage is shown 


    


   


    


# To Do
# Delete Objective Policy

    Scenario: Schedule Page is shown

        When click on menu button
        And sidebar is shown 
        And click on shedule button 
        Then schedule page is shown 


    Scenario: Alerts Center is shown 

        When click on Bell Icon 
        Then Alert Center is shown 

    Scenario: Profile Preferences page is shown 

        When click on Profile Name
        And click Profile 
        Then Profile Preferences page is shown


    Scenario: Edit Profile Preferences  

        When click on Profile Name
        And click Profile 
        And change unit for distance
        And click Apply 
        Then Profile Preferences is updated


    Scenario: Add New NA

        Given on Schedule page 
        When click Actions button
        And click New NA 
        And NA Window is shown 
        And enter required fields in General tab 
        And click Ok button 
        Then New NA is added. 


    Scenario: Add New NA and apply

        Given on Schedule page 
        When click Actions button
        And click New NA 
        And NA Window is shown 
        And enter required fields in General tab 
        And click Apply button 
        Then New NA is updated. 


    
    Scenario: Cancel from New NA window

        Given on Schedule page 
        When click Actions button
        And click New NA 
        And NA Window is shown 
        And click Cancel button 
        Then schedule page is displayed


     

    # To Do
    # Cannot Add New Task, error NULL
    Scenario: Add New Task

        Given on Schedule page 
        When click Actions button
        And click New Task 
        And New Task Window is shown 
        And enter required fields in General tab 
        And click Ok button 
        Then New NA is added. 


    
    Scenario: Edit Task

        Given on Schedule page 
        And tasks exist
        When click options of first task
        And click Edit button 
        And edit any fields 
        And click Apply 
        Then Task is edited. 


    Scenario: Change Task Status

        Given on Schedule page 
        And tasks exist
        And see current status
        When click options of first task
        And click Change Status button 
        And select new Status  
        Then Task status is updated. 



    Scenario: See Task Details

        Given on Schedule page 
        And tasks exist
        Then task details shown on card 

    Scenario: See More Task Details

        Given on Schedule page 
        And tasks exist
        When click more button on task
        Then more task details shown 


    Scenario: Pin Task 

        Given on Schedule page 
        And tasks exist
        When click options of first task
        And click Pin Task button 
        Then Task is pinned. 


    Scenario: Unpin Task 

        Given on Schedule page 
        And tasks exist
        And task is pinned 
        When click options of first task
        And click Unpin Task button 
        Then Task is unpinned. 

    Scenario: Show Task on Gantt 

        Given on Schedule page 
        And tasks exist
        When click options of first task
        And click Show on Gantt button 
        Then Task is shown on Gantt. 


    Scenario: Show Task on Map 

        Given on Schedule page 
        And tasks exist
        When click options of first task
        And click Show on Map button 
        Then Task is shown on Map. 


    Scenario: Add Task to Clipboard 

        Given on Schedule page 
        And tasks exist
        When click options of first task
        And click Add to Clipboard button 
        Then Clipboard button is updated
        And click on clipboard button 
        And Task is shown on Clipboard. 


    Scenario: Check Task Rules 

        Given on Schedule page 
        And tasks exist
        When click options of first task
        And click Check Rules button 
        Then Rules window is shown 


    Scenario: Get Candidates 

        Given on Schedule page 
        And tasks exist
        When click options of first task
        And click Get Candidates button 
        Then Get Candidates window is shown 


    Scenario: Show Gantt 

        Given on Schedule page 
        When click Gantt button  
        Then Gantt is shown   

    Scenario: Change Date on Gantt using arrows 

        Given on Schedule page 
        When click Gantt button  
        And click move one day forward 
        Then date moves one day forward
        And click move one day backward
        Then date moves one day backward


    Scenario: Change Date on Gantt using Calender 

        Given on Schedule page 
        When click Gantt button  
        And click on Calender 
        And select new date 
        Then new date shown 


    Scenario: Search Resource Result shown on Gantt if exist

        Given on Schedule page 
        When click Gantt button  
        And Gantt is shown 
        And input 'a' in search resource text field 
        And press enter 
        Then search results shown  


    Scenario: Search Resource Result not shown on Gantt if does not exist

        Given on Schedule page 
        When click Gantt button  
        And Gantt is shown 
        And input 'acz' in search resource text field 
        And press enter 
        Then no search results shown  


    Scenario: Gantt Filter Excluded from Optimization results shown

        Given on Schedule page 
        When click Gantt button  
        And Gantt is shown 
        And click on Gantt Filter
        And check Excluded from Optimization box
        And press ESC
        Then updated filtered results shown  


    Scenario: Gantt Filter Included in Optimization results shown

        Given on Schedule page 
        When click Gantt button  
        And Gantt is shown 
        And click on Gantt Filter
        And check Included in Optimization box
        And press ESC
        Then updated filtered results shown  


    Scenario: Manage Gantt Filter Management window is shown

        Given on Schedule page 
        When click Gantt button  
        And Gantt is shown 
        And click on Gantt Filter
        And click on Manage
        Then Filter Management window is shown  


    Scenario: Manage Gantt Filter Management window System Filters shown

        Given on Schedule page 
        When click Gantt button  
        And Gantt is shown 
        And click on Gantt Filter
        And click on Manage
        And uncheck all filters 
        And check System Filters
        Then System Filters shown 


    Scenario: Manage Gantt Filter Management window My Filters shown

        Given on Schedule page 
        When click Gantt button  
        And Gantt is shown 
        And click on Gantt Filter
        And click on Manage
        And uncheck all filters 
        And check My Filters
        Then My Filters shown 


    Scenario: Delete Custom Filter from Gantt Filter Management window 

        Given on Schedule page 
        When click Gantt button  
        And Gantt is shown 
        And click on Gantt Filter
        And click on Manage
        And click on a custom filter 
        And click delete 
        And click confirm
        Then filter is deleted 


    Scenario: Add Custom Filter from Gantt Filter Management window 

        Given on Schedule page 
        When click Gantt button  
        And Gantt is shown 
        And click on Gantt Filter
        And click on Manage
        And click on a custom filter 
        And click add 
        And select a property
        And select a condition 
        And select a value 
        And click apply
        And click add condition 
        And select a property
        And select a condition 
        And select a value 
        And click apply
        And click add condition 
        And click delete condition on newly added condition 
        And click apply
        Then filter is added 


    
    Scenario: Add Advanced Custom Filter from Gantt Filter Management window 

        Given on Schedule page 
        When click Gantt button  
        And Gantt is shown 
        And click on Gantt Filter
        And click on Manage
        And click on a custom filter 
        And click add 
        And select a property
        And select a condition 
        And select a value 
        And click apply
        And click add condition 
        And select a property
        And select a condition 
        And select a value 
        And click apply
        And click Advanced filter 
        And enter a valid expression 
        And click apply
        Then filter is added 



    Scenario: Rename Custom Filter from Gantt Filter Management window 

        Given on Schedule page 
        When click Gantt button  
        And Gantt is shown 
        And click on Gantt Filter
        And click on Manage
        And click on a custom filter 
        And click rename 
        And enter a new name 
        And click blank space in filters list 
        Then filter is renamed 



    # To Do
    # Save as in Add Filter Not Working 

    Scenario: Change domain from Schedule page
        Given on Schedule page
        When click on working on n Domain(s)
        And select new Domain(s)
        And click apply
        Then results filtered to selected domain(s)

    Scenario: Change Gantt Resolution to Daily 

        Given on Schedule page 
        When click Gantt button  
        And Gantt is shown 
        And click on Change Gantt Resolution
        And click on Daily 
        Then results updated 


    Scenario: Change Gantt Resolution to Two Days 

        Given on Schedule page 
        When click Gantt button  
        And Gantt is shown 
        And click on Change Gantt Resolution
        And click on Two Days 
        Then results updated 


    Scenario: Change Gantt Resolution to Weekly 

        Given on Schedule page 
        When click Gantt button  
        And Gantt is shown 
        And click on Change Gantt Resolution
        And click on Weekly 
        Then results updated 



    Scenario: Change start date of Gantt  

        Given on Schedule page 
        When click Gantt button  
        And Gantt is shown 
        And click on Change start date of Gantt 
        And click on a new date 
        Then results updated 


    Scenario: Change display options of Gantt  

        Given on Schedule page 
        When click Gantt button  
        And Gantt is shown 
        And click on Display Options icon 
        And unselect all options 
        And select all options 
        Then display settings updated 


    Scenario: Change working hours settings of Gantt  

        Given on Schedule page 
        When click Gantt button  
        And Gantt is shown 
        And click on Display Options icon 
        And click change 
        And change work week 
        And change start time
        And change end time 
        And change is working option
        And click apply 
        Then working hours settings updated 


# To Do
# What is the cutleries icon
# on Gantt
# goes black on clicking



    Scenario: Change Gantt timeframe   

        Given on Schedule page 
        When click Gantt button  
        And Gantt is shown 
        And click on the zoom in on time 
        Then display changed 
        And click on the zoom out on time 
        Then display changed 
        


    Scenario: Show Home base on Gantt    

        Given on Schedule page 
        When click Gantt button  
        And Gantt is shown 
        And click on option button beside a inspector
        And click show home base  
        Then home base shown on map


    Scenario: Show Daily route on Gantt    

        Given on Schedule page 
        When click Gantt button  
        And Gantt is shown 
        And click on option button beside a inspector
        And click show Daily route  
        Then Daily route shown on map



    Scenario: Relocate route on Gantt    

        Given on Schedule page 
        When click Gantt button  
        And Gantt is shown 
        And click on option button beside a inspector
        And click on Relocate resource  
        And add a resource 
        And click next 
        And change time 
        And click next 
        And click target district
        And click next 
        And click home base
        And click next
        And click relocate
        Then Resource Relocated


    Scenario: Edit inspector details from Gantt 

        Given on Schedule page 
        When click Gantt button  
        And Gantt is shown 
        And click on option button beside a inspector
        And click on Edit
        And Edit Inspector window is shown 
        And edit a field 
        And click Ok 
        Then inspctor editted 



    Scenario: Call South East/Florida Central inspector from Gantt 

        Given on Schedule page 
        When click Gantt button  
        And Gantt is shown 
        And click on option button beside a South East/Florida Central inspector
        And click on Call
        Then Call option is shown  
         


# To DO
# Schedule Idle Resource from Gant - Inspector Option 



    Scenario: Show Map 

        Given on Schedule page 
        When click Map button  
        Then Map is shown    


    Scenario: Show Satellite Map 

        Given on Schedule page 
        When click Map button  
        And click Satellite Map button 
        Then Satellite Map is shown 


    Scenario: Zoom in Map 

        Given on Schedule page 
        When click Map button  
        And scroll down on map 
        Then Map is zoomed in  


    Scenario: Zoom out Map 

        Given on Schedule page 
        When click Map button  
        And scroll down on map 
        Then Map is zoomed out    


    # To Do
    Scenario: Schedule Task 

        Given on Schedule page 
        And tasks exist
        When click options of first task
        And click Get Schedule button 
        Then 


    # Scenario: Add Completed Task to Clipboard

    #     Given on Schedule page
    #     And Completed Task 1101255:215178 exists 
    #     When click on Search bar 
    #     And enter Completed Task code in bar 
    #     And press enter 
    #     And click the result from dropdown menu 
    #     Then task added to clipboard 


    Scenario: Add Completed Task to Clipboard

        Given on Schedule page
        And Completed Task 1101255:215178 exists 
        When click on Search bar 
        And enter Completed Task code in bar 
        And press enter 
        And click the result from dropdown menu 
        Then Completed task added to clipboard


    Scenario: Change Completed Task to Scheduled

        Given on Schedule page
        And Completed Task 1101255:215178 exists 
        When click on Search bar 
        And enter Completed Task code in bar 
        And press enter 
        And click the result from dropdown menu
        And click option menu 
        And click change status 
        And click Scheduled  
        Then Completed task changed to Scheduled 


    Scenario: Change Scheduled Task to Completed

        Given on Schedule page
        And Scheduled Task 1101255:215178 exists 
        When click on Search bar 
        And enter Scheduled Task code in bar 
        And press enter 
        And click the result from dropdown menu
        And click option menu 
        And click change status 
        And click Completed  
        Then Scheduled task changed to Completed 


    Scenario: Change Scheduled Task to Dispatched

        Given on Schedule page
        And Scheduled Task 1101255:215178 exists 
        When click on Search bar 
        And enter Scheduled Task code in bar 
        And press enter 
        And click the result from dropdown menu
        And click option menu 
        And click change status 
        And click Dispatched  
        Then Scheduled task changed to Dispatched 



    Scenario: Change Scheduled Task to Open

        Given on Schedule page
        And Scheduled Task 1101255:215178 exists 
        When click on Search bar 
        And enter Scheduled Task code in bar 
        And press enter 
        And click the result from dropdown menu
        And click option menu 
        And click change status 
        And click Open  
        Then Scheduled task changed to Open 


    Scenario: Change Scheduled Task to Cancel

        Given on Schedule page
        And Scheduled Task 1101255:215178 exists 
        When click on Search bar 
        And enter Scheduled Task code in bar 
        And press enter 
        And click the result from dropdown menu
        And click option menu 
        And click change status 
        And click Cancel  
        Then Scheduled task changed to Cancel


    
    Scenario: Change Open Task to Cancel

        Given on Schedule page
        And Scheduled Task 1101255:215178 exists 
        When click on Search bar 
        And enter Open Task code in bar 
        And press enter 
        And click the result from dropdown menu
        And click option menu 
        And click change status 
        And click Cancel  
        Then Open task changed to Cancel



    Scenario: Change Open Task to Rejected

        Given on Schedule page
        And Scheduled Task 1101255:215178 exists 
        When click on Search bar 
        And enter Open Task code in bar 
        And press enter 
        And click the result from dropdown menu
        And click option menu 
        And click change status 
        And click Rejected  
        Then Open task changed to Rejected


    Scenario: Change Cancelled Task to Rejected

        Given on Schedule page
        And Cancelled Task 1101255:215178 exists 
        When click on Search bar 
        And enter Open Task code in bar 
        And press enter 
        And click the result from dropdown menu
        And click option menu 
        And click change status 
        And click Rejected  
        Then Cancelled task changed to Rejected

        

    Scenario: Add Scheduled Task to Clipboard

        Given on Schedule page
        And Scheduled Task 1103153:215955 exists 
        When click on Search bar 
        And enter Scheduled Task code in bar 
        And press enter 
        And click the result from dropdown menu 
        Then Scheduled task added to clipboard 


    Scenario: Add Open Task to Clipboard

        Given on Schedule page
        And Open Task 1103138:215948 exists 
        When click on Search bar 
        And enter Open Task code in bar 
        And press enter 
        And click the result from dropdown menu 
        Then Open task added to clipboard 


    Scenario: Add Dispatched Task to Clipboard

        Given on Schedule page
        And Dispatched Task 1103025:215899 exists 
        When click on Search bar 
        And enter Dispatched Task code in bar 
        And press enter 
        And click the result from dropdown menu 
        Then Dispatched task added to clipboard 


    # Scheduled Home
    # https://crm-uat.aiminspect.com/#!/inspection-request/1102996
    # 1102996


    # https://crm-uat.aiminspect.com/#!/inspection-request/1103025
    # 1103025

    # https://crm-uat.aiminspect.com/#!/inspection-request/1103138
    # 1103138

    # https://crm-uat.aiminspect.com/#!/inspection-request/1103153
    # 1103153

    # To Do
    Scenario: Reshuffle  

    # To Do
    Scenario: Duplicate Task  

    # To Do
    #  How to view NA and Tasks ?

   

# To Do
# Filter Management

# To Do
# New Duplicate Delete buttons not working 






    Scenario: Inspector Territory Page is shown

        When click on menu button
        And sidebar is shown 
        And click on Views button 
        And click on Inspector Territory button 
        Then Inspector Territory page is shown 



    # To Do
    Scenario: Add New Inspector Territory

        Given on Schedule page 
        When click Actions button
        And click New NA 
        And NA Window is shown 
        And enter required fields in General tab 
        And click Ok button 
        Then New NA is added. 


    Scenario: Inspection Page is shown

        When click on menu button
        And sidebar is shown 
        And click on Views button 
        And click on Inspection button 
        Then Inspection page is shown 



    # To Do

    #  Doesnt work Add, Duplicate, Delete
    Scenario: Add New Inspection 

        Given on Inspection page 
        When click New button
        And click New NA 
        And NA Window is shown 
        And enter required fields in General tab 
        And click Ok button 
        Then New NA is added. 


    Scenario: Inspector Page is shown

        When click on menu button
        And sidebar is shown 
        And click on Views button 
        And click on Inspector button 
        Then Inspector page is shown 


    Scenario: Duplicate Inspector from Inspector Page 

        When click on menu button
        Then sidebar is shown 
        And click on Views button 
        And click on Inspector button 
        And Inspector page is shown 
        And select an Inspector 
        And click Duplicate 
        And edit ID
        And click Ok
        Then Inspector is duplicated  


    Scenario: Delete Inspector from Inspector Page 

        When click on menu button
        Then sidebar is shown 
        And click on Views button 
        And click on Inspector button 
        And Inspector page is shown 
        And select an Inspector 
        And click Duplicate 
        And edit ID
        And click Ok
        Then Inspector is duplicated




    Scenario: Address Page is shown

        When click on menu button
        And sidebar is shown 
        And click on Views button 
        And click on Address button 
        Then Address page is shown 

    Scenario: Add Address from Address Page

        When click on menu button
        And sidebar is shown 
        And click on Views button 
        And click on Address button 
        And Address page is shown 
        And click new 
        And enter required fields 
        And click ok 
        Then New Address is added

    Scenario: Duplicate Address from Address Page

        When click on menu button
        And sidebar is shown 
        And click on Views button 
        And click on Address button 
        And Address page is shown 
        And click duplicate 
        And click ok 
        Then Address is duplicated

    Scenario: Delete Address from Address Page

        When click on menu button
        And sidebar is shown 
        And click on Views button 
        And click on Address button 
        And Address page is shown 
        And click delete 
        And click ok 
        Then Address is deleted











    Scenario: Add New Inspector from Inspector Page

        When click on menu button
        And sidebar is shown 
        And click on Views button 
        And click on Inspector button 
        And click on New button
        And New Inspector page is shown 
        And enter mandatory fields on Personal tab 
        And click Location tab 
        And enter mandatory fields on Location tab
        And click Professional tab 
        And enter mandatory fields on Professional tab
        And click Ok 
        Then New Inspector is added


    Scenario: Duplicate Inspector from Inspector Page

        When click on menu button
        And sidebar is shown 
        And click on Views button 
        And click on Inspector button 
        And check an Inspector
        And click Duplicate  
        And edit the ID field from Personal tab 
        And click Ok 
        Then Inspector is duplicated


    






    Scenario: Add New Inspector Territory from Inspector Territory Page

        When click on menu button
        And sidebar is shown 
        And click on Views button 
        And click on Inspector Territory button 
        And click on New button
        And New Inspector Territory page is shown 
        And enter mandatory fields 
        And click Ok 
        Then New Inspector Territory is added

    Scenario: Duplicate Inspector Territory from Inspector Territory Page

        When click on menu button
        And sidebar is shown 
        And click on Views button 
        And click on Inspector Territory button 
        And click on check mark beside a Territory
        And click duplicate 
        And New Inspector Territory page is shown 
        And edit any mandatory field 
        And click Ok 
        Then Inspector Territory is duplicated


    Scenario: Edit Inspector Territory from Inspector Territory Page

        When click on menu button
        And sidebar is shown 
        And click on Views button 
        And click on Inspector Territory button 
        And click on a Territory
        And Inspector Territory edit page is shown 
        And edit any field 
        And click Ok 
        Then Inspector Territory is edited


    Scenario: Delete Inspector Territory from Inspector Territory Page

        When click on menu button
        And sidebar is shown 
        And click on Views button 
        And click on Inspector Territory button 
        And click on check mark beside a Territory
        And click delete 
        And Confirm delete window is shown 
        And click confirm 
        Then Inspector Territory is deleted


# To Do
# Having issues with these scenarios:

# Delete Nonavailability from Non-availability Page


# Duplicate Non-availability from Non-availability Page
# Add New Task, Duplicate Task, error NULL
# See Task
# Still Cannot 


# Schedule Tasks
# Unschedule

# Schedule Tasks
# Schedule

# Reopen Agent Test Plan

# Delete inspector
# Not working

# Search bar not working

# All schedule option beside search bar not working