require 'rails_helper'

RSpec.describe City, type: :model do
  describe 'columns' do
    it { should have_db_column :name }
  end

  describe 'associations' do
    it { should belong_to :state }
  end

  describe 'validations' do
    it { should validate_presence_of(:name) }
  end

  describe 'contains name scope' do
    it {
      city = City.contains_name('florianopolis').first
      expect(city.name).to eq 'Florianópolis'
    }
    it {
      city = City.contains_name('alegre').first
      expect(city.name).to eq 'Porto Alegre'
    }
  end
end
