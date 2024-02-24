# == Schema Information
#
# Table name: applications
#
#  id         :integer          not null, primary key
#  status     :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  job_id     :integer
#  user_id    :integer
#
# Indexes
#
#  index_applications_on_job_id   (job_id)
#  index_applications_on_user_id  (user_id)
#
class Application < ApplicationRecord
  # Enum
  enum status: {
    in_review: 0,
    scheduled_for_interview: 1,
    rejected: 2
  }

  # Relationships
  belongs_to :job
  belongs_to :user

  # Validations
  validates :status, inclusion: { in: statuses.keys }
  validates :job_id, uniqueness: { scope: :user_id }
end
