from behave import given, when, then

from time import sleep


@given(u'Browser is opened')
def step_impl(context):
    context.driver()
    context.driver.implicitly_wait(2)

@given(u'nagivated to AIM inspect site // https://crm-qa.aiminspect.com/')
def step_impl(context):
    context.driver.get('https://crm-qa.aiminspect.com/')
    context.driver.implicitly_wait(200)
    # assert False

@given(u'AIM Inspect site is displayed')
def step_impl(context):
    # C105
    assert context.driver.title == 'AiM Assignment Manager'

@given(u'correct user name and password is entered')
def step_impl(context):
    assert False

@given(u'login form is submitted')
def step_impl(context):
    assert False

@given(u'logged in to AIM Inspect site')
def step_impl(context):
    assert False

@given(u'current page is AIM Inspect site')
def step_impl(context):
    assert False

@when(u'hover over Request tab')
def step_impl(context):
    assert False

@when(u'click the Add organization')
def step_impl(context):
    assert False

@then(u'Add Organization page is shown')
def step_impl(context):
    assert False

@given(u'current page is New Organization page')
def step_impl(context):
    assert False

@when(u'User click Customer Dropdown menu')
def step_impl(context):
    assert False

@when(u'select ALLY')
def step_impl(context):
    assert False

@when(u'click Organization Type Dropdown menu')
def step_impl(context):
    assert False

@when(u'selects Dealer')
def step_impl(context):
    assert False

@when(u'clicks Organization name field')
def step_impl(context):
    assert False

@when(u'enters Organization name')
def step_impl(context):
    assert False

@when(u'selects US from Billing Address dropdown menu')
def step_impl(context):
    assert False

@when(u'clicks Street 1 field')
def step_impl(context):
    assert False

@when(u'enters a valid Street')
def step_impl(context):
    assert False

@when(u'clicks City field')
def step_impl(context):
    assert False

@when(u'enters a valid City')
def step_impl(context):
    assert False

@when(u'clicks State dropdown menu')
def step_impl(context):
    assert False

@when(u'selects AL from state')
def step_impl(context):
    assert False

@when(u'clicks zip field')
def step_impl(context):
    assert False

@when(u'enters a valid zip')
def step_impl(context):
    assert False

@when(u'checks Default Inspection Location as same as billing address')
def step_impl(context):
    assert False

@when(u'click Organization Code dropdown menu')
def step_impl(context):
    assert False

@when(u'select Auction Code from dropdown menu')
def step_impl(context):
    assert False

@when(u'click Organization code field')
def step_impl(context):
    assert False

@when(u'enters valid Organization code')
def step_impl(context):
    assert False

@when(u'click submit')
def step_impl(context):
    assert False

@then(u'organization created notification message displayed')
def step_impl(context):
    assert False

@when(u'selects Auction')
def step_impl(context):
    assert False

@when(u'select Chase')
def step_impl(context):
    assert False

@when(u'selects AK from state')
def step_impl(context):
    assert False

@when(u'selects MX from Billing Address dropdown menu')
def step_impl(context):
    assert False

@when(u'selects AGU from state')
def step_impl(context):
    assert False

@when(u'selects BCN from state')
def step_impl(context):
    assert False

@when(u'selects CA from Billing Address dropdown menu')
def step_impl(context):
    assert False

@when(u'selects AB from state')
def step_impl(context):
    assert False

@when(u'selects BC from state')
def step_impl(context):
    assert False

@when(u'select VCI')
def step_impl(context):
    assert False

@when(u'select MANHEIM')
def step_impl(context):
    assert False

@when(u'select HYUNDAI')
def step_impl(context):
    assert False

@when(u'select NISSAN')
def step_impl(context):
    assert False

@then(u'required fields on form are marked red')
def step_impl(context):
    assert False

@then(u'11 error messages are displayed on form')
def step_impl(context):
    assert False

@then(u'10 error messages are displayed on form')
def step_impl(context):
    assert False

@then(u'9 error messages are displayed on form')
def step_impl(context):
    assert False

@then(u'8 error messages are displayed on form')
def step_impl(context):
    assert False

@when(u'selects a valid state from state dropdown menu')
def step_impl(context):
    assert False

@then(u'7 error messages are displayed on form')
def step_impl(context):
    assert False

