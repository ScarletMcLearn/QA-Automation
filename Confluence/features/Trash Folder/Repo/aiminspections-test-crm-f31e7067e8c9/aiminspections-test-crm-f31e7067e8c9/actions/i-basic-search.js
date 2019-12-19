'use strict';

let entities = require('../entities/mapping');
let browser = global.browser;

module.exports = function (queryOrEntity) {
	let searchEntity = entities[queryOrEntity];

	browser.url('/#/inspection-request/search/basic');
	browser.waitForVisible('input[type=search]');

	// If searching for previously created data, get that data
	// Otherwise, we are searching for a literal string, e.g. '1234567'
	browser.setValue('input[type=search]', searchEntity ? searchEntity.getEntityData() : queryOrEntity);
	browser.click('button[type=submit]');
	browser.waitForVisible('div.search-results');
};

