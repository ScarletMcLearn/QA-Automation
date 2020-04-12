require_relative 'pageobjects/Pages/subscribe_page.rb'
require_relative 'pageobjects/Pages/free_trial_page.rb'
require_relative 'pageobjects/Pages/buy_page.rb'
require_relative 'pageobjects/Pages/edu_download_page.rb'
require_relative 'pageobjects/Pages/oxygen_landing_page.rb'
require_relative 'pageobjects/Pages/IPM_page.rb'
require_relative 'pageobjects/Pages/hobbyist_page.rb'
require_relative 'pageobjects/Pages/dr_cart_page.rb'
require_relative 'pageobjects/Pages/new_pc_page.rb'
class InitializePage


  def InitializePage.initialize
    $SubscribePage = SubscribePage.new
    $FreeTrialPage=FreeTrialPage.new
    $BuyPage=BuyPage.new
    $EDUDownloadPage=EDUDownloadPage.new
    $OxygenLandingPage=OxygenLandingPage.new
    $IPMPage=IPMPage.new
    $FusionHobbyistPage=HobbyistPage.new
    $DR_CartPage=DRCartPage.new
    $NewPCPage=NewProductCenterPage.new
  end

end
