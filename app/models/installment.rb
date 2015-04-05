# == Schema Information
#
# Table name: installments
#
#  id                :integer          not null, primary key
#  course_student_id :integer
#  due_on            :date
#  amount            :integer
#  title             :string(255)
#  created_at        :datetime
#  updated_at        :datetime
#

class Installment < ActiveRecord::Base
  belongs_to :course_student
  has_one :payment
end
