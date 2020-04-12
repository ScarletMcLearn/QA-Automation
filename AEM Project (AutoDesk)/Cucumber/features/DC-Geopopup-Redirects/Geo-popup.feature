#**********************************************************************
@DC
@GEO
@GEOPOPUP

#---- Hooks:
@StorageClear
@SessionStorageClear

#---- Stacks:
@SLE2
@PT
@REGRESSION
@SLE1
@EnableShowMeTheCookies
Feature: Geo-Popup

  DOCUMENTATION: https://wiki.autodesk.com/pages/viewpage.action?pageId=336988806

  Required files to run:
   - \Cucumber\features\DC-Geopopup-Redirects\
   - \Cucumber\features\support\common\xpath\xpath.yml
   - \Cucumber\features\support\world_extensions.rb

#--------------------------- Scenario 1 --------------------------#

Scenario Outline: 1. US user is not presented with a Geo-Popup

  Given the userCountry cookie is set for "US" on ".com"
  When the user navigates to ".com" "<page>"
  Then the 'geo-popup' is not displayed
  And session storage should NOT contain a Preferred site for .com

@SMOKE
  Examples:
    | page                                     |
    | /qa-automation/new-utility-bar/home-new  |

#--------------------------- Scenario 2 --------------------------#
@WPE-813

Scenario Outline: 2. non-US user is not presented with a Geo-Popup on .com if local site page equivalent does not exist

  Given the "<page>" does not exist on "<localsite>"
  And the userCountry cookie is set for "FR" on ".com"
  When the user navigates to ".com" "<page>"
  Then the 'geo-popup' is not displayed
  And session storage should NOT contain a Preferred site for .com

@SMOKE
  Examples:
    | localsite | page                                            |
    | .fr       | /qa-automation/new-utility-bar/page-only-in-us  |


#--------------------------- Scenario 3 --------------------------#
@WPE-637

@SMOKE
Scenario: 3. User Interacts with the link: 'STAY ON US SITE'
    # Popup Closes + (session storage: Popup viewed but no Preferred site stored)

  Given the userCountry cookie is set for "FR" on ".com"
  And the user navigates to ".com" "/qa-automation/new-utility-bar/home-new"
  And a 'geo-popup' is displayed
  And displays the English text "Stay on our U.S. site"
  When user clicks on link 'Stay on U.S. site' to remain on the .com site
  Then the 'geo-popup' is closed
  And session storage stored a "geoNavigationPopupViewed" as "true"
  And session storage should NOT contain a Preferred site for .com
  When the user navigates to ".com" "/qa-automation/new-utility-bar/home-new"
  Then the 'geo-popup' is no longer displayed



#--------------------------- Scenario 4 --------------------------#
# do one country (latin, cyrillic, asian)

Scenario Outline: 4. User Interacts with the link: 'VISIT LOCAL SITE'
# Popup Closes + (Revisits .com - Popup has been shown and does not display again)

  Given the userCountry cookie is set for "<usercountry>" on ".com"
  When the user navigates to ".com" "<page>"
  Then a 'geo-popup' is displayed
  And displays the localized "<linktext>"
  When user clicks on his local site link
  Then the URL directs user to appropriate "<site_destination>" "<destinationpage>"
  When the user navigates to ".com" "/qa-automation/fsb-buy"
  Then the 'geo-popup' is no longer displayed
  And session storage should now contain a Preferred site: 'geoNavigationPreferredSite' with Geokey: "<geokey>" on .com
  And session storage stored a "geoNavigationPopupViewed" as "true"


@SMOKE
Examples:
  | usercountry | geokey |  page                                      | linktext                     | site_destination | destinationpage                          |
# Domain: .xx/xx
  | CA          | CA     |  /qa-automation/new-utility-bar/home-new   | Visit our Canada site        |  .ca/en          | /qa-automation/new-utility-bar/home-new  |
# Asian Language
  | CN          | CN     |/qa-automation/new-utility-bar/home-new     | 访问我们的 中国 站点           | .com.cn          | /qa-automation/new-utility-bar/home-new  |
# Cyrillic Language
  | RU          | RU     |  /qa-automation/new-utility-bar/home-new   | Посетите наш сайт Россия     | .ru              | /qa-automation/new-utility-bar/home-new  |


Examples:
  | usercountry | geokey |  page                                      | linktext                        | site_destination  | destinationpage                           |
# Latin/Europe language
  | FR          | FR     |/qa-automation/new-utility-bar/home-new     | Visitez notre site en France    | .fr               | /qa-automation/new-utility-bar/home-new   |
  | ES          | ES     |  /qa-automation/new-utility-bar/home-new   | Visite nuestro sitio de España  | .es               | /qa-automation/new-utility-bar/home-new   |
# NL with EN language Browser will direct user to .eu (see browser language test for .nl)
  | NL          | en_NL  |  /qa-automation/new-utility-bar/home-new   | Visit our Europe site           | .eu               | /qa-automation/new-utility-bar/home-new   |
# Domain: .xx.xx
  | GB          | GB     |  /qa-automation/new-utility-bar/home-new   | Visit our United Kingdom site   | .co.uk            | /qa-automation/new-utility-bar/home-new   |
# Domain: .xxx.xx
  | AU          | AU     |  /qa-automation/new-utility-bar/home-new   | Visit our Australia site        | .com.au           | /qa-automation/new-utility-bar/home-new   |
# Country with no local site but supported by another local site
  | SK          | SK     |  /qa-automation/new-utility-bar/home-new   | Visit our Europe site           | .eu               | /qa-automation/new-utility-bar/home-new   |



#--------------------------- Scenario 5 --------------------------#


Scenario: 5. User clicks on the 'CLOSE' to close the 'geo-popup'
# - user remains on .com without preferred site (popup not recurring for session)

  Given the userCountry cookie is set for "FR" on ".com"
  And the user navigates to ".com" "/qa-automation/new-utility-bar/home-new"
  And a 'geo-popup' is displayed
  When user clicks on the 'close' icon
  Then the 'geo-popup' is closed
  When the user navigates to ".com" "/qa-automation/fsb-buy"
  Then the 'geo-popup' is no longer displayed
  And session storage stored a "geoNavigationPopupViewed" as "true"
  And session storage should NOT contain a Preferred site for .com


#--------------------------- Scenario 6 --------------------------#

Scenario Outline: 6. Utility bar 'Geo popup' localized link takes non-US user to his local site (LATINOAMERICA)

  Given the userCountry cookie is set for "<usercountry>" on ".com"
  And the user navigates to ".com" "<page>"
  When a 'geo-popup' is displayed
  And user clicks on his local site link
  Then the URL directs user to appropriate latinoamerica "<destinationpage>"

@SMOKE
Examples:
  | usercountry | page                                            | destinationpage                         |
  | AR          | /qa-automation/new-utility-bar/home-new         | /qa-automation/new-utility-bar/home-new |


Examples:
  | usercountry | page                                    | destinationpage                         |
  | BO          | /qa-automation/new-utility-bar/home-new | /qa-automation/new-utility-bar/home-new |
  | CL          | /qa-automation/new-utility-bar/home-new | /qa-automation/new-utility-bar/home-new |



#--------------------------- Scenario END --------------------------#
