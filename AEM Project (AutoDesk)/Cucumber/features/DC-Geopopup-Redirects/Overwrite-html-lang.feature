@DC
@EN-EU

@SLE2
@PT
@REGRESSION
@SLE1

Feature: Overwrite html language EU

  The new Europe site (www.autodesk.eu) was set up under the folder "en-NL" for ecommerce purposes some time ago.
   The HTML Lang value is set to this folder name by default.
   Current: Europe site has html lang of en-NL
   Requested: Europe site should have html lang of en-EU

Scenario Outline: Verify site has respective html tags lang,locale and country
Given the user navigates to "<site>" "<page>"
Then the html language "<lang>" tags should appear
And the ADSK Locale "<locale>" tags should appear
And the ISO Country "<country>" tags should appear

  @SMOKE
   Examples:
    | site | page                                            | lang  | locale    | country |
    | .com | /qa-automation/home                             | en-US | en-US     | US      |
#language locale is overwritten in author page from en-US to te-ST
    | .com | /qa-automation/fsb-buy/overwrite-html-language  | te-ST | en-US     | US      |
#Language locale is overwritten for Europe site to en-EU
    | .eu  | /qa-automation/fsb-buy/overwrite-html-language  | en-EU | en-NL     | NL      |
