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
require 'rails_helper'

RSpec.describe SearchHistory, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
