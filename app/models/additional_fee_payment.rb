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

class AdditionalFeePayment < ActiveRecord::Base
  belongs_to :student
  belongs_to :additional_fee

  validates_presence_of :student, on: :create, message: "can't be blank"
  validates_presence_of :additional_fee, on: :create, message: "can't be blank"
  validates_presence_of :paid, on: :create, message: "can't be blank"

  after_save :set_paid_on

  def set_paid_on
    self.paid_on ||= Time.now
  end

  def to_s
    self.student.to_s + " - " + self.paid_on.to_s
  end

  def name
    to_s
  end

  rails_admin do
    field :student
    field :additional_fee
    field :paid
    field :paid_on
    list do
      field :name
    end
  end
end
