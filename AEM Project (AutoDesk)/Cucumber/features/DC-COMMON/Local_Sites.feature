### Only covering local sites validation in this feature file.

@DC
@LOCAL_SITES
@SLE2
@PT
@Prod
@REGRESSION
@SLE1


Feature: Validating that all country sites are loading without returning a 404.




  Scenario Outline: 1. Validate that the home page is loading as expected without returning a 404.

    Given the user navigates to the site "<local_site>"
    Then the page load without returning a 404

    Examples:
      | local_site |
      | .com       |
      | .ca/fr     |
      | .ca/en     |
      | .mx        |
      | .com.au    |
      | .com.cn    |
      | .co.jp     |
      | .co.kr     |
      | .com.tw    |
      | .in        |
      | .com.sg    |
      | .co.nz     |
      | .com.hk    |
      | .co.za     |
      | .ae        |
      | .com.br    |
      | .cz        |
      | .dk        |
      | .es        |
      | .fr        |
      | .hu        |
      | .it        |
      | .no        |
      | .pl        |
      | .pt        |
      | .ru        |
      | .fi        |
      | .se        |
      | .com.tr    |
      | .co.uk     |
      | .de        |
      | .nl        |
      | .be        |
      | .be/fr     |
      | .be/nl     |
      | .eu        |
    #  | .ch/de     |
    #  | .ch/fr     |
    #  | .ch/it     |
    # All 3 local commented above are not ready yet on prod




  Scenario: 2. Validate that the home page is loading as expected without returning a 404 for LatinoAmerica site.

    Given the user navigates to LatinoAmerica site "/?autodesk-internal-preview=true"
    Then the page load without returning a 404
