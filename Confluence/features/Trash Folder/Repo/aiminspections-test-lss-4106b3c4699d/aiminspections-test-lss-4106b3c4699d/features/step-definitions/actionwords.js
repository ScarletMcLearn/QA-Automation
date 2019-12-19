exports.ActionWords = {

    iAmOnTheLogInScreen: function() {
        browser.url('/log-in');
        browser.waitForExist('#vin');
    },
    iSubmitAnIncorrectVinAndCorrectAccountNumber: function() {
        browser.setValue('#vin','1N333');
        browser.setValue('#accountNo',browser.params.request.accountNo);
        browser.click('.btn.btn-primary');
    },
    iSubmitACorrectVinAndIncorrectAccountNumber: function() {
        browser.setValue('#vin',browser.params.request.vehicles[0].vin);
        browser.setValue('#accountNo','00000000000');
        browser.click('.btn.btn-primary');
    },
    iSubmitMyAccountNumberAndVin: function() {
        browser.setValue('#vin',browser.params.request.vehicles[0].vin);
        browser.setValue('#accountNo',browser.params.request.accountNo);
        browser.click('.btn.btn-primary');
    },
    iSubmitAInvalidVinAndInvalidAccountNumber: function() {
        browser.setValue('#vin','1N333');
        browser.setValue('#accountNo', '00000000000');
        browser.click('.btn.btn-primary');
    },
    iAmOnTheAccountInfoPage: function() {
        browser.waitForExist('.progress-dot-circle.progress-dot-complete');
    },
    iCanSeeErrorMessage: function() {
        browser.waitForExist("//p[.='VIN and/or account number not found.']");
    },
    iAmLoggedIn: function() {
        this.iAmOnTheLogInScreen();
        this.iSubmitMyAccountNumberAndVin();
    },
    iAmOnTheHomepage: function() {
        browser.url('https://selfschedule-qa.aiminspect.com')
        browser.waitForExist('.btn.btn-primary')
    },
    iCanSeeTheAimLogo: function() {
        browser.isExisting('.site-logo')
    },
    iCanSeeTheScheduleButton: function() {
        browser.isExisting('.btn.btn-primary')
    },
    iClickTheScheduleButton: function() {
       browser.click('.btn.btn-primary')
    },
    iAmTakenToTheLoginPage: function() {
        var logInPage = browser.waitForExist('h1')
        expect(logInPage).to.equal(true)
    },
    iSubmitMyVinAndMyAccountNumber: function() {
        //console.log(browser.params.request)
        browser.setValue('#vin',browser.params.request.vehicles[0].vin);
        browser.setValue('#accountNo',browser.params.request.accountNo);
        browser.click('.btn.btn-primary');
        browser.pause(3000)
    },
    iAmTakenToTheAccountInfoPage: function() {
        var h1Selector = 'form > h1'
        browser.waitForText(h1Selector)
        expect(browser.getText(h1Selector)).to.equal('Account Info')
    },
    iSubmitAnIncorrectVinAndMyAccountNumber: function() {
        browser.setValue('#vin', '2345645DFGDF435346');
        browser.setValue('#accountNo',browser.params.request.accountNo);
        browser.click('.btn.btn-primary');
    },
    iSeeAnErrorMessage: function() {
        browser.waitForExist('.error-message');
    },
    iSubmitMyVinAndAnIncorrectAccountNumber: function() {
        browser.setValue('#vin',browser.params.request.vehicles[0].vin);
        browser.setValue('#accountNo','40');
        browser.click('.btn.btn-primary');
    },
    iSubmitAnInvalidVinAndAnInvalidAccountNumber: function() {
        browser.setValue('#vin', '2345645DFGDF435346');
        browser.setValue('#accountNo','40');
        browser.click('.btn.btn-primary');
    },
    iSubmitTheLoginForm: function() {
        browser.click('.btn.btn-primary')
    },
    iCanSeeTheErrorMessages: function() {
        browser.waitForExist('.error-message')
    },
    iClickOnTheNeedHelpLink: function() {
        browser.click('.btn.btn-link')
    },
    iAmTakenToGetAssistancePage: function() {
        browser.waitForExist('.lss-blue')
    },
    theProgressStatusBarIsHighlighting: function(param_a) {
        browser.waitForExist('.progress-dot-label.progress-dot-label-active')
        let checkLocation = browser.getText('.progress-dot-label.progress-dot-label-active')
        expect(checkLocation.includes(param_a)).to.be.true
    },
    myProfileInfoIsCorrect: function() {
        browser.waitForText('#lesseeName')
        expect(browser.getText('#lesseeName')).to.equal(browser.params.request.lesseeFirstName+' '+browser.params.request.lesseeLastName)
    },
    myVehicleInfoIsCorrect: function() {
        browser.waitForText('#vehicleVin')
        expect(browser.getText('#vehicleVin')).to.equal('VIN: ' + browser.params.request.vehicles[0].vin)
    },
    iClickOnThesomethingIsWrongButton: function() {
        browser.click('.btn.btn-default')
    },
    iAmTakenToTheGetAssistancePage: function() {
        browser.waitForExist('.lss-blue')
    },
    iAmOnTheContactInfoPage: function() {
        browser.waitForText('h1')
        expect(browser.getText('h1')).to.equal('Contact Info')
    },
    iSelectMyPhoneType: function(param_a) {

    },
    iSelectMyPreferredContactMethod: function(param_a) {

    },
    theContactInfoRequiredFieldsArePopulated: function() {
        browser.click('#phone')
        browser.setValue('#phone', '5864565545')
        browser.click('[name=phoneType]')
        browser.selectByAttribute('[name=phoneType]','value','mobile')
        browser.click('#email')
        browser.setValue('#email', 'jchowdhury@aiminspections.com')
    },
    iAmTakenToTheInspectionLocationPage: function() {
        browser.waitForText('h1')
        expect(browser.getText('h1')).to.equal('Inspection location')
    },
    iClickOnBackButton: function() {
        browser.click('.btn.btn-default.back-button')
    },
    iAmOnInspectionLocationPage: function() {
        this.iAmOnTheAccountInfoPage()
        this.iClickTheContinueButton()
        this.iAmOnTheContactInfoPage()
        this.theContactInfoRequiredFieldsArePopulated()
        this.iClickTheContinueButton()
        this.iAmTakenToTheInspectionLocationPage()
    },
    theLocationRequiredFieldsArePopulated: function() {
        browser.click('[name="location.locationType"]')
        browser.selectByAttribute('[name="location.locationType"]', 'value', 'work')
        browser.click('[name="location.street1"]')
        browser.setValue('[name="location.street1"]', browser.params.request.lesseeLocation.street1)
        browser.click('[name="location.city"]')
        browser.setValue('[name="location.city"]', browser.params.request.lesseeLocation.city)
        browser.click('[name="location.state"]')
        browser.selectByAttribute('[name="location.state"]', 'value', browser.params.request.lesseeLocation.state)
        browser.click('[name="location.zip"]')
        browser.setValue('[name="location.zip"]', browser.params.request.lesseeLocation.zip)
    },
    theOnSiteContactInfoRequiredFieldsArePopulated: function() {
        browser.click('[name=lesseeIsPresent]')
        browser.selectByAttribute('[name="lesseeIsPresent"]','value','false')
        browser.click('#onSiteContactFirstName')
        browser.setValue('#onSiteContactFirstName', 'Ted')
        browser.click('#onSiteContactLastName')
        browser.setValue('#onSiteContactLastName', 'Cruz')
        browser.click('#onSiteContactPhone')
        browser.setValue('#onSiteContactPhone', '3458875656')
        browser.click('[name="onSiteContactPhoneType"]')
        browser.selectByAttribute('[name="onSiteContactPhoneType"]','value','mobile')
        browser.click('#onSiteContactEmail')
        browser.setValue('#onSiteContactEmail', 'Cruz@mail.com')
    },
    iAmTakenToTheSchedulePage: function() {
        browser.waitForExist('h1', 3000000)
        browser.pause(2000)
        expect(browser.getText('h1')).to.equal('Appointment Schedule')
    },
    theContinueButtonIsDisabled: function() {
        expect(browser.isEnabled('.btn.btn-primary')).to.be.false
    },
    iFocusAndBlurTheLocationTypeField: function() {
        browser.click('[name="location.locationType"]')
        browser.click('[id ="location.locationName"]')
    },
    iFocusAndBlurTheAddressField: function() {
        browser.click('[id ="location.street1"]')
        browser.click('[name="location.locationType"]')
    },
    iFocusAndBlurTheCityField: function() {
        browser.click('[id ="location.city"]')
        browser.click('[name="location.locationType"]')
    },
    iFocusAndBlurTheStateField: function() {
        browser.click('[name="location.state"]')
        browser.click('[id ="location.city"]')
    },
    iFocusAndBlurTheZipField: function() {
        browser.click('[id ="location.zip"]')
        browser.click('[id ="location.city"]')
    },
    iSelectIWillNotBeThereButSomeoneElseWillBe: function() {
        browser.click('[name=lesseeIsPresent]')
        browser.selectByAttribute('[name="lesseeIsPresent"]','value','false')
    },
    theOnSiteContactFormDisplays: function() {
        browser.waitForExist('.present-column')
    },
    iSelectIWillBeThere: function() {
        this.iSelectIWillNotBeThereButSomeoneElseWillBe()
        this.theOnSiteContactFormDisplays()
        browser.click('[name=lesseeIsPresent]')
        browser.selectByAttribute('[name="lesseeIsPresent"]','value', 'true')
    },
    theOnSiteContactFormDisappears: function() {
        expect(browser.isExisting('.present-column')).to.be.false
    },
    iFocusAndBlurTheOnSiteContactFirstNameField: function() {
        this.iSelectIWillNotBeThereButSomeoneElseWillBe()
        this.theOnSiteContactFormDisplays()
        browser.click('[id = "onSiteContactFirstName"]')
        browser.click('[id ="location.city"]')
    },
    iFocusAndBlurTheOnSiteContactLastNameField: function() {
        this.iSelectIWillNotBeThereButSomeoneElseWillBe()
        this.theOnSiteContactFormDisplays()
        browser.click('[id = "onSiteContactLastName"]')
        browser.click('[id ="location.city"]')
    },
    iFocusAndBlurTheOnSiteContactPhoneField: function() {
        this.iSelectIWillNotBeThereButSomeoneElseWillBe()
        this.theOnSiteContactFormDisplays()
        browser.click('[id = "onSiteContactPhone"]')
        browser.click('[id ="location.city"]')
    },
    iFocusAndBlurTheOnSiteContactEmailField: function() {
        this.iSelectIWillNotBeThereButSomeoneElseWillBe()
        this.theOnSiteContactFormDisplays()
        browser.click('[id = "onSiteContactEmail"]')
        browser.click('[id ="location.city"]')
    },
    iClickOnTheBackButton: function() {
        browser.click('.btn.btn-default.back-button')
    },
    iAmTakenToContactInfoPage: function() {
        browser.waitForExist('h1', 3000000)
        expect(browser.getText('h1')).to.equal('Contact Info')
    },
    iAmOnAppointmentSchedulePage: function() {
        this.iAmOnInspectionLocationPage()
        this.theLocationRequiredFieldsArePopulated()
        this.iClickTheContinueButton()
        this.iAmTakenToTheSchedulePage()
    },
    iSeeTheCalendar: function() {
        expect(browser.isExisting('#calendar')).to.be.true
    },
    theCalendarMonthIsTheCurrentMonth: function() {
        var date = new Date()
        let monthNames = {
            0: 'January',
            1: 'February',
            2: 'March',
            4: 'April',
            5: 'May',
            6: 'June',
            7: 'July',
            8: 'August',
            9: 'September',
            10: 'October',
            11: 'November',
            12: 'December',
        }
        expect(browser.getText('.month-label'))
            .to.equal(monthNames[date.getMonth()] + ' ' + date.getFullYear());
    },
    iWillBeTakenToInspectionLocationPage: function() {
        browser.waitForExist('h1')
        expect(browser.getText('h1')).to.equal('Inspection location')
    },
    iSelectADateFromTheCalendar: function() {
        browser.waitForExist('.current-month.selectable .day')
        browser.click('.current-month.selectable .day')
    },
    iSelectATimeFromTimeSlot: function() {
        browser.waitForExist('.radio-inline.vertical')
        browser.click('.radio-inline.vertical')
    },
    iAmTakenToReviewPage: function() {
        browser.pause(2000)
        browser.waitForExist('h1')
        expect(browser.getText('h1')).to.equal('Review Appointment')
    },
    iAmOnReviewPage: function() {
        this.iAmOnAppointmentSchedulePage()
        this.iSelectADateFromTheCalendar()
        this.iSelectATimeFromTheTimeSlot()
        this.iClickTheContinueButton()
        browser.waitForExist('h1')
        expect(browser.getText('h1')).to.equal('Review Appointment')
    },
    iAmTakenToConfirmationPage: function() {
        browser.waitForExist('h1')
        expect(browser.getText('h1')).to.equal('Appointment Confirmed')
    },
    theProgressStatusBarIsHighlighted: function() {
        browser.waitForExist('.progress-dot-circle.progress-dot-complete')
    },
    theContinueButtonIsEnabled: function() {
        expect(browser.isEnabled('.btn.btn-primary')).to.be.true
    },
    iEnterMyPhoneNumber: function(param_a) {
        browser.click('#phone');
        browser.setValue('#phone', param_a);
    },
    iEnterMyEmail: function(param_a) {
        browser.click('#email');
        browser.pause(1000);
        browser.setValue('#email', param_a);
    },
    iFocusAndBlurThePhoneField: function() {
        browser.click('#phone');
        browser.click('#email');
    },
    iFocusAndBlurTheEmailField: function() {
        browser.click('#email')
        browser.click('#phone')
    },
    iCanSeeAnErrorMessage: function() {
        var errorMessageExist = browser.isExisting('.error-message');
        expect(errorMessageExist).to.be.true
    },
    iLogIn: function() {
        this.iAmOnTheLogInScreen()
        this.iSubmitMyVinAndMyAccountNumber()
        this.iAmTakenToAccountInfoPage()
    },
    iAmTakenToAccountInfoPage: function() {
        browser.waitForExist('h1')
        expect(browser.getText('h1')[0]).to.equal('Account Info')
    },
    myAccountInfoIsCorrect: function() {
        this.iClickTheContinueButton()
    },
    iEnterMyContactInfo: function() {
        this.theContactInfoRequiredFieldsArePopulated()
        this.iClickTheContinueButton()
        this.iAmTakenToTheInspectionLocationPage()
    },
    iEnterMyInspectionLocation: function() {
        this.theLocationRequiredFieldsArePopulated()
        this.theOnSiteContactInfoRequiredFieldsArePopulated()
        this.iClickTheContinueButton()
        this.iAmTakenToTheSchedulePage()
    },
    iScheduleMyInspection: function() {
        this.iSelectADateFromTheCalendar()
        this.iSelectATimeFromTimeSlot()
        this.iClickTheContinueButton()
        this.iAmTakenToReviewPage()
    },
    iConfirmMyAppointment: function() {
        this.iClickTheContinueButton()
        this.iAmTakenToConfirmationPage()
    },
    iCanSeeTheAppointmentConfirmed: function() {
        this.iAmTakenToConfirmationPage()
    },
    iCanSeeAppointmentConfirmationNumber: function() {
        browser.waitForExist('h2')
        expect(browser.getText('h2')).to.equal('Confirmation #'+ browser.params.requestId);
    },
	iCanSeeTheLoginLink: function() {
        expect(browser.isExisting('a[href="/log-in"]')).to.equal(true)
	},
	iClickTheLoginLink: function() {
        browser.click('a[href="/log-in"]')
	},
	theCorrectTextIsDisplayed: function() {
	    browser.waitForExist('h1')
        expect(browser.getText('h1')).to.equal('Appointment Schedule')
	},
	aSelectableDateIsDisplayed: function() {
		expect(browser.isVisible('.day.current-month day selectable')).to.be.false
	},
	iCanSeeTheCorrectDateIsDisplayed: function() {
        expect(browser.isExisting('.day.current-month day selectable')).to.be.false
	},
    theTimeSlotIsDisplayed: function() {
        expect(browser.isVisible('.radio-vertical-container')).to.be.true
    },
    iSelectATimeFromTheTimeSlot: function() {
        var firstTimeSlotLabel = 'label.radio-inline.vertical:first-of-type'
        var firstTimeSlotInput = firstTimeSlotLabel + ' > input'
        expect(browser.isExisting(firstTimeSlotLabel)).to.be.true
        browser.click(firstTimeSlotLabel)
        expect(browser.isSelected(firstTimeSlotInput)).to.be.true
    },
    theTimeIsSelected: function() {
        var firstTimeSlotInput = 'label.radio-inline.vertical:first-of-type > input'
        expect(browser.isSelected(firstTimeSlotInput)).to.be.true
    },
	theExpectedCorrectTextIsDisplayed: function() {
		this.iSeeTheCalendar()
        this.aSelectableDateIsDisplayed()
        this.iSelectADateFromTheCalendar()
        var  substring = 'Available time slots on'
        expect(browser.getText('h3')).to.include(substring)
	},
    iClickTheContinueButton: function() {
        browser.waitForText('.btn.btn-primary')
        expect(browser.isEnabled('.btn.btn-primary')).to.be.true
        browser.click('.btn.btn-primary')
    }
};