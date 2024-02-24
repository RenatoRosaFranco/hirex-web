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
FactoryBot.define do
  factory :profile do
    first_name { "MyString" }
    last_name { "MyString" }
    birthdate { "2024-02-23" }
    document { "MyString" }
    phone_prefix { "MyString" }
    phone_number { "MyString" }
    user { nil }
  end
end
