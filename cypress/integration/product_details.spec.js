/// <reference types="cypress" />

describe('Visit Product detail page from home page', () => {
  it('Visits the Home page', () => {
    cy.visit('/')
    cy.get(".products article").should("have.length", 2);
  })
  it('Visits the product detail page', () => {
    cy.visit('/')
    cy.get(".products article").first().click();
    cy.get(".product-detail").should('exist');
  })
})