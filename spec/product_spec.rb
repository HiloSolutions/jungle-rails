require 'rails_helper'

RSpec.describe Product, type: :model do
  describe 'Validations' do
    it "saves when all attributes are valid" do
      @category = Category.new
      params = {
        name: 'plant',
        price_cents: 9000,
        quantity: 5,
        category: @category
      }
      expect(Product.new(params)).to be_valid
    end

    it "is not valid without a name" do
      @category = Category.new
      params = {
        price_cents: 9000,
        quantity: 5,
        category: @category
      }
      expect(Product.new(params)).to_not be_valid
    end

    it "is not valid without a price" do
      @category = Category.new
      params = {
        name: 'plant',
        quantity: 5,
        category: @category
      }
      expect(Product.new(params)).to_not be_valid
    end
    
    it "is not valid without a quantity" do
      @category = Category.new
      params = {
        name: 'plant',
        price_cents: 9000,
        category: @category
      }
      expect(Product.new(params)).to_not be_valid
    end

    it "is not valid without a quantity" do
      params = {
        name: 'plant',
        price_cents: 9000,
        category: @category
      }
      expect(Product.new(params)).to_not be_valid
    end
  end
end