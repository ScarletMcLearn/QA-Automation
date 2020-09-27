Feature: AutoBill  Account Groups Testing

	Background:
		Given the Browser is opened
		And User navigates to AutoBill site
		And enters "Email" in Email Field
		And enters "Password" in Password Field
		And clicks Login button 
		Then AutoBill site is displayed


	Scenario: User enables Account Group feature from General Settings

        # NOTE: Account Group has to be DEACTIVATED by DEFAULT
		Given the User is on AutoBill site
		And clicks Implementer icon 
		And Dropdown menu is displayed
		And clicks Settings option from Dropdown list
		And Settings is displayed
		When the User clicks General Settings from left side menu 
		And General Settings is displayed 
        And clicks Account panel
		And toggles on Account Grouping
		And clicks Save 
		Then Account Settings saved notification message is shown
        ##### Bug  ##### Should NOT have to RELOAD
        Given the User is on AutoBill site   
		And clicks Implementer icon 
		And Dropdown menu is displayed
		And clicks Settings option from Dropdown list
		And Settings is displayed      
        ###### Bug
		Then Account Groups displayed on AutoBill Settings left side menu


	Scenario: User disables Account Group feature from General Settings
		Given the User is on AutoBill site
		And clicks Implementer icon 
		And Dropdown menu is displayed
		And clicks Settings option from Dropdown list
		And Settings is displayed
		When the User clicks General Settings from left side menu 
		And General Settings is displayed 
		And toggles off Account Grouping
		And clicks Save 
		Then Account Settings saved notification message is shown
		And Account Groups not displayed on AutoBill Settings left side menu



	


	Scenario: User Deletes Account Group

		Given the User is on AutoBill site
		And clicks Implementer icon 
		And Dropdown menu is displayed
		And clicks Settings option from Dropdown list
		And Settings is displayed
		And selects Account Groups from left side menu 
		And Account Groups settings is displayed
		And Account Group exists 
		When the User clicks Action button of a "Specific Account Group"
		And Action menu is displayed
		And the User clicks Delete from Dropdown list 
		And Delete Confirmation popup is shown
		And clicks Delete 
		Then Account Group successfully deleted notification message is shown  
		And "Specific Account Group" not in Account Groups list 



	Scenario: User Disables Account Group

		Given the User is on AutoBill site
		And clicks Implementer icon 
		And Dropdown menu is displayed
		And clicks Settings option from Dropdown list
		And Settings is displayed
		And selects Account Groups from left side menu 
		And Account Groups settings is displayed
		And Account Group exists and is enabled
		And the User clicks Active Toggle Bar for "Specific Account Group"
		And Disable Confirmation popup is shown
		And clicks Disable 
		Then Account Group successfully disabled notification message is shown  
		And "Specific Account Group" not active in Account Groups list 





	Scenario: User Enables Account Group

		Given the User is on AutoBill site
		And clicks Implementer icon 
		And Dropdown menu is displayed
		And clicks Settings option from Dropdown list
		And Settings is displayed
		And selects Account Groups from left side menu 
		And Account Groups settings is displayed
		And Account Group exists and is disabled
		And the User clicks Inactive Toggle Bar for "Specific Account Group"
		Then Account Group successfully enabled notification message is shown  
		And "Specific Account Group" is active in Account Groups list 




	Scenario: Account Group shown when Creating Account when Enabled

		Given Account Groups is enabled from General Settings 
		And "specific Account Group" exists 
		And "specific Account Group" is enabled 
		And the User is on AutoBill site
		When the User clicks left side NEW button 
		And New button options are displayed
		And clicks Account 
		And Create Account window is shown 
		And enters "Account Name" in Account Name Field
		And Group Dropdown menu is shown 
		And clicks Group Dropdown menu 
		Then "specific Account Group" is shown in Group Dropdown menu 


	Scenario: Create Account with "specific Account Group"

		Given Account Groups is enabled from General Settings 
		And "specific Account Group" exists 
		And "specific Account Group" is enabled 
		And the User is on AutoBill site
		When the User clicks left side NEW button 
		And New button options are displayed
		And clicks Account 
		And Create Account window is shown 
		And enters "Account Name" in Account Name Field
		And Group Dropdown menu is shown 
		And clicks Group Dropdown menu 
		Then "specific Account Group" is shown in Group Dropdown menu
		And User clicks "specific Account Group" from Group Dropdown menu 
		And User clicks Create Account 
		And Account Created notification message is shown
		And Newly Created Account is displayed
		And Account has "specific Account Group"
		


	Scenario: Account Group shown in Accounts List View when Enabled

		Given Account Groups is enabled from General Settings 
		And "specific Account Group" exists 
		And "specific Account Group" is enabled 
		And the User is on AutoBill site
		When the User clicks left side NEW button 
		And New button options are displayed
		And clicks Account 
		And Create Account window is shown 
		And enters "Account Name" in Account Name Field
		And Group Dropdown menu is shown 
		And clicks Group Dropdown menu 
		Then "specific Account Group" is shown in Group Dropdown menu
		And User clicks "specific Account Group" from Group Dropdown menu 
		And User clicks Create Account 
		And Account Created notification message is shown
		And Newly Created Account is displayed
		And Account has "specific Account Group"
		And User clicks Account from left side menu 
		And User clicks View button from Expanded side menu
		And clicks Group button 
		And checks "specific Account Group"  
		And Newly Created Account with "specific Account Group" is shown 

	

	Scenario: Account Group not shown when Creating Account when Disabled 

		Given Account Groups is enabled from General Settings 
		And "specific Account Group" exists 
		And "specific Account Group" is disabled 
		And the User is on AutoBill site
		When the User clicks left side NEW button 
		And New button options are displayed
		And clicks Account 
		And Create Account window is shown 
		And enters "Account Name" in Account Name Field
		And Group Dropdown menu is shown 
		And clicks Group Dropdown menu 
		Then "specific Account Group" is not shown in Group Dropdown menu 
	
	Scenario: Account Group not shown in Accounts List View when Disabled

		Given Account Groups is enabled from General Settings 
		And "specific Account Group" exists 
		And "specific Account Group" is disabled 
		And the User is on AutoBill site
		When the User clicks left side NEW button 
		And New button options are displayed
		And clicks Account 
		And Create Account window is shown 
		And enters "Account Name" in Account Name Field
		And Group Dropdown menu is shown 
		And clicks Group Dropdown menu 
		Then "specific Account Group" is NOT shown in Group Dropdown menu
		And User clicks Account from left side menu 
		And User clicks View button from Expanded side menu
		And clicks Group button 
		And "specific Account Group" not shown in options  










 

