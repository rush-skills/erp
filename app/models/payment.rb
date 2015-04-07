# == Schema Information
#
# Table name: payments
#
#  id                :integer          not null, primary key
#  course_student_id :integer
#  installment_id    :integer
#  paid_on           :date
#  amount            :integer
#  created_at        :datetime
#  updated_at        :datetime
#

class Payment < ActiveRecord::Base
  belongs_to :admission
  belongs_to :installment
  validates_presence_of :course_student, on: :create, message: "can't be blank"
  validates_presence_of :amount, on: :create, message: "can't be blank"
end
