# == Schema Information
#
# Table name: additional_fee_payments
#
#  id                :integer          not null, primary key
#  student_id        :integer
#  additional_fee_id :integer
#  paid              :integer
#  paid_on           :date
#  created_at        :datetime
#  updated_at        :datetime
#

require 'test_helper'

class AdditionalFeePaymentTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