@then(u'6 error messages are displayed on form')
def step_impl(context):
    assert False

@then(u'2 error messages are displayed on form')
def step_impl(context):
    assert False

@then(u'1 error messages are displayed on form')
def step_impl(context):
    assert False

@when(u'hover cursor over Request tab')
def step_impl(context):
    assert False

@when(u'dropdown Request menu is shown')
def step_impl(context):
    assert False

@when(u'clicks on Add request')
def step_impl(context):
    assert False

@then(u'inspection request page is shown')
def step_impl(context):
    assert False

@given(u'current page is Inspection Request page')
def step_impl(context):
    assert False

@when(u'click customer type')
def step_impl(context):
    assert False

@then(u'customer dropdown menu is shown')
def step_impl(context):
    assert False

@when(u'click Request Type')
def step_impl(context):
    assert False

@then(u'Request Type dropdown menu is shown')
def step_impl(context):
    assert False

@when(u'clicks customer type dropdown menu')
def step_impl(context):
    assert False

@when(u'selects a customer')
def step_impl(context):
    assert False

@when(u'clicks request type dropdown menu')
def step_impl(context):
    assert False

@when(u'selects a request type')
def step_impl(context):
    assert False

@then(u'Lesse Info section is shown')
def step_impl(context):
    assert False

@when(u'Lesse Info section is shown')
def step_impl(context):
    assert False

@when(u'clicks Account number field')
def step_impl(context):
    assert False

@then(u'Find button inactive and error message shown for no account number entered')
def step_impl(context):
    assert False

@given(u'account number does not exist')
def step_impl(context):
    assert False

@when(u'enters account number')
def step_impl(context):
    assert False

@when(u'clicks find button')
def step_impl(context):
    assert False

@then(u'No requests found error message is shown')
def step_impl(context):
    assert False

@when(u'No requests found error message is shown')
def step_impl(context):
    assert False

@then(u'Lesse info form is expanded')
def step_impl(context):
    assert False

@when(u'Lesse info form is expanded')
def step_impl(context):
    assert False

@then(u'12 incomplete error messages shown on same form')
def step_impl(context):
    assert False

@when(u'clicks first name field')
def step_impl(context):
    assert False

@when(u'enters a first name')
def step_impl(context):
    assert False

@then(u'7 incomplete error messages shown on same form')
def step_impl(context):
    assert False

@when(u'clicks last name field')
def step_impl(context):
    assert False

@when(u'enters a last name')
def step_impl(context):
    assert False

@then(u'6 incomplete error messages shown on same form')
def step_impl(context):
    assert False

@when(u'enters a Street 1')
def step_impl(context):
    assert False

@then(u'5 incomplete error messages shown on same form')
def step_impl(context):
    assert False

@when(u'enters zip')
def step_impl(context):
    assert False

@then(u'4 incomplete error messages shown on same form')
def step_impl(context):
    assert False

@when(u'clicks states dropdown menu')
def step_impl(context):
    assert False

@when(u'selects a state')
def step_impl(context):
    assert False

@then(u'3 incomplete error messages shown on same form')
def step_impl(context):
    assert False



@when(u'enters a city')
def step_impl(context):
    assert False

@then(u'2 incomplete error messages shown on same form')
def step_impl(context):
    assert False

@when(u'clicks State originally tested in dropdown menu')
def step_impl(context):
    assert False

@then(u'1 incomplete error messages shown on same form')
def step_impl(context):
    assert False

@given(u'VIN is valid')
def step_impl(context):
    assert False

@when(u'clicks VIN field')
def step_impl(context):
    assert False

@when(u'enters a VIN')
def step_impl(context):
    assert False

@then(u'0 incomplete error messages shown on same form and form submitted')
def step_impl(context):
    assert False

@given(u'account number exists')
def step_impl(context):
    assert False

@given(u'account has inspection requsted already')
def step_impl(context):
    assert False

@when(u'select TFS from customer dropdown menu')
def step_impl(context):
    assert False

@when(u'select Dealer from Request Type dropdown menu')
def step_impl(context):
    assert False

@when(u'enter account number')
def step_impl(context):
    assert False

@when(u'click find')
def step_impl(context):
    assert False

