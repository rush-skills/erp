# == Schema Information
#
# Table name: payments
#
#  id             :integer          not null, primary key
#  admission_id   :integer
#  installment_id :integer
#  paid_on        :date
#  amount         :integer
#  created_at     :datetime
#  updated_at     :datetime
#

require 'test_helper'

class PaymentTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
