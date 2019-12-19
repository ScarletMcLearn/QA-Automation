'use strict';

let browser = global.browser;

module.exports = function (username, password) {
	browser.waitForExist('input#username');
	browser.setValue('input#username', username);
	browser.setValue('input#password', password);
	browser.click('button[type=submit]');
	browser.waitForExist('md-icon[title=Logout]');
};

