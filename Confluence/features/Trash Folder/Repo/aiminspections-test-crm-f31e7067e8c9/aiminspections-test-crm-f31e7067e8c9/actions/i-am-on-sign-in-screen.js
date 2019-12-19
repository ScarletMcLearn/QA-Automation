'use strict';

let browser = global.browser;

module.exports = function () {
	browser.url('/#/login');
	browser.waitForExist('input#username');
};

