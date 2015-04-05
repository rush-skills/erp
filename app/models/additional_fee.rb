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

class AdditionalFee < ActiveRecord::Base
  has_many :additional_fee_payments
  validates_presence_of :name, on: :create, message: "can't be blank"
  validates_presence_of :amount, on: :create, message: "can't be blank"
end
