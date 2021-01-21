class State < ApplicationRecord
  has_many :cities
  validates :name, uniqueness: true
  validates :abbreviation, uniqueness: true
  validates :abbreviation, length: { is: 2 }
end
