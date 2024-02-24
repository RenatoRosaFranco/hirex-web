# == Schema Information
#
# Table name: search_histories
#
#  id         :integer          not null, primary key
#  query      :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  user_id    :integer
#
# Indexes
#
#  index_search_histories_on_user_id  (user_id)
#
FactoryBot.define do
  factory :search_history do
    user { nil }
    query { "MyString" }
  end
end
