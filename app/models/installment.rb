class Installment < ActiveRecord::Base
  belongs_to :course_student
  has_one :payment
end
