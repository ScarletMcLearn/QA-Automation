@IPM
@PROD
@PT
@SLE2
@REGRESSION

Feature: IPM: Content Categories

  Scenario Outline: Product inherits Content Category and overwrites some date ranges
    Given I am on IPM_Url1 "<access_url>"
    Then I am redirected to given "<text>"

    Examples:

    | access_url                                                        | text                           |
    | /qa-QA/product-4/rtl.html?firstDay=yes&contentCategory=reseller   | Global Default Reseller FD     |
    | /qa-QA/product-4/rtl.html?daysLeft=0&contentCategory=reseller     | Product 4 Reseller 0           |
    | /qa-QA/product-2/rtl.html?firstDay=yes&contentCategory=ppu-direct | Industry Default PPU Direct FD |
    | /qa-QA/product-2/rtl.html?daysLeft=15&contentCategory=ppu-direct  | Global Default PPU-Direct 30-2 |
    | /qa-QA/product-2/rtl.html?daysLeft=0&contentCategory=ppu-direct   | Product 2 PPU Direct 0         |


  Scenario Outline: Product does not inherit Content Category
    Given I am on IPM_Url1 "<access_url>"
    Then I am redirected to given "<text>"

    Examples:

    | access_url                                                        | text                    |
    | /qa-QA/product-4/rtl.html?firstDay=yes&contentCategory=ppu-direct | Product 4 PPU Direct FD |
    | /qa-QA/product-4/rtl.html?daysLeft=15&contentCategory=ppu-direct  | qa-QA/404.html          |
    | /qa-QA/product-2/rtl.html?daysLeft=1&contentCategory=reseller     | Product 2 Reseller 1    |
    | /qa-QA/product-2/rtl.html?daysLeft=0&contentCategory=reseller     | qa-QA/404.html          |


  Scenario Outline: Content Category is not configured in product or in central location
    Given I am on IPM_Url1 "<access_url>"
    Then I am redirected to given "qa-QA/404.html"

    Examples:

    | access_url                                                        |
    | /qa-QA/product-2/rtl.html?firstDay=yes&contentCategory=bla        |
    | /qa-QA/product-4/rtl.html?firstDay=yes&contentCategory=enthusiast |
    | /qa-QA/product-5/rtl.html?firstDay=yes&contentCategory=reseller   |


Scenario Outline: Standard Content Category (Inherited, Inherited but overriden, Not inherited)
    Given I am on IPM_Url1 "<access_url>"
    Then I am redirected to given "<text>"

    Examples:

    | access_url                                                      | text                             |
    | /qa-QA/product-1/trl.html?firstDay=yes&contentCategory=standard | qa-QA/global-default/trl/fd.html |
    | /qa-QA/product-4/trl.html?firstDay=yes&contentCategory=standard | qa-QA/product-4/trl/fd.html      |
    | /qa-QA/product-2/rtl.html?daysLeft=2&contentCategory=standard   | qa-QA/product-2/rtl/2.html       |