@then(u'redirected to Inspection Requested Detail page for that account')
def step_impl(context):
    assert False

@then(u'Inspection Request form is rendered')
def step_impl(context):
    assert False

@when(u'Request form is rendered')
def step_impl(context):
    assert False

@when(u'fill up all the form fields with required data')
def step_impl(context):
    assert False

@when(u'schedule appointment window is shown')
def step_impl(context):
    assert False

@when(u'fill up schedule appointment form')
def step_impl(context):
    assert False

@then(u'newly created inspection request detail page is shown')
def step_impl(context):
    assert False

@when(u'fill up all the mandatory form fields with required data')
def step_impl(context):
    assert False

@when(u'fill up mandatory fields in schedule appointment form')
def step_impl(context):
    assert False

@when(u'leave mandatory fields empty')
def step_impl(context):
    assert False

@then(u'form is not accepted and error message is shown')
def step_impl(context):
    assert False



@when(u'select CHRYSLER SANTANDER from customer dropdown menu')
def step_impl(context):
    assert False



@when(u'select HYUNDAI from customer dropdown menu')
def step_impl(context):
    assert False

@when(u'select HOME from Request Type dropdown menu')
def step_impl(context):
    assert False

@when(u'select NISSAN from customer dropdown menu')
def step_impl(context):
    assert False

@when(u'select MARSHALLING YARD from Request Type dropdown menu')
def step_impl(context):
    assert False

@then(u'newly created inspection request notification message is shown')
def step_impl(context):
    assert False

@given(u'organization named exists')
def step_impl(context):
    assert False

@when(u'select Manheim from customer dropdown menu')
def step_impl(context):
    assert False

@when(u'select Long Term Order from Request Type dropdown menu')
def step_impl(context):
    assert False

@when(u'click Added by Dropdown menu')
def step_impl(context):
    assert False

@when(u'select Organization Name from menu')
def step_impl(context):
    assert False

@when(u'input Organization Name in text box')
def step_impl(context):
    assert False

@when(u'clicks find')
def step_impl(context):
    assert False

@when(u'uncheck Use Organization Default Location')
def step_impl(context):
    assert False

@when(u'enter valid Address')
def step_impl(context):
    assert False

@when(u'click Qauntity text box')
def step_impl(context):
    assert False

@when(u'enter valid Qauntity')
def step_impl(context):
    assert False

@when(u'select Yes I can provide more details about vehicle')
def step_impl(context):
    assert False

@when(u'enter details about vehicles')
def step_impl(context):
    assert False

@then(u'form successfully submitted')
def step_impl(context):
    assert False

@given(u'organization named does not exist')
def step_impl(context):
    assert False

@then(u'error message is shown')
def step_impl(context):
    assert False

@given(u'Auction Acces Number does not exist')
def step_impl(context):
    assert False

@when(u'select Auction Acces Number from menu')
def step_impl(context):
    assert False

@when(u'input Auction Acces Number in text box')
def step_impl(context):
    assert False

@when(u'select Third Party Inspection from Request Type dropdown menu')
def step_impl(context):
    assert False

@when(u'select Post Sale Inspection from Request Type dropdown menu')
def step_impl(context):
    assert False

@when(u'select Mobile Sale  from Request Type dropdown menu')
def step_impl(context):
    assert False

@when(u'select NextGear from Request Type dropdown menu')
def step_impl(context):
    assert False

@when(u'select No, I only have the number.')
def step_impl(context):
    assert False

@given(u'current URL is AIM Inspect site home page')
def step_impl(context):
    assert False

@when(u'user hovers cursor over Request tab')
def step_impl(context):
    assert False

@when(u'click Search Organizations')
def step_impl(context):
    assert False

@when(u'leaves Search form empty')
def step_impl(context):
    assert False

@when(u'clicks search button')
def step_impl(context):
    assert False

@then(u'all organization search results will be displayed')
def step_impl(context):
    assert False

@when(u'unchecks Active Records Only field')
def step_impl(context):
    assert False

@then(u'all organization search results with no inactive records will be displayed')
def step_impl(context):
    assert False

@when(u'clicks Customer Dropdown menu')
def step_impl(context):
    assert False

@then(u'different Customers are shown in options')
def step_impl(context):
    assert False

