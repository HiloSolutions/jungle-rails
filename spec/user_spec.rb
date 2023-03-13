require 'rails_helper'

RSpec.describe User, type: :model do
  describe 'Validations' do

    it "is not valid when password and password confirmation do not match" do
      params = {
        name:'Yennefer',
        email: 'cat@cat',
        password:'paw',
        password_confirmation:'paws'
        }
        expect(User.new(params)).to_not be_valid
    end
    
  end
end