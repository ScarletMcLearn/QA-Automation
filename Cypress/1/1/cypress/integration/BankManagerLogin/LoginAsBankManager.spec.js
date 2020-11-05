Given('Step 1', ()=>{
    cy.visit('http://www.way2automation.com/angularjs-protractor/banking/#/login')
})


When('Step 2', ()=>{
    cy.get('body > div.ng-scope > div > div.ng-scope > div > div.borderM.box.padT20 > div:nth-child(3) > button').click()
})


Then('Step 3', ()=>{
    cy.title().should('eq', 'Protractor practice website - Banking App')
})