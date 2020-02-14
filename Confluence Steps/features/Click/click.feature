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


    Scenario: General Settings Page is shown

        When click on menu button 
        And sidebar is shown
        And click on Configuration button 
        And click on General Settings subbutton 
        Then General Settings page is shown 


    Scenario: Administration Settings Page is shown

        When click on menu button 
        And sidebar is shown
        And click on Configuration button 
        And click on General Settings subbutton 
        And click on Administration Settings subbutton 
        Then Administration Settings page is shown 


    Scenario: Administration Settings Page options are working

        When click on menu button 
        And sidebar is shown
        And click on Configuration button 
        And click on General Settings subbutton 
        And click on Administration Settings subbutton 
        And change the options 
        And Apply and Cancel buttons are shown 
        And click Apply 
        Then settings changed  


    Scenario: Schedule UI Settings Page is shown

        When click on menu button 
        And sidebar is shown
        And click on Configuration button 
        And click on General Settings subbutton 
        And click on Schedule UI subbutton 
        Then Schedule UI Settings page is shown 


    Scenario: Schedule UI Settings Page is shown

        When click on menu button 
        And sidebar is shown
        And click on Configuration button 
        And click on General Settings subbutton 
        And click on Schedule UI subbutton 
        And change the options 
        And Apply and Cancel buttons are shown 
        And click Apply 
        Then settings changed  
 

    Scenario: Security Settings Page is shown

        When click on menu button 
        And sidebar is shown
        And click on Configuration button 
        And click on General Settings subbutton 
        And click on Security Settings subbutton 
        Then Security Settings page is shown 


    Scenario: Security Settings Page is shown

        When click on menu button 
        And sidebar is shown
        And click on Configuration button 
        And click on General Settings subbutton 
        And click on Security Settings subbutton 
        And change the options 
        And Apply and Cancel buttons are shown 
        And click Apply 
        Then settings changed 


    Scenario: Setup Settings Page is shown

        When click on menu button 
        And sidebar is shown
        And click on Configuration button 
        And click on General Settings subbutton 
        And click on Setup Settings subbutton 
        Then Setup Settings page is shown 

    Scenario: Setup Settings Page is shown

        When click on menu button 
        And sidebar is shown
        And click on Configuration button 
        And click on General Settings subbutton 
        And click on Setup Settings subbutton 
        And change the options 
        And Apply and Cancel buttons are shown 
        And click Apply 
        Then settings changed  


    Scenario: Localization Settings Page is shown

        When click on menu button 
        And sidebar is shown
        And click on Configuration button 
        And click on General Settings subbutton 
        And click on Localization Settings subbutton 
        Then Localization Settings page is shown 

    Scenario: Localization Settings Page is shown

        When click on menu button 
        And sidebar is shown
        And click on Configuration button 
        And click on General Settings subbutton 
        And click on Localization Settings subbutton 
        And change the options 
        And Apply and Cancel buttons are shown 
        And click Apply 
        Then settings changed 

    Scenario:  Service Excellence Settings Page is shown

        When click on menu button 
        And sidebar is shown
        And click on Configuration button 
        And click on General Settings subbutton 
        And click on  Service Excellence Settings subbutton 
        Then  Service Excellence Settings page is shown 

    Scenario:  Service Excellence Settings Page is shown

        When click on menu button 
        And sidebar is shown
        And click on Configuration button 
        And click on General Settings subbutton 
        And click on  Service Excellence Settings subbutton 
        And change the options 
        And Apply and Cancel buttons are shown 
        And click Apply 
        Then settings changed 


    Scenario: Analytics Settings Page is shown

        When click on menu button 
        And sidebar is shown
        And click on Configuration button 
        And click on General Settings subbutton 
        And click on Analytics Settings subbutton 
        Then Analytics Settings page is shown


    Scenario: Analytics Settings Page is shown

        When click on menu button 
        And sidebar is shown
        And click on Configuration button 
        And click on General Settings subbutton 
        And click on Analytics Settings subbutton 
        And change the options 
        And Apply and Cancel buttons are shown 
        And click Apply 
        Then settings changed 


    Scenario: Grant Access Settings Page is shown

        When click on menu button 
        And sidebar is shown
        And click on Configuration button 
        And click on General Settings subbutton 
        And click on Grant Access Settings subbutton 
        Then Grant Access Settings page is shown 


    Scenario: Grant Access Settings Page is shown

        When click on menu button 
        And sidebar is shown
        And click on Configuration button 
        And click on General Settings subbutton 
        And click on Grant Access Settings subbutton 
        And change the options 
        And Apply and Cancel buttons are shown 
        And click Apply 
        Then settings changed 