@when(u'selects CHASE from Dropdown menu')
def step_impl(context):
    assert False

@then(u'all organization search results with CHASE will be displayed')
def step_impl(context):
    assert False

@when(u'selects US BANK from Dropdown menu')
def step_impl(context):
    assert False

@then(u'all organization search results with US BANK will be displayed')
def step_impl(context):
    assert False

@when(u'selects ALLY from Dropdown menu')
def step_impl(context):
    assert False

@then(u'all organization search results with ALLY will be displayed')
def step_impl(context):
    assert False

@when(u'clicks Code Type Dropdown menu')
def step_impl(context):
    assert False

@when(u'selects Auction Code')
def step_impl(context):
    assert False

@then(u'all organization search results with Auction Code ALLY will be displayed')
def step_impl(context):
    assert False

@when(u'selects TFS from Dropdown menu')
def step_impl(context):
    assert False

@then(u'all organization search results with TFS will be displayed')
def step_impl(context):
    assert False

@when(u'selects VCI from Dropdown menu')
def step_impl(context):
    assert False

@then(u'all organization search results with VCI will be displayed')
def step_impl(context):
    assert False

@when(u'clicks the Code Type Dropdown menu')
def step_impl(context):
    assert False

@when(u'selects VCI Dealer Code')
def step_impl(context):
    assert False

@then(u'all organization search results with VCI and VCI Dealer Code will be displayed')
def step_impl(context):
    assert False

@when(u'selects CHRYSLER STYDER from Dropdown menu')
def step_impl(context):
    assert False

@then(u'all organization search results with CHRYSLER STYDER will be displayed')
def step_impl(context):
    assert False

@when(u'selects MANHEIM from Dropdown menu')
def step_impl(context):
    assert False

@then(u'all organization search results with MANHEIM will be displayed')
def step_impl(context):
    assert False

@when(u'selects Auction Access Number')
def step_impl(context):
    assert False

@then(u'all organization search results with MANHEIM and Auction Access Number will be displayed')
def step_impl(context):
    assert False

@when(u'selects HYUNDAI from Dropdown menu')
def step_impl(context):
    assert False

@then(u'all organization search results with HYUNDAI will be displayed')
def step_impl(context):
    assert False

@then(u'all organization search results with Auction Code HYUNDAI will be displayed')
def step_impl(context):
    assert False

@when(u'selects NISSAN from Dropdown menu')
def step_impl(context):
    assert False

@then(u'all organization search results with NISSAN will be displayed')
def step_impl(context):
    assert False

@when(u'selects Dealer Code')
def step_impl(context):
    assert False

@then(u'all organization search results with NISSAN and Dealer Code will be displayed')
def step_impl(context):
    assert False

@when(u'selects NNA Dealer Code')
def step_impl(context):
    assert False

@then(u'all organization search results with NISSAN and NNA Dealer Code will be displayed')
def step_impl(context):
    assert False

@when(u'clicks Country Dropdown menu')
def step_impl(context):
    assert False

@then(u'different Countries are shown in options')
def step_impl(context):
    assert False

@when(u'selects Mexico from the options')
def step_impl(context):
    assert False

@when(u'clicks search')
def step_impl(context):
    assert False

@then(u'Mexico results are shown')
def step_impl(context):
    assert False

@when(u'selects Canada from the options')
def step_impl(context):
    assert False

@then(u'Canada results are shown')
def step_impl(context):
    assert False

@when(u'selects US from the options')
def step_impl(context):
    assert False



@then(u'US States are shown in dropdown menu')
def step_impl(context):
    assert False

@then(u'Canada States are shown in dropdown menu')
def step_impl(context):
    assert False

@when(u'selects Alberta from dropdown menu')
def step_impl(context):
    assert False

@then(u'Alberta results are shown')
def step_impl(context):
    assert False

@when(u'selects British Columbia from dropdown menu')
def step_impl(context):
    assert False

@then(u'British Columbia results are shown')
def step_impl(context):
    assert False

@then(u'US results are shown')
def step_impl(context):
    assert False

@then(u'Mexico States are shown in dropdown menu')
def step_impl(context):
    assert False

@when(u'selects AGU from dropdown menu')
def step_impl(context):
    assert False

