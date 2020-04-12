@DC
@FSBBUY
@SLE2
@PT
@REGRESSION
@SLE1


Feature: Buy Container Global Configuration Settings validation.


Scenario Outline: 1. Buy container Global Configuration validation

	
	Given the "<authored_page>" exists on author site
  Then I click Edit from parsys
  And the dialog appears
  Then I select <theme_option> from dropdown Select Theme
  Then I select <subhead_flag> from dropdown SubHead flag
  Then I select <bestvalue_flag> from dropdown Best Value flag
  Then I select <autorenewal_flag> from dropdown Auto Renewal flag
  Then I click OK button

@SMOKE
Examples:
 | site   | authored_page                                              | option          | theme_option     | subhead_flag | bestvalue_flag | autorenewal_flag
 | .com   | /cf#/content/site-configurations/buy-container/global.html |Theme Term Price | Theme Term Price | ON           | ON             | ON


# ############ END ##################
