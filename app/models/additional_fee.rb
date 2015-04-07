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

  rails_admin do
    field :name
    field :amount
  end

  def to_s
    self.name.to_s + ": " + self.amount.to_s
  end

end
