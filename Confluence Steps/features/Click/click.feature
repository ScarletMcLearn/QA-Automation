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


    Scenario: Schedule Page is shown

        When click on menu button
        Then sidebar is shown 
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