# To Do - Shows nothing!
    Scenario: Mobile Settings Page is shown

        When click on menu button 
        And sidebar is shown
        And click on Configuration button 
        And click on General Settings subbutton 
        And click on Mobile Settings subbutton 
        Then Mobile Settings page is shown 
  
    

    Scenario: Schedule Policies Page is shown

        When click on menu button 
        And sidebar is shown
        And click on Configuration button 
        And click on Schedule Policies subbutton 
        Then Schedule Policies page is shown 


    Scenario: Schedule Policies Standard Rules Page is shown

        When click on menu button 
        And sidebar is shown
        And click on Configuration button 
        And click on Schedule Policies subbutton 
        And Schedule Policies page is shown 
        And click Standard
        And click Rules 
        Then Schedule Policies Standard Rules Page is shown


    Scenario: Schedule Policies Standard Rules Page specific rules are shown

        When click on menu button 
        And sidebar is shown
        And click on Configuration button 
        And click on Schedule Policies subbutton 
        And Schedule Policies page is shown 
        And click Standard
        And click Rules 
        And Schedule Policies Standard Rules Page is shown
        And click a Rules set
        Then specific rules are shown 


    Scenario: Schedule Policies Standard Rules Page specific rule's detail is shown

        When click on menu button 
        And sidebar is shown
        And click on Configuration button 
        And click on Schedule Policies subbutton 
        And Schedule Policies page is shown 
        And click Standard
        And click Rules 
        And Schedule Policies Standard Rules Page is shown
        And click a Rules set
        And specific rules are shown 
        And click a specific rule 
        Then rule details are shown

    Scenario: Schedule Policies Standard Rules Page specific rule's detail is shown

        When click on menu button 
        And sidebar is shown
        And click on Configuration button 
        And click on Schedule Policies subbutton 
        And Schedule Policies page is shown 
        And click Standard
        And click Rules 
        And Schedule Policies Standard Rules Page is shown
        And click Active Rules All Rules slider button
        Then rules list are updated

# To Do
# Edit Rule and Save 

    Scenario: Edit Schedule Policies Standard Rule 

        When click on menu button 
        And sidebar is shown
        And click on Configuration button 
        And click on Schedule Policies subbutton 
        And Schedule Policies page is shown 
        And click Standard
        And click Rules 
        And Schedule Policies Standard Rules Page is shown
        And click rename rule button 
        And enter new rule name 
        And click enter 
        Then Rule is renamed 


    Scenario: Clone Schedule Policies Standard Rule 

        When click on menu button 
        And sidebar is shown
        And click on Configuration button 
        And click on Schedule Policies subbutton 
        And Schedule Policies page is shown 
        And click Standard
        And click Rules 
        And Schedule Policies Standard Rules Page is shown
        And click Clone Schedule Policy button 
        Then Rule is Cloned 

    Scenario: Delete Schedule Policies Standard Rule 

        When click on menu button 
        And sidebar is shown
        And click on Configuration button 
        And click on Schedule Policies subbutton 
        And Schedule Policies page is shown 
        And click Standard
        And click Rules 
        And Schedule Policies Standard Rules Page is shown
        And click Delete Schedule Policy button 
        And Delete Schedule Policy confirmation window is shown
        And click Delete  
        Then Rule is Deleted

