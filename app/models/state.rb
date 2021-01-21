class State < ApplicationRecord
  validates :name, uniqueness: true
  validates :abbreviation, uniqueness: true
  validates :abbreviation, length: { is: 2 }
end
