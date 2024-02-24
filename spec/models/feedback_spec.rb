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
require 'rails_helper'

RSpec.describe Feedback, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
