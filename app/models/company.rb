class Company < ApplicationRecord
  has_many :jobs
  has_many :users
  has_many :locations
end
