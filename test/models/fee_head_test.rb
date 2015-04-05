# == Schema Information
#
# Table name: fee_heads
#
#  id           :integer          not null, primary key
#  fee_id       :integer
#  name         :string(255)
#  amount       :integer
#  discountable :boolean
#  created_at   :datetime
#  updated_at   :datetime
#

require 'test_helper'

class FeeHeadTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
