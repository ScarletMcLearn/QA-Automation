#**********************************************************************
@DC
@GEO
@SiteSelector
@PL-5049
@PL-5251

#---- Hooks:
@StorageClear
@SessionStorageClear

#---- Stacks:
@SLE2
@PT
@REGRESSION
@SLE1
@EnableShowMeTheCookies


Feature: WorldWide_SiteSelector

  DOCUMENTATION: https://wiki.autodesk.com/pages/viewpage.action?pageId=336988806

  Required files to run:
   - \Cucumber\features\DC-Geopopup-Redirects\
   - \Cucumber\features\support\common\xpath\xpath.yml
   - \Cucumber\features\support\world_extensions.rb

#--------------------------- Scenario 1 --------------------------#
@PL-5251

Scenario Outline: 1. User is redirected from .com to the local site page when country link is clicked in the site-selector page and comparable page exists in the site selected.

  Given the "<destination_page>" exists on "<destination_site>"
  When the user navigates to the Dotcom page "<page>"
  And the site label "UNITED STATES" is present
  And the user navigates to the new site-selector page by clicking the country label in utility bar
  And clicks on his Country link "<country>" from site-selector page
  Then the link directs user to appropriate site page: "<destination_site>" "<destination_page>"
  And the preferred site is stored as "<geokey>" in the .com page

@SMOKE
  Examples:
    | page                                    | country     | destination_site | destination_page                           | geokey  |
    | /qa-automation/new-utility-bar/home-new | France      |   .fr            | /qa-automation/new-utility-bar/home-new    | FR      |
    | /qa-automation/new-utility-bar/home-new | Canada - EN |   .ca/en         | /qa-automation/new-utility-bar/home-new    | CA      |


#--------------------------- Scenario 2 --------------------------#

Scenario Outline: 2. User is redirected from local_site1 to the local_site2 page when country link is clicked in the site-selector page and comparable page exists in the site selected.

  Given the "<destination_page>" exists on "<destination_site>"
  When the user navigates to "<site>" "<page>"
  And the user navigates to the new site-selector page by clicking the country label in utility bar
  And clicks on his Country link "<country>" from site-selector page
  Then the link directs user to appropriate site page: "<destination_site>" "<destination_page>"

@SMOKE
  Examples:
    | site | page                                        | country       | destination_site | destination_page                           |
    | .fr  | /qa-automation/new-utility-bar/home-new     | Deutschland   |   .de            | /qa-automation/new-utility-bar/home-new    |

# Need examples of domains wit different formats: .xx.xx, .xxx.xx, .xx/xx
  Examples:
    | site | page                                        | country       | destination_site | destination_page                           |
    | .fr  | /qa-automation/new-utility-bar/home-new     | United States |   .com           | /qa-automation/new-utility-bar/home-new    |
    #| .fr  | /qa-automation/new-utility-bar/home-new     | Canada - EN   |   .ca/en         | /qa-automation/new-utility-bar/home-new    |


#--------------------------- Scenario 3 --------------------------#

Scenario Outline: 3. User is redirected to the local site home page when country link is selected in the site-selector page from a previous .com page and comparable page does not exist in the site selected.

  Given the "<page>" does not exist on "<destination_site>"
  When the user navigates to "<site>" "<page>"
  And the user navigates to the new site-selector page by clicking the country label in utility bar
  And clicks on his Country link "<country>" from site-selector page
  Then the link directs user to appropriate site page: "<destination_site>" "<destination_page>"


@SMOKE
  Examples:
    | site | page                                           | country       | destination_site | destination_page  |
    | .com | /qa-automation/new-utility-bar/page-only-in-us | Deutschland   |   .de            | /                 |

# Need examples of domains wit different formats: .xx.xx, .xxx.xx, .xx/xx
  Examples:
    | site | page                                           | country       | destination_site | destination_page  |
    | .fr  | /qa-automation/new-utility-bar/page-only-in-fr | 日本          |   .co.jp         | /                 |
    | .fr  | /qa-automation/new-utility-bar/page-only-in-fr | United States |   .com           | /                |

#--------------------------- Scenario 4 --------------------------#

Scenario Outline: 4. User is redirected to the local site home page when user directly visits the site selector page and a country link is selected.

  Given the user navigates to "<site>" "<site_selector_page>"
  When clicks on his Country link "<country>" from site-selector page
  Then the link directs user to appropriate site page: "<destination_site>" "<destination_page>"


