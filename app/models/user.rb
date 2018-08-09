class User < ApplicationRecord
  include Filterable

  has_secure_password

  belongs_to :company
  has_many :events

  validates  :first_name, {presence: true, length: {minimum: 2, maximum: 24}}
  validates  :last_name, {presence: true, length: {minimum: 2, maximum: 24}}
  validates  :password, {length: {minimum: 6}}
  validates  :email_address, {presence: true, length: {minimum: 6, maximum: 64}, uniqueness: true}
  validates  :user_level, {numericality: { only_integer: true, greater_than_or_equal_to: 1, less_than_or_equal_to: 3 }}

  scope :company, -> (company_id) { where(company_id: company_id) }

end
