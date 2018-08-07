class Job < ApplicationRecord
  has_many :events
  has_many :images
  belongs_to :company
  belongs_to :location
end
