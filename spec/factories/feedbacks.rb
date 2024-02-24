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
FactoryBot.define do
  factory :feedback do
    user { nil }
    message { "MyText" }
    score { 1 }
  end
end