# To DO
# Validate Schedule Policy button
 

    Scenario: Schedule Policies Standard Objectives Page is shown

        When click on menu button 
        And sidebar is shown
        And click on Configuration button 
        And click on Schedule Policies subbutton 
        And Schedule Policies page is shown 
        And click Standard
        And click Objectives 
        Then Schedule Policies Standard Objectives Page is shown


    Scenario: Add New Objectives Policy

        When click on menu button 
        And sidebar is shown
        And click on Configuration button 
        And click on Schedule Policies subbutton 
        And Schedule Policies page is shown 
        And click Standard
        And click Objectives 
        And Schedule Policies Standard Objectives Page is shown
        And click Add New Objectives Policy button 
        And click save 
        Then new Objective Policy added 

    Scenario: Edit Service ASAP on New Objectives Policy

        When click on menu button 
        And sidebar is shown
        And click on Configuration button 
        And click on Schedule Policies subbutton 
        And Schedule Policies page is shown 
        And click Standard
        And click Objectives 
        And Schedule Policies Standard Objectives Page is shown
        And click Add New Objectives Policy button 
        And click save 
        And new Objective Policy added 
        And click the new Objective Policy
        And change Service ASAP slider 
        And click Save 
        Then Rule updated 


    Scenario: Edit Minimize Overtime setting on New Objectives Policy

        When click on menu button 
        And sidebar is shown
        And click on Configuration button 
        And click on Schedule Policies subbutton 
        And Schedule Policies page is shown 
        And click Standard
        And click Objectives 
        And Schedule Policies Standard Objectives Page is shown
        And click Add New Objectives Policy button 
        And click save 
        And new Objective Policy added 
        And activate the Minimize Overtime 
        And change Minimize Overtime slider 
        And click Save 
        Then Rule updated 


    Scenario: Edit Preferred Resource setting on New Objectives Policy

        When click on menu button 
        And sidebar is shown
        And click on Configuration button 
        And click on Schedule Policies subbutton 
        And Schedule Policies page is shown 
        And click Standard
        And click Objectives 
        And Schedule Policies Standard Objectives Page is shown
        And click Add New Objectives Policy button 
        And click save 
        And new Objective Policy added 
        And activate the Preferred Resource
        And change Preferred Resource slider 
        And click Save 
        Then Rule updated 

    Scenario: Edit Prefer Internal Resource setting on New Objectives Policy

        When click on menu button 
        And sidebar is shown
        And click on Configuration button 
        And click on Schedule Policies subbutton 
        And Schedule Policies page is shown 
        And click Standard
        And click Objectives 
        And Schedule Policies Standard Objectives Page is shown
        And click Add New Objectives Policy button 
        And click save 
        And new Objective Policy added 
        And activate the Prefer Internal Resource
        And change PPrefer Internal Resource slider 
        And click Save 
        Then Rule updated 
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

    Scenario: Centralized log is shown 
        When click on menu button
        And sidebar is shown 
        And click on Support Tools 
        And click Centralized Log button
        Then Centralized Log page is shown 


    Scenario: Centralized log detail is shown 
        When click on menu button
        And sidebar is shown 
        And click on Support Tools 
        And click Centralized Log button
        And Centralized Log page is shown 
        And click a log 
        Then log detail is shown


    Scenario: Refresh Centralized log page 
        When click on menu button
        And sidebar is shown 
        And click on Support Tools 
        And click Centralized Log button
        And Centralized Log page is shown 
        And click refresh 
        Then page is refreshed


    Scenario: Filter Results on Centralized log page 
        When click on menu button
        And sidebar is shown 
        And click on Support Tools 
        And click Centralized Log button
        And Centralized Log page is shown 
        And click on filter button 
        And select filter
        Then page shows updated search results


# To Do
# Filter Management

