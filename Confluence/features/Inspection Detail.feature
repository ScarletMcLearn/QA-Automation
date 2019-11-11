Feature: 

    Background: 

        Given Browser is opened
        And nagivated to AIM inspect site // https://crm-qa.aiminspect.com/
        And AIM Inspect site is displayed 
        And correct user name and password is entered
        And login form is submitted


        

Scenario: Edit Lessee info form displayed

        Given current page is single inspection search result detail page 
        When find Lessee Info section
        And hover over Lessee Info edit button
        And click on Lessee Info edit button
        Then edit Lessee Info page is shown 

    Scenario: Edit Lessee info form accepted with all required fields

        Given current page is single inspection search result detail page 
        When find Dealer Info section
        And hover over Lessee Info edit button
        And click on Lessee Info edit button
        And edit Lessee Info page is shown 
        And User inputs all the required fields
        And clicks Save
        Then Lessee info is edited sucessfully


     Scenario: Edit Lessee info form not accepted without all required fields

        Given current page is single inspection search result detail page 
        When find Lessee Info section
        And hover over Lessee Info edit button
        And click on Lessee Info edit button
        And edit Lessee Info page is shown 
        And clicks Save
        Then Required Fields error message displayed


    Scenario: Edit Dealer info form displayed

        Given current page is single inspection search result detail page 
        When find Dealer Info section
        And hover over Dealer Info edit button
        And click on Dealer Info edit button
        Then edit Dealer Info page is shown 

