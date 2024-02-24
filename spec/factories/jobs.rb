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
FactoryBot.define do
  factory :job do
    title { "MyString" }
    description { "MyText" }
    requirements { "MyText" }
    benefits { "MyText" }
  end
end
