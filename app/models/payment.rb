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
  belongs_to :course_student
  belongs_to :installment
end
