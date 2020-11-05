import { When } from 'cypress-cucumber-preprocessor/steps';
 
When("go to AB site", () => {
  cy.visit(Cypress.env('dev_url') );
});