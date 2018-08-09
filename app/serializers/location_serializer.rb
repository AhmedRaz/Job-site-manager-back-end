class LocationSerializer < ActiveModel::Serializer
  attributes :id, :latitude, :longitude, :address, :city, :state
  has_many :jobs
end
