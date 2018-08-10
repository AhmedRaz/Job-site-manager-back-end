class ImageSerializer < ActiveModel::Serializer
  attributes :id, :image_name, :image_data
  belongs_to :job
end
