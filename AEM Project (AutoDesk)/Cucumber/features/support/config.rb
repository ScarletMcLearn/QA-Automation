#config.rb
# for environment testing
require 'yaml'

# change = 'staging' to 'qa' to change environment
# at runtime, you would type: TEST_ENV=staging or TEST_ENV=qa

ENV['TEST_ENV'] ||= 'qa'

project_root = File.expand_path('../..', __FILE__)

#Sending URL through env variable, below code check this
#on command prompt if we send URL=<some_url> (eg:like TEST_ENV=qa) then it will directly take that url instead of going to .yml files

(ENV['URL'] == nil) ? $BRAND_URL = YAML.load_file(project_root + "/BRAND/support/brand_url.yml")[ENV['TEST_ENV']][:url] : $BRAND_URL = URI.parse(URI.encode(ENV['URL']))

    $BASE_URL = YAML.load_file(project_root + "/support/config/base_url.yml")[ENV['TEST_ENV']][:url]
    #$CN_BASE_URL = YAML.load_file(project_root + "/support/config/cn_base_url.yml")[ENV['TEST_ENV']][:url]
    $BASE_URL_SHORT = YAML.load_file(project_root + "/support/config/base_url_short.yml")[ENV['TEST_ENV']][:url]
    $BASE_URL_PROD = YAML.load_file(project_root + "/support/config/base_url_prod.yml")[ENV['TEST_ENV']][:url]
    $BASE_URL_PROD_SHORT = YAML.load_file(project_root + "/support/config/base_url_prod_short.yml")[ENV['TEST_ENV']][:url]
    $BASE_URL_ESTORE = YAML.load_file(project_root + "/support/config/base-url-estore.yml")[ENV['TEST_ENV']][:url]
    $QA_AUTOMATION_BASE_URL = YAML.load_file(project_root + "/support/config/base-automation-url.yml")[ENV['TEST_ENV']][:url]
    $OXYGEN_URL = YAML.load_file(project_root + "/support/config/oxygen.yml")[ENV['TEST_ENV']][:url]
    $IPM_REDIRECT_URL = YAML.load_file(project_root + "/support/config/ipm_redirect.yml")[ENV['TEST_ENV']][:url]
    $IPM_REDIRECT_DC_URL = YAML.load_file(project_root + "/support/config/dc_ipm_redirect.yml")[ENV['TEST_ENV']][:url]
    $IPM_URL = YAML.load_file(project_root + "/IPM/support/ipm.yml")[ENV['TEST_ENV']][:url]
    $LATINOAMERICA_URL = YAML.load_file(project_root + "/support/config/latinoamerica.yml")[ENV['TEST_ENV']][:url]
    $PDS_BASE_URL = YAML.load_file(project_root + "/support/config/pds.yml")[ENV['TEST_ENV']][:url]
    $PDS_BASE_AEM_URL = YAML.load_file(project_root + "/support/config/pds_aem.yml")[ENV['TEST_ENV']][:url]
    $PELICAN_BASE_URL = YAML.load_file(project_root + "/support/config/pelican.yml")[ENV['TEST_ENV']][:url]
    $PELICAN_CART_BASE_URL = YAML.load_file(project_root + "/support/config/pelican_cart.yml")[ENV['TEST_ENV']][:url]
    $CART_URL = YAML.load_file(project_root + "/support/config/pelican-cart-url.yml")[ENV['TEST_ENV']][:url]
    $CART_WIDGET_URL = YAML.load_file(project_root + "/support/config/pelican-cartwidget-url.yml")[ENV['TEST_ENV']][:url]
    $GUAC_URL = YAML.load_file(project_root + "/support/config/guac-cart.yml")[ENV['TEST_ENV']][:url]
    $GUAC_WIDGET_URL = YAML.load_file(project_root + "/support/config/guac-cartwidget.yml")[ENV['TEST_ENV']][:url]
    $PDA_BASE_URL = YAML.load_file(project_root + "/support/config/pda.yml")[ENV['TEST_ENV']][:url]
    $AU_URL = YAML.load_file(project_root + "/support/config/au.yml")[ENV['TEST_ENV']][:url]
    #$BRAND_URL = YAML.load_file(project_root + "/BRAND/support/brand_url.yml")[ENV['TEST_ENV']][:url]
    $DOTORG_URL = YAML.load_file(project_root + "/DOTORG/support/dotorg_url.yml")[ENV['TEST_ENV']][:url]
    # YML FOR SLE2
    $SLE2_1_URL = YAML.load_file(project_root + "/support/config/sle2_1_url.yml")[ENV['TEST_ENV']][:url]
    $SLE2_2_URL = YAML.load_file(project_root + "/support/config/sle2_2_url.yml")[ENV['TEST_ENV']][:url]
    #Rolling pipeline instance parameter
    $INSTANCE = ENV['INSTANCE']
    $AEM_USERNAME = ENV['AEM_USERNAME']
    $AEM_PASSWORD = ENV['AEM_PASSWORD']

# YML FOR XPATHS
$PATH = YAML.load_file(project_root + "/support/common/xpath/xpath.yml")
$SEO = YAML.load_file(project_root + "/support/common/xpath/seo.yml")