@then(u'AGU results are shown')
def step_impl(context):
    assert False

@when(u'selects BCN from dropdown menu')
def step_impl(context):
    assert False

@then(u'BCN results are shown')
def step_impl(context):
    assert False

@when(u'selects AL from dropdown menu')
def step_impl(context):
    assert False

@then(u'AL results are shown')
def step_impl(context):
    assert False

@when(u'selects AK from dropdown menu')
def step_impl(context):
    assert False

@then(u'AK results are shown')
def step_impl(context):
    assert False

@when(u'clicks Organization type Dropdown menu')
def step_impl(context):
    assert False

@when(u'selects Dealer from the options')
def step_impl(context):
    assert False

@then(u'Dealer results are shown')
def step_impl(context):
    assert False

@when(u'selects Auction from the options')
def step_impl(context):
    assert False

@then(u'Auction results are shown')
def step_impl(context):
    assert False

@then(u'different Organization types are shown')
def step_impl(context):
    assert False



@when(u'selects a customer from dropdown menu')
def step_impl(context):
    assert False



@then(u'different Code types are shown')
def step_impl(context):
    assert False

@given(u'Birmingham result exists')
def step_impl(context):
    assert False

@when(u'clicks City text field')
def step_impl(context):
    assert False

@when(u'fills text field with Birmingham')
def step_impl(context):
    assert False

@then(u'Birmingham results are shown')
def step_impl(context):
    assert False

@given(u'Birmingham result do not exist')
def step_impl(context):
    assert False

@then(u'No Results found are shown')
def step_impl(context):
    assert False

@given(u'Cassat Ave result do not exist')
def step_impl(context):
    assert False

@when(u'clicks Address text field')
def step_impl(context):
    assert False

@when(u'fills text field with Cassat Ave')
def step_impl(context):
    assert False

@given(u'Cassat Ave result do exist')
def step_impl(context):
    assert False

@then(u'Cassat Ave are shown in results')
def step_impl(context):
    assert False

@given(u'organization search form is completed')
def step_impl(context):
    assert False

@given(u'user clicks reset')
def step_impl(context):
    assert False

@then(u'organization search form is cleared')
def step_impl(context):
    assert False

@given(u'ZIP valid')
def step_impl(context):
    assert False

@given(u'Organizaiton with ZIP exists')
def step_impl(context):
    assert False

@when(u'user click Request')
def step_impl(context):
    assert False

@when(u'enters ZIP in ZIP field')
def step_impl(context):
    assert False



@then(u'results shown including inputted ZIP')
def step_impl(context):
    assert False

@given(u'ZIP invalid')
def step_impl(context):
    assert False

@then(u'no results shown')
def step_impl(context):
    assert False

@given(u'Organizaiton with ZIP does not exists')
def step_impl(context):
    assert False

@when(u'enters Organization Name in Organization Name field')
def step_impl(context):
    assert False

@then(u'results show Organizations with given Organization Name')
def step_impl(context):
    assert False

@given(u'Organizaiton with Organization Code exists')
def step_impl(context):
    assert False

@when(u'enters Organization Code in Organization Code field')
def step_impl(context):
    assert False

@then(u'results shown including inputted Organization Code')
def step_impl(context):
    assert False

@given(u'Organization Code invalid')
def step_impl(context):
    assert False

@given(u'Organization Code valid')
def step_impl(context):
    assert False

@given(u'Organizaiton with Organization Code does not exists')
def step_impl(context):
    assert False

@given(u'organization exists')
def step_impl(context):
    assert False

@when(u'user clicks Request tab')
def step_impl(context):
    assert False

@when(u'clicks search organization')
def step_impl(context):
    assert False

@when(u'organization search page is shown')
def step_impl(context):
    assert False

@when(u'organization search results are shown')
def step_impl(context):
    assert False

@when(u'clicks on a result')
def step_impl(context):
    assert False

@then(u'organization detail page is shown')
def step_impl(context):
    assert False



  




@then(u'Lessee selfschedule site is displayed')
def step_impl(context):
    assert False

@then(u'Home page has 3 sections: Header, Body and Footer')
def step_impl(context):
    assert False






@given(u'clicking on the link goes to //http://homepage.aiminspections.com/about-us/')
def step_impl(context):
    assert False

