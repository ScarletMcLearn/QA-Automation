require 'capybara'
require 'capybara/cucumber'
require 'selenium-webdriver'
require 'site_prism'
 
class BuyContainer < SitePrism::Section
   element :monthly_option, :xpath, "//h3[contains(text(),'Monthly')]"
   element :quantity_checkbox, :xpath, "//input[@class='buy-container-qty-input']"
   element :add_to_cart,  :xpath, "//span[contains(text(),'Add to cart')]"
   element :invalid_PLC_alert_message, :xpath, "//*[starts-with(@class,'buy-container-error-container')]"
   element :product_name, :xpath, "//*[@data-automation-id='buy-container-product-logo-name']"
   element :product_logo, :xpath, "//*[@class='buy-container-product-logo']"
   element :summary_drawer_section, :xpath, "//*[starts-with(@class,'buy-container-summary-drawer')]"
   element :subscription_terms_section, :xpath, "//*[starts-with(@class,'buy-container-terms-container')]"
   element :support_container, :xpath, "//*[starts-with(@class,'buy-container-advanced-support-container')]"
   element :payment_options, :xpath, "//*[starts-with(@class,'buy-container-payment-methods')]"
   element :norton_logo, :xpath, "//*[@data-automation-id='norton seal container']"
   element :plc_selector, :xpath, "//div[@data-automation-id='buy-container-plc-radio-selector']/div"
   element :quantity_input, :xpath, "//div[contains(@class,'buy-container-summary-drawer-container')]//input[@class='buy-container-qty-input']"
   element :term_1_month, :xpath, "//*[@data-automation-id='buy-container-term-billing-plan-1-month']"
   element :term_1_year, :xpath, "//*[@data-automation-id='buy-container-term-billing-plan-1-year']"
   element :term_2_year, :xpath, "//*[@data-automation-id='buy-container-term-billing-plan-2-year']"
   element :term_3_year, :xpath, "//*[@data-automation-id='buy-container-term-billing-plan-3-year']"
   element :term_1_year_special_offer, :xpath, "//*[@data-automation-id='buy-container-term-billing-plan-1-year-special-offer']"
   element :plc_name, :xpath, "//span[@data-automation-id='buy-container-product-logo-name']"
   element :term_selected, :xpath, "//*[contains(@class,'buy-container-term-selected')]"
   element :legal_disclaimer, :xpath, "//*[@data-automation-id='buy-container-legal-text']"
   element :product_description, :xpath, "//*[@data-automation-id='buy-container-marketing-copy']"
   element :summary_drawer_price, :xpath, "//*[@data-automation-id='buy-container-summary-drawer-term-pricing']"
   element :summary_drawer_cta_button, :xpath, "//*[@data-automation-id='buy-container-call-to-action']"
   element :dr_cart_page_subscription, :xpath, '//*[contains(@class,"product-name ")]'
   element :dr_cart_page_qty, :xpath, '//input[contains(@class,"dr_qtyInput ")]'
   element :cart_page_product_price, :xpath, '//*[contains(@class,"prod-total ")]/span'
   element :cart_widget, :xpath, "//*[@id='cartLink']"
   element :cart_value, :xpath, "//*[@id='cartSummaryItemCount']"
   element :term_selector, :xpath, "//*[starts-with(@class,'buy-container-terms-switcher')]"
   element :term_price, :xpath, ".//*[@data-automation-id='buy-container-term-billing-plan-price']"
   elements :buy_container_quantity, '.buy-container-qty'
   element :payment_method_master_card, :xpath, "//*[@data-automation-id='buy-container-payment-methods-mastercard']"
   element :payment_method_visa, :xpath, "//*[@data-automation-id='buy-container-payment-methods-visa']"
   element :payment_method_ccavenue, :xpath, "//*[@data-automation-id='buy-container-payment-methods-ccavenue']"
   element :term_box_price_before_discount, :xpath, ".//*[contains(@class,'wd-strikethrough')]"
   element :term_box_price, :xpath, ".//*[@data-automation-id='buy-container-term-billing-plan-price']"
   element :summary_drawer_price_before_discount, :xpath, "//*[@data-automation-id='buy-container-summary-drawer-term-pricing-promo']"
   element :buy_container_promotion, :xpath, "div[@class='wd-mh-16 buy-container-term-promotion']"
   element :trade_in_promo_term_box, :xpath, "//*[contains(@data-automation-id,'special-offer')]"
   element :term_1_MONTH_strikethrough_price, :xpath, "//div[1]/div[@class='buy-container-term-info wd-pt-16 wd-pb-20 clearfix']/div[2]/h4"
   element :term_1_YEAR_strikethrough_price, :xpath, "//div[2]/div[@class='buy-container-term-info wd-pt-16 wd-pb-20 clearfix']/div[2]/h4"
   element :term_2_YEAR_strikethrough_price, :xpath, "//div[3]/div[@class='buy-container-term-info wd-pt-16 wd-pb-20 clearfix']/div[2]/h4"
   element :term_3_YEAR_strikethrough_price, :xpath, "//div[4]/div[@class='buy-container-term-info wd-pt-16 wd-pb-20 clearfix']/div[2]/h4"
   element :best_value_flag, :xpath, "//div[@class='best-value']/div"
   element :best_value_flag_price_type1, :xpath, "//div[@class='best-value']/div/../..//h4[contains(@class,' term')]"
   element :best_value_flag_price_type2, :xpath, "//div[@class='best-value']/div/../..//h3[contains(@class,' term')]"
   elements :monthly_price_type1, :xpath, "//div[contains(@class,'buy-container-term-info')]//h4[contains(@class,' term')]"
   elements :monthly_price_type2, :xpath, "//div[contains(@class,'buy-container-term-info')]//h3[contains(@class,' term')]"
   element :currency_toggle, :xpath, "//div[@class='currency-dropdown']"
   element :currency_option_ARS, :xpath, ".//*[@class='dropdown-item currency-dropdown-item' and contains(text(),'ARS')]"
   element :currency_option_CLP, :xpath, ".//*[@class='dropdown-item currency-dropdown-item' and contains(text(),'CLP')]"
   element :currency_option_COP, :xpath, ".//*[@class='dropdown-item currency-dropdown-item' and contains(text(),'COP')]"



end