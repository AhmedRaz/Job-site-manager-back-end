class CompanySerializer < ActiveModel::Serializer
  attributes :id, :name, :email_address, :designation, :telephone, :website, :logo_src
  has_many :users
  has_many :jobs 
end
