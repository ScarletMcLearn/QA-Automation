'use strict';

let browser = global.browser;

// Click on an option inside an md-select-menu, which must be open prior to calling function
module.exports = function clickOnOptionInOpenMenu (optionValue) {
	let options = browser.elements('md-select-menu');
	let openOptionMenu = options.value.filter(v => browser.elementIdDisplayed(v.ELEMENT).value)[0];
	let option = browser.elementIdElement(openOptionMenu.ELEMENT, `md-option[value=${optionValue}]`).value.ELEMENT;
	browser.elementIdClick(option);
};

