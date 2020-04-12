@IPM
@PROD
@PT
@SLE2
@SMOKE
@REGRESSION

Feature: IPM: Installation Sanity Check

Scenario Outline: Should not access language page
  When I am on IPM_Sanity1_Url "<access_url>"
  Then given page is not found
    Examples:
    | access_url |
    | qa-QA?     |
    | qa-QA/product-4.html? |
    #| qa-QA/product-not-exist/rtl.html? |
    #| qa-QA/product-4/license-not-exist.html? |

Scenario Outline: Request has no ".html" in it
  When I am on IPM_Sanity3_Url "<access_url>"
  Then given page is not found
    Examples:
    | access_url |
    | qa-QA/product-4/rtl?daysLeft=1& |

Scenario Outline: Date Range not found
  Given I resize the browser to "<window_size>"
  When I am on IPM_Sanity3_Url "<access_url>"
  Then I am redirected to given "<result_url>"
    Examples:
    | window_size | access_url | result_url |
    | large       | qa-QA/product-4/rtl.html?daysLeft=111& | qa-QA/404.html |
    | small       | qa-QA/product-4/rtl.html?daysLeft=1&   | qa-QA/product-4/rtl/1.html |

Scenario Outline: Missing required query parameter "daysLeft"
  When I am on IPM_Sanity2_Url "<access_url>"
  Then I am redirected to given "<result_url>"
    Examples:
    | access_url | result_url |
    | qa-QA/product-4/rtl.html? | qa-QA/404.html |

Scenario Outline: URL should return 404 error
  When I am on IPM_Sanity_Url "<access_url>"
  Then given page is not found
    Examples:
    | access_url |
    | system/console |
    | system/sling/cqform/defaultlogin.html |
    | crx/de/index.jsp |
    | etc/packages.html |
    | content/geometrixx |