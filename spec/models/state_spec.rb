require 'rails_helper'

RSpec.describe State, type: :model do
  describe "have db columns" do
    it{ is_expected.to have_db_column :name }
    it{ is_expected.to have_db_column :abbreviation }
  end

  describe "names and abbr must be uniqe" do
    it{ is_expected.to validate_uniqueness_of :name }
    it{ is_expected.to validate_uniqueness_of :abbreviation }
  end

  describe "abreviations must be 2 characters" do
    it { should validate_length_of(:abbreviation).is_equal_to(2) }
  end
end
