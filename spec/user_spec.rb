require 'rails_helper'

RSpec.describe User, type: :model do
  describe 'Validations' do
    it "is valid with valid attributes" do
      params = {
        first_name:'Yennefer',
        last_name:'Elizabeth',
        email: 'cat@cat',
        password:'paw',
        password_confirmation:'paw'
        }
        expect(User.new(params)).to be_valid
    end

    it "is valid when password and password confirmation match" do
      params = {
        first_name:'Yennefer',
        last_name:'Elizabeth',
        email: 'cat@cat',
        password:'paw',
        password_confirmation:'paw'
        }
        expect(User.new(params)).to be_valid
    end

    it "is not valid when password and password confirmation do not match" do
      params = {
        first_name:'Yennefer',
        last_name:'Elizabeth',
        email: 'cat@cat',
        password:'paw',
        password_confirmation:'paws'
        }
        expect(User.new(params)).to_not be_valid
    end

    it "is not valid when password is empty" do
      params = {
        first_name:'Yennefer',
        last_name:'Elizabeth',
        email: 'cat@cat',
        password:'',
        password_confirmation:'paws'
        }
        expect(User.new(params)).to_not be_valid
    end

    it "is not valid when password_confirmation is empty" do
      params = {
        first_name:'Yennefer',
        last_name:'Elizabeth',
        email: 'cat@cat',
        password:'paw',
        password_confirmation:''
        }
        expect(User.new(params)).to_not be_valid
    end

    it "emails must not match an existing user in the database" do
      params = {
        first_name:'Yennefer',
        last_name:'Elizabeth',
        email: 'cat@cat',
        password:'paw',
        password_confirmation:'paw'
        }
      User.create(params)
      newUser = User.create(params)
      
        
        expect(newUser).to_not be_valid
    end

    
  end
end