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
FactoryBot.define do
  factory :application do
    job { nil }
    user { nil }
  end
end
