'use strict';

let _ = require('lodash');
let fs = require('fs');

let baseConfig = {
	specs: [
		'./features/**/*.feature'
	],

	exclude: [
	],

	maxInstances: 10,

	capabilities: [{
		maxInstances: 1,
		browserName: 'chrome'
	}],

	sync: true,
	logLevel: 'silent',
	coloredLogs: true,
	screenshotPath: './errorShots/',
	waitforTimeout: 10000,
	connectionRetryTimeout: 90000,
	connectionRetryCount: 3,
	services: ['selenium-standalone'],
	framework: 'cucumber',
	reporters: ['spec', 'junit'],
	reporterOptions: {
		outputDir: './reports/',
		outputFileFormat: opts => `results-${opts.cid + opts.capabilities}-${Date.now()}.xml`
	},

	cucumberOpts: {
		require: ['./step-definitions.js'],
		backtrace: false,
		compiler: [],
		dryRun: false,
		failFast: false,
		format: ['pretty'],
		colors: true,
		snippets: true,
		source: true,
		profile: [],
		strict: true,
		tags: [],
		timeout: 20000,
		ignoreUndefinedDefinitions: true,
	},

	before: function (capabilities, specs) {
		var chai = require('chai');
		var expect = chai.expect;
		global.expect = expect;

		// Load all the files under /commands.
		// Each file must have a single default export, which is a named function,
		// e.g. 'module.exports = function myCommand (args) { ... };'
		fs.readdirSync('./commands')
			.map(file => require(`./commands/${file}`))
			.forEach(fn => browser.addCommand(fn.name, fn));
	}
}

exports.config = _.extend({}, baseConfig, require('./config'));

