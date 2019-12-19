exports.ActionWords = {

    iAmOnTheLogInScreen: function() {
        browser.url('/#/login');
        browser.waitForExist('#brand-logo');
    }

};