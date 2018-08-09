class JobSerializer < ActiveModel::Serializer
  attributes :id, :name
  has_many :events
  has_many :images

  belongs_to :location
  belongs_to :company
end