#################
    Scenario: Edit Dealer info form accepted with all required fields

        Given current page is single inspection search result detail page 
        When find Dealer Info section
        And hover over Dealer Info edit button
        And click on Dealer Info edit button
        And edit Dealer Info page is shown 
        And User inputs all the required fields
        And clicks Save
        Then Dealer info is edited sucessfully


     Scenario: Edit Dealer info form not accepted without all required fields

        Given current page is single inspection search result detail page 
        When find Dealer Info section
        And hover over Dealer Info edit button
        And click on Dealer Info edit button
        And edit Dealer Info page is shown 
        And clicks Save
        Then Required Fields error message displayed


    Scenario: Add Disposition

        Given current page is single inspection search result detail page 
        When find Dispositions section
        And hover over Add Disposition button
        And click Add Disposition button
        And Add Disposition page is displayed
        And select call type from options
        And select disposition type from dropdown menu
        And click Add
        Then Disposition is added in Disposition section



    Scenario: Add Incoming Call Busy Signal Disposition

        Given current page is single inspection search result detail page 
        When find Dispositions section
        And hover over Add Disposition button
        And click Add Disposition button
        And Add Disposition page is displayed
        And select Incoming Call from call type options
        And click disposition type dropdown menu 
        And select Busy Signal disposition type from dropdown menu
        And click Add
        Then Incoming Call Busy Signal Disposition is added in Disposition section


    Scenario: Add Incoming Call Contact made Disposition

        Given current page is single inspection search result detail page 
        When find Dispositions section
        And hover over Add Disposition button
        And click Add Disposition button
        And Add Disposition page is displayed
        And select Incoming Call from call type options
        And click disposition type dropdown menu 
        And select Contact made disposition type from dropdown menu
        And click Add
        Then Incoming Call Contact made Disposition is added in Disposition section


    Scenario: Add Incoming Call Inspector Unavailable Disposition

        Given current page is single inspection search result detail page 
        When find Dispositions section
        And hover over Add Disposition button
        And click Add Disposition button
        And Add Disposition page is displayed
        And select Incoming Call from call type options
        And click disposition type dropdown menu 
        And select Inspector Unavailable disposition type from dropdown menu
        And click Add
        Then Incoming Call Inspector Unavailable Disposition is added in Disposition section


    Scenario: Add Incoming Call Left message with someone Disposition

        Given current page is single inspection search result detail page 
        When find Dispositions section
        And hover over Add Disposition button
        And click Add Disposition button
        And Add Disposition page is displayed
        And select Incoming Call from call type options
        And click disposition type dropdown menu 
        And select Left message with someone disposition type from dropdown menu
        And click Add
        Then Incoming Call Left message with someone Disposition is added in Disposition section


    Scenario: Add Incoming Call Lessee Requests Cancel Disposition

        Given current page is single inspection search result detail page 
        When find Dispositions section
        And hover over Add Disposition button
        And click Add Disposition button
        And Add Disposition page is displayed
        And select Incoming Call from call type options
        And click disposition type dropdown menu 
        And select Lessee Requests Cancel disposition type from dropdown menu
        And click Add
        Then Incoming Call Lessee Requests Cancel Disposition is added in Disposition section


    Scenario: Add Incoming Call Lessee Uncooperative Disposition

        Given current page is single inspection search result detail page 
        When find Dispositions section
        And hover over Add Disposition button
        And click Add Disposition button
        And Add Disposition page is displayed
        And select Incoming Call from call type options
        And click disposition type dropdown menu 
        And select Lessee Uncooperative disposition type from dropdown menu
        And click Add
        Then Incoming Call Lessee Uncooperative Disposition is added in Disposition section


    Scenario: Add Incoming Call Need Contact Name Disposition

        Given current page is single inspection search result detail page 
        When find Dispositions section
        And hover over Add Disposition button
        And click Add Disposition button
        And Add Disposition page is displayed
        And select Incoming Call from call type options
        And click disposition type dropdown menu 
        And select Need Contact Name disposition type from dropdown menu
        And click Add
        Then Incoming Call Need Contact Name Disposition is added in Disposition section

    Scenario: Add Incoming Call No Answer Disposition

        Given current page is single inspection search result detail page 
        When find Dispositions section
        And hover over Add Disposition button
        And click Add Disposition button
        And Add Disposition page is displayed
        And select Incoming Call from call type options
        And click disposition type dropdown menu 
        And select No Answer disposition type from dropdown menu
        And click Add
        Then Incoming Call No Answer Disposition is added in Disposition section

    Scenario: Add Incoming Call Purchase Disposition

        Given current page is single inspection search result detail page 
        When find Dispositions section
        And hover over Add Disposition button
        And click Add Disposition button
        And Add Disposition page is displayed
        And select Incoming Call from call type options
        And click disposition type dropdown menu 
        And select Purchase disposition type from dropdown menu
        And click Add
        Then Incoming Call Purchase Disposition is added in Disposition section

    Scenario: Add Incoming Call Scheduled Disposition

        Given current page is single inspection search result detail page 
        When find Dispositions section
        And hover over Add Disposition button
        And click Add Disposition button
        And Add Disposition page is displayed
        And select Incoming Call from call type options
        And click disposition type dropdown menu 
        And select Scheduled disposition type from dropdown menu
        And click Add
        Then Incoming Call Scheduled Disposition is added in Disposition section

    Scenario: Add Incoming Call Voice Mail Disposition

        Given current page is single inspection search result detail page 
        When find Dispositions section
        And hover over Add Disposition button
        And click Add Disposition button
        And Add Disposition page is displayed
        And select Incoming Call from call type options
        And click disposition type dropdown menu 
        And select Voice Mail disposition type from dropdown menu
        And click Add
        Then Incoming Call Voice Mail Disposition is added in Disposition section


    


    Scenario: Add Outgoing Call Busy Signal Disposition

        Given current page is single inspection search result detail page 
        When find Dispositions section
        And hover over Add Disposition button
        And click Add Disposition button
        And Add Disposition page is displayed
        And select Outgoing Call from call type options
        And click disposition type dropdown menu 
        And select Busy Signal disposition type from dropdown menu
        And click Add
        Then Outgoing Call Busy Signal Disposition is added in Disposition section


    Scenario: Add Outgoing Call Contact made Disposition

        Given current page is single inspection search result detail page 
        When find Dispositions section
        And hover over Add Disposition button
        And click Add Disposition button
        And Add Disposition page is displayed
        And select Outgoing Call from call type options
        And click disposition type dropdown menu 
        And select Contact made disposition type from dropdown menu
        And click Add
        Then Outgoing Call Contact made Disposition is added in Disposition section


    Scenario: Add Outgoing Call Inspector Unavailable Disposition

        Given current page is single inspection search result detail page 
        When find Dispositions section
        And hover over Add Disposition button
        And click Add Disposition button
        And Add Disposition page is displayed
        And select Outgoing Call from call type options
        And click disposition type dropdown menu 
        And select Inspector Unavailable disposition type from dropdown menu
        And click Add
        Then Outgoing Call Inspector Unavailable Disposition is added in Disposition section


    Scenario: Add Outgoing Call Left message with someone Disposition

        Given current page is single inspection search result detail page 
        When find Dispositions section
        And hover over Add Disposition button
        And click Add Disposition button
        And Add Disposition page is displayed
        And select Outgoing Call from call type options
        And click disposition type dropdown menu 
        And select Left message with someone disposition type from dropdown menu
        And click Add
        Then Outgoing Call Left message with someone Disposition is added in Disposition section


    Scenario: Add Outgoing Call Lessee Requests Cancel Disposition

        Given current page is single inspection search result detail page 
        When find Dispositions section
        And hover over Add Disposition button
        And click Add Disposition button
        And Add Disposition page is displayed
        And select Outgoing Call from call type options
        And click disposition type dropdown menu 
        And select Lessee Requests Cancel disposition type from dropdown menu
        And click Add
        Then Outgoing Call Lessee Requests Cancel Disposition is added in Disposition section


    Scenario: Add Outgoing Call Lessee Uncooperative Disposition

        Given current page is single inspection search result detail page 
        When find Dispositions section
        And hover over Add Disposition button
        And click Add Disposition button
        And Add Disposition page is displayed
        And select Outgoing Call from call type options
        And click disposition type dropdown menu 
        And select Lessee Uncooperative disposition type from dropdown menu
        And click Add
        Then Outgoing Call Lessee Uncooperative Disposition is added in Disposition section


    Scenario: Add Outgoing Call Need Contact Name Disposition

        Given current page is single inspection search result detail page 
        When find Dispositions section
        And hover over Add Disposition button
        And click Add Disposition button
        And Add Disposition page is displayed
        And select Outgoing Call from call type options
        And click disposition type dropdown menu 
        And select Need Contact Name disposition type from dropdown menu
        And click Add
        Then Outgoing Call Need Contact Name Disposition is added in Disposition section

    Scenario: Add Outgoing Call No Answer Disposition

        Given current page is single inspection search result detail page 
        When find Dispositions section
        And hover over Add Disposition button
        And click Add Disposition button
        And Add Disposition page is displayed
        And select Outgoing Call from call type options
        And click disposition type dropdown menu 
        And select No Answer disposition type from dropdown menu
        And click Add
        Then Outgoing Call No Answer Disposition is added in Disposition section

    Scenario: Add Outgoing Call Purchase Disposition

        Given current page is single inspection search result detail page 
        When find Dispositions section
        And hover over Add Disposition button
        And click Add Disposition button
        And Add Disposition page is displayed
        And select Outgoing Call from call type options
        And click disposition type dropdown menu 
        And select Purchase disposition type from dropdown menu
        And click Add
        Then Outgoing Call Purchase Disposition is added in Disposition section

    Scenario: Add Outgoing Call Scheduled Disposition

        Given current page is single inspection search result detail page 
        When find Dispositions section
        And hover over Add Disposition button
        And click Add Disposition button
        And Add Disposition page is displayed
        And select Outgoing Call from call type options
        And click disposition type dropdown menu 
        And select Scheduled disposition type from dropdown menu
        And click Add
        Then Outgoing Call Scheduled Disposition is added in Disposition section

    Scenario: Add Outgoing Call Voice Mail Disposition

        Given current page is single inspection search result detail page 
        When find Dispositions section
        And hover over Add Disposition button
        And click Add Disposition button
        And Add Disposition page is displayed
        And select Outgoing Call from call type options
        And click disposition type dropdown menu 
        And select Voice Mail disposition type from dropdown menu
        And click Add
        Then Outgoing Call Voice Mail Disposition is added in Disposition section

    


    









    Scenario: Schedule Appointment

        Given current page is single inspection search result detail page 
        When find Current Appointment Detail section
        And click the options button
        And select Schedule from options
        And Schedule Appointment form is displayed
        And fill up the Schedule Appointment form
        And click Save
        Then appointment can be seen scheduled in the Current Appointments section


    Scenario: Add Internal Comment

        Given current page is single inspection search result detail page 
        When find Internal Comments section
        And click the Add Comment button
        And Add Internal Comment page is shown
        And input comment in field
        And click Add
        Then comment can be seen in Internal Comments section