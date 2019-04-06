require 'rails_helper'


RSpec.describe User, type: :model do
  context '' do
    it 'email should be present' do
      user = User.new(password: 'password', password_confirmation: 'password')
      expect(user).to eq(false)      
    end

    it 'should have a password' do
      user = User.new(password: 'password', password_confirmation: 'password', email: 'rspec@testemail.com')
      expect(user).to eq(false)      
    end

    it 'should confim password' do
      user = User.new(password: 'password', password_confirmation: 'password', email: 'rspec@testemail.com')
      expect(user).to eq(false)      
    end

    it 'should save successfully' do
      user = User.new(password: 'password', password_confirmation:'password', email: 'rspec@testemail.com')
      expect(user).to eq(true)      
    end
  end

  context 'scope tests' do
  end
end
