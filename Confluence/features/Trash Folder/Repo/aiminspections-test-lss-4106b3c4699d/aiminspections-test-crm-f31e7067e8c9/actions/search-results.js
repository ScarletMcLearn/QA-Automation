'use strict';

let browser = global.browser;
let assert = require('assert');
let _ = require('lodash');
let entities = require('../entities/mapping');

// queryOrEntity is a literal string to search for in a cells row, such as a phone number or VIN,
// or it is a string describing what the find from previously created data, such as 'requestId'.
module.exports = function (queryOrEntity) {
	let searchEntity = entities[queryOrEntity];
	let searchText = searchEntity ? searchEntity.getEntityData() : queryOrEntity;

	let getElementId = e => e.ELEMENT;

	let requestWasFound = false;
	while (!requestWasFound) {
		browser.waitForVisible('div.search-results');

		// Get the current page's table rows
		let tableRows = browser.elements('tr[role=button]').value.map(r => r.ELEMENT);

		// If we are searching for previously created data, we know what column it should be in.
		let cells;
		if (searchEntity) {
			cells = tableRows
				.map(row => browser.elementIdElements(row, 'td').value[searchEntity.columnIndex])
				.map(getElementId);
		// Otherwise, we have to search all columns.
		} else {
			cells = tableRows
				.map(row => browser.elementIdElements(row, 'td').value.map(getElementId))
				.map(getElementId);
		}

		requestWasFound = _.find(cells, id => browser.elementIdText(id).value === searchText);

		// Go to the next page if the request was not found
		if (!requestWasFound) {
			browser.click('li.next-page');
		}
	}

	if (!requestWasFound) {
		assert.fail('The request was not found in the search results');
	}
};