@given(u'I am on LSS Home page Body section')
def step_impl(context):
    assert False

@given(u'Body section has the followings:Title, Paragraph, Button and Link')
def step_impl(context):
    assert False

@given(u'I am on LSS Home page Footer section')
def step_impl(context):
    assert False

@given(u'Footer section contains 3 links and Text')
def step_impl(context):
    assert False

@given(u'clicking on "Privacy Policy" link navigates to: "https://selfschedule-qa.aiminspect.com/privacy"')
def step_impl(context):
    assert False

@given(u'clicking on "Terms of Service" link navigates to: "https://selfschedule-qa.aiminspect.com/terms"')
def step_impl(context):
    assert False

@given(u'clicking on "Contact Us" link navigates to: "https://selfschedule-qa.aiminspect.com/contact-us"')
def step_impl(context):
    assert False

@given(u'Footer Text: "© 2019 Alliance Inspection Management"')
def step_impl(context):
    assert False



@given(u'clicked on \'Schedule Appointment\' button  | And login link is clicked')
def step_impl(context):
    assert False

@then(u'LSS Log in site is displayed             | Then LSS Login page displays')
def step_impl(context):
    assert False

@given(u'I am on Login page')
def step_impl(context):
    assert False

@given(u'I see Two text fields: VIN and Account number')
def step_impl(context):
    assert False

@given(u'a button: "Get started"')
def step_impl(context):
    assert False

@given(u'a link: "Need help?"')
def step_impl(context):
    assert False

@given(u'current page is LSS Log in')
def step_impl(context):
    assert False

@given(u'no VIN is entered')
def step_impl(context):
    assert False

@given(u'no Account number is entered')
def step_impl(context):
    assert False

@given(u'Get Started is clicked')
def step_impl(context):
    assert False

@then(u'error-message displays "Enter a Valid VIN"')
def step_impl(context):
    assert False

@then(u'"Enter a valid account number"')
def step_impl(context):
    assert False

@given(u'VIN is entered')
def step_impl(context):
    assert False

@given(u'Get Started button is clicked')
def step_impl(context):
    assert False

@then(u'error-message displays "Enter a valid account number"')
def step_impl(context):
    assert False





@given(u'current page is LSS Login')
def step_impl(context):
    assert False

@given(u'entered an invalid vin')
def step_impl(context):
    assert False

@given(u'entered an invalid account')
def step_impl(context):
    assert False

@then(u'error-message displayed "We were unable to match the VIN and account number you entered. Please check your entries and try again."')
def step_impl(context):
    assert False

@given(u'entered a valid vin')
def step_impl(context):
    assert False



@given(u'entered a valid account')
def step_impl(context):
    assert False

@then(u'Account Info page dispalys')
def step_impl(context):
    assert False

@given(u'User logged in')
def step_impl(context):
    assert False

@given(u'the inspection is already completed')
def step_impl(context):
    assert False

@then(u'page loads')
def step_impl(context):
    assert False

@then(u'page title display: Hello, and Lessee\'s 1st Name')
def step_impl(context):
    assert False

@then(u'header-text display: Overview')
def step_impl(context):
    assert False

@then(u'main-photo displays')
def step_impl(context):
    assert False

@then(u'Vehicle\'s Year / Make / Model displays')
def step_impl(context):
    assert False

@then(u'VIN Displays')
def step_impl(context):
    assert False

@then(u'Inspection Date displays')
def step_impl(context):
    assert False

@then(u'Status: "Completed" displays')
def step_impl(context):
    assert False

@then(u'Button: "View CR" displays')
def step_impl(context):
    assert False

@then(u'nav-tabs: "STANDARD PHOTOS" selected by default displays')
def step_impl(context):
    assert False

@then(u'all the photos taken by the inspector dispalys')
def step_impl(context):
    assert False

@then(u'nav-tabs: "DAMAGE PHOTOS" displays')
def step_impl(context):
    assert False

@then(u'User can view the PDF file')
def step_impl(context):
    assert False

@given(u'the the main-photo or the photos in Standard and damage photos are clickable')
def step_impl(context):
    assert False

@given(u'main-photo/vehicle-photo is clicked a Overlay Modal Portal displays')
def step_impl(context):
    assert False

