# == Schema Information
#
# Table name: jobs
#
#  id           :integer          not null, primary key
#  benefits     :text
#  description  :text
#  requirements :text
#  title        :string
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#
class Job < ApplicationRecord
  # Relationships
  has_many :applications, dependent: :destroy
end
