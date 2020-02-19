Feature: Add Request functionalities

    Background: 

        # User Name: ahussain@AIMD2
        # Password: F@v0rite1

        Given Browser is opened
        And nagivated to Click site // https://fse-na-sb-login.cloud.clicksoftware.com/tmindex.html?return_path=https://fse-na-sb.cloud.clicksoftware.com/
        And Click Site is displayed 
        And clicks on Username field 
        And enters correct Username (ahussain@AIMD2)
        And click sign in button 
        And password field appears
        And click on password field 
        And enters correct Password (F@v0rite1)
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
        And edit fields 
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


    # To Do
    Scenario: Schedule Task 

        Given on Schedule page 
        And tasks exist
        When click options of first task
        And click Get Schedule button 
        Then 

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





# To DO
# How to use SXP Page

#############


# To Do
# Download Tools from Tools page



# To Do
# Create New Role 

# To Do
# Create, Duplicate, Delete New User Group 

# To Do
# Create, Duplicate, Delete New User 


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

# To Do
# Cannot Delete, Add New inspector   



# To DO
# Create New SOUser


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





###########
# To Do Tomorrow

# To Do
# Having issues with these scenarios:

# Delete Nonavailability from Non-availability Page


# Duplicate Non-availability from Non-availability Page




# Fixed !!! TRY AGAIN!!!
# Add, Duplicate, Delete New inspector 
# Delete Edit Fixed
# Add, Duplicate Not Fixed
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


# Delete inspector
# Not working

# Add New Inspector Territory
# Fixed

# Add New Task, Duplicate Task, error NULL
# See Task
# Still Cannot 

# Delete Objective Policy
# Fixed

# Edit Rule and Save
# Fixed

# Schedule Tasks
# Unschedule

# Schedule Tasks
# Schedule