@given(u'Overlay Modal Portal image title dispalys')
def step_impl(context):
    assert False

@given(u'Image displays')
def step_impl(context):
    assert False

@given(u'Zoom in, Zoom out and Close button displays')
def step_impl(context):
    assert False

@given(u'"Zoom in" and "Close" button are active on initial load')
def step_impl(context):
    assert False

@when(u'Zoom in button is clicked it Zooms the Photo * 1x')
def step_impl(context):
    assert False

@when(u'Zoom out button gets active')
def step_impl(context):
    assert False

@when(u'Zoom in can be 3x times')
def step_impl(context):
    assert False

@when(u'Close button is clicked the "Overlay Modal Portal" closes')
def step_impl(context):
    assert False

@given(u'there is no appointment scheduled')
def step_impl(context):
    assert False

@then(u'User can schedule an appointment')
def step_impl(context):
    assert False

@given(u'current page is Account info page')
def step_impl(context):
    assert False

@given(u'\'something is wrong\' button is clicked')
def step_impl(context):
    assert False

@then(u'get-assistance page is displayed')
def step_impl(context):
    assert False

@given(u'entered correct information')
def step_impl(context):
    assert False

@given(u'confirm button is clicked')
def step_impl(context):
    assert False

@then(u'Contact info page is displayed')
def step_impl(context):
    assert False

@given(u'user is logged in to LSS')
def step_impl(context):
    assert False

@given(u'user is on Contact Info page')
def step_impl(context):
    assert False

@given(u'the \'continue\' button is disabled')
def step_impl(context):
    assert False

@when(u'phone number "1234567890" is entered')
def step_impl(context):
    assert False

@when(u'"(mobile/work/home/other)" is selected as phone type')
def step_impl(context):
    assert False

@when(u'email entered is "r@p.com"')
def step_impl(context):
    assert False

@when(u'continue button is enabled')
def step_impl(context):
    assert False

@when(u'continue button is clicked')
def step_impl(context):
    assert False

@then(u'inspection location page is displayed')
def step_impl(context):
    assert False

@when(u'phone number entered is \'5867765566\'')
def step_impl(context):
    assert False

@when(u'phone type \'work\' is selected')
def step_impl(context):
    assert False

@when(u'email is left empty')
def step_impl(context):
    assert False

@then(u'continue button is disabled')
def step_impl(context):
    assert False

@when(u'focus phone field')
def step_impl(context):
    assert False

@when(u'click away from the phone field')
def step_impl(context):
    assert False

@then(u'error message 1 is displayed')
def step_impl(context):
    assert False

@when(u'email field is kept empty')
def step_impl(context):
    assert False

@then(u'error message 2 is displayed')
def step_impl(context):
    assert False

@when(u'back button is clicked')
def step_impl(context):
    assert False

@then(u'Account Info page is displayed')
def step_impl(context):
    assert False

@given(u'user is on Inspection location page')
def step_impl(context):
    assert False

@given(u'user is logged in to the LSS site')
def step_impl(context):
    assert False

@given(u'continue button is disabled')
def step_impl(context):
    assert False

@when(u'select location type "Home".')
def step_impl(context):
    assert False

@when(u'select presence "I will be there".')
def step_impl(context):
    assert False

@when(u'enter address "34405 12 Mile RD, Warren, MI 48331"')
def step_impl(context):
    assert False

@then(u'continue button is enabled.')
def step_impl(context):
    assert False

@then(u'Schedule Appointment page is displayed')
def step_impl(context):
    assert False

@given(u'select location type "Home"')
def step_impl(context):
    assert False

@given(u'select presence "I will be there"')
def step_impl(context):
    assert False

@given(u'enter no address')
def step_impl(context):
    assert False

@given(u'location type filled')
def step_impl(context):
    assert False

@given(u'address filled')
def step_impl(context):
    assert False

@when(u'select presence "I will not be there"')
def step_impl(context):
    assert False

@when(u'enter first name "Tom".')
def step_impl(context):
    assert False

@when(u'enter last name "Cruz".')
def step_impl(context):
    assert False

@when(u'enter phone number "2487765433".')
def step_impl(context):
    assert False

@when(u'select phone type "Mobile".')
def step_impl(context):
    assert False

