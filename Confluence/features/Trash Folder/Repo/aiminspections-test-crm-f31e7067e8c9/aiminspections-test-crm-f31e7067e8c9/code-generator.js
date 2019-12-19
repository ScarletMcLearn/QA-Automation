'use strict';

const gherkin = require('gherkin');
const parser = new gherkin.Parser();
const fs = require('fs');
const _ = require('lodash');

const feature = process.argv && process.argv[2];

function usage () {
	console.log('Usage:\n$ node code-generator.js features/test-case.feature');
	process.exit(1);
}

if (!feature || !feature.includes('.feature')) {
	usage();
}

let featureText;
try {
	featureText = fs.readFileSync(feature).toString();
} catch (e) {
	console.log(`File "${feature}" not found!`);
	usage();
}

let steps = _.flatten(parser.parse(featureText).feature.children.map(c => c.steps));

let wordsToRemove = ['i', 'should', 'the', 'and', 'a', 'is'].map(w => new RegExp(w + ' ', 'g'));

steps.forEach(s => {
	console.log(`Step: "${s.keyword}${s.text}"\n`);
	let argRegex = /"([^"]|\\")*"/g;

	let action = s.text.toLowerCase();
	action = wordsToRemove.reduce((str, re) => str.replace(re, ''), action);
	action = action.split(' ').splice(0, 3).join('-');

	let numberOfArguments = (s.text.match(argRegex) || {}).length;
	let argNames = _.times(numberOfArguments).map(a => 'arg' + (a + 1)).join(', ');

	let wordSuggestion = '\tSuggested Action Word:';
	console.log(wordSuggestion + '\n\t' + wordSuggestion.replace(/./g, '-'));
	console.log(`\tthis.${s.keyword.trim()}(/^${s.text.replace(argRegex, '"(.*)"')}$/, useAction('${action}'));\n`);

	let actionSuggestion = `\tSuggested Action File: actions/${action}.js`
	console.log(actionSuggestion + '\n\t' + actionSuggestion.replace(/./g, '-'));
	console.log(`
	'use strict';

	let browser = global.browser;

	module.exports = function (${argNames}) {
		throw new Error('not implemented!');
	};
	`);
});
