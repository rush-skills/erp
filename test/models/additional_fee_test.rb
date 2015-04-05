# == Schema Information
#
# Table name: additional_fees
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  amount     :integer
#  created_at :datetime
#  updated_at :datetime
#

require 'test_helper'

class AdditionalFeeTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
