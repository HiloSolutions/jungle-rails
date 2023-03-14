/// <reference types="cypress" />

describe('Visit Pages', () => {
  it('Visits the home page', () => {
    cy.visit('/')
    cy.get(".products article").should("have.length", 2);
  })
})