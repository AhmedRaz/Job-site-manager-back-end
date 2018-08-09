class Image < ApplicationRecord
  include Filterable
  belongs_to :job

  scope :job, -> (job_id) { where(job_id: job_id) }
end
