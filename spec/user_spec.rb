require 'rails_helper'

RSpec.describe User, type: :model do
  describe 'Validation Specs' do
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

    it "is not valid when first_name is empty" do
      params = {
        first_name:'',
        last_name:'Elizabeth',
        email: 'cat@cat',
        password:'paw',
        password_confirmation:''
        }
        expect(User.new(params)).to_not be_valid
    end

    it "is not valid when last_name is empty" do
      params = {
        first_name:'Yennefer',
        last_name:'',
        email: 'cat@cat',
        password:'paw',
        password_confirmation:''
        }

        expect(User.new(params)).to_not be_valid
    end

    it "is not valid when email is empty" do
      params = {
        first_name:'Yennefer',
        last_name:'Elizabeth',
        email: '',
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

        user = User.new(params)
        user.save

        duplicate_user = User.new(params)
        expect(duplicate_user.save).to be false

    end
    it "password length < 3 will not be valid" do
      params = {
        first_name:'Yennefer',
        last_name:'Elizabeth',
        email: 'cat@cat',
        password:'paw',
        password_confirmation:''
        }

        user = User.new(params)
        puts 'test'
        puts user.password
        expect(user.password.length).to be >= 3
    end

  
    
  end
end

RSpec.describe User, type: :model do

  describe 'Validations' do
    # validation examples here
  end

  describe '.authenticate_with_credentials' do
    # examples for this class method here
  end

end