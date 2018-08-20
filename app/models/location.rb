class Location < ApplicationRecord
  include Filterable
  has_many :jobs
  has_many :events, through: :jobs
  belongs_to :company, optional: true

  scope :city, -> (city) { where(city: city.capitalize) }
  scope :company, -> (company_id) { where(company_id: company_id) }
end
