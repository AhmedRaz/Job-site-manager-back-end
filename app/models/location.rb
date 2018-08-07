class Location < ApplicationRecord
  has_many :jobs
  has_many :events, through: :jobs
end
