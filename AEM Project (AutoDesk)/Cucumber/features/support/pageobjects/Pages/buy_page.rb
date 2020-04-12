require 'capybara'
require 'capybara/cucumber'
require 'selenium-webdriver'
require 'site_prism'
require_relative '../Components/buy_container.rb'
require_relative '../Components/affiliate_popup.rb'
require_relative '../Components/SN_tradein_popup.rb'
class BuyPage < SitePrism::Page
   #local env variable not working @@localurl=''

   def initialize(url)
     #Capybara.app_host = url
     @url = url
   end

   #default constructor
   def initialize
   end


   section :buyContainer, ::BuyContainer, 'div[id^="buy-container"]'
   section :affiliatePopup, ::AffiliatePopup, 'div[id^="affiliate-popup"]'
   section :tradeInPromotionPopup, ::SNTradeInPopup, '#guideContainer-rootPanel___guide-item-container'
   #section :tradeInPromotionPopup, ::TradeInPromotionPopup, '#guideContainer-rootPanel___guide-item-container'
   element :page_title, :xpath, ".//*[@data-automation-id='buy-container-marketing-copy']"
   element :trade_in_banner, :xpath, ".//*[@class='js-trigger-link']"
   element :trade_in_banner_icon, :xpath, ".//*[@class='js-trigger-link wd-no-underline']"
   element :trade_in_banner_icon_inactive, :xpath, "//*[@class='js-trigger-link wd-no-underline inactive']"
   element :trade_in_banner_headline_text, :xpath, "//h4[@class='snti-title']"
   element :trade_in_banner_description_text, :xpath, "//div[@class='snti-description']/p"
   element :trade_in_T_and_CLinkText, :xpath, "//*[@class='snti-description']//a"
   element :first_term, :xpath, "//div[contains(@class,'buy-container-term theme-default wd-mt-20 theme-term-price')][1]//h3[@class='wd-font-24 term']"
   element :second_term, :xpath, "//div[contains(@class,'buy-container-term theme-default wd-mt-20 theme-term-price')][2]//h3[@class='wd-font-24 term']"
   element :third_term, :xpath, "//div[contains(@class,'buy-container-term theme-default wd-mt-20 theme-term-price')][3]//h3[@class='wd-font-24 term']"


end

