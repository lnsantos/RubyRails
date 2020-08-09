require 'rails_helper'

RSpec.describe User ,type: :model do
  describe 'when users two equals...' do
    let!(:user_one) { create(:fake_user) }
    let!(:user_two) { build(:fake_user, username: user_one.username)}

    it 'should is valid' do
      expect(user_two.valid?).to eq false
    end
  end

  describe 'when password is not strong' do
    let!(:user) { build(:fake_user, password: '12347') }

    it 'should be invalid' do
      expect(user.valid?).to eq false
    end

  end
  
  describe 'when user is valid' do
    let!(:user) { create(:fake_user) }

    it 'should be valid' do
      expect(user.valid?).to eq true
    end
    
  end
  
end
