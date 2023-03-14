/// <reference types="cypress" />

describe('Visit Pages', () => {
  it('Visits the home page', () => {
    cy.visit('/');
    cy.contains("Add").eq(0).click({force: true});
  })
})
