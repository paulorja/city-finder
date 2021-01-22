class City < ApplicationRecord
  belongs_to :state
  validates :name, presence: true
  scope :contains_name, ->(name) { where('unaccent(name) ILIKE unaccent(?)', "%#{name}%") }
end
