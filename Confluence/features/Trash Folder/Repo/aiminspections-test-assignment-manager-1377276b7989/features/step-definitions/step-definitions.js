module.exports = function () {
	this.Before(function (scenario) {
		this.actionwords = Object.create(require('./actionwords.js').ActionWords)
	})

	this.After(function (scenario) {
		this.actionwords = null
	})

	this.Given(/^I am on the log in screen$/, function (callback) {
		this.actionwords.iAmOnTheLogInScreen()
		callback()
	})

}