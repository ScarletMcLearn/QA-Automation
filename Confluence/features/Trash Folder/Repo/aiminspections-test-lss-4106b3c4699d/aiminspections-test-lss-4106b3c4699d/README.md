## Test Lessee Self-schedule ##
Cucumber framework for testing lessee self-schedule.

### Required Software ###

[Java SE Development Kit](http://www.oracle.com/technetwork/java/javase/downloads/jdk8-downloads-2133151.html)

[Node.js](https://nodejs.org/en/download/)

[Git](https://git-scm.com/downloads)

### Installation ###

Clone this repository via the command `git clone git@bitbucket.org:aiminspections/test-lss.git`

Enter the repository via `cd test-lss`

Run the command `npm install`

### How to run tests ###

From the command line run `npm run qa`

To run only one gherkin add the .feature path to the command, such as `npm run qa features/Login.feature`

### How to add tests ###

From the command line run `node codegen.js features/<new/updated gherkin file>`

This will add new functions to step-definitions.js and actionwords.js that can be implemented

### Useful documentation ###
[WebdriverIO API](http://webdriver.io/api.html)

[Chai - Expect](http://chaijs.com/api/bdd/)