@when(u'enter email "Cruz@mail.com".')
def step_impl(context):
    assert False

@when(u'select preferred contact method "Email".')
def step_impl(context):
    assert False

@when(u'continue button is enabled.')
def step_impl(context):
    assert False

@when(u'I click on continue button.')
def step_impl(context):
    assert False



@given(u'user is on Appointment Schedule page')
def step_impl(context):
    assert False

@given(u'appointment dates are available')
def step_impl(context):
    assert False

@when(u'select date')
def step_impl(context):
    assert False

@when(u'select time slot')
def step_impl(context):
    assert False

@when(u'click continue button')
def step_impl(context):
    assert False

@then(u'Review Appointment page is displayed')
def step_impl(context):
    assert False

@given(u'user is on Review Appointment page')
def step_impl(context):
    assert False

@given(u'all information are correct')
def step_impl(context):
    assert False

@when(u'click on \'Confirm appointment\' button')
def step_impl(context):
    assert False

@then(u'\'confirmation\' page is displayed')
def step_impl(context):
    assert False

@given(u'scheduled an appointment through LSS')
def step_impl(context):
    assert False

@given(u'the appointment is tied to a request and request is scheduled in CRM')
def step_impl(context):
    assert False

@when(u'logs in to https://crm-qa.aiminspect.com')
def step_impl(context):
    assert False

@when(u'uses \'CSR/DISPATCH\' as the user')
def step_impl(context):
    assert False

@when(u'the password is \'crmisnice\'')
def step_impl(context):
    assert False

@when(u'search for the request using the confirmation # displayed in LSS')
def step_impl(context):
    assert False

@when(u'the request is displayed')
def step_impl(context):
    assert False

@when(u'view the request')
def step_impl(context):
    assert False

@then(u'will see the request status as on \'H\'old -awaiting dispatch')
def step_impl(context):
    assert False

@then(u'Appointment status shows as Open')
def step_impl(context):
    assert False



@when(u'enter location type as \'home\'')
def step_impl(context):
    assert False

@when(u'enter Street: \'1\', City: \'1\', State: \'Alabama\', Zip: \'11111\'')
def step_impl(context):
    assert False

@when(u'click on continue button')
def step_impl(context):
    assert False

@then(u'\'schedule\' page\' is displayed')
def step_impl(context):
    assert False

@given(u'user is on Review page')
def step_impl(context):
    assert False

@given(u'there is no internet connection')
def step_impl(context):
    assert False

@when(u'click on confirm appointment button')
def step_impl(context):
    assert False

@then(u'\'Server Down page\' is displayed')
def step_impl(context):
    assert False

@given(u'user is on LSS log in page')
def step_impl(context):
    assert False

@given(u'uses vin and account number that is associated with a request that already has been')
def step_impl(context):
    assert False

@when(u'vin field is inputted with \'1N4AA5AP3DC805530\'')
def step_impl(context):
    assert False

@when(u'account field is inputted with \'346568967967\'')
def step_impl(context):
    assert False

@when(u'clicks on \'Get started\' button.')
def step_impl(context):
    assert False

@then(u'\'Existing appointment\' page is displayed')
def step_impl(context):
    assert False

@given(u'user is logged on to LSS site.')
def step_impl(context):
    assert False

@given(u'enters invalid address in \'inspection location\' page.')
def step_impl(context):
    assert False

@given(u'is on on \'Review request\' page.')
def step_impl(context):
    assert False

@when(u'click on \'send request\'')
def step_impl(context):
    assert False

@then(u'confirmation message "Appointment Requested" displayed')
def step_impl(context):
    assert False










@given(u'I am on LSS Home page Header section')
def step_impl(context):
    assert False

@given(u'I see site Logo')
def step_impl(context):
    assert False

@given(u'I see the link "About AiM"')
def step_impl(context):
    assert False
















@given(u'current page is Home Page     //https://selfschedule-qa.aiminspect.com/log-in')
def step_impl(context):
    assert False





































@given(u'navigated to AIM Inspect Site   //https://qa.aiminspect.com/')
def step_impl(context):
    context.browser.get('https://qa.aiminspect.com/')
    context.browser.implicitly_wait(200)
    # assert False

@given(u'Account number is entered')
def step_impl(context):
    assert False