# == Schema Information
#
# Table name: feedbacks
#
#  id         :integer          not null, primary key
#  message    :text
#  score      :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  user_id    :integer
#
# Indexes
#
#  index_feedbacks_on_user_id  (user_id)
#
class Feedback < ApplicationRecord
  # Relationships
  belongs_to :user

  # Validations
  validates :message, presence: true
  validates :score, numericality: {
                                    only_integer: true,
                                    greater_than_or_equal_to: 1,
                                    less_than_or_equal_to: 10
                                   }
end
