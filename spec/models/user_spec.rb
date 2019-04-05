require 'rails_helper'

RSpec.describe User, type: :model do
  context 'valadation tests' do
    it 'ensures first name presence' do
      user = User.new(last_name: 'Last', email: 'rspec@testemail.com')
      expect(user).to eq(false)      
    end

    it 'ensures last name presence' do
      user = User.new(first_name: 'First', email: 'rspec@testemail.com')
      expect(user).to eq(false)      
    end

    it 'ensures first name presence' do
      user = User.new(first_name: 'First', last_name: 'Last')
      expect(user).to eq(false)      
    end

    it 'should save successfully' do
      user = User.new(first_name: 'First', last_name: 'Last', email: 'rspec@testemail.com')
      expect(user).to eq(true)      
    end
  end

  context 'scope tests' do
  end
end
