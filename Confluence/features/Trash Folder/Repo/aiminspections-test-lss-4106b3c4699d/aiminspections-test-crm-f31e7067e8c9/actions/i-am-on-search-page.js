'use strict';

let browser = global.browser;

module.exports = function (searchType) {
	if (!['basic', 'advanced'].includes(searchType)) {
		throw new Error('Unknown search type: ' + searchType);
	}

	browser.url(`/#/inspection-request/search/${searchType}`);
};

