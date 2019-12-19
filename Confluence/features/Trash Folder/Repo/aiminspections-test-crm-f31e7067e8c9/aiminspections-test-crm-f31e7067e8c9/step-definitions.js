'use strict';

let { defaultUser } = require('./config');
let useAction = require('./actions/use-action');
let browser = global.browser;

module.exports = function () {
	this.Before(function () {
		browser.windowHandleMaximize();
		useAction('i-am-on-sign-in-screen')();
		useAction('i-sign-in')(defaultUser.username, defaultUser.password);
	});

	this.Given(/^there is an existing "(.*)" "(.*)" request$/, useAction('existing-request'));

	this.Given(/^the request has (no|an) active appointment$/, useAction('request-has-active-appointment'));

	this.Given(/^the request has an? "(.*)" appointment$/, useAction('request-has-status-appointment'));

	this.Given(/^I am on the "(.*)" search page$/, useAction('i-am-on-search-page'));

	this.Given(/^I basic search for "(.*)"$/, useAction('i-basic-search'));

	this.Then(/^I should see the? "(.*)" in the search results$/, useAction('search-results'));

};