@SMOKE
  Examples:
    | site    | site_selector_page                               |  country       | destination_site | destination_page |
    | .com    | /qa-automation/new-utility-bar/new-site-selector |  France        |   .fr            | /                |

# Need examples of domains wit different formats: .xx.xx, .xxx.xx, .xx/xx
  Examples:
    | site    | site_selector_page                               |  country       | destination_site | destination_page |
    | .com    | /qa-automation/new-utility-bar/new-site-selector |  France        |   .fr            | /                |
    | .de     | /qa-automation/new-utility-bar/new-site-selector |  France        |   .fr            | /                |
    | .de     | /qa-automation/new-utility-bar/new-site-selector |  United States |   .com           | /                |

#--------------------------- Scenario 5 --------------------------#
@PL-5251


Scenario Outline: 5. User has clicked on the "choose another local site" from the alert after being automatically redirected. - PAGE EXISTS IN LOCAL

   Given the "<subscribe_page>" exists on "<dest_site>"
   And the userCountry cookie is set for "<usercountry>" on "<detected_site>"
   And the userCountry cookie is set for "<usercountry>" on ".com"
   When the user navigates to ".com" "<subscribe_page>"
   And the user is automatically redirected to the detected country site "<detected_site>" "<subscribe_page>"
   And user clicks on 'choose another local site' from the subscribe redirect alert
#   And the referrer parameter appears in the URL
   And clicks on a Country link "<country>" from site-selector page
   Then the link directs user to appropriate site page: "<dest_site>" "<destination_page>"
   And the preferred site remains stored as "<geokey>" in the .com page

@SMOKE
  Examples:
    | usercountry | detected_site | subscribe_page                                       | country      | destination_page                                    | dest_site | geokey |
    |   CA        |    .ca/en     | /qa-automation/new-utility-bar/subscribe_redirect    | Deutschland  | /qa-automation/new-utility-bar/subscribe_redirect   | .de       | CA     |

# ONLY If the user selects "U.S." from a local site selector page, the query parameter is used to store the 'US' preferred site(geokey) on the global site.
@SMOKE
  Examples:
    | usercountry | detected_site | subscribe_page                                       | country       | destination_page                                    | dest_site | geokey |
    |   FR        |    .fr        | /qa-automation/new-utility-bar/subscribe_redirect    | United States | /qa-automation/new-utility-bar/subscribe_redirect   | .com      | US     |

# Need examples of domains wit different formats: .xx.xx, .xxx.xx, .xx/xx
  Examples:
    | usercountry | detected_site | subscribe_page                                       | country       | destination_page                                    | dest_site | geokey |
    |   FR        |    .fr        | /qa-automation/new-utility-bar/subscribe_redirect    | Canada - EN   | /qa-automation/new-utility-bar/subscribe_redirect   | .ca/en    | FR     |

#--------------------------- Scenario 6 --------------------------#
### CHECK IF SCENARIO NOT DUPLICATED IN SUBSCRIBE_REDIRECT.feature

Scenario Outline: 6. User has clicked on the "choose another local site" from the alert after being automatically redirected - PAGE DOES NOT EXIST IN LOCAL

   Given the "<subscribe_page>" does not exist on "<dest_site>"
   And the userCountry cookie is set for "<usercountry>" on "<detected_site>"
   And the userCountry cookie is set for "<usercountry>" on ".com"
   And the user navigates to ".com" "<subscribe_page>"
   And the user is automatically redirected to the detected country site "<detected_site>" "<subscribe_page>"
#   And session storage should now contain a Preferred site: 'geoNavigationPreferredSite' with Geokey: "<geokey>" on .com
   When user clicks on 'choose another local site' from the subscribe redirect alert
   And clicks on a Country link "<country>" from site-selector page
   Then the link directs user to appropriate site page: "<dest_site>" "<destination_page>"
   And the preferred site remains stored as "<geokey>" in the .com page

@SMOKE
Examples:
  | usercountry | detected_site | geokey | subscribe_page                                               | country     | destination_page | dest_site |
  |   FR        |    .fr        |  FR    | /qa-automation/new-utility-bar/subscribe_redirectusandfronly | Deutschland | /                | .de       |

#-------------------------------------------------------------------#
#--------------------------- Scenario END --------------------------#
