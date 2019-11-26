Feature: AIM Site Login and Dashboard Functionalities 

    Background: 

        Given Browser is opened
        And nagivated to AIM inspect site // https://crm-qa.aiminspect.com/
        And AIM Inspect site is displayed 
        And login form is displayed


    Scenario: Launch AIM Inspect site
    
        When logged in to AIM Inspect site
        Then AIM Inspect site is displayed



    


    Scenario: Both incorrect credentials do not allow login

        When enter incorrect Username and Password
        And click Log In
        Then Invalid Login message is displayed


    Scenario: Blank credentials do not allow login

        When leave login form empty
        And click Log In
        Then Error message is displayed


     Scenario: Incorrect Username do not allow login

        When enter incorrect Username and Password
        And click Log In
        Then Invalid Username message is displayed  


    Scenario: Incorrect Password do not allow login

        When enter incorrect Username and Password
        And click Log In
        Then Incorrect Password message is displayed  


    Scenario: Correct credentials allow succesful login

        When enter correct Username and Password
        And click Log In
        Then AIM Inspection page is displayed


    Scenario: Logout of AIM Inspect site

        Given user is logged in
        When click on Log Out button
        Then user is logged out