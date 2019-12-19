'use strict';

let _ = require('lodash');
let browser = global.browser;
let homeFixture = require('../fixtures/home-request');
let requestEntity = require('../entities/request');

// Enter a random account number, hopefully it is unique
// TODO: Ensure that the account number doesn't exist (somehow), or try again if it does
let enterAccountNumber = function () {
	browser.setValue('input[name=accountNo]', _.random(1000000, 9999999));
	browser.click('span=Find');
	browser.waitForExist('div=No request(s) found.');
};

let enterComment = function (comment) {
	let commentBox = browser.element('//label[text()="Comment for internal use"]/following-sibling::input').value.ELEMENT;
	browser.elementIdValue(commentBox, comment);
};

// Enter a vehicle into the vehicleForm at index, starting at 0
let enterVehicle = function (vehicle, index = 0) {
	let vehicleForm = browser.elements('vehicle-form').value[index].ELEMENT;

	let mapping = {
		vin: 'vehicleVin',
		year: 'vehicleYear',
		make: 'vehicleMake',
		model: 'vehicleModel',
		trim: 'vehicleTrim'
	};

	_.each(mapping, (name, key) => {
		let id = browser.elementIdElement(vehicleForm, `input[name=${name}]`).value.ELEMENT;
		browser.elementIdClick(id);
		browser.elementIdValue(id, _.get(vehicle, key));
	});
};

let populateHomeRequest = function () {
	browser.waitForVisible('div=Home');
	browser.click('div=Home');
	enterAccountNumber();

	let homeData = homeFixture();

	browser.waitForVisible('input[name=firstName]');
	browser.setValue('input[name=firstName]', homeData.lesseeFirstName);
	browser.setValue('input[name=lastName]', homeData.lesseeLastName);
	browser.setValue('input[name=street1]', homeData.street1);
	browser.setValue('input[name=city]', homeData.city);
	browser.click('md-select[name=state]');
	browser.clickOnOptionInOpenMenu(homeData.state);
	browser.setValue('input[name=zip]', homeData.zip);

	browser.click('md-select[name=stateOfOrigin]');
	browser.clickOnOptionInOpenMenu(homeData.state);
	enterVehicle(homeData.vehicle);
	enterComment(homeData.commentForInternalUse);
};

let populateDealerRequest = function () {
	throw new Error('not implemented');
};

let populateManheimRequest = function () {
	throw new Error('not implemented');
};

module.exports = function (customer, inspectionType) {
	// Go to the add inspection request page
	browser.url('/#/inspection-request/add');
	browser.waitForExist('md-select#customer-name', 200000);

	// Select the customer
	browser.click('md-select#customer-name');
	browser.waitForExist(`div=${customer}`);
	browser.click(`div=${customer}`);

	// Open the inspection type menu
	browser.click('md-select#inspection-type');

	// Map 'Home' and 'Dealer inspection types to the function to handle them
	let typeMap = {
		'Home': populateHomeRequest,
		'Dealer': populateDealerRequest
	};

	// Call the corresponding function to populate the rest of the form
	typeMap[inspectionType] ? typeMap[inspectionType]() : populateManheimRequest(inspectionType);

	browser.clickSubmit();

	// Grab the request ID from the toast
	browser.waitForText('span.md-toast-text');
	let requestId = browser.getText('span.md-toast-text').match(/\d+/)[0];

	// Store the request ID in the request entity
	requestEntity.setRequestId(requestId);
};

