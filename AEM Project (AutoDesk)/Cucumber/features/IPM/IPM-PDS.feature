@DC
#@SLE2
#@PT -- pages not available on PT
#@PROD -- pages not available on PROD
@REGRESSION



Feature: IPM price validation from PDS

 Scenario Outline: 1. Online - Verify correct purchase price is displayed on IPM for specified product

   Given the user navigates to the IPM webpage "<published_page>"
   Then purchase price is identical to the amount formatted price from PDS json for the specified "<quantity>" , "<term>" , "<product>" , "<appKey>" , "<country>" , "<slevel>"

   Examples:
      | product | published_page                                                                 | country | appKey | quantity | slevel | term |
      | acd     | qa-QA/qa-automation-personalization/trl.html?daysLeft=29&country=US&lang=en-US | US      | ONLINE | 1   | ADVANCED | 1-MONTH |


 Scenario Outline: 2. Online - Verify correct purchase price with VAT is displayed on IPM for specified product

   Given the user navigates to the IPM webpage "<published_page>"
   Then purchase price is identical to the amount with VAT formatted price from PDS json for the specified "<quantity>" , "<term>" , "<product>" , "<appKey>" , "<country>" , "<slevel>"

   Examples:
     | product | published_page                                                                 | country | appKey | quantity | slevel | term |
     | acd     | qa-QA/qa-automation-personalization/trl.html?daysLeft=29&country=GB&lang=en-US | GB      | ONLINE | 1   | ADVANCED | 1-MONTH |
