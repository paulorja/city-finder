require 'rails_helper'

RSpec.describe State, type: :model do
  describe 'columns' do
    it { should have_db_column :name }
    it { should have_db_column :abbreviation }
  end

  describe 'associations' do
    it { should have_many :cities }
  end

  describe 'validations' do
    it { should validate_uniqueness_of :name }
    it { should validate_uniqueness_of :abbreviation }
    it { should validate_length_of(:abbreviation).is_equal_to(2) }
  end
end
