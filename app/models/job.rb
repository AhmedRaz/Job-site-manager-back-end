class Job < ApplicationRecord
  include Filterable

  has_many :events
  has_many :images
  belongs_to :company
  belongs_to :location

  scope :company, -> (company_id) { where(company_id: company_id) }
  scope :location, -> (location_id) { where(location_id: location_id) }
  scope :starts_with, -> (name) { where("name like ?", "#{name}%")}
end
