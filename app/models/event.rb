class Event < ApplicationRecord
  include Filterable
  belongs_to :job
  belongs_to :user, optional: true

  scope :job, -> (job_id) { where(job_id: job_id) }
  scope :user, -> (user_id) { where(user_id: user_id) }
  
end
