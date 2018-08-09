class UserSerializer < ActiveModel::Serializer
  attributes :id, :first_name, :last_name, :email_address, :telephone, :profile_pic_src, :user_level

  has_many :events
  belongs_to :company
end
