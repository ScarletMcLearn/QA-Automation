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


####################


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

    Scenario: Inspector Territory Page is shown

        When click on menu button
        Then sidebar is shown 
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
        Then sidebar is shown 
        And click on Views button 
        And click on Inspection button 
        Then Inspection page is shown 



    # To Do

    #  Doesnt work
    Scenario: Add New Inspection 

        Given on Inspection page 
        When click New button
        And click New NA 
        And NA Window is shown 
        And enter required fields in General tab 
        And click Ok button 
        Then New NA is added. 