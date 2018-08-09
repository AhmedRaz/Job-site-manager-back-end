class EventSerializer < ActiveModel::Serializer
  attributes :id, :event_name, :resolved, :event_details, :event_type, :event_struct, :image_source
  belongs_to :job
  belongs_to :user, optional: true
end
