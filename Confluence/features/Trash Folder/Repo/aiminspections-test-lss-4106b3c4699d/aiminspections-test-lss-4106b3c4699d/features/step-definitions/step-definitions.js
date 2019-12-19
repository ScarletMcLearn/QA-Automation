module.exports = function () {
	this.Before(function (scenario) {
		this.actionwords = Object.create(require('./actionwords.js').ActionWords)
	})

	this.After(function (scenario) {
		this.actionwords = null
	})

	this.Given(/^I am on the log in screen$/, function (callback) {
		this.actionwords.iAmOnTheLogInScreen()
		callback()
	})

	this.Then(/^I should be able to log in to LSS site$/, function (callback) {
		this.actionwords.iShouldBeAbleToLogInToLssSite()
		callback()
	})

	this.Then(/^I should see the account info page$/, function (callback) {
		this.actionwords.iShouldSeeTheAccountInfoPage()
		callback()
	})

	this.When(/^I submit an incorrect vin and correct account number$/, function (callback) {
		this.actionwords.iSubmitAnIncorrectVinAndCorrectAccountNumber()
		callback()
	})

	this.Then(/^I should not be able to log in to LSS site$/, function (callback) {
		this.actionwords.iShouldNotBeAbleToLogInToLssSite()
		callback()
	})

	this.When(/^I submit a correct vin and incorrect account number$/, function (callback) {
		this.actionwords.iSubmitACorrectVinAndIncorrectAccountNumber()
		callback()
	})

	this.When(/^I submit my account number and VIN$/, function (callback) {
		this.actionwords.iSubmitMyAccountNumberAndVin()
		callback()
	})

	this.Given(/^I am on the LSS site$/, function (callback) {
		this.actionwords.iAmOnTheLssSite()
		callback()
	})

	this.When(/^I submit a invalid vin and invalid account number$/, function (callback) {
		this.actionwords.iSubmitAInvalidVinAndInvalidAccountNumber()
		callback()
	})

	this.Then(/^I am on the account info page$/, function (callback) {
		this.actionwords.iAmOnTheAccountInfoPage()
		callback()
	})

	this.Then(/^I can see error message$/, function (callback) {
		this.actionwords.iCanSeeErrorMessage()
		callback()
	})

    this.Given(/^I am logged in$/, function (callback) {
        this.actionwords.iAmLoggedIn()
        callback()
    })

    this.Then(/^my profile info is correct$/, function (callback) {
        this.actionwords.myProfileInfoIsCorrect()
        callback()
    })

    this.Then(/^my vehicle info is correct$/, function (callback) {
        this.actionwords.myVehicleInfoIsCorrect()
        callback()
    })

    this.Then(/^my profile info is correct\t$/, function (callback) {
        this.actionwords.myProfileInfoIsCorrectt()
        callback()
    })

    this.Then(/^my vehicle info is incorrect$/, function (callback) {
        this.actionwords.myVehicleInfoIsIncorrect()
        callback()
    })

    this.Then(/^my profile info is incorrect\t$/, function (callback) {
        this.actionwords.myProfileInfoIsIncorrectt()
        callback()
    })

    this.Then(/^I will be taken to the contact page$/, function (callback) {
        this.actionwords.iWillBeTakenToTheContactPage()
        callback()
    })

    this.When(/^I click on the 'Something is Wrong' button$/, function (callback) {
        this.actionwords.iClickOnThesomethingIsWrongButton()
        callback()
    })

    this.Then(/^I will be taken to the get assistance page$/, function (callback) {
        this.actionwords.iWillBeTakenToTheGetAssistancePage()
        callback()
    })

    this.Given(/^I am on a "(.*)" device$/, function (device,callback) {
        this.actionwords.iAmOnADevice(device)
        callback()
    })

    this.Given(/^I am on the homepage$/, function (callback) {
        this.actionwords.iAmOnTheHomepage()
        callback()
    })

    this.Then(/^I can see the Aim logo$/, function (callback) {
        this.actionwords.iCanSeeTheAimLogo()
        callback()
    })

    this.Then(/^I can see the schedule button$/, function (callback) {
        this.actionwords.iCanSeeTheScheduleButton()
        callback()
    })

    this.When(/^I click the schedule button$/, function (callback) {
        this.actionwords.iClickTheScheduleButton()
        callback()
    })

    this.Then(/^I am taken to the login page$/, function (callback) {
        this.actionwords.iAmTakenToTheLoginPage()
        callback()
    })

    this.When(/^I submit my vin and my account number$/, function (callback) {
        this.actionwords.iSubmitMyVinAndMyAccountNumber()
        callback()
    })

    this.Then(/^I am taken to the account info page$/, function (callback) {
        this.actionwords.iAmTakenToTheAccountInfoPage()
        callback()
    })

    this.When(/^I submit an incorrect vin and my account number$/, function (callback) {
        this.actionwords.iSubmitAnIncorrectVinAndMyAccountNumber()
        callback()
    })

    this.Then(/^I see an error message$/, function (callback) {
        this.actionwords.iSeeAnErrorMessage()
        callback()
    })

    this.When(/^I submit my vin and an incorrect account number$/, function (callback) {
        this.actionwords.iSubmitMyVinAndAnIncorrectAccountNumber()
        callback()
    })

    this.When(/^I submit an invalid vin and an invalid account number$/, function (callback) {
        this.actionwords.iSubmitAnInvalidVinAndAnInvalidAccountNumber()
        callback()
    })

    this.When(/^I submit the login form$/, function (callback) {
        this.actionwords.iSubmitTheLoginForm()
        callback()
    })

    this.Then(/^I can see the error messages$/, function (callback) {
        this.actionwords.iCanSeeTheErrorMessages()
        callback()
    })

    this.When(/^I click on the need help link$/, function (callback) {
        this.actionwords.iClickOnTheNeedHelpLink()
        callback()
    })

    this.Then(/^I am taken to get assistance page$/, function (callback) {
        this.actionwords.iAmTakenToGetAssistancePage()
        callback()
    })

    this.Then(/^the progress status bar is highlighting "(.*)"$/, function (param_a,callback) {
        this.actionwords.theProgressStatusBarIsHighlighting(param_a)
        callback()
    })

    this.Then(/^I am taken to the get assistance page$/, function (callback) {
        this.actionwords.iAmTakenToTheGetAssistancePage()
        callback()
    })

    this.Given(/^I am on the contact info page$/, function (callback) {
        this.actionwords.iAmOnTheContactInfoPage()
        callback()
    })

    this.When(/^I enter my phone number "(.*)"$/, function (param_a,callback) {
        this.actionwords.iEnterMyPhoneNumber(param_a)
        callback()
    })

    this.When(/^I select my phone type "(.*)"$/, function (param_a,callback) {
        this.actionwords.iSelectMyPhoneType(param_a)
        callback()
    })

    this.When(/^I enter my email "(.*)"$/, function (param_a,callback) {
        this.actionwords.iEnterMyEmail(param_a)
        callback()
    })

    this.When(/^I select my preferred contact method "(.*)"$/, function (param_a,callback) {
        this.actionwords.iSelectMyPreferredContactMethod(param_a)
        callback()
    })

    this.Then(/^the continue button is enabled$/, function (callback) {
        this.actionwords.theContinueButtonIsEnabled()
        callback()
    })

    this.Given(/^the contact info required fields are populated$/, function (callback) {
        this.actionwords.theContactInfoRequiredFieldsArePopulated()
        callback()
    })

    this.When(/^I click the continue button$/, function (callback) {
        this.actionwords.iClickTheContinueButton()
        callback()
    })

    this.Then(/^I am taken to the inspection location page$/, function (callback) {
        this.actionwords.iAmTakenToTheInspectionLocationPage()
        callback()
    })

    this.When(/^I focus and blur the phone field$/, function (callback) {
        this.actionwords.iFocusAndBlurThePhoneField()
        callback()
    })

    this.When(/^I focus and blur the email field$/, function (callback) {
        this.actionwords.iFocusAndBlurTheEmailField()
        callback()
    })

    this.When(/^I click on back button$/, function (callback) {
        this.actionwords.iClickOnBackButton()
        callback()
    })

    this.Then(/^I am taken to account info page$/, function (callback) {
        this.actionwords.iAmTakenToAccountInfoPage()
        callback()
    })

    this.Given(/^I am logged in to LSS site $/, function (callback) {
        this.actionwords.iAmLoggedInToLssSite()
        callback()
    })

    this.Given(/^I am on inspection location page$/, function (callback) {
        this.actionwords.iAmOnInspectionLocationPage()
        callback()
    })

    this.Given(/^the location required fields are populated$/, function (callback) {
        this.actionwords.theLocationRequiredFieldsArePopulated()
        callback()
    })

    this.Given(/^the on-site contact info required fields are populated$/, function (callback) {
        this.actionwords.theOnSiteContactInfoRequiredFieldsArePopulated()
        callback()
    })

    this.Then(/^I am taken to the schedule page$/, function (callback) {
        this.actionwords.iAmTakenToTheSchedulePage()
        callback()
    })

    this.Then(/^I can see an error message$/, function (callback) {
        this.actionwords.iCanSeeAnErrorMessage()
        callback()
    })

    this.Given(/^I am logged in $/, function (callback) {
        this.actionwords.iAmLoggedIn()
        callback()
    })

    this.Then(/^the continue button is disabled$/, function (callback) {
        this.actionwords.theContinueButtonIsDisabled()
        callback()
    })

    this.When(/^I focus and blur the location type field$/, function (callback) {
        this.actionwords.iFocusAndBlurTheLocationTypeField()
        callback()
    })

    this.When(/^I focus and blur the address field$/, function (callback) {
        this.actionwords.iFocusAndBlurTheAddressField()
        callback()
    })

    this.Then(/^I can see an error $/, function (callback) {
        this.actionwords.iCanSeeAnError()
        callback()
    })

    this.When(/^I focus and blur the city field$/, function (callback) {
        this.actionwords.iFocusAndBlurTheCityField()
        callback()
    })

    this.When(/^I focus and blur the state field$/, function (callback) {
        this.actionwords.iFocusAndBlurTheStateField()
        callback()
    })

    this.When(/^I focus and blur the zip field$/, function (callback) {
        this.actionwords.iFocusAndBlurTheZipField()
        callback()
    })

    this.When(/^I select I will not be there but someone else will be$/, function (callback) {
        this.actionwords.iSelectIWillNotBeThereButSomeoneElseWillBe()
        callback()
    })

    this.Then(/^the on-site contact form displays$/, function (callback) {
        this.actionwords.theOnSiteContactFormDisplays()
        callback()
    })

    this.When(/^I select I will be there$/, function (callback) {
        this.actionwords.iSelectIWillBeThere()
        callback()
    })

    this.Then(/^the on-site contact form disappears$/, function (callback) {
        this.actionwords.theOnSiteContactFormDisappears()
        callback()
    })

    this.When(/^I focus and blur the on-site contact first name field$/, function (callback) {
        this.actionwords.iFocusAndBlurTheOnSiteContactFirstNameField()
        callback()
    })

    this.When(/^I focus and blur the on-site contact last name field$/, function (callback) {
        this.actionwords.iFocusAndBlurTheOnSiteContactLastNameField()
        callback()
    })

    this.When(/^I focus and blur the on-site contact phone field$/, function (callback) {
        this.actionwords.iFocusAndBlurTheOnSiteContactPhoneField()
        callback()
    })

    this.When(/^I focus and blur the on-site contact email field$/, function (callback) {
        this.actionwords.iFocusAndBlurTheOnSiteContactEmailField()
        callback()
    })

    this.When(/^I click on the back button$/, function (callback) {
        this.actionwords.iClickOnTheBackButton()
        callback()
    })

    this.Then(/^I am taken to contact info page$/, function (callback) {
        this.actionwords.iAmTakenToContactInfoPage()
        callback()
    })

    this.Given(/^I am on appointment schedule page$/, function (callback) {
        this.actionwords.iAmOnAppointmentSchedulePage()
        callback()
    })

    this.Then(/^I see the calendar$/, function (callback) {
        this.actionwords.iSeeTheCalendar()
        callback()
    })

    this.Then(/^the calendar month is the current month$/, function (callback) {
        this.actionwords.theCalendarMonthIsTheCurrentMonth()
        callback()
    })

    this.When(/^I select a date from the calendar$/, function (callback) {
        this.actionwords.iSelectADateFromTheCalendar()
        callback()
    })

    this.Then(/^I see the time slot available$/, function (callback) {
        this.actionwords.iSeeTheTimeSlotAvailable()
        callback()
    })

    this.Then(/^I am taken to review page$/, function (callback) {
        this.actionwords.iAmTakenToReviewPage()
        callback()
    })

    this.Given(/^I am on review page$/, function (callback) {
        this.actionwords.iAmOnReviewPage()
        callback()
    })

    this.Then(/^I am taken to confirmation page$/, function (callback) {
        this.actionwords.iAmTakenToConfirmationPage()
        callback()
    })

    this.Then(/^the progress status bar is highlighted$/, function (callback) {
        this.actionwords.theProgressStatusBarIsHighlighted()
        callback()
    })

    this.Given(/^I log in$/, function (callback) {
        this.actionwords.iLogIn()
        callback()
    })

    this.Given(/^my account info is correct$/, function (callback) {
        this.actionwords.myAccountInfoIsCorrect()
        callback()
    })

    this.Given(/^I enter my contact info$/, function (callback) {
        this.actionwords.iEnterMyContactInfo()
        callback()
    })

    this.Given(/^I enter my inspection location$/, function (callback) {
        this.actionwords.iEnterMyInspectionLocation()
        callback()
    })

    this.Given(/^I schedule my inspection$/, function (callback) {
        this.actionwords.iScheduleMyInspection()
        callback()
    })

    this.Given(/^I confirm my appointment$/, function (callback) {
        this.actionwords.iConfirmMyAppointment()
        callback()
    })

    this.Then(/^I can see the appointment confirmed$/, function (callback) {
        this.actionwords.iCanSeeTheAppointmentConfirmed()
    })

    this.Then(/^I can see appointment confirmation number$/, function (callback) {
        this.actionwords.iCanSeeAppointmentConfirmationNumber()
        callback()
    })

	this.Then(/^I can see the login link$/, function () {
		this.actionwords.iCanSeeTheLoginLink();
	});

	this.When(/^I click the login link$/, function () {
		this.actionwords.iClickTheLoginLink();
	});

	this.Then(/^I will be taken to inspection location page$/, function () {
		this.actionwords.iWillBeTakenToInspectionLocationPage();
	});

	this.Then(/^the calendar displays 20 business days$/, function () {
		this.actionwords.theCalendarDisplays20BusinessDays();
	});

	this.Then(/^the correct text is displayed$/, function () {
		this.actionwords.theCorrectTextIsDisplayed();
	});

	this.Then(/^the appropriate text is displayed$/, function () {
		this.actionwords.theAppropriateTextIsDisplayed();
	});

	this.Given(/^a selectable date is displayed$/, function () {
		this.actionwords.aSelectableDateIsDisplayed();
	});

	this.When(/^I select a date$/, function () {
		this.actionwords.iSelectADate();
	});

	this.Then(/^I can see the correct date is displayed$/, function () {
		this.actionwords.iCanSeeTheCorrectDateIsDisplayed();
	});

    this.When(/^I select a time$/, function (callback) {
        this.actionwords.iSelectATime()
        callback()
    });

	this.When(/^I select a time from time slot$/, function () {
		this.actionwords.iSelectATimeFromTimeSlot();
	});

	this.Given(/^the time slot is displayed$/, function () {
		this.actionwords.theTimeSlotIsDisplayed();
	});

	this.Given(/^I select a time from the time slot$/, function () {
		this.actionwords.iSelectATimeFromTheTimeSlot();
	});

	this.Then(/^the time is selected$/, function () {
		this.actionwords.theTimeIsSelected();
	});

	this.Then(/^the expected correct text is displayed$/, function () {
		this.actionwords.theExpectedCorrectTextIsDisplayed();
	});
}