# To Do
# New Duplicate Delete buttons not working 



    Scenario: Export Results from Centralized log page 
        When click on menu button
        And sidebar is shown 
        And click on Support Tools 
        And click Centralized Log button
        And Centralized Log page is shown 
        And click on Export button 
        And confirm download
        Then results are exported 

    Scenario: Integration Monitor is shown 
        When click on menu button
        And sidebar is shown 
        And click on Support Tools 
        And click Integration Monitor button
        Then Integration Monitor page is shown 


    Scenario: Integration Monitor detail is shown 
        When click on menu button
        And sidebar is shown 
        And click on Support Tools 
        And click Integration Monitor button
        And Integration Monitor page is shown 
        And click a log 
        Then Integration Monitor log detail is shown


    Scenario: SXP Tool page is shown 
        When click on menu button
        And sidebar is shown 
        And click on Support Tools 
        And click SXP button
        Then SXP page is shown


# To DO
# How to use SXP Page

#############


    Scenario: Tools page is shown 
        When click on menu button
        And sidebar is shown 
        And click on Support Tools 
        And click Tools button
        Then Tools page is shown


# To Do
# Download Tools from Tools page

    Scenario: User Login History page is shown 
        When click on menu button
        And sidebar is shown 
        And click on Support Tools 
        And click User Login History button
        Then User Login History page is shown


    Scenario: Export User Login History page is shown 
        When click on menu button
        And sidebar is shown 
        And click on Support Tools 
        And click User Login History button
        And User Login History page is shown
        And click Export 
        And save file to location
        Then User Login History is exported

    Scenario: Search User Login History page  
        When click on menu button
        And sidebar is shown 
        And click on Support Tools 
        And click User Login History button
        And User Login History page is shown 
        And click search bar 
        And enter text in search bar 
        And press enter 
        Then search results shown 


    Scenario: Roles page is shown 
        When click on menu button
        And sidebar is shown 
        And click on User Management 
        And click on Roles button
        Then Roles page is shown


    Scenario: Duplicate Role from Roles Page
        When click on menu button
        And sidebar is shown 
        And click on User Management 
        And click on Roles button
        And Roles page is shown
        And click the checkbox beside first role 
        And click duplicate 
        And click apply 
        And go back to Roles page 
        Then role is duplicated 


    Scenario: Delete Role from Roles Page
        When click on menu button
        And sidebar is shown 
        And click on User Management 
        And click on Roles button
        And Roles page is shown
        And click the checkbox beside first role 
        And click delete 
        And confirm delete 
        Then role is deleted 

    Scenario: Edit Role settings 
        When click on menu button
        And sidebar is shown 
        And click on User Management 
        And click on Roles button
        And Roles page is shown

# To Do
# Create New Role 


    Scenario: User Groups page is shown 
        When click on menu button
        And sidebar is shown 
        And click on User Management 
        And click on User Groups button
        Then User Groups page is shown


# To Do
# Create, Duplicate, Delete New User Group 

    Scenario: User List page is shown 
        When click on menu button
        And sidebar is shown 
        And click on User Management 
        And click on Users button
        Then User List page is shown

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


    Scenario: User List Page is shown

        When click on menu button
        And sidebar is shown 
        And click on Views button 
        And click on Custom User List button 
        Then Custom User List  page is shown 

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

    Scenario: Non-availability Page is shown

        When click on menu button
        And sidebar is shown 
        And click on Views button 
        And click on Non-availability button 
        Then Non-availability page is shown 

    Scenario: Add Non-availability from Non-availability Page

        When click on menu button
        And sidebar is shown 
        And click on Views button 
        And click on Non-availability button 
        And Non-availability page is shown 
        And click new 
        And enter required fields 
        And click ok 
        Then New Non-availability is added


    Scenario: Duplicate Non-availability from Non-availability Page

# To Do
# Cannot Duplicate

        When click on menu button
        And sidebar is shown 
        And click on Views button 
        And click on Non-availability button 
        And Non-availability page is shown 
        And click duplicate 
        And click ok 
        Then Address is duplicated

    Scenario: Delete Non-availability from Non-availability Page

# To Do
# Cannot Delete

        When click on menu button
        And sidebar is shown 
        And click on Views button 
        And click on Address button 
        And Address page is shown 
        And click delete 
        And click ok 
        Then Address is deleted

# To Do
# Analytics