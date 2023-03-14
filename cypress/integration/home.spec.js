/// <reference types="cypress" />

describe('My First Test', () => {
  it('Does not do much!', () => {
    expect(true).to.equal(true)
  })
})

describe('Visit Pages', () => {
  it('Visits the Products page', () => {
    cy.visit('/')
    cy.get(".products article").should("have.length", 2);
  })
})