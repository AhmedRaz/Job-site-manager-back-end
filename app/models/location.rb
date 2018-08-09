class Location < ApplicationRecord
  include Filterable
  has_many :jobs
  has_many :events, through: :jobs

  scope :city, -> (city) { where(city: city.capitalize) }
end
