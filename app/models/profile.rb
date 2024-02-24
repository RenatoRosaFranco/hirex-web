# == Schema Information
#
# Table name: profiles
#
#  id           :integer          not null, primary key
#  birthdate    :date
#  document     :string
#  first_name   :string
#  last_name    :string
#  phone_number :string
#  phone_prefix :string
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#  user_id      :integer
#
# Indexes
#
#  index_profiles_on_user_id  (user_id)
#
class Profile < ApplicationRecord
  # Relationships
  belongs_to :